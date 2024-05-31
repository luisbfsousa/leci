#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<20000 * ms);
}

void setDutyCycle(unsigned int dc){
    OC3RS = ((PR3 + 1) * dc) / 100;
}

int main(void){
    TRISB = TRISB | 0x0006;

    T3CONbits.TCKPS = 2;
    PR3 = 38461;
    TMR3 = 0;
    T3CONbits.TON = 1;

    OC4CONbits.OCM = 7;
    OC4CONbits.OCTSEL =1;
    setDutyCycle(50);
    OC4CONbits.ON = 1;
    
    while(1){
        value = (PORTB & 0x0002);
        if(value == 0 && state == 0){
            while(PORTBbits.RB2 == 1);
            setDutyCycle(25);
        } else if(value == 0 && state == 1){
            while(PORTBbits.RB2 == 1);
            setDutyCycle(75);
        }
        state = !state;
        delay(1300);
        if (value == 2) {
            if (state == 0) {
                setDutyCycle(25);
            } else if (state == 1) {
                setDutyCycle(75);
            }
        }
    }

    return 0;
}