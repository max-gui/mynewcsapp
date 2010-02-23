#include <iostream>
#include "3_31.c"
#include "3_37.c"
#include "3_39.c"
#include "3_40.c"

using namespace std;

int main()
{
    cout << "Hello world!" << endl;

    cout << decode2(10,20,30) << endl;

    good_echo(10);

    unsigned int dest1[2];

    unsigned x1 = 0x81111111;
    unsigned y1 = 0xf2345678;
    full_umul(x1,y1,dest1);

    cout << dest1[1] << ":" << dest1[0] << endl;

    double dest2[2];

    double x2 = 3.875;
    int y2 = 2;
    scale(x2,y2,dest2);

    cout << *dest2 << endl;

    return 0;
}
