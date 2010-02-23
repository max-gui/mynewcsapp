#include "2_42.h"

int little_x_left_y(int x,int y)
{
    return ((x&0xFF) | (y&(~0xFF)));
}
