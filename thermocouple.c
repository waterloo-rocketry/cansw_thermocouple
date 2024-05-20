#include "thermocouple.h"
#include "spi.h"

#define LEN_TC 4

void init_tc(void) {
    // Setting CS pins as output
    TRISBbits.TRISB2 = 0;
    TRISBbits.TRISB1 = 0;
    TRISBbits.TRISB0 = 0;
    TRISCbits.TRISC7 = 0;

    // Holding CS pins high
    LATBbits.LATB2 = 1;
    LATBbits.LATB1 = 1;
    LATBbits.LATB0 = 1;
    LATCbits.LATC7 = 1;
}

void get_tc(uint32_t *data_out, uint8_t tc_num) {
    // Set CS pin low to trigger data for the selected thermocouple
    switch (tc_num) {
        case 0:
            LATBbits.LATB1 = 0;
            break;
        case 1:
            LATBbits.LATB2 = 0;
            break;
        case 2:
            LATBbits.LATB0 = 0;
            break;
        case 3:
            LATCbits.LATC7 = 0;
            break;
    }

    // for (int j = 0; j < 1000; j++) {}

    // Get data from all channels
    uint8_t data[LEN_TC] = {0, 0, 0, 0};
    spi1_exchange_buffer(data, LEN_TC);

    // Convert 16 bit MSB readings to 16 bits
    *data_out = (((((uint32_t)data[0] << 8) | data[1]) >> 2) & 0x3fff) << 8;

    // Set CS pin high to stop data transmission
    switch (tc_num) {
        case 0:
            LATBbits.LATB1 = 1;
            break;
        case 1:
            LATBbits.LATB2 = 1;
            break;
        case 2:
            LATBbits.LATB0 = 1;
            break;
        case 3:
            LATCbits.LATC7 = 1;
            break;
    }
}
