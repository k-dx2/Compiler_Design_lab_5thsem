%{
#include<stdio.h>

%}

letter [A-F]
digit2 [89]
digit1 [0-7]

%%
({digit1})+ {printf("%s ia a octal no\n",yytext);}
({letter}|{digit1}|{digit2})+ {printf("%s is a hexadecimal no\n",yytext);}

%%

int main()
{
 extern FILE *yyin;
  yyin=fopen("input.txt","r");
  yylex();
 return 0;
}
