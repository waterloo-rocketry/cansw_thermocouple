#ifndef THERMOCOUPLE_H
#define THERMOCOUPLE_H
#include <xc.h>
#include <stdbool.h>

void init_tc(void);
void get_tc(uint16_t *data_out, uint8_t tc_num);

#endif
