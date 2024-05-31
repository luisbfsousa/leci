#include <detpic32.h>

int main(void) {
        T1CONbits.TCKPS = 2;
        PR1 = 62499;
        TMR1 = 0;
        T1CONbits.TON = 1;

        T3CONbits.TCKPS = 4;
        PR3 = 49999;
        TMR3 = 0;
        T3CONbits.TON = 1;

        IPC1bits.T1IP = 2;
        IEC0bits.T1IE = 1;
        IFS0bits.T1IF = 0;

        IPC3bits.T3IP = 2;
        IEC0bits.T3IE = 1;
        IFS0bits.T3IF = 0;

        EnableInterrupts();

        while (1);
        return 0;
}

void _int_(4) isr_T1(void) {
        putChar('1');
        IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void) {
        putChar('3');
        IFS0bits.T3IF = 0;
}