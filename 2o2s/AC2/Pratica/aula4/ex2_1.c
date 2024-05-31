#include <detpic32.h>

/*void delay(unsigned int ms){
    readCoreTimer();
    while(resetCoreTimer()<20000*ms);
}*/

int main(void){
    TRISBbits.TRISB8 = 0;
    TRISBbits.TRISB14 = 0;

    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;

    while(1){
        char input = getChar();
        
        if(input >= 0x41 && input <= 0x47){
            if (input == 0x41) LATB = (LATB & 0x80FF) | 0x0100;//a
            else if (input == 0x42) LATB = (LATB & 0x80FF) | 0x0200;//b
            else if (input == 0x43) LATB = (LATB & 0x80FF) | 0x0400;//c
            else if (input == 0x44) LATB = (LATB & 0x80FF) | 0x0800;//d
            else if (input == 0x45) LATB = (LATB & 0x80FF) | 0x1000;//e
            else if (input == 0x46) LATB = (LATB & 0x80FF) | 0x2000;//f
            else if (input == 0x47) LATB = (LATB & 0x80FF) | 0x4000;//g
        }
        
        input = input & 0x07;
        int value = 1 << (input - 1);
        LATB = (LATB & 0x80FF) | (value << 8);
        
    }

    return 0;
}