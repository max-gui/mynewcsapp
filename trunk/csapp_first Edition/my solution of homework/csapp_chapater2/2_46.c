#include "2_46.h"

int xbyte(packed_t word,int bytenum)
{
    int shiftNum = (3 - bytenum) << 3;
    int left = word << shiftNum;

    int wordSize = sizeof(word) - 1;
    shiftNum = wordSize << 3;

    return left >> shiftNum;
}
