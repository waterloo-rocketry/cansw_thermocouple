#ifndef THERMOCOUPLE_H
#define THERMOCOUPLE_H

#include <stdbool.h>
#include <xc.h>

void init_tc(void);
void get_tc(uint32_t *data_out, uint8_t tc_num);

#endif
