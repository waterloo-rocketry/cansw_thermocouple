#include <xc.h>
#include <stdbool.h>
#include <stdint.h>

#include "canlib/canlib.h"
#include "canlib/can.h"
#include "canlib/can_common.h"
#include "canlib/message_types.h"
#include "canlib/pic18f26k83/pic18f26k83_can.h"
#include "canlib/pic18f26k83/pic18f26k83_timer.h"
#include "canlib/util/can_tx_buffer.h"
#include "canlib/util/timing_util.h"

#include "mcc_generated_files/device_config.h"
#include "mcc_generated_files/pin_manager.h"


#include "thermocouple.h"
#include "spi.h"
#include "board.h"


static void can_msg_handler(const can_msg_t *msg);
static void send_status_ok(void);

// memory pool for the CAN tx buffer
uint8_t tx_pool[100];

volatile bool seen_can_message = false;

int main(void)
{
    PIN_MANAGER_Initialize();
    
    oscillator_init(); // init the external oscillator
    timer0_init(); // init our millis() function
    
    LED_init();

    // Enable global interrupts
    INTCON0bits.GIE = 1;
    
    // Set up CAN TX
    TRISC0 = 0;
    RC0PPS = 0x33; // (page 268)

    // Set up CAN RX
    TRISC1 = 1;
    ANSELC1 = 0;
    CANRXPPS = 0x11; // (page 265)
    
    // set up CAN module
    can_timing_t can_setup;
    can_generate_timing_params(_XTAL_FREQ, &can_setup);
    can_init(&can_setup, can_msg_handler);
    
    // set up CAN tx buffer
    txb_init(tx_pool, sizeof(tx_pool), can_send, can_send_rdy);

    spi1_init();
    init_tc();
    
    // loop timer
    uint32_t last_millis = millis();
    uint32_t last_message_millis = millis();

    bool heartbeat = false;

    while (1) {
    CLRWDT(); // Feed the watchdog, which is set for 256ms

    if (OSCCON2 != 0x70) { // If the fail-safe clock monitor has triggered
        oscillator_init();
    }

    if (seen_can_message) {
        seen_can_message = false;
        last_message_millis = millis();
    }
  
    if (millis() - last_message_millis > MAX_BUS_DEAD_TIME_ms) {
        // We've got too long without seeing a valid CAN message (including one of ours)
        RESET();
    }

    if (millis() - last_millis > MAX_LOOP_TIME_DIFF_ms) {
        // Read data from thermocouples and send over CAN bus
        for (uint8_t i = 0; i < 4; i++) {
            // Get temperature data for thermocouple i
            uint16_t temp_data = 0;
            get_tc(&temp_data, i);

            // Create a CAN message for the temperature data
            can_msg_t temp_msg;

            // Get the current timestamp
            uint32_t timestamp = millis();

            // Build the CAN message with the timestamp and temperature data
            build_temp_data_msg(timestamp, i, temp_data, &temp_msg);

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
            RED_LED_ON()();
            ORANGE_LED_ON();
            YELLOW_LED_ON();
            break;

        case MSG_LEDS_OFF:
            RED_LED_OFF()();
            ORANGE_LED_OFF();
            YELLOW_LED_OFF();
            break;

        case MSG_RESET_CMD:
            dest_id = get_reset_board_id(msg);
            if (dest_id == BOARD_UNIQUE_ID || dest_id == 0 ){
                RESET();
            }
            break;
        
        default:
           break;
    }
}

// DO WE NEED? Not monitoring for bus voltage or current.
// Send a CAN message with nominal status
static void send_status_ok(void) {
    can_msg_t board_stat_msg;
    build_board_stat_msg(millis(), E_NOMINAL, NULL, 0, &board_stat_msg);

    txb_enqueue(&board_stat_msg);
}
