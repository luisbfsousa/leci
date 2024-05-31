#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFFC3;
    TRISBbits.TRISB2  = 1;

    int count = 0;
    int freq;

    LATE = (LATE & 0xFFC3) | (count << 2);

    while(1){
        LATE = (LATE & 0xFFC3) | (count << 2);

        if(PORTBbits.RB2 == 1){freq = 3636363; }
        else if(PORTBbits.RB2 == 0){freq = 8695652;}

        if(count== 0){count = 11;}
        else{count = count -1;}

        delay(freq);
    }

    return 0;
}