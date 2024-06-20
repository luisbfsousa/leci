#include <detpic32.h>

#define NSamples 4

void delay(unsigned int ms) {
        resetCoreTimer();
        while (readCoreTimer() < 20000 * ms);
}

int main() {
        static const char disp7S[] = {
                0b0111111, // 0
                0b0000110, // 1
                0b1011011, // 2
                0b1001111, // 3
                0b1100110, // 4
                0b1101101, // 5
                0b1111101, // 6
                0b0000111, // 7
                0b1111111, // 8
                0b1101111, // 9
                0b1110111, // A
                0b1111100, // B
                0b0111001, // C
                0b1011110, // D
                0b1111001, // E
                0b1110001  // F
        };

        TRISBbits.TRISB4 = 1;
        AD1PCFGbits.PCFG4 = 0;
        AD1CON1bits.SSRC = 7;
        AD1CON1bits.CLRASAM = 1;
        AD1CON3bits.SAMC = 16;
        AD1CON2bits.SMPI = NSamples - 1;
        AD1CHSbits.CH0SA = 4;
        AD1CON1bits.ON = 1;

        TRISB = TRISB & 0x80FF; // 1000 0000 1111 1111
        TRISD = TRISD & 0xFF9F; // 1111 1111 1001 1111

        TRISB = TRISB | 0x0008; // 0000 0000 0000 1000

        TRISE = TRISE & 0xFFBD; // 1111 1111 1011 1101
        LATE = (LATE & 0xFFBD) | 0x0040;

        while (1) {
                AD1CON1bits.ASAM = 1;
                while (IFS1bits.AD1IF == 0);

                // Parte i)
                int media = 0;
                int i = 0;
                int *p = (int *)(&ADC1BUF0);
                for (; i < NSamples; i++) {
                        media += p[i*4];
                }
                media = media / NSamples;
                putChar('\r');
                printInt(~media, 2 | 12 << 16);

                // Parte ii)
                int valor = media * 10 / 1023;                          // Escala de 0 a 10
                int ds4 = (PORTB >> 3) & 0x0001;                        // Obter o valor de RB3 (Dip Switch 4)
                LATD = ds4 ?
                        (LATD & 0xFF9F) | 0x0020 :                      // DS4 ON --> Display menos significativo
                        (LATD & 0xFF9F) | 0x0040;                       // DS4 OFF -> Display mais  significativo
                LATB = (LATB & 0x80FF) | (disp7S[valor + 4] << 8);      // valor + 4 -> Passar da escala de (0 a A) para (4 a E)

                // Parte iii)
                LATEbits.LATE6 = !LATEbits.LATE6;
                LATEbits.LATE1 = !LATEbits.LATE1;

                delay(250);
        }
}
