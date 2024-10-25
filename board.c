#include <xc.h>

void LED_init() {
    // initializing pins
    TRISB3 = 0;
    TRISB4 = 0;
    TRISB5 = 0;
    // returns if pin is on or off
    LATB3 =1;
    LATB4 = 1;
    LATB5 = 1;
}
