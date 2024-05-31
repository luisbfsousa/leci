#include <detpic32.h>

unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

void sendtodisplay(unsigned char value) {

    TRISD = (TRISD & 0x0000) | 0xFF9F;
    TRISB = (TRISB & 0x0000) | 0x80FF; 

    static const char disp7Scodes[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };
    static char displayFlag = 1; // 1 for HI-D, 0 for LO-D

    if (displayFlag) {
        LATD = ( LATD & 0x0000 ) | 0x0040; // Activate HI-D, disable LO-D
        LATB = ( LATB & 0x0000 ) | disp7Scodes[value >> 4] << 8; // Write the values of RB8-RB14
        displayFlag = 0;
    } else {
        LATD = ( LATD & 0x0000 ) | 0x0020; // Disable HI-D, activate LO-D
        LATB = ( LATB & 0x0000 ) | disp7Scodes[value & 0x0F] << 8; // Write the values of RB8-RB14
        displayFlag = 1;
    }
}

void configT3(){
    T3CONbits.TCKPS = 1;
    PR3 = 39999;
    TMR3 = 0;
    T3CONbits.TON = 1;
    IFS0bits.T3IF = 0;
    IPC3bits.T3IP = 1;
    IEC0bits.T3IE = 1;
}

void condigADC(){
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1; 
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 2-1; 
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
}

volatile unsigned char voltage; 

int main(void){
    configAdc();
    congifT3();
    enableInterrupts();

    while(1){ 
        AD1CON1bits.ASAM = 1;
        while (IFS1bits.AD1IF == 0);

        int *p = (int *)(&ADC1BUF0);
        voltage = 7 + (((p[0] + p[1]) / 2) * x + 511) / 1023;
        IFS1bits.AD1IF = 0;
        delay(200); 
    }
}

void _int_(12) Carvalho(void){
    sendtodisplay(toBcd(voltage));
    printInt(voltage, 10);
    putChar('\n');
    IFS0bits.T3IF = 0;
} 

//prescaler = (20000000 / 250) / 65536 = 1.220703125
// prescaler = 2 => 1
//PR3 = (20000000 / 2) / 250 ) -1 = 39999