#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer()<(20000*ms));
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {  0x3F, 0x06, 0x5B, 0x4F, 
                                            0x66, 0x6D, 0x7D, 0x07, 
                                            0x7F, 0x6F, 0x77, 0x7C, 
                                            0x39, 0x5E, 0x79, 0x71};

    static char flag = 0;

    if(flag==1){
        // select display high
        // send digit_high (dh) to display: dh = value >> 4
        LATD = (LATD & 0xFF9F) | 0xFFDF;
		LATB = (LATB & 0x80FF) | (display7Scodes[(value >> 4)] << 8);
		flag = 0;
    }else{
        // select display low
        // send digit_low (dl) to display: dl = value & 0x0F
        LATD = (LATD & 0xFF9F) | 0xFFBF;
		LATB = (LATB & 0x80FF) | (display7Scodes[(value & 0x0F)] << 8);
		flag = 1;
    }                               
}

int main(void){
    // configure RB8-RB14 as outputs
    TRISB = TRISB & 0x80FF;
    // configure RD5-RD6 as outputs
    TRISD = TRISD & 0xFF9F;

    int counter = 0;

    while(1)
    {
        int i = 0;
        
        do{
            send2displays(0x15);
            delay(20); 
        }while(++i<10);

        counter++;

        if(counter>255){
            counter = 0;
        }  
    }

    return 0;
}