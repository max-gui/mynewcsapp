#include "3_40.h"

void scale(double x,int n,double* dest)
{
    /*Insert the following assembly code:
        fildl   12(%%ebp)       ;
        fldl    8(%%ebp)        ;
        fscale                  ;
        movl    20(%ebp),%%eax  ;
        fstpl   (%%eax)         ;

    */

    asm("fildl   16(%%ebp)          ;"
        "fldl    8(%%ebp)           ;"
        "fscale                     ;"
        "movl    20(%%ebp),%%eax    ;"
        "fstpl   (%%eax)            ;"
        :          //output
        :          //input
        : "%eax"   //overwrites
        );
}
