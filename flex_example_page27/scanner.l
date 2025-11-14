%{
#include "token.h"
%}
DIGIT [0-9]
LETTER [a-zA-Z]
%%
(" "|\t|\n) /* skip whitespace */
\+ { return TOKEN_ADD; }
while { printf("%s: WHILE\n", yytext);
    return TOKEN_WHILE; }
{LETTER}+day {printf("%s: DAY\n", yytext);
    return TOKEN_DAY;}
{LETTER}+ { 
    printf("%s: IDENTIFIER\n", yytext);
    return TOKEN_IDENT; } 
{DIGIT}+ { return TOKEN_NUMBER; }
. { return TOKEN_ERROR; }
%%
int yywrap() { return 1; }