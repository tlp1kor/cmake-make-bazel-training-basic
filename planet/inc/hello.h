#ifndef HELLO_H
#define HELLO_H

#if defined(VARIANT_EARTH)
    void print_hello_earth();
#elif defined(VARIANT_JUPITER)
    void print_hello_jupiter();
#endif

#endif // HELLO_H