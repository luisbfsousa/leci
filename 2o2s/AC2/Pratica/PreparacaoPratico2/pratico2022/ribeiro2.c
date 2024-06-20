#include <detpic32.h>

#define ADCsamples 2

#define vector_T2 8

volatile int temp;

void configureADC() {
        TRISBbits.TRISB4 = 1;
        AD1PCFGbits.PCFG4 = 0;
        AD1CON1bits.SSRC = 7;
        AD1CON1bits.CLRASAM = 1;
        AD1CON3bits.SAMC = 16;
        AD1CON2bits.SMPI = ADCsamples - 1;
        AD1CHSbits.CH0SA = 4;
        AD1CON1bits.ON = 1;
}

void configureDisplays() {
        TRISB = TRISB & 0x80FF;
        TRISD = TRISD & 0xFF9F;
}

void configureTimer2() {
        T2CONbits.TCKPS = 2;
        PR2 = 41666;
        TMR2 = 0;
        T2CONbits.TON = 1;

        IPC2bits.T2IP = 2;
        IEC0bits.T2IE = 1;
        IFS0bits.T2IF = 0;
}

void delay(unsigned int ms) {
        resetCoreTimer();
        while (readCoreTimer() < 20000 * ms);
}

void send2displays(unsigned char value) {
        const char codes[] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71 };

        static int flag = 0;

        if (flag) {
                LATD = (LATD & 0xFF9F) | 0x0040;
                LATB = (LATB & 0x80FF) | (codes[value / 10] << 8);
                flag = 0;
        } else {
                LATD = (LATD & 0xFF9F) | 0x0020;
                LATB = (LATB & 0x80FF) | (codes[value % 10] << 8);
                flag = 1;
        }
}

int main() {
        configureADC();
        configureDisplays();
        configureTimer2();
        EnableInterrupts();

        temp = 0;

        while (1) {
                AD1CON1bits.ASAM = 1;
                while (IFS1bits.AD1IF == 0);
                int i, media = 0;
                int *buf = (int *)(&ADC1BUF0);
                for (i = 0; i < ADCsamples; i++) {
                        media += buf[i * 4];
                }
                media = media / ADCsamples;
                temp = ((media * 50 + 511) / 1023) + 15;
                IFS1bits.AD1IF = 0;
                delay(100);
        }

        return 0;
}

void _int_(vector_T2) isr_T2(void) {
        send2displays(temp);
        IFS0bits.T2IF = 0;
}