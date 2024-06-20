#include <detpic32.h>

void delay(unsigned int us){
    resetCoreTimer();
    while(readCoreTimer()<20*us);
}

void setDutyCycle(unsigned int duty){
    OC1RS = ((33332 +1) * duty) / 100;
}

int main(void){
    TRISB = TRISB | 0x0009;

    T2CONbits.TCKPS = 2;
    PR2 = 33332;
    TMR2 = 0;
    T2CONbits.TON = 1;

    OC1CONbits.OCM = 6;
    OC1CONbits.OCTSEL =0;
    setDutyCycle(25);
    OC1CONbits.ON = 1;

    while(1){
        if(PORTBbits.RB0 == 1 && PORTBbits.RB3 == 0){
            setDutyCycle(25);
        }
        else if(PORTBbits.RB0 == 0 && PORTBbits.RB3 == 1){
            setDutyCycle(70);
        }
        delay(250); 
    }

    return 0;
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0     1    2    3    4    5    6    7    8   9    A    B    C     D    E    F

//prescaler = 20000000 / (150*65536) = 2.034505208
//prescaler = 4  => 2
//PR2 = ((20000000 / 4) / 150) - 1  = 33332.333333333
