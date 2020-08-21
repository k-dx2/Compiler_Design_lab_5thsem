%{
#include<stdio.h>
#include<stdlib.h>
int c=0,d=0,bo=0,bc=0;
%}

operand [a-zA-Z0-9]+
operator [\+\-\/\*]

%%
{operator} {d++;printf("%s is an operator \n",yytext);} 

{operand}  {c++;printf("%s is an operand \n",yytext);}

"(" {if(bc<=bo) bo++;}

")" {bc++;}

\n {
      if(bo==bc&&c>d)    {printf("%d  %d valid exp\n",c,d);}

      else               {printf("%d  %d invalid exp\n",c, d);}
      c=0;
      d=0;
   }
%%


void main()
{
yylex();
}
