#include <detpic32.h>

void delay(unsigned int ms){
	resetCoreTimer();
	while(readCoreTimer()<20000*ms);
}

int main(void){
	TRISEbits.TRISE6 = 0;
	TRISEbits.TRISE5 = 0;
	TRISEbits.TRISE4 = 0;
	TRISEbits.TRISE3 = 0;
	
	int counter = 10;

	while(1){
		LATE = (LATE & 0xFF87) | counter << 3;
		delay(370);
		counter = counter > 0 ? counter - 1 : 9;
	}

	return 0;
}