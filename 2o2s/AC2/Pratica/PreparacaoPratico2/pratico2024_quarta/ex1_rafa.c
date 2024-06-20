#include<detpic32.h>


int main(void) {
	
	T3CONbits.TCKPS = 2; 
	PR3 = 38461; 				// 38460.5
	TMR3 = 0; 
	T3CONbits.TON = 1; 
	
	 
	OC2CONbits.OCM = 6; 
	OC2CONbits.OCTSEL =0;
	OC2RS = 19231; 
	OC2CONbits.ON = 1; 
	
	TRISBbits.TRISB1 = 0;
	static char state = 0;
	
	while(1) {
		if ((PORTBbits.RB1 == 0) && (state == 0)) { 
			OC2RS = 9615;

		} else if((PORTBbits.RB1 == 1) && (state == 1 )) {
			OC2RS = 28846;

		}
		state = !state;

		resetCoreTimer();while(readCoreTimer()<26000000);
	}
	return 0;
	
}