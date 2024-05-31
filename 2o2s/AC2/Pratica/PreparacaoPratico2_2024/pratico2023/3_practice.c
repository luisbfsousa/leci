#include <detpic32.h>

void putc(char byte){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}

void putStr(char* str){
    while (*str != '\0') putc(*str++);
}

volatile int count;

int main(void){
    TRISE = TRISE & 0xFFF0;
    LATE = (LATE & 0xFFF0) | (count << 1);

    U2BRG = ((PBCLK + 8 * 2400) / (16 * 2400)) - 1;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0; //even
    U2MODEbits.STSEL = 1; //2 stop bits
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    IPC8bits.U2IP = 2; 
    IEC1bits.U2TXIE = 0; 
    IEC1bits.U2RXIE = 1;  
    IFS1bits.U2RXIF = 0;

    EnableInterrupts();

    while(1);

    return 0;
}

void _int_(32) queroum20(void){
    if(IFS1bits.U2RXIF == 1){
        char c = U2RXREG;
        if (c=='F'){
            count++;
            if(count==9){
                count=0;
            }
        }
        if (c=='C'){
            count = 0;
            putStr("VALOR MINIMO");
        }
        LATE = (LATE & 0xFFF0) | (count << 1);
        IFS1bits.U2RXIF = 0;  // reset flag
    }
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0     1    2    3    4    5    6    7    8   9    A    B    C     D    E    F

//RE3-0
//1111 1111 1111 0000   0xFFF0
