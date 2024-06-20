#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    static const int segments[]={0x3F, 0x06, 0x5b, 0x4F, 0x66, 0x6D, 0x7C, 0x07, 0x7F, 0x67, 0x5F, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1; 
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 2-1; 
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    //*ii)

    TRISB = TRISB & 0x80FF;
    LATB = LATB & 0x80FF;

    TRISDbits.TRISD5 = 0;
    LATD = (LATD & 0xFF9F) | 0x20;

    //ii)*


    TRISEbits.TRISE1 = 0;

    int media;

    while(1){
        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 );

        media = (ADC1BUF0 + ADC1BUF1)/2;
        printInt(media, 16 | 3 << 16);
        putChar('\r');

        int volt = media/(1024/10);
        LATB = (LATB & 0x80FF) | (segments[volt] <<8);

        LATEbits.LATE1 = !LATEbits.LATE1;

        delay(3333333); 

        IFS1bits.AD1IF = 0;
    }
}



// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//   0   1    2    3    4     5   6   7     8    9    A    B    C    D     E    F

//RB8 a RB14      1000 0000 1111 1111   0x80FF
//RD5 RD6         1111 1111 1101 1111   0x11D1
