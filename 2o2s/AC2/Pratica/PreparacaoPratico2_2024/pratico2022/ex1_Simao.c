#include <detpic32.h>

void config_T2();
void config_PWM();
void setPWM(unsigned int dutyCycle);
void delay(int ms);

int main(void){

    config_T2();
    config_PWM();

    TRISB = TRISB | 0x0003;     // RB0 e RB1 como entrada
    TRISEbits.TRISE2 = 0;       // RE2 como saída

    while(1){
        if(PORTBbits.RB0 == 0 && PORTBbits.RB1 == 0){
            setPWM(30);
        }
        else if(PORTBbits.RB0 == 1 && PORTBbits.RB1 == 1){
            setPWM(55);
        }
    }
}

void config_T2(){
    //Prescaler = 20000000/((65535+1)*Fout) = 20000000/(65536*120) = 2,54Hz
    //Fout_presc = 20000000/Prescaler = 20000000/4 = 5000000Hz
    //PRx = Fout_presc/Fout - 1 = 5000000/120 - 1 = 41665
    T2CONbits.TCKPS = 2;        // 1:4 prescaler
    PR2 = 41665;                // Fout = 20MHz / (4 * (41665 + 1)) = 120Hz
    TMR2 = 0;                   // Reset timer T2 count register
    T2CONbits.TON = 1;          // Enable timer T2
}

void config_PWM(){
    OC2CONbits.OCM = 6;         // PWM mode on OCx; fault pin disabled
    OC2CONbits.OCTSEL = 0;      // Use timer T2 as the time base for PWM generation
    OC2RS = 0;                  // Ton constant
    OC1CONbits.ON = 1;          // Enable OC1 module
}

void setPWM(unsigned int dutyCycle){
    if(dutyCycle >0 && dutyCycle <100){
        OC2RS = (unsigned int)((PR2 + 1) * dutyCycle) / 100;
    }
}

void delay(int ms){
    for(; ms > 0; ms--){
        resetCoreTimer();
        while(readCoreTimer() < 20);
    }
}