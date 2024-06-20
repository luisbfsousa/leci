#include <detpic32.h>

void delay(unsigned int ms) {
        resetCoreTimer();
        while (readCoreTimer() < 20000 * ms);
}

int main() {
        TRISE = TRISE & 0xFF03; // 1111 1111 0000 0011
        TRISB = TRISB | 0x0005; // 0000 0000 0000 0101

        static double freq = 10.5;

        unsigned int padrao = 0b110000;

        while (1) {
                LATE = (LATE & 0xFF03) | (padrao << 2);
                
                padrao = padrao >> 1;
                if (padrao <= 1) padrao = 0b110000;

                int ds1 = PORTBbits.RB0;
                int ds3 = PORTBbits.RB2;

                if (ds1 && ds3) freq = 10.5;
                else if (!(ds1 || ds3)) freq = 3.5;

                double ms = 1000.0 / freq;

                delay( (int) ms );
        }
}
