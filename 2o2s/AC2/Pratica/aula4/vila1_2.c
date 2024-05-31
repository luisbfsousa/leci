#include <detpic32.h>

int main(void) {
    // Configure RE6 to R33 as inputs
    TRISE = TRISE & 0xFF87; // 1111 1111 1000 0111
    // Initialize the variable
    int count = 0;
    while (1) {
        // Write the variable value to RE6 to RE3
        LATE = (LATE & 0xFF87) | count << 3; 
        // Wait 0.250 s
        resetCoreTimer();
        while(readCoreTimer() < 5000000);
        // Increment the value
        count++;
        // Reset if it reaches 10
        if (count == 10) { count = 0; }
    }
    return 0;
}