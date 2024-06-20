#include <detpic32.h>

volatile int count;

void putc(char byte2send){
    while (U2STAbits.UTXBF == 1);
    U2TXREG = byte2send;
}

void putStr(char* string){
    while(*string != '\0') putc(*string++);
}

int main(void){
    TRISE = TRISE & 0xFFE1;
    LATE = (LATE & 0xFFE1) | (count << 1);

    U2BRG = ((PBCLK + 8 * 9600) / (16 * 9600)) - 1;

    //Guiao 10, conf UART, valores variam como?
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 2;   //impar (ou 0b10)
    U2MODEbits.STSEL = 1;   //2 stop bits
    U2STAbits.UTXEN = 1;    
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    //guiao 8, conf timer para interrupcoes, mas nao para o timer, para o UART
    IPC8bits.U2IP = 2;  // Interrupt priority (must be in range [1..6])             IPC!!!8!!!
    IEC1bits.U2RXIE = 1;  // Enable timer T2 interrupts           U2IE => U2RXIE    IEC!!!1!!!  
    IFS1bits.U2RXIF = 0;  // Reset timer T2 interrupt flag        U2IF => U2RXIF    IFS!!!1!!!

    EnableInterrupts();

    count = 15; //valor inicial no valor maximo 

    while(1);
    
    return 0;
}

//Guiao 11 mas nos exercicios, nao vai ser fornecido no teste
void _int_(32) isr_uart2(void){ //VECTOR_UART2 = 32
    if(IFS1bits.U2RXIF == 1){
        char byte = U2RXREG;
        if(byte == 'U'){
            count++;
            if(count==16){
                count = 0;
            }
        }
        if(byte=='R'){
            count=0;
            putStr("RESET\n");
        }
        LATE = (LATE & 0xFFE1) | (count << 1);
        IFS1bits.U2RXIF = 0;  // reset flag
    }
}

// 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
//  0     1    2    3    4    5    6    7    8   9    A    B    C     D    E    F

//RE1-RE4
//1111 1111 1110 0001   0xFFE1


//guiao 10 UxBRG = ((PBCLK + 8 * baudrate) / (16 * baudrate)) - 1
//ENUNCIADO =>  baudrate = 9600 bps (16 brgh???)