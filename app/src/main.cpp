#include <iostream>
#include "main.h"

// SDL2Main needs the full function signature of main to work on Windows.
int main(int argc, char* argv[]) { // NOLINT
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
