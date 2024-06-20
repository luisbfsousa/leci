#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFFC3;                         //PortE
    TRISB = TRISB | 0x0004;                         //PortB

    int count = 0;                                  //iniciar count
    int freq;                                       //definir freq

    while(1){
        LATE = (LATE & 0xFFC3) | (count << 2);      //output 

        if (PORTBbits.RB2 == 0){
            freq = 8695652;                         //freq associada, 2.3Hz
        }
        else if (PORTBbits.RB2 == 1){
            freq = 3636364;                         //freq associada, 5.5Hz
        }

        delay(freq);                                //mudanca freq de acordo com o switch
        
        if(count == 0){count = 11;}
        else{count = count -1;}                    //implementar contador

        printInt(count, 10 | 2 << 16);              //print terminal
        putChar('\r');
    }

    return 0;
}

//0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0    1    2   3    4     5   6    7    8    9    A     B    C   D     E    F

//ports RE5 a RE2     1111 1111 1100 0011   0xFFC3
//port RB2          0000 0000 0000 0100   0x0004
