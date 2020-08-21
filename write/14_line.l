%{
#include<stdio.h>
int line_no=1;
%}
line .*\n

%%
{line} { printf("%10d %s",line_no++,yytext);}
%%

int main()
{
extern FILE *yyin;
yyin=fopen("abc.c","r");
yylex();

return 0;
}


