#include <detpic32.h>

void delay(int ms) {
    resetCoreTimer();
    while (readCoreTimer() < ms * 20000);
}

unsigned char toBcd(unsigned char value) {
    return ((value / 10) << 4) + value % 10;
}

void send2displays(unsigned char value) {
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D,
                                          0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C,
                                          0x39, 0x5E, 0x79, 0x71};
    static unsigned char flag = 0;
    unsigned char menosSig = value & 0x0f;
    unsigned char maisSig = value >> 4;
    if (flag == 0) {
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = (LATB & 0X80FF) | display7Scodes[menosSig] << 8;
    } else {
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = (LATB & 0X80FF) | display7Scodes[maisSig] << 8;
    }
    flag = !flag;
}

unsigned char displayValue = 0;

int main(void) {
    TRISB = TRISB & 0X80FF;
    TRISD = TRISD & 0XFF9F;

    T2CONbits.TCKPS = 2;  // 
    PR2 = 41665;          // 
    TMR2 = 0;             // 
    T2CONbits.TON = 1;    // 

    IPC2bits.T2IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T2IE = 1;  // Enable timer T2 interrupts
    IFS0bits.T2IF = 0;  // Reset timer T2 interrupt flag

    TRISBbits.TRISB4 = 1;     // RB4 digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RB4 configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 1;     // Interrupt is generated after 2 samples
    AD1CHSbits.CH0SA = 4;     // replace 4 by the desired input
    AD1CON1bits.ON = 1;       // Enable A/D converter

    EnableInterrupts();

    while (1) {
        AD1CON1bits.ASAM = 1;  // Start conversion
        while (IFS1bits.AD1IF == 0);  // Wait while conversion not done
        int i, value = 0;
        int *p = (int *)(&ADC1BUF0);
        for (i = 0; i < 2; i++) {
            value += p[i * 4];
        }
        value = (value / 2 * 50 + 511) / 1023 + 15;
        displayValue = toBcd(value);
        IFS1bits.AD1IF = 0;  // Reset AD1IF
        delay(100);
    }
    return 0;
}

// Interrupt service routine (interrupt handler)
void _int_(8) isr_T2(void) {
    send2displays(displayValue);
    IFS0bits.T2IF = 0;  // Reset AD1IF flag
}
