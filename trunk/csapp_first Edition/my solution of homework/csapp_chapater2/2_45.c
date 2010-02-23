#include "2_45.h"

int bad_int_size_is_32()
{
    int set_msb = 1 << 31;

    //don't care about the warning,it's necessary
    int beyond_msb = 1 << 32;

    return set_msb && ! beyond_msb;
}

int int_size_is_32ON32()
{
    int set_msb = 1 << 31;

    int beyond_msb = 2 << 31;

    return set_msb && ! beyond_msb;
}

int int_size_is_32ON16()
{
    int set_msb = 2 << 15 <<15;

    int beyond_msb = set_msb << 1;

    return set_msb && ! beyond_msb;
}
