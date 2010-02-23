#include "2_49.h"
unsigned unsigned_high_prod(unsigned x, unsigned y)
{
   unsigned p = (unsigned) signed_high_prod((int) x, (int) y);

   if ((int) x < 0) /* x_{w-1} = 1 */

       p += y;

   if ((int) y < 0) /* y_{w-1} = 1 */

       p += x;

   return p;
}
