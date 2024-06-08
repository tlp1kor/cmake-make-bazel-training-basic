#include <stdio.h>
#include "hello.h"
#include "distance.h"

int main() {
    #if defined(VARIANT_EARTH)
        print_hello_earth();
        print_distance_earth();
    #elif defined(VARIANT_JUPITER)
        print_hello_jupiter();
        print_distance_jupiter();
    #endif
    
    return 0;
}