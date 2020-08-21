%{
#include<stdio.h>
int s = 0;
int l = 0;
%}

%%

else      { printf("$"); }
if        { printf("#"); }
.         { printf("%s",yytext);   }
%%

int main()
{
yylex();
printf("line %d space%d", l,s);
return 0;

}
