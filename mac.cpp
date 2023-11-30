#include "mac.h"

// Assuming n is defined or passed as an argument
void mac(float matvalue[n], float vectx[n], float& y)
{
    // float y0 = 0.0; // This line is commented out as it is not used in the function
    int rowStart = 0, rowEnd = n;
    for (int i = rowStart; i < rowEnd; i++)
    {
        // Use += to accumulate the result in y
        y += matvalue[i] * vectx[i];
    }
}
