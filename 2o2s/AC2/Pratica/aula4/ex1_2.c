#include <detpic32.h>

void delay(unsigned int ms){
	readCoreTimer();
	while(resetCoreTimer<20000*ms);
}

int main(void){
	TRISEbits.TRISE6 = 0;
	TRISEbits.TRISE5 = 0;
	TRISEbits.TRISE4 = 0;
	TRISEbits.TRISE3 = 0;

	int counter = 0;

	while(1){
		LATE = (LATE & 0xFF87) | counter << 3;
		delay(370);
		counter = (counter + 1) % 10;
	}

	return 0;
}