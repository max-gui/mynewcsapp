#include "2_43.h"

int is_all_bit_equal_1(int x)
{
    return ! ~ x;
}

int is_all_bit_equal_0(int x)
{
    return ! x;
}

int is_little_bit_equal_1(int x)
{
    return ! ((~x) & 0xFF);
}

int is_little_bit_equal_0(int x)
{
    return ! (x & (0xff));
}
