#include <iostream>
#include "mac.h"

int main() {
    // Test data
    float matvalue[n] = {2, 1,0,0,0};
    float vectx[n] = {1, 1,0,0,0};
    float y = 0.0;  // Initialize y to an initial value

    // Call the mac function
    mac(matvalue, vectx, y);

    // Display the result
    std::cout << "Output Vector (y): " << y << " ";
    std::cout << std::endl;

    return 0;
}
