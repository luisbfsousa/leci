#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

void display(unsigned int value){
    static const int segments[] = {0x3F, 0x06, 0x5b, 0x4F, 0x66, 0x6D, 0x7C, 0x07, 0x7F, 0x67, 0x5F, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    int num = value % 16;
    int flag;

    if(PORTBbits.RB1 == 1){
        flag = 0;
    }else if(PORTBbits.RB1 == 0){
        flag = 1;
    }

    if(flag==0){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = (LATB & 0x80FF) | (segments[num]<<8);
    }else{
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = (LATB & 0x80FF) | (segments[num]<<8);
    }
}


int main(void){
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1; 
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 2-1; 
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    TRISB = TRISB & 0x80FF;
    LATB = LATB & 0x80FF;

    TRISBbits.TRISB1 = 1;

    TRISD = TRISD & 0xFF9F;
    LATD = LATD & 0xFF9F;

    TRISEbits.TRISE1 = 0;

    int media,volt;

    while(1){
        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 );

        media = (ADC1BUF0 + ADC1BUF1)/2;
        printStr("i) ");
        printInt(media,16 | 3 << 16);

        volt = media/(1023/9)+4;
        display(volt);
        printStr(" ii) ");
        printInt(volt,16 | 1 << 16);

        putChar('\n');

        LATEbits.LATE1 = !LATEbits.LATE1;

        delay(3333333);
        
        IFS1bits.AD1IF = 0;
    }

    return 0;
}
