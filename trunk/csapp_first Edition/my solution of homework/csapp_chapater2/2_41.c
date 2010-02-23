#include "2_41.h"

int is_little_endian(void)
{

    /* MSB = 0, LSB = 1 */
    int x = 1;

    /* Return MSB when big-endian, LSB when little-endian */
    return (int) (* (char *) &x);
}

