#include <detpic32.h>

int main(void){
    // Configure UART2: 115200, N, 8, 1 
    U2BRG = ((PBCLK+8*115200)/(16*115200))-1;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0; // 8 bits sem paridade
    U2MODEbits.STSEL = 0; // 1 stop bit
    U2STAbits.UTXEN = 1; // Enable do módulo de transmissão
    U2STAbits.URXEN = 1; // Enable do módulo de receção
    U2MODEbits.ON = 1;
    
    // Configure UART2 interrupts, with RX interruprs enabled and TX interrupts disabled
    IEC1bits.U2RXIE = 1;
    IEC1bits.U2TXIE = 0;
    IPC8bits.U2IP = 1;
    IFS1bits.U2RXIF = 0;
    U2STAbits.URXISEL = 0;

    EnableInterrupts(); 
   
    while(1); 

    return 0;
}