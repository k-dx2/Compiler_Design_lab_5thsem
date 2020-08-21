%{
#include<stdio.h>

%}


%%

[aeiouAEIOU]+ { printf(" ");}


%%

int main()
{ 
yylex();

printf("%s",yytext);
return 0;
}


