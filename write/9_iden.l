%{
#include<stdio.h>
int c=0,f=1;
%}

keyword int|float|char|void|main|struct|class
letter [a-zA-Z]
digit [0-9]

%%
{keyword}  { f=0;}
{letter}({letter}|{digit})* {if(f==0){printf("\n%s is an identifier",yytext); c++;} f=1;}
. {}
%%


int main()
{
 extern FILE *yyin;
  yyin=fopen("Input.txt","r");
  yylex();
  printf("The no of identifiers is %d ",c);
  return 0;
}
