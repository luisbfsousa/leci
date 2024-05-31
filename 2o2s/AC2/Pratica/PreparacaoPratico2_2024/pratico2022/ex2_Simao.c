#include <detpic32.h>

void send(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
                                    //   0     1     2     3     4     5     6     7     8     9     A     B     C     D     E     F   
    static char displayFlag = 0; // static variable: doesn't loose its
                                // value between calls to function

    // if "displayFlag" is 0 then send digit_low to display_low
    if(!displayFlag){
        int tmp = value % 10;
        LATD = (LATD & 0xFF9F) | 0x0020;
        unsigned char digit_low = display7Scodes[tmp];
        LATB = (LATB & 0x80FF ) | digit_low << 8;
    }
    // else send digit_high to didplay_high
    else{
        int tmp = value / 10;
        LATD = (LATD & 0xFF9F) | 0x0040;
        unsigned char digit_high = display7Scodes[tmp];
        LATB = (LATB & 0x80FF ) | digit_high << 8;
    }
    // toggle "displayFlag" variable
    displayFlag = !displayFlag;
}

void configADC() {
    TRISBbits.TRISB4 = 1;	
    AD1PCFGbits.PCFG4 = 0;
    AD1CHSbits.CH0SA = 4;	
    AD1CON2bits.SMPI = 2 - 1;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON1bits.ON = 1;
}

void config_T3(){
    //20000000/(65536*40) = 2.17Hz
    //Kpresc = 4
    //Fout presc = 20000000/4 = 5000000
    //PR2 = (20000000/4)/140-1 = 35714
    T3CONbits.TCKPS = 2;    // 1:4 prescaler
    PR3 = 35714;
    TMR3 = 0;
    T3CONbits.TON = 1;
}

void configInterrupts_TimerT3(){
    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;
    EnableInterrupts();
}

void delay(int ms){
    resetCoreTimer();
    while(readCoreTimer() < ms);
}

volatile int temp = 0;

int main(void){
    configADC();
    config_T3();
    configInterrupts_TimerT3();

    TRISB = TRISB & 0x80FF;
    LATB = LATB & 0x80FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    while(1){
        AD1CON1bits.ASAM = 1; //Starts conversion
        while(IFS1bits.AD1IF == 0); //Wait while conversion not done

        int *p = (int *)(&ADC1BUF0);
        int i = 0;
        int sum = 0;
        for(; i < 2; i++){
            sum += p[i*4];
        }
        int average = sum/2;
        temp = (average*50+511)/1023+15;
        delay(20000000/5);
    }
    return 0;
}

void _int_(12) isr_T3(void){
    send(temp);
    IFS0bits.T3IF = 0;
}
