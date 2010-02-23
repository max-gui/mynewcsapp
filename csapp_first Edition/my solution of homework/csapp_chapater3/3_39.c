#include "3_39.h"

void full_umul(unsigned x,unsigned y,unsigned dest[])
{
    /*Insert the following assembly code:
        movl x,%eax
        mull y
        movl %eax,*dest++
        movl %edx,*dest
    */

    asm("movl   %2    , %%eax ;"
        "mull   %3            ;"
        "movl   %%eax , %0    ;"
        "movl   %%edx , %1    ;"
        : "=r" (*dest) , "=r" (*(dest + 1))   //output
        : "r"  (x)     , "r"  (y)             //input
        : "%eax"       , "%edx"               //overwrites
        );
}
