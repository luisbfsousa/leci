#include <detpic32.h>

#define VECTOR_UART2 32

typedef struct { 
    char mem[10]; // Storage area 
    int nchar;   // Number of characters to be transmitted 
    int posrd;   // Position of the next character to be transmitted 
}t_buf;

volatile t_buf txbuf;

void putstrInt(char *s) {
    while (txbuf.nchar > 0); // Wait while the buffer is not empty
    while (*s != '\0') {
        txbuf.mem[txbuf.nchar++] = *s++;
    }
    txbuf.posrd = 0;
    IEC1bits.U2TXIE = 1;
}

int main(void) {
    // Configure UART2: 115200, N, 8, 1
    U2BRG = ((PBCLK + 8 * 115200) / (16 * 115200)) - 1;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0; // 8 bits sem paridade
    U2MODEbits.STSEL = 0; // 1 stop bit
    U2STAbits.UTXEN = 1; // Enable do módulo de transmissão
    U2STAbits.URXEN = 1; // Enable do módulo de receção
    U2MODEbits.ON = 1;

    // Configure UART2 interrupts, with RX interruprs enabled and TX interrupts disabled
    IEC1bits.U2RXIE = 0;
    IEC1bits.U2TXIE = 0;
    IPC8bits.U2IP = 1;
    IFS1bits.U2RXIF = 0;
    IFS1bits.U2TXIF = 0;
    U2STAbits.URXISEL = 0;
    U2STAbits.UTXISEL = 0;

    EnableInterrupts();

    while(1) {
        //putsrtInt("klqqc2DVCcoCwAw9mtSdoJJccimeFgoTBh2wlqmxC9GvW1rOkjt4jigseOqQfQNCfFmVcbbmcONIIdm3AjF4r51Nn5aZauBmFmxgTsRQ1OYWwXtiYKmHYUNOpJzwOzIMJF5Dm790Wp7cqQxHZulBrFYK9adkH7kw\0")
        putstrInt("Test string which can be as long as you like, up to a maximum of 100 characters\n");
    }
    return 0;
}

void _int_(VECTOR_UART2) isr_uart2(void) {
    if (IFS1bits.U2TXIF == 1) {
        if (txbuf.nchar > 0) {
            U2TXREG = txbuf.mem[txbuf.posrd++];
            txbuf.nchar--;
        }else{
            IEC1bits.U2TXIE = 0;
        }
        IFS1bits.U2TXIF = 0;
    }
}