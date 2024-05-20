#ifndef BOARD_H
#define BOARD_H

#define MAX_TC_TIME_DIFF_ms 200
#define MAX_HEARTBEAT_TIME_DIFF_ms 2000
#define MAX_BUS_DEAD_TIME_ms 2000

#define RED_LED_ON() (LATB3 = 0)
#define RED_LED_OFF() (LATB3 = 1)
#define RED_LED_TOGGLE() (LATB3 ^= 1)
#define ORANGE_LED_ON() (LATB4 = 0)
#define ORANGE_LED_OFF() (LATB4 = 1)
#define ORANGE_LED_TOGGLE() (LATB4 ^= 1)
#define YELLOW_LED_ON() (LATB5 = 0)
#define YELLOW_LED_OFF() (LATB5 = 1)
#define YELLOW_LED_TOGGLE() (LATB5 ^= 1)

void LED_init();

#endif /* BOARD_H */
