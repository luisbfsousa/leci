/**
 * configurar uart pagina 75.
 * saber u2brg.
 * pagina 77 e guiao 11 pa ver interrupt set up
 * guiao 11 pa flags do interruptor
 */

#include <detpic32.h>

void putc(char byte2send) {
    while (U2STAbits.UTXBF == 1);
    U2TXREG = byte2send;
}

void putStr(char* str) {
    int i;
    for (i = 0; str[i] != '\0'; i++) {
        putc(str[i]);
    }
}

volatile unsigned char counter = 15;

int main(void) {
    TRISE = TRISE & 0xFFE1;
    LATE = (LATE & 0xFFE1) | counter << 1;

    U2BRG = 129;  // 9600 baudrate, 16 de brgh
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0b10;  // odd
    U2MODEbits.STSEL = 1;     // 2 stop bits
    U2STAbits.URXEN = 1;
    U2STAbits.UTXEN = 1;
    U2MODEbits.ON = 1;

    //GUIAO 8, +/-
    IPC8bits.U2IP = 2;    // Interrupt priority (must be in range [1..6])
    IEC1bits.U2TXIE = 0;  // Disable U2 transmiter interrupts
    IEC1bits.U2RXIE = 1;  // Enable U2 transmiter interrupts
    IFS1bits.U2RXIF = 0;  // Reset U2 interrupt flag

    EnableInterrupts();

    while (1);
    return 0;
}

// Interrupt service routine (interrupt handler)
void _int_(32) isr_receive_UART2(void) {
    if (IFS1bits.U2RXIF == 1) {  // se foi recebido byte
        char byte = U2RXREG;
        if (byte == 'U') {
            counter++;
            if (counter == 16) {
                counter = 0;
            }
        }
        if (byte == 'R') {
            counter = 0;
            putStr("RESET");
        }
        LATE = (LATE & 0xFFE1) | counter << 1;
        IFS1bits.U2RXIF = 0;  // reset flag
    }
}
