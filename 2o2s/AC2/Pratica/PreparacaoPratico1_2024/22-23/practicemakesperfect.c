#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFF03;

    TRISB = TRISB & 0xFFF5;

    int count = 48;
    LATE = (LATE & 0xFF03) | (count << 2);

    while(1){
        LATE = (LATE & 0xFF03) | (count << 2);
        if((PORTBbits.RB2 == 1) && (PORTBbits.RB0 == 1)){
            delay(4347826);
        }
        else if((PORTBbits.RB2 == 0) && (PORTBbits.RB0 == 0)){
            delay(2739726);
        }

        if (count ==  3){count = 48;}
        else{count = count >> 1;}
    }

    return 0;
}
