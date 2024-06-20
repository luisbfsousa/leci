#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}



int main(void){
    static const int display[]{0x3F, 0x06, 0x5b, 0x4F, 0x66, 0x6D, 0x7C, 0x07, 0x7F, 0x67, 0x5F, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    

    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 4-1;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    TRISEbits.TRISE4 = 0;

    int media;

    while(1){
        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 );

        media = (ADC1BUF0+ADC1BUF1+ADC1BUF2+ADC1BUF3)/4;
        printInt(media, 2 | 10 << 16);
        putChar('\n');

        //ii) escala 3 a C
        int volt = media/(1024/14);



        IFS1bits.AD1IF = 0;

        LATEbits.LATE4 = !LATEbits.LATE4 
    }

    return 0;
}
