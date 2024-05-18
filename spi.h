#ifndef SPI_H
#define SPI_H

#include <xc.h>
#include <stdbool.h>
#include <stdint.h>

void spi1_init(void);
uint8_t spi1_exchange(uint8_t data);
void spi1_exchange_buffer(uint8_t *data, uint8_t data_len);

#endif

