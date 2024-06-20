#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    static const int display7segments[]={0x3F, 0x06, 0x5b, 0x4F, 0x66, 0x6D, 0x7C, 0x07, 0x7F, 0x67, 0x5F, 0x7C, 0x39, 0x5E, 0x79, 0x71};    
    TRISBbits.TRISB4 = 1;
    //display é ii)
    TRISDbits.TRISD5 = 0;
    LATD = (LATD & 0xFF9F) | 0x20; // reset do RD5 e 6, 5 a 1 para ligar o display right

    TRISB = TRISB & 0x80FF;
    //ii) acaba aqui

    TRISE = TRISE | 0x0001;

    
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 2-1; 
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;


    int alinea1; // 1)

    while(1){
        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 );

        alinea1 = (ADC1BUF0 + ADC1BUF1)/2 ; // numero conversoes i)
        printInt(alinea1, 16 | 3 << 16);   //hexa 16, 3 digitios logo 3 << 16
        putChar('\r'); // 'r' para aparecer so uma linha

        //ii)
        int alinea2 = alinea1/(1024/10); //0 a 9 logo divisao por 10
        //se fosse escala 2 a 9 seria "alinea1/(1024/7) + 2;"
        // unsigned char digit_low = alinea2 & 0x0F;
        LATB = (LATB & 0x80FF) | (display7segments[alinea2] <<8);

        LATEbits.LATE1 = !LATEbits.LATE1;

        IFS1bits.AD1IF = 0;
    }

}