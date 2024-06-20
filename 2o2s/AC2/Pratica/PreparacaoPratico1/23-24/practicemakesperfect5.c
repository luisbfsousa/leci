#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFF08;

    TRISBbits.TRISB2 = 1;
    TRISBbits.TRISB0 = 1;

    int count = 0;
    int freq = 2739726;

    LATE = (LATE & 0xFF08 )| (count << 2);

    while(1){
        LATE = (LATE & 0xFF08) | (count << 2);

        if((PORTBbits.RB2 == 0 )&&(PORTBbits.RB0 == 0)){
            freq = 4347826;
        }
        else if((PORTBbits.RB2 == 1 )&&(PORTBbits.RB0 == 1)){
            freq = 2739726;
        }

        delay(freq);    

        if(count==0){
            count = 11;
        }else{count = count >> 1;}
    }

    return 0;
}



//0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
// 0     1    2   3     4    5    6   7    8    9     A    B    C   D    E    F


//RE7 a RE2    1111 1111 0000 0011  0xFF08
