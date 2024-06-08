#ifndef DISTANCE_H
#define DISTANCE_EARTH_H

#if defined(VARIANT_EARTH)
    void print_distance_earth();
#elif defined(VARIANT_JUPITER)
    void print_distance_jupiter();
#endif

#endif // DISTANCE_H