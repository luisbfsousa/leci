#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

void display(unsigned int value){
    static const int segments[] = {0x3F, 0x06, 0x5b, 0x4F, 0x66, 0x6D, 0x7C, 0x07, 0x7F, 0x67, 0x5F, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    int numero = value%16;
    int flags;

    if(PORTBbits.RB1 == 1){flags= 0;}
    else if(PORTBbits.RB1 == 0){flags= 1;}

    if(flags==0){
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = (LATB & 0x80FF) | (segments[numero]<<8) ;
    }
    else{
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = (LATB & 0x80FF) | (segments[numero]<<8) ;
    }
}

int main(void){
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1; 
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 4-1; 
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    TRISB = TRISB & 0x80FF;
    LATB = LATB & 0x80FF;

    TRISD = TRISD & 0xFF9F;
    LATD = LATD & 0xFF9F;

    TRISBbits.TRISB1 = 1;

    TRISEbits.TRISE4 = 0;

    int media;
    int volt;

    while(1){
        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 );

        media = (ADC1BUF0+ADC1BUF1+ADC1BUF2+ADC1BUF3)/4;
        printStr("| i) ");
        printInt(media,2 | 10 << 16);

        volt = media/(1023/9)+3;
        display(volt);
        printStr(" | ii) ");
        printInt(volt,16 | 1 << 16);
        
        putChar('\n');

        delay(1666667);
        LATEbits.LATE4 = !LATEbits.LATE4;
        

        IFS1bits.AD1IF = 0;
    }

    return 0;
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0    1     2    3    4    5    6    7    8   9     A    B    C    D    E    F

//B8 a B14      1000 0000 1111 1111     0x80FF
//D6 e D5       1111 1111 1001 1111     0xFF9F
