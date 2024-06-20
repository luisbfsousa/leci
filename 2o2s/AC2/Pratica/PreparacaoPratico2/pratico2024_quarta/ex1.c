#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
}

void setDutyCycle(unsigned int dc){
    OC4RS = ((PR3 + 1) * dc) /100;
}

int main(void){
    TRISB = TRISB & 0x0002;
    T2CONbits.TCKPS = 2;
    PR3 = 38461;
    TMR3 = 0;
    T3CONbits.TON = 1;
    OC4CONbits.OCM = 6; 
    OC4CONbits.OCTSEL =0;
    setDutyCycle(50);
    OC4CONbits.ON = 1;

    int flag = 0;

    while(1){
        if(PORTBbits.RB1 == 1){}
        else{
            if (flag){
                setDutyCycle(25);
            }else{
                setDutyCycle(75);
            }
            flag= !flag;
            delay(1300);
        }
    }
    
    return 0;
}

//prescaler = (20000000 / 130) / 65536 = 2.34750601
// prescaler = 4 => 2
//PR3 = (20000000 / 4) / 130 -1 = 38460.538461538

//0000 0000 0000 0010  0x0002