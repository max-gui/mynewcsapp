//some of 32bit machine will return 0,ex:cause of they compute the x << k as x << (k mod 32)
int bad_int_size_is_32();

//it can not run on the 16bit machine
int int_size_is_32ON32();

//it can run on the machine which is at least 16bit
int int_size_is_32ON16();
