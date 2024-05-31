#include <detpic32.h>

void delay(unsigned int ms);
void send2displays(unsigned int val);

volatile int temp;

int main(void)
{
    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;

    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 2 - 1;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    T3CONbits.TCKPS = 1; // 20000000 / (65536 * 250) = 1 -> 2 (001)
    PR3 = 39999;         // ((20000000 / 2) / 250) - 1 = 39999
    TMR3 = 0;
    T3CONbits.TON = 1;

    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;

    EnableInterrupts();

    while (1)
    {
        AD1CON1bits.ASAM = 1;
        while (IFS1bits.AD1IF == 0)
            ;

        int i, media = 0;
        int *p = (int *)&ADC1BUF0;
        for (i = 0; i < 2; i++)
        {
            media += p[i * 4];
        }
        media = media / 2;
        temp = (media * (0x73 - 0x07)) / 1023 + 0x07;

        IFS1bits.AD1IF = 0;
        delay(200);
    }
    return 0;
}

void _int_(12) isr_T3(void)
{
    send2displays(temp);
    IFS0bits.T3IF = 0;
}

void delay(unsigned int ms)
{
    resetCoreTimer();
    while (readCoreTimer() < 20000 * ms)
        ;
}

void send2displays(unsigned int val)
{

    int static segments[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
                             0x7F, 0x6F, 0x77, 0x7C, 0x39, 0xE5, 0x79, 0x71};
    int static flag = 0;

    int digitLow = val % 16;
    int digitHigh = val / 16;

    if (flag == 0)
    {
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = (LATB & 0x80FF) | (segments[digitLow] << 8);
    }
    else
    {
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = (LATB & 0x80FF) | (segments[digitHigh] << 8);
    }
    flag = !flag;
}