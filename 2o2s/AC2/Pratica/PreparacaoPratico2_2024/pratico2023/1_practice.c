#include <detpic32.h>

void delay(unsigned int us){
    resetCoreTimer();
    while(readCoreTimer()<20 * us);
}

void setDutyCycle(unsigned int dc){
    OC3RS = ((PR3 + 1) * dc) / 100;
}

int main(void){
    TRISB = TRISB | 0x0005;

    T3CONbits.TCKPS = 2;
    PR3 = 41667;
    TMR3 = 0;
    T3CONbits.TON = 1;

    OC1CONbits.OCM = 6;
    OC1CONbits.OCTSEL =0;
    setDutyCycle(75);
    OC1CONbits.ON = 1;
    
    while(1){
        if(PORTBbits.RB2 == 0 && PORTBbits.RB0 == 0){
            setDutyCycle(30);
        }
        else if(PORTBbits.RB2 == 1 && PORTBbits.RB0 == 1){
            setDutyCycle(55);
        }
        delay(360);
    }

    return 0;
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0     1    2    3    4    5    6    7    8   9    A    B    C     D    E    F

//RB2 e RB0
//0000 0000 0000 0101       0x0005

//Prescaler = 20000000 / (120*65536) = 2.54313151
//Prescaler = 4 => 2
//PR3 = (20000000 / 4) / 120 = 41666.666666667