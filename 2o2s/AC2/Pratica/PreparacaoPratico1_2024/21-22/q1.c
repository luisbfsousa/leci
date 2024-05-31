#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFFC0;
    
    TRISDbits.TRISD3 = 1;

    int val;

    LATE = (LATE & 0xFFC0) | (val<<1);

    while(1){
        LATE = (LATE & 0xFFC0) |(val<<1);

        val = val << 1;
        if (val > 32){val = 1;}

        if (PORTBbits.RB2 == 1){
            delay(6666666);
        }
        else if(PORTBbits.RB2 == 0){
            delay(2857142);
        }
    }

    return 0;
}

//0000	0			Porto RE5 a RE0
//0001	1			1111 1111 1100 0000  0xFFC0
//0010	2
//0011	3			
//0100	4			
//0101	5
//0110	6			
//0111	7
//1000	8
//1001	9
//1010	A
//1011	B
//1100	C
//1101	D
//1110	E
//1111	F
