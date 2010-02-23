#include "2_38_2_40.h"
#include <stdio.h>

void show_bytes(byte_pointer start,int len)
{
    int i;

    for (i = 0;i < len;i ++)
    {
        printf("%.2x",start[i]);
    }

    printf("\n");
}

void show_int(int x)
{
    show_bytes((byte_pointer) &x,sizeof(int));
}

void show_float(float x)
{
    show_bytes((byte_pointer) &x,sizeof(float));
}

void show_pointer(void* x)
{
    show_bytes((byte_pointer) &x,sizeof(void*));
}

void show_short(short int x)
{
    show_bytes((byte_pointer) &x,sizeof(short int));
}

void show_long(long int x)
{
    show_bytes((byte_pointer) &x,sizeof(long int));
}

void show_double(double x)
{
    show_bytes((byte_pointer) &x,sizeof(double));
}

void show_unsigned_int(unsigned int x)
{
    show_bytes((byte_pointer) &x,sizeof(unsigned int));
}
