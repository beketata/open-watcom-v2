.func rename _wrename
.synop begin
#include <stdio.h>
int rename( const char *old, const char *new );
.ixfunc2 '&FileOp' &func
.if &'length(&wfunc.) ne 0 .do begin
int _wrename( const wchar_t *old, const wchar_t *new );
.ixfunc2 '&FileOp' &wfunc
.ixfunc2 '&Wide' &wfunc
.do end
.synop end
.desc begin
The
.id &func.
function causes the file whose name is indicated by the string
.arg old
to be renamed to the name given by the string
.arg new
.ct .li .
.if &'length(&wfunc.) ne 0 .do begin
The
.id &wfunc.
function is identical to
.id &func.
except that it accepts
wide-character string arguments.
.do end
.desc end
.return begin
The
.id &func.
function returns zero if the operation succeeds, a non-zero
value if it fails.
.im errnoref
.return end
.exmp begin
#include <stdio.h>

void main()
  {
    rename( "old.dat", "new.dat" );
  }
.exmp end
.class ANSI
.system
