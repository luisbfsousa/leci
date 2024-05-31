#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()< 20000 * ms);
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = { 0x3F, 0x06, 0x5B, 0x4F, 
                                    0x66, 0x6D, 0x7D, 0x07, 
                                    0x7F, 0x6F, 0x77, 0x7C, 
                                    0x39, 0x5E, 0x79, 0x71};

    //!!!nao pode ser "int flag"
    static int flag = 0;
    int valueLow = value % 10;
    int valueHigh = value / 10;

    if(flag){
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1; //0000 0000 0100 0000   0x0040  LATD = (LATD & 0xFF9F) | 0x0040;
        LATB = (LATB & 0x80FF) | display7Scodes[valueHigh] << 8;
        flag = 0;
    }else{
        LATDbits.LATD5 = 1; //0000 0000 0010 0000   0x0020  LATD = (LATD & 0xFF9F) | 0x0020;
        LATDbits.LATD6 = 0;
        LATB = (LATB & 0x80FF) | display7Scodes[valueLow] << 8;
        flag = 1;
    }
}

void configTimerT2(){
    //A frequência de refrescamento dos displays deve ser 120 Hz   Fout = 120
    //Prescaler = 20000000 / (65536*120) = 2.54313151
    //Prescaler = 4  => logo é !!! 2 !!!
    // PR2 = ((20000000 / 4) / 120) - 1 = 41665.666666667
    T2CONbits.TCKPS = 2; 
    PR2 = 41665;
    TMR2 = 0;
    T2CONbits.TON = 1;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1; 
    IFS0bits.T2IF = 0;
}

void configADC(){
    TRISBbits.TRISB4 = 1; 
    AD1PCFGbits.PCFG4= 0; 
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1; 
    AD1CON3bits.SAMC = 16; 
    AD1CON2bits.SMPI = 1; //A ADC deve fazer duas (2) conversões por cada amostra.  2-1
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
}

volatile int temp = 0;

int main(void){
    TRISB = TRISB & 0x80FF;
    TRISD = TRISD & 0xFF9F;

    configADC(); //Guiao 6
    configTimerT2(); //Guiao 8
    EnableInterrupts();

    while(1){
        AD1CON1bits.ASAM = 1; // Start conversion 
        while( IFS1bits.AD1IF == 0 ); // Wait while conversion not done 

        int i, media = 0;
        int *p = (int *)(&ADC1BUF0);
        for (i = 0; i < 2; i++) { //2 porque sao as duas conversoes
            media += p[i * 4];
        }
        media = media / 2; //2 porque sao as duas conversoes 
        temp = ((media * 50 + 511) / 1023) + 15;

        IFS1bits.AD1IF = 0;
        delay(100);
    }

    return 0;
}

// Interrupt service routine (interrupt handler)
void _int_(8) isr_T2(void) { //pagina 74 PIC32MX7xx_Family_Datasheet_Corrected.pdf
    send2displays(temp);
    IFS0bits.T2IF = 0;  // Reset AD1IF flag
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0     1    2    3    4    5    6    7    8   9    A    B    C     D    E    F

