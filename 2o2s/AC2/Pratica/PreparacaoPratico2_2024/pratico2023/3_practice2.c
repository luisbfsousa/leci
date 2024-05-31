#include <detpic32.h>

void putc(char byte2send){
    while(U2STAbits.UTXBF == 1);    //guiao 10, Procedimento de transmissão – polling
    U2TXREG = byte2send;        
}

void putStr(char* string){
    while(*string){
        putc(*string++);
    }
}

void configUART(){
    U2BRG = 520;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 1; //pag 208 manual
    U2MODEbits.STSEL =  1; //pag 208 manual
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    IEC1bits.U2RXIE = 1; //pag 75
    IPC8bits.U2IP = 2;

    IFS1bits.U2RXIF = 0;
    IFS1bits.U2TXIF = 0;
    IFS1bits.U2EIF = 0;
}

volatile int count;

int main(void){
    TRISE = TRISE & 0xFFF0;
    LATE = (LATE & 0xFFE0) | count;

    configUART();
    EnableInterrupts();

    count = 0;

    while(1);

    return 0;
}

void _int_(32) carvalho(void){
    if(IFS1bits.U2RXIF == 1){
        char c;
        c = U2RXREG;
        putc(c);//enunciado echo 
        putStr("\n");//enunciado echo 
        if(c == 'F'){
            count++;
            if(count==10){
                count = 0;
            }
        }
        else if(c == 'C'){
            count = 0;
            putStr("Valor Minimo\n");
        }
        LATE = (LATE & 0xFFF0) | count;
        IFS1bits.U2RXIF = 0;
    }
    
}

//2400 bps --- even --- 8 data bits --- 2 stop bits

// (Fpbclk + (8 * baudrate))/(16*baudrate)

//baudrate = 2400
//Fpbclk = 520.3 => 520   aka U2BRG

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0     1    2    3    4    5    6    7    8   9    A    B    C     D    E    F
