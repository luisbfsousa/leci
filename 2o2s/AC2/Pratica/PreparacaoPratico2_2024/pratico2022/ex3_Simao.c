#include <detpic32.h>

void configUart(int baudRate);
void putc(char byte2send);
void puts(char *string);

int main(void){
    configUart(9600);
    TRISE = TRISE & 0xFFE1; // configure RE4 to RE1 as output
    EnableInterrupts();
    int count = 15;
    LATE = (LATE & 0xFFE1) | count;
    while(1);
    return 0;
}

void configUart(int baudRate){// Configure UART2:
    U2BRG = ((20000000 + 8 * baudRate) / (16 * baudRate)) - 1;
    U2MODEbits.BRGH = 0;  // divisor de 16  = 0 ;   divisor de 4 = 1;
    
    U2MODEbits.PDSEL = 10;      // 11 = 9-bit data, no parity  ; 10 = 8-bit data, odd parity  ;  01 = 8-bit data, even parity  ; 00 = 8-bit data, no parity
    U2MODEbits.STSEL = 1;       // 1 = 2 Stop bits ; 0 = 1 Stop bit

    U2STAbits.UTXEN = 1;  // transmitter
    U2STAbits.URXEN = 1;  // receiver

    // 4 - Enable interrupts
    U2STAbits.UTXSEL = 00;     // interrupts of transmitter -- PIC32 manual reference uart sect 21 pag 7
    U2STAbits.URXISEL = 00;    // interrupts of receiver -- PIC32 manual reference uart sect 21 pag 8

    IEC1bits.U2RXIE = 1;  // Enable U2RXIE interrupts
    //IEC1bits.U2TXIE = 1;  // Enable U2TXIE interrupts
    //IEC1bits.U2EIE = 1;  // Enable U2EIE interrupts dos erros

    IFS1bits.U2RXIF = 0; // clear flag receiver
    //IFS1bits.U2TXIF = 0; // clear flag transmiter
    //IFS1bits.U2EIF = 0; // clear flag error

    IPC8bits.U2IP=2;  // priority

    U2MODEbits.ON = 1;

}

void putc(char byte2send){
    while(U2STAbits.UTXBF==1);// wait while UTXBF == 1
    U2TXREG=byte2send;// Copy byte2send to the UxTXREG register
}

void puts(char *string){
    while (*string){
        putc(*string++);
    }
}

void _int_(32) isr_uart2(void){

    if(U2STAbits.OERR==1){
        U2STAbits.OERR=0;
        char tmp=U2RXREG;
    }

    if(U2STAbits.FERR || U2STAbits.PERR){
        // read UxRXREG (to discard the character) and return 0
        char tmp=U2RXREG;
    }

    if(IFS1bits.U2RXIF==1){
        if(U2RXREG=='U'){
            count+=1;
            if(count>15){
                count=0;
            }
        }else if(U2RXREG=='T'){
            count = 0;
            puts("RESET\n");
        }
        LATE = (LATE & 0xFFE1) | count;

        IFS1bits.U2RXIF=0;
    }
}