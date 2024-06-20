#include <detpic32.h>

void delay(unsigned int ms) {
        resetCoreTimer();
        while (readCoreTimer() < 20000 * ms);
}

int main() {
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

        int i = 0;

        // Display mais significativo
        LATD = (LATD & 0xFF9F) | 0x0040;

        while (1) {
                printInt(i, 10);
                LATB = (LATB & 0x80FF) | (ordem[i] << 8);
                i = (i + 1) % 8;
                delay(250);
        }

        return 0;
}
