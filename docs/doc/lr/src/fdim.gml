.func fdim
.synop begin
#include <math.h>
double fdim( double x, double y );
.ixfunc2 '&Math' &func
.synop end
.desc begin
The
.id &func.
function computes the positive difference of 
.arg x
and
.arg y
.ct .li .  The function is equivalent to:
.blkcode begin
fmax( x - y, 0.0 );
.blkcode end
.desc end
.return begin
The routine will either return 
.arg x
-
.arg y
or 0.0, whichever is greater.
.return end
.see begin
.seelist &function. fmax fmin
.see end
.exmp begin
#include <stdio.h>
#include <math.h>

void main()
  {
    printf( "%f\n", fdim( 3.0, 2.0 ) );
  }
.exmp output
1.000000
.exmp end
.class ISO C99
.system
