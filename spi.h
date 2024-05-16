#ifndef SPI_H
#define SPI_H

#include <xc.h>
#include <stdbool.h>

void spi1_init(void);
/*dont use this externally, it wont work*/
static uint8_t spi1_exchange(uint8_t data);
void spi1_exchange_buffer(uint8_t *data, uint8_t data_len);

#endif

