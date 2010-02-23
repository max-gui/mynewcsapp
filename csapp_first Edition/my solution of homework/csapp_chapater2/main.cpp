#include <iostream>
#include "2_38_2_40.c"
#include "2_41.c"
#include "2_42.c"
#include "2_43.c"
#include "2_44.c"
#include "2_45.c"
#include "2_46.c"

using namespace std;

void test_show_bytes(int val);

int main()
{
    cout << "Hello test_show_bytes!" << endl;

    int x = 1;
    test_show_bytes(x);

    int* pint = &x;
    char* pchar = (char*)pint;
    int cint = (int)*pchar;

    cout << "pint : " << pint << endl;
    cout << "pchar : " << pchar << endl;
    cout << "cint : " << cint << endl;

    short* pshort = (short*)pint;
    cint = (int)*pshort;

    cout << "pint : " << pint << endl;
    cout << "pshort : " << pshort << endl;
    cout << "cint : " << cint << endl;


    cout << is_little_endian() << endl;

    show_int(little_x_left_y(0x89abcdef,0x76543210));

    cout << is_all_bit_equal_1(~0x1) << endl;
    cout << is_all_bit_equal_0(0x1) << endl;
    cout << is_little_bit_equal_1(0xccde) << endl;
    cout << is_little_bit_equal_0(0x11c) << endl;

    cout << int_shifts_are_arithmetic() << endl;
    cout << unsigned_shifts_are_arithmetic() << endl;

    cout << bad_int_size_is_32() << endl;
    cout << int_size_is_32ON32() << endl;
    cout << int_size_is_32ON16() << endl;

    int test_2_46 = 0x11ff0f26;
    cout << xbyte(test_2_46,0) << endl;
    cout << xbyte(test_2_46,1) << endl;
    cout << xbyte(test_2_46,2) << endl;
    cout << xbyte(test_2_46,3) << endl;

    return 0;
}

void test_show_bytes(int val)
{
    int ival = val;
    float fval = (float)val;
    int* pval = &val;
    short int sval = val;
    long int lval = val;
    double dval = val;

    show_int(ival);
    show_float(fval);
    show_pointer(pval);
    show_short(sval);
    show_long(lval);
    show_double(dval);
}
