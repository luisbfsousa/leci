#include <detpic32.h>

void delay(unsigned int ms) {
    resetCoreTimer();
    while(readCoreTimer() < ms);
}

int main(void) {
    TRISE = TRISE & 0xFF87; // ligar leds RE6 a RE3 (1111 1111 1000 0111)
    TRISBbits.TRISB3 = 1; // ligar porto RB3

    int count = 14;
    int freq;

    while(1){
        LATE = (LATE & 0xFF87) | (count << 2);
        
        if(PORTBbits.RB3 == 1){
            freq = 20000000/3.5;
        }
        else if(PORTBbits.RB3 == 0){
            freq = 20000000/7.9;
        }

        delay(freq);

        printInt(count, 10 | 2 << 16);
        putChar('\n');

        if(count == 0){
            count = 14;
        }else{count = count-1;}
    }

    return 0;
}