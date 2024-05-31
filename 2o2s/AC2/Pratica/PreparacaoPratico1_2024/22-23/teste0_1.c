#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFFC3;
    TRISBbits.TRISB2 = 1;

    int count = 10;
    int freq = 3846154;

    LATE = (LATE & 0xFFC3) | (count << 1);

    while(1){
        LATE = (LATE & 0xFFC3) | (count << 1);
        if((PORTBbits.RB2 == 1) && (PORTBbits.RB0 == 1)){
            freq = 8695652;
        }
        else if((PORTBbits.RB2 == 0) && (PORTBbits.RB0 == 0)){
            freq = 3846154;
        }

        delay(freq);

        if(count==1){count =10;}
        else{count = count >> 1;}
    }

    return 0;
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
// 0    1      2   3   4      5   6   7     8    9   A     B    C    D    E    F  

//RE5 a RE2  1111 1111 1100 0011    0xFFC3

// 2.3Hz = 8695652
// 5.2Hz = 3846154
