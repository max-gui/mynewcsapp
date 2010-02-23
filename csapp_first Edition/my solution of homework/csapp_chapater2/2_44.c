int int_shifts_are_arithmetic()
{
    int testTemp = ~0x0;
    testTemp >>= 1;

    return ! (~testTemp);
}

int unsigned_shifts_are_arithmetic()
{
    unsigned int testTemp = ~0x0;
    testTemp >>= 1;

    return ! (~testTemp);
}
