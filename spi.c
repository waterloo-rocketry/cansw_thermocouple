#include "spi.h"
#include <xc.h>
#include <stdbool.h>

void spi1_init(void)
{
    
    SPI1CON0bits.MST = 1; // set mode to master
    SPI1CON0bits.BMODE = 1; // sets bit mode to constant width
    SPI1CON0bits.LSBF = 0; // Data is exchanged MSb first
    
    SPI1CON1bits.CKP = 0; // idle state for clk is low
    SPI1CON1bits.SSP = 1; //make cs active low 
    SPI1CON1bits.SDOP = 0;
    SPI1CON1bits.SDIP = 0;
    SPI1CON1bits.CKE = 1; // change data on falling edge
    
    // Don't think I need since I am polling for temp data
    // SPI1CON2bits.TXR = 1; no transmit required for transfer
    // SPI1CON2bits.RXR = 1; receive data in FIFO
    
    //CLKSEL FOSC; 
    SPI1CLK = 0x00;
    //BAUD 0; 
    SPI1BAUD = 0x00;
    TRISCbits.TRISC3 = 0;
    
    SPI1CON0bits.EN = 1; // enable spi

}


/**/
static uint8_t spi1_exchange(uint8_t data)
{
    INTCON0bits.GIE = 0;
    SPI1TXB = data; 
    while (!PIR3bits.SPI1RXIF) {} 
    data = SPI1RXB;
    INTCON0bits.GIE = 1;
    return data; //reading should remove top most byte
    
}

void spi1_exchange_buffer(uint8_t *data, uint8_t data_len)
{
    //set data length
    SPI1TCNTL = data_len;
    SPI1TCNTH = 0;
    //uint8_t *block = data;
    while (data_len) {
        *data = spi1_exchange(*data ); //sends pointer, so data gets shoved into array
        data++; //increment array
        data_len--;
    }
}
 