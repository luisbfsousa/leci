#include <detpic32.h>

void getc(char byte2send){
    while(U2STAbits.UTXBF == 1);    //guiao 10, Procedimento de transmissão – polling
    U2TXREG = byte2send; 
}

void putStr(char* string){
    while(*string){
        putc(*string++);
    }
}

void configUART2(){
    //Guiao 10
    U2BRG = 131;
    U2MODEbits.BRGH = 1;
    U2MODEbits.PDSEL = 10; //pag 208 manual
    U2MODEbits.STSEL = 1; //pag 208
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    //Guiao 11
    IEC1bits.U2RXIE = 1;
    IEC1bits.U2TXIE = 1;
    IPC8bits.U2IP = 2;

    IFS1bits.U2RXIF = 0;
    IFS1bits.U2TXIF = 0;
    IFS1bits.U2EIF = 0;
}

volatile int count = 16;

int main(void){
    configUART2();
    EnableInterrupts();

    TRISE = TRISE & 0xFFF0;

    while(1);

    return 0;
}

void _int_(32) carvalho(void){
    IFS1bits.U2RXIF = 0;
    char c = U2RXREG;
    if(c == 'U'){
        count ++;
        if(count>=16){
            count = 0;
        }
    }
    else if(c == 'R'){
        count = 0;
        putStr("RESET");
    }
    LATE = (LATE & 0xFFF0) | (count<<1)
}

// 9600 bps -- odd parity -- 8 data bits - 2 stop bits

// baudrate = 9600

//(20000000 + (8 * 9600))/(16*9600)
//U2BRG = 130.708333333  => 131

