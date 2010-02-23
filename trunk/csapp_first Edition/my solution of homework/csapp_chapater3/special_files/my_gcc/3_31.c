#include "3_31.h"

int decode2(int x,int y,int z)
{
    int t1 = y - z;

    int t2 = t1 * x;

    int t3 = (t1 << 31) >> 31;

    int t4 = t3 & t2;

    return t4;
}
