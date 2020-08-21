%{
#include<stdio.h>
int s = 0;
int l = 0;
%}

%%

" "       { s++; }
\n        { l++; }
.   {}
%%

int main()
{extern FILE *yyin;
 yyin=fopen("input.txt","r");

yylex();
printf("line %d space%d", l,s);
return 0;

}
