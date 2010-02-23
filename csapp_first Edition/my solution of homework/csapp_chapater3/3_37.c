#include "3_37.h"

void good_echo(int num)
{
    char buf[num];

    char *s = buf;

    int count;
    while (1)
    {
        s = fgets(s,num,stdin);

        if (NULL == s)
        {
            break;
        }

        for (count = 0;buf[count] && buf[count] != '\n';count ++)
        {
            if(putchar(buf[count]) == EOF)
            {
                break;
            }
        }

        if (buf[count] == '\n')
        {
            putchar('\n');
            break;
        }
    }
    return;
}
