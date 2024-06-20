#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFFC3;
    TRISBbits.TRISB2 = 1;

    int freq;
    int count = 0;
    
    while(1){
        LATE = (LATE & 0xFFC3) | (count << 2);

        if(PORTBbits.RB2 == 0){
            freq = 8695652;
        }
        else if(PORTBbits.RB2 == 1){
            freq = 3636364;
        }

        //count  = count -1; erro interessante

        if(count == 0){
            count =11;
        }else{
            count = count -1;
        }

        delay(freq);

        printInt(count, 10 | 2 << 16);
        putChar('\r');
    }
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//   0   1    2    3    4     5   6   7     8    9    A    B    C    D     E    F

//RE5 -> RE2    1111 1111 1100 0011     0xFFC3
