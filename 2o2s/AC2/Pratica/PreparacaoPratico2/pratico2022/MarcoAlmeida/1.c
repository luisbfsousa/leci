#include <detpic32.h>

void delay(int us) {
    resetCoreTimer();
    while (readCoreTimer() < us * 20);
}

int main(void) {
    TRISB = TRISB | 0x0009;  // entradas switches

    T2CONbits.TCKPS = 2;  // 1:4 prescaler
    PR2 = 33332;          // 150 Hz
    TMR2 = 0;             // Reset timer T2 count register
    T2CONbits.TON = 1;    // Enable timer T2 (must be the last command of the

    IPC2bits.T2IP = 2;   // Interrupt priority (must be in range [1..6])
    IEC0bits.T2IE = 1;   // Enable timer T2 interrupts
    IFS0bits.T2IF = 0;   // Reset timer T2 interrupt flag
    EnableInterrupts();  // Macro defined in "detpic32.h"

    OC2CONbits.OCM = 6;     // PWM mode on OCx; fault pin disabled
    OC2CONbits.OCTSEL = 0;  // Use timer T2 as the time base for PWM generation
    OC2RS = 8333;           // Ton constant
    OC2CONbits.ON = 1;      // Enable OC2 module

    while (1) {
        if ((PORTB & 0X000F) == 1) {
            OC2RS = 8333;
        } else if ((PORTB & 0X000F) == 8) {
            OC2RS = 23332;
        }
        delay(250);
    }
    return 0;
}

// Interrupt service routine (interrupt handler)
void _int_(8) isr_adc(void) {
    IFS0bits.T2IF = 0;  // Reset timer T2 interrupt flag
}
