#include <detpic32.h>

int main(void){
    TRISBbits.TRISB4 = 1;

    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 4-1;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    int voltage = 0;

    while(1){
        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 );

        int i;
        int *p = (int *)(&ADC1BUF0);
        for( i = 0; i < 4; i++ )
        {
            voltage += (p[i*4]*33+511) /1023;
        }
        printInt(voltage / 4, 10 | 2 << 16);

        IFS1bits.AD1IF = 0;
    }
    
    return 0;
}