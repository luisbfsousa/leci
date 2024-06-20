#include <detpic32.h>

void delay(unsigned int ms){
	resetCoreTimer();
	while(readCoreTimer() < (20000*ms));
} 

int main(void){
	TRISE = TRISE & 0xFF03;

	//daqui para baixo
	TRISBbits.TRISB2 = 1;
	TRISBbits.TRISB0 = 1;

	// TRISB = TRISB & 0xFFFA
	
	//reset
	int count = 48;
	LATE = (LATE & 0xFF02) | (count << 2 );
	float freq = 7.3;
	
	while(1){
		LATE = (LATE & 0xFF02) | (count <<2 );
		if ((PORTBbits.RB2 == 0) && (PORTBbits.RB0 == 0)){freq = 4.6;}//DS3/0 associados RB2/0 OFF = 4.6Hz
		else if( (PORTBbits.RB2 == 1) && (PORTBbits.RB0 == 1) ){freq = 7.3;}//DS3/0 associados RB2/0 ON = 7.3Hz
		
		int delayfreq = (1000/freq);

		delay(delayfreq); //freq inicial
		
		if(count==3){count=48;}
		else{count = count >> 1;}
	}
	
	return 0;
}

//0000	0			Porto RE7 a RE2
//0001	1			1111 1111 0000 0011  0xFF03
//0010	2
//0011	3			Porto x15 a 8
//0100	4			1000 0000 1111 1111 0x80FF
//0101	5
//0110	6			1111 1111 1111 1010  0xFFFA
//0111	7
//1000	8
//1001	9
//1010	A
//1011	B
//1100	C
//1101	D
//1110	E
//1111	F
