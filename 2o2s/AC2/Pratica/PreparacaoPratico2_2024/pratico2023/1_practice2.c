#include <detpic32.h>

void delay(unsigned int us){
    resetCoreTimer();
    while(readCoreTimer() < 20 * us);
}

void setDutyCycle(unsigned int dc){
    OC3RS = ((PR3 + 1) * dc) / 100;
}

int main(void){
    TRISB = TRISB | 0x0005;

    T3CONbits.TCKPS = 2;
    PR3 = 41665;
    TMR3 = 0;
    T3CONbits.TON = 1;

    OC2CONbits.OCM = 6; // PWM mode on OCx; fault pin disabled
    OC2CONbits.OCTSEL =0;// Use timer T2 as the time base for PWM generation
    setDutyCycle(75);
    OC2CONbits.ON = 1;

    while(1){
        if(PORTBbits.RB2 == 0 && PORTBbits.RB2 == 0){
            setDutyCycle(30);
        }
        else if(PORTBbits.RB2 == 1 && PORTBbits.RB2 == 1){
            setDutyCycle(55);
        }
    }

    return 0;
}

//Prescaler = 20000000 / (65536 *120) = 2.54313151
//Prescaler = 4  => logo é !!! 2 !!!
// PR2 = ((20000000 / 4) / 120) - 1 = 41665.666666667