#include <detpic32.h>

void delay(unsigned int us){
    resetCoreTimer();
    while(readCoreTimer() < us * 20);
}

//guiao 9, Formula OC1RS
void setDutyCycle(unsigned int dc) {
    OC2RS = ((PR2 + 1) * dc) / 100;
}

int main(void){
    TRISB = TRISB | 0x0009;

    //guiao 9
    T2CONbits.TCKPS = 2;
    PR2 = 33332;
    TMR2 = 0;
    T2CONbits.TON = 1;

    OC2CONbits.OCM = 6;
    OC2CONbits.OCTSEL = 0;
    setDutyCycle(25); //aqui a constante vao ser os 25% do duty cycle
    OC1CONbits.ON = 1;

    while(1){
        if(PORTBbits.RB0 == 1 && PORTBbits.RB3 == 0){
            setDutyCycle(25);
        }
        else if(PORTBbits.RB0 == 0 && PORTBbits.RB3 == 1){
            setDutyCycle(70);
        }
        delay(250); 
    }

    return 0;
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0     1    2    3    4    5    6    7    8   9    A    B    C     D    E    F

//RB3 e RB1
//0000 0000 0000 1001  0x0009

//Enunciado     Fout = 150

//Prescaler = 20000000 / (65536 *150) = 2.034505208
//Prescaler = 4  => logo é !!! 2 !!!
// PR2 = ((20000000 / 4) / 150) - 1 = 33332.333333333

//para us o delay simplesmente multiplica por 20 e dps pode se usar o valor do enunciado

//guiao 8, Ver timers e avlor prescaler