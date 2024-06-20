#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFF03;

    TRISBbits.TRISB2 = 1;
    TRISBbits.TRISB0 = 1;

    int freq = 2739726;
    int count = 3;

    LATE = (LATE & 0xFF03) | (count << 2);

    while(1){
        LATE = (LATE & 0xFF03) | (count << 2);

        if((PORTBbits.RB2 == 1) && (PORTBbits.RB0 == 1)){
            freq=2739726;
        }
        else if((PORTBbits.RB2 == 0) && (PORTBbits.RB0 == 0)){
            freq=4347826;
        }

        delay(freq);

        if(count == 48){count = 3;}
        else{count = count << 1;}

        printInt(count, 10 | 2 <<16);
        putChar('\n');
    }
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0    1     2    3    4    5    6    7    8   9     A    B    C    D    E    F

//E7 a E2   1111 1111 0000 0011     0xFF03
//B2 e B0   0000 0000 0000 0101     0x0005