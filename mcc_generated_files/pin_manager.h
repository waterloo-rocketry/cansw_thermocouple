/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC18LF26K83
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above
        MPLAB 	          :  MPLAB X 6.00	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set RA7 procedures
#define RA7_SetHigh()            do { LATAbits.LATA7 = 1; } while(0)
#define RA7_SetLow()             do { LATAbits.LATA7 = 0; } while(0)
#define RA7_Toggle()             do { LATAbits.LATA7 = ~LATAbits.LATA7; } while(0)
#define RA7_GetValue()              PORTAbits.RA7
#define RA7_SetDigitalInput()    do { TRISAbits.TRISA7 = 1; } while(0)
#define RA7_SetDigitalOutput()   do { TRISAbits.TRISA7 = 0; } while(0)
#define RA7_SetPullup()             do { WPUAbits.WPUA7 = 1; } while(0)
#define RA7_ResetPullup()           do { WPUAbits.WPUA7 = 0; } while(0)
#define RA7_SetAnalogMode()         do { ANSELAbits.ANSELA7 = 1; } while(0)
#define RA7_SetDigitalMode()        do { ANSELAbits.ANSELA7 = 0; } while(0)

// get/set CS3 aliases
#define CS3_TRIS                 TRISBbits.TRISB0
#define CS3_LAT                  LATBbits.LATB0
#define CS3_PORT                 PORTBbits.RB0
#define CS3_WPU                  WPUBbits.WPUB0
#define CS3_OD                   ODCONBbits.ODCB0
#define CS3_ANS                  ANSELBbits.ANSELB0
#define CS3_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define CS3_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define CS3_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define CS3_GetValue()           PORTBbits.RB0
#define CS3_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define CS3_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define CS3_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define CS3_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define CS3_SetPushPull()        do { ODCONBbits.ODCB0 = 0; } while(0)
#define CS3_SetOpenDrain()       do { ODCONBbits.ODCB0 = 1; } while(0)
#define CS3_SetAnalogMode()      do { ANSELBbits.ANSELB0 = 1; } while(0)
#define CS3_SetDigitalMode()     do { ANSELBbits.ANSELB0 = 0; } while(0)

// get/set CS2 aliases
#define CS2_TRIS                 TRISBbits.TRISB1
#define CS2_LAT                  LATBbits.LATB1
#define CS2_PORT                 PORTBbits.RB1
#define CS2_WPU                  WPUBbits.WPUB1
#define CS2_OD                   ODCONBbits.ODCB1
#define CS2_ANS                  ANSELBbits.ANSELB1
#define CS2_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define CS2_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define CS2_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define CS2_GetValue()           PORTBbits.RB1
#define CS2_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define CS2_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define CS2_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define CS2_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define CS2_SetPushPull()        do { ODCONBbits.ODCB1 = 0; } while(0)
#define CS2_SetOpenDrain()       do { ODCONBbits.ODCB1 = 1; } while(0)
#define CS2_SetAnalogMode()      do { ANSELBbits.ANSELB1 = 1; } while(0)
#define CS2_SetDigitalMode()     do { ANSELBbits.ANSELB1 = 0; } while(0)

// get/set CS1 aliases
#define CS1_TRIS                 TRISBbits.TRISB2
#define CS1_LAT                  LATBbits.LATB2
#define CS1_PORT                 PORTBbits.RB2
#define CS1_WPU                  WPUBbits.WPUB2
#define CS1_OD                   ODCONBbits.ODCB2
#define CS1_ANS                  ANSELBbits.ANSELB2
#define CS1_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define CS1_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define CS1_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define CS1_GetValue()           PORTBbits.RB2
#define CS1_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define CS1_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define CS1_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define CS1_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define CS1_SetPushPull()        do { ODCONBbits.ODCB2 = 0; } while(0)
#define CS1_SetOpenDrain()       do { ODCONBbits.ODCB2 = 1; } while(0)
#define CS1_SetAnalogMode()      do { ANSELBbits.ANSELB2 = 1; } while(0)
#define CS1_SetDigitalMode()     do { ANSELBbits.ANSELB2 = 0; } while(0)

// get/set RED_LED aliases
#define RED_LED_TRIS                 TRISBbits.TRISB3
#define RED_LED_LAT                  LATBbits.LATB3
#define RED_LED_PORT                 PORTBbits.RB3
#define RED_LED_WPU                  WPUBbits.WPUB3
#define RED_LED_OD                   ODCONBbits.ODCB3
#define RED_LED_ANS                  ANSELBbits.ANSELB3
#define RED_LED_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define RED_LED_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define RED_LED_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define RED_LED_GetValue()           PORTBbits.RB3
#define RED_LED_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define RED_LED_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define RED_LED_SetPullup()          do { WPUBbits.WPUB3 = 1; } while(0)
#define RED_LED_ResetPullup()        do { WPUBbits.WPUB3 = 0; } while(0)
#define RED_LED_SetPushPull()        do { ODCONBbits.ODCB3 = 0; } while(0)
#define RED_LED_SetOpenDrain()       do { ODCONBbits.ODCB3 = 1; } while(0)
#define RED_LED_SetAnalogMode()      do { ANSELBbits.ANSELB3 = 1; } while(0)
#define RED_LED_SetDigitalMode()     do { ANSELBbits.ANSELB3 = 0; } while(0)

// get/set ORG_LED aliases
#define ORG_LED_TRIS                 TRISBbits.TRISB4
#define ORG_LED_LAT                  LATBbits.LATB4
#define ORG_LED_PORT                 PORTBbits.RB4
#define ORG_LED_WPU                  WPUBbits.WPUB4
#define ORG_LED_OD                   ODCONBbits.ODCB4
#define ORG_LED_ANS                  ANSELBbits.ANSELB4
#define ORG_LED_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define ORG_LED_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define ORG_LED_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define ORG_LED_GetValue()           PORTBbits.RB4
#define ORG_LED_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define ORG_LED_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define ORG_LED_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define ORG_LED_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define ORG_LED_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define ORG_LED_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define ORG_LED_SetAnalogMode()      do { ANSELBbits.ANSELB4 = 1; } while(0)
#define ORG_LED_SetDigitalMode()     do { ANSELBbits.ANSELB4 = 0; } while(0)

// get/set YEL_LED aliases
#define YEL_LED_TRIS                 TRISBbits.TRISB5
#define YEL_LED_LAT                  LATBbits.LATB5
#define YEL_LED_PORT                 PORTBbits.RB5
#define YEL_LED_WPU                  WPUBbits.WPUB5
#define YEL_LED_OD                   ODCONBbits.ODCB5
#define YEL_LED_ANS                  ANSELBbits.ANSELB5
#define YEL_LED_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define YEL_LED_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define YEL_LED_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define YEL_LED_GetValue()           PORTBbits.RB5
#define YEL_LED_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define YEL_LED_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define YEL_LED_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define YEL_LED_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define YEL_LED_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define YEL_LED_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define YEL_LED_SetAnalogMode()      do { ANSELBbits.ANSELB5 = 1; } while(0)
#define YEL_LED_SetDigitalMode()     do { ANSELBbits.ANSELB5 = 0; } while(0)

// get/set RC0 procedures
#define RC0_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define RC0_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define RC0_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define RC0_GetValue()              PORTCbits.RC0
#define RC0_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define RC0_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define RC0_SetPullup()             do { WPUCbits.WPUC0 = 1; } while(0)
#define RC0_ResetPullup()           do { WPUCbits.WPUC0 = 0; } while(0)
#define RC0_SetAnalogMode()         do { ANSELCbits.ANSELC0 = 1; } while(0)
#define RC0_SetDigitalMode()        do { ANSELCbits.ANSELC0 = 0; } while(0)

// get/set RC1 procedures
#define RC1_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define RC1_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define RC1_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define RC1_GetValue()              PORTCbits.RC1
#define RC1_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define RC1_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define RC1_SetPullup()             do { WPUCbits.WPUC1 = 1; } while(0)
#define RC1_ResetPullup()           do { WPUCbits.WPUC1 = 0; } while(0)
#define RC1_SetAnalogMode()         do { ANSELCbits.ANSELC1 = 1; } while(0)
#define RC1_SetDigitalMode()        do { ANSELCbits.ANSELC1 = 0; } while(0)

// get/set RC3 procedures
#define RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define RC3_GetValue()              PORTCbits.RC3
#define RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define RC3_SetPullup()             do { WPUCbits.WPUC3 = 1; } while(0)
#define RC3_ResetPullup()           do { WPUCbits.WPUC3 = 0; } while(0)
#define RC3_SetAnalogMode()         do { ANSELCbits.ANSELC3 = 1; } while(0)
#define RC3_SetDigitalMode()        do { ANSELCbits.ANSELC3 = 0; } while(0)

// get/set RC4 procedures
#define RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define RC4_GetValue()              PORTCbits.RC4
#define RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define RC4_SetPullup()             do { WPUCbits.WPUC4 = 1; } while(0)
#define RC4_ResetPullup()           do { WPUCbits.WPUC4 = 0; } while(0)
#define RC4_SetAnalogMode()         do { ANSELCbits.ANSELC4 = 1; } while(0)
#define RC4_SetDigitalMode()        do { ANSELCbits.ANSELC4 = 0; } while(0)

// get/set CS4 aliases
#define CS4_TRIS                 TRISCbits.TRISC7
#define CS4_LAT                  LATCbits.LATC7
#define CS4_PORT                 PORTCbits.RC7
#define CS4_WPU                  WPUCbits.WPUC7
#define CS4_OD                   ODCONCbits.ODCC7
#define CS4_ANS                  ANSELCbits.ANSELC7
#define CS4_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define CS4_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define CS4_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define CS4_GetValue()           PORTCbits.RC7
#define CS4_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define CS4_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define CS4_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define CS4_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define CS4_SetPushPull()        do { ODCONCbits.ODCC7 = 0; } while(0)
#define CS4_SetOpenDrain()       do { ODCONCbits.ODCC7 = 1; } while(0)
#define CS4_SetAnalogMode()      do { ANSELCbits.ANSELC7 = 1; } while(0)
#define CS4_SetDigitalMode()     do { ANSELCbits.ANSELC7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/