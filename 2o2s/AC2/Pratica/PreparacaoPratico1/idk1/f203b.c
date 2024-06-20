#include <detpic32.h>

void delay(unsigned int ms) {
        resetCoreTimer();
        while (readCoreTimer() < 20000 * ms);
}

int main() {
        TRISBbits.TRISB4 = 1;
        AD1PCFGbits.PCFG4 = 0;
        AD1CON1bits.SSRC = 7;
        AD1CON1bits.CLRASAM = 1;
        AD1CON3bits.SAMC = 16;
        AD1CON2bits.SMPI = 0;
        AD1CHSbits.CH0SA = 4;
        AD1CON1bits.ON = 1;

        TRISB = TRISB & 0x80FF; // 1000 0000 1111 1111
        TRISD = TRISD & 0xFF9F; // 1111 1111 1001 1111

        static const char ordem[] = {
                0b0100000, // f
                0b0000001, // a
                0b0000010, // b
                0b1000000, // g
                0b0010000, // e
                0b0001000, // d
                0b0000100, // c
                0b1000000  // g
        };

        static const int delayAmnt[] = {
                250, 500, 750, 1000, 1250, 1500, 1750, 2000
        };

        int i = 0;

        // Display mais significativo
        LATD = (LATD & 0xFF9F) | 0x0040;

        while (1) {
                AD1CON1bits.ASAM = 1;
                while (IFS1bits.AD1IF == 0);

                LATB = (LATB & 0x80FF) | (ordem[i] << 8);
                i = (i + 1) % 8;

                int ms = delayAmnt[ADC1BUF0 * 7 / 1023];
                IFS1bits.AD1IF = 0;
                delay(ms);
        }

        return 0;
}
