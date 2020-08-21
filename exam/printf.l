%{
#include<stdio.h>
int c1=0,c2=0;
%}


p printf
s scanf

%%
{p}  { c1++;}
{s}  { c2++;} 
.    {}
%%


int main()
{
 extern FILE *yyin;
  yyin=fopen("input.txt","r");
  yylex();
  printf("The no of printf stat is %d and scanf stat is %d ",c1,c2);
  return 0;
}
