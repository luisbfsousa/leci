#include <detpic32.h>

volatile int voltage = 0;

unsigned char to_bcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

void send_to_displays(unsigned char value) {
    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F,0x66, 0x6D, 0x7D, 0x07,0x7F, 0x6F, 0x77, 0x7C,0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 1; 
    if (displayFlag) {
        LATD = ( LATD & 0xFF9F ) | 0x0040;
        LATB = ( LATB & 0x80FF ) | disp7Scodes[value >> 4] << 8;
        displayFlag = 0;
    } else {
        LATD = ( LATD & 0xFFBF ) | 0x0020;
        LATB = ( LATB & 0x80FF ) | disp7Scodes[value & 0x0F] << 8;
        displayFlag = 1;
    }
}

void _int_(_ADC_VECTOR) isr_adc(void) {
    int average = 0;
    int *p = (int *)(&ADC1BUF0);
    average = (p[0]  + p[4]  + p[8]  + p[12] + p[16] + p[20] + p[24] + p[28]   ) / 8;
    voltage = (average * 33 + 511) / 1023, 10;
    IFS1bits.AD1IF = 0;
    AD1CON1bits.ASAM = 0;
}

void _int_(_TIMER_1_VECTOR) isr_T1(void) {
    // ADC conversion
    AD1CON1bits.ASAM = 1;

    IFS0bits.T1IF = 0;
}

void _int_(_TIMER_3_VECTOR) isr_T3(void) {
    send_to_displays(to_bcd(voltage));
    IFS0bits.T3IF = 0;
}


int main(void) {
    // Display configuration
    TRISD = TRISD & 0xFF9F; // Mark RD6 - RD5 as outputs
    TRISC = TRISC & 0xBFFF; // Mark RC14 as output
    TRISB = ( TRISB & 0x80FF ); // Mark RB14 - RB8 as outputs

    // ADC configuration
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 7;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    // ADC interrupt configuration
    IPC6bits.AD1IP = 2;
    IEC1bits.AD1IE = 1;
    IFS1bits.AD1IF = 0;

    // T1 configuration
    T1CONbits.TCKPS = 2;
    PR1 = 62499; TMR1 = 0;
    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;

    // T3 configuration
    T3CONbits.TCKPS = 2;
    PR3 = 49999; TMR3 = 0;
    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;

    T1CONbits.TON = 1;
    T3CONbits.TON = 1;

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

    while (1) {};
    return 0;
}

/* =========== TIMER 1 (1, 8, 64, 256) ============
// Quero obter uma frequência de 5Hz
//
// PRx   = (f_in / f_out) - 1
//       = (312500 / 5) - 1 = 62499 < 65535
// 
// f_in  = 20*10^6 / 64 = 312500
// f_out = 5Hz
//
// Então, pre_scaler = 64  e couter = 62499
//
// ======== TIMER 3 (1,2,4,8,16,32,64,256) ========
// Quero obter uma frequência de 100Hz
// PRx   = (f_in / f_out) - 1
//       = (5000000 / 100) - 1 = 49999 < 65535
// 
// f_in  = 20*10^6 / 4 = 5000000
// f_out = 100Hz
//
// Então, pre_scaler = 4  e couter = 49999
*/