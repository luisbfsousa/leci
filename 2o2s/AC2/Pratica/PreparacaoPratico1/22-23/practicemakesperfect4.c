#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<ms);
}

int main(void){
    TRISE = TRISE & 0xFF03;
    
    TRISBbits.TRISB2 = 1;
    TRISBbits.TRISB0 = 1;

    int count = 48;
    LATE = (LATE & 0xFF03) | (count << 2);

    int freq = 2739726;

    while(1){
        LATE = (LATE & 0xFF03) | (count << 2);

        if ((PORTBbits.RB2 == 1) && (PORTBbits.RB0 == 1)){
            freq =4347826;
        }
        else if((PORTBbits.RB2 == 0) && (PORTBbits.RB0 == 0)){
            freq =2739726;
        }

        delay(freq);
        
        if(count==3){count = 48;}
        else{count = count >> 1;}
    }

    return 0;
}
