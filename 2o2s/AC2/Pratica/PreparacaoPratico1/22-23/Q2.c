#include <detpic32.h>

int delay(unsigned int ms){
	resetCoreTimer();
	while(readCoretTimer()<20000*ms);
}

int main(void){
	static const int display7Scodes[] = {0x3F, 0x06, 0x5b, 0x4F, 0x66, 0x6D, 0x7C, 0x07, 0x7F, 0x67, 0x5F, 0x7C, 0x39, 0x5E, 0x79, 0x71}; 
	
	// A/D
	TRISBbits.TRISB4 = 1;
	AD1PCFGbits.PCFG4= 0;
	AD1CON1bits.SSRC = 7;
	AD1CON1bits.CLRASAM = 1; 
	AD1CON3bits.SAMC = 16;
	AD1CON2bits.SMPI = 4-1; //4 - 1
	AD1CHSbits.CH0SA = 4;
	AD1CON1bits.ON = 1;
	
	//Ports
	TRISB = TRISB & 0x80FF
	TRISDbits.TRISD5 = 0;
	TRISDbits.TRISD6 = 0;
	TRISDbits.TRISD4 = 0;
	TRISDbits.TRISD1 = 1;
	
	//RESET
	LATB = LATB & 0x80FF;
	LATDbits.LATD5 = 0;
	LATDbits.LATD6 = 0;
	LATDbits.LATD4 = 0;
	
	while(1){
		AD1CON1bits.ASAM = 1;
		while(IFS1bits.AD1IF == 0);
		
		int aux = (ADCBUF0 + ADCBUF1 + ADCBUF2 + ADCBUF3) / 4;
		
		//i)
		printInt(aux, (2 | 10 << 2));
		putChar('\n');
		
		//ii)
		if(PORTBbits.RB1 == 1){
			LATDbits.LATD5 = 0;
			LATDbits.LATD6 = 1;		
		}
		else{
			LATDbits.LATD5 = 1;
			LATDbits.LATD6 = 0;
		}
		LATB = (LATB & 0x80FF) | (display7Scodes[(aux / (1024/9)) + 3] << 8);
		
		//LED
		LATEbits.LATE4 = !LATEbits.LATE4;
		
		//delay
		delay(1000/12);
	}

	return 0;
}
