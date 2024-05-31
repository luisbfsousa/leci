#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFFC3;

    TRISBbits.TRISB2 = 1;

    int count = 11;
    int freq;

    LATE = (LATE & 0xFFC3) | (count << 2);

    while(1){
        LATE = (LATE & 0xFFC3) | (count << 2);

        if(PORTBbits.RB2 == 1){
            freq = 3636364;
        }else if(PORTBbits.RB2 == 0){
            freq = 8695652;
        }

        if(count == 11){
            count = 3;
        }else{count=count + 1;}

        delay(freq);

        printInt(count,10 | 2 << 16 );
        putChar('\r');
    }
    
}

