#include <xc.h>

#include "canlib/canlib.h"
#include "canlib/can.h"
#include "canlib/can_common.h"
#include "canlib/message_types.h"
#include "canlib/pic18f26k83/pic18f26k83_can.h"
#include "canlib/pic18f26k83/pic18f26k83_timer.h"
#include "canlib/util/can_tx_buffer.h"
#include "canlib/util/timing_util.h"

#include "mcc_generated_files/device_config.h"
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/pin_manager.h"


#include "device_config.h"
#include "error_checks.h"


static void can_msg_handler(const can_msg_t *msg);
static void send_status_ok(void);

// memory pool for the CAN tx buffer
uint8_t tx_pool[100];

volatile bool seen_can_message = false;


int main(void)
{
    // Initialize the device
    SYSTEM_Initialize();
    
    oscillator_init(); // init the external oscillator
    timer0_init(); // init our millis() function
    
    LED_init();

    // Enable global interrupts
    INTCON0bits.GIE = 1;
    
    // Set up CAN TX
    TRISC0 = 0;
    RC0PPS = 0x33; // make C0 transmit CAN TX (page 267)

    // Set up CAN RX
    TRISC1 = 1;
    ANSELC1 = 0;
    CANRXPPS = 0x11; // make CAN read from C1 (page 264-265)
    
    // set up CAN module
    can_timing_t can_setup;
    can_generate_timing_params(_XTAL_FREQ, &can_setup);
    can_init(&can_setup, can_msg_handler);
    
    // set up CAN tx buffer
    txb_init(tx_pool, sizeof(tx_pool), can_send, can_send_rdy);

    spi_init();
    init_tc();
    
    // loop timer
    uint32_t last_millis = millis();
    uint32_t last_message_millis = millis();
    uint32_t last_command_millis = millis();

    bool heartbeat = false;

    while (1) {
    CLRWDT(); // Feed the watchdog, which is set for 256ms

    if (OSCCON2 != 0x70) { // If the fail-safe clock monitor has triggered
        OSCILLATOR_Initialize();
    }

    if (seen_can_message) {
        seen_can_message = false;
        last_message_millis = millis();
    }
    if (seen_can_command) {
        seen_can_command = false;
        last_command_millis = millis();
    }

    if (millis() - last_message_millis > MAX_BUS_DEAD_TIME_ms &&
        (SAFE_STATE_ENABLED || requested_actuator_state == SAFE_STATE)) {
        // Only reset if safe state is enabled (aka this isn't injector valve)
        // OR this is injector valve and the currently requested state is the safe
        // state (closed)

        // We've got too long without seeing a valid CAN message (including one of ours)
        RESET();
    }

    if (millis() - last_millis > MAX_LOOP_TIME_DIFF_ms) {

        // Check for general board status
        bool status_ok = true;
        status_ok &= check_battery_voltage_error();
        status_ok &= check_bus_current_error();
        status_ok &= check_actuator_pin_error(requested_actuator_state);

        // If there was an issue, a message would already have been sent out
        if (status_ok) {
            send_status_ok();
        }

        // Read data from thermocouples and send over CAN bus
        for (uint8_t i = 0; i < 4; i++) {
            uint16_t temp_data = 0;
            get_tc(&temp_data, i);
            
            // Create a CAN message for each thermocouple reading
            can_msg_t temp_msg;
            build_temp_data_msg();

            // Send the CAN message
            txb_enqueue(&temp_msg);
        }


        // Update our loop counter
        last_millis = millis();
    }

    // Send any queued CAN messages
    txb_heartbeat();
}
    
    
static void __interrupt() interrupt_handler() {
    if (PIR5) {
        can_handle_interrupt();
    }

    // Timer0 has overflowed - update millis() function
    // This happens approximately every 500us
    if (PIE3bits.TMR0IE == 1 && PIR3bits.TMR0IF == 1) {
        timer0_handle_interrupt();
        PIR3bits.TMR0IF = 0;
    }
}


static void can_msg_handler(const can_msg_t *msg) {
    seen_can_message = true;
    uint16_t msg_type = get_message_type(msg);
    int dest_id = -1;
    // ignore messages that were sent from this board
    if (get_board_unique_id(msg) == BOARD_UNIQUE_ID) {
        return;
    }

    switch (msg_type) {
        case MSG_GENERAL_CMD:
            // nothing right now
            break;

        case MSG_LEDS_ON:
            LED_ON_G();
            LED_ON_B();
            LED_ON_W();
            break;

        case MSG_LEDS_OFF:
            LED_OFF_G();
            LED_OFF_B();
            LED_OFF_W();
            break;

        case MSG_RESET_CMD:
            dest_id = get_reset_board_id(msg);
            if (dest_id == BOARD_UNIQUE_ID || dest_id == 0 ){
                RESET();
            }
            break;
        // all the other ones - do nothing
        default:
           break;
    }
}

// Send a CAN message with nominal status
static void send_status_ok(void) {
    can_msg_t board_stat_msg;
    build_board_stat_msg(millis(), E_NOMINAL, NULL, 0, &board_stat_msg);

    txb_enqueue(&board_stat_msg);
}
