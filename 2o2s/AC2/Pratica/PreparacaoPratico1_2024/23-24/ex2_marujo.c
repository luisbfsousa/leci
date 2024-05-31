#include <detpic32.h>

void send2displays(unsigned char value ) {
    static const char disp7Scodes[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };


    LATD = ( LATD & 0xFFBF ) | 0x0020; // Disable HI-D, activate LO-D
    LATB = ( LATB & 0x80FF ) | disp7Scodes[value & 0x0F] << 8; // Write the values of RB8-RB14
    
}

int main(void) {
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 1;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    TRISD = TRISD & 0xFF9F; 
    TRISB = TRISB & 0x80FF;

    TRISEbits.TRISE1 = 0;
    LATEbits.LATE1 = 0;

    while (1) {
        AD1CON1bits.ASAM = 1;
        while (IFS1bits.AD1IF == 0);

        int *p = (int *)(&ADC1BUF0);
        int average = (p[0] + p[4]) / 2;
        printStr(" | AVERAGE: ");
        printInt( average, 16 | 3 << 16);
        
        printStr(" | VOLTAGE: ");
        int voltage;
        voltage = ( (average * 9 + 511) / 1023);
        printInt(voltage, 16);
        putChar('\n');
        send2displays((char) (voltage & 0x000000FF));

        IFS1bits.AD1IF = 0;

        LATEbits.LATE1 = !LATEbits.LATE1;

        resetCoreTimer();
        while(readCoreTimer()<3333333);
        

    }
    return 0;
}