%{
#include "token.h"
%}
DIGIT [0-9]
%%
[{DIGIT}[3],]
%%
int yywrap() { return 1; }