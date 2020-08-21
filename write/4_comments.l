%{

#include<stdio.h>
int c=0,f=0;
%}

%%
[/][/].*\n	    {fprintf(yyout," ");c++;}
[/][*].*\n          {fprintf(yyout," ");c++;f=1;}
.*[*][/]            {if(f==1) {fprintf(yyout," ");f=0;}}
.*                  {if(f==1) {fprintf(yyout," ");}
		     else     {fprintf(yyout,"%s",yytext);}
                          }
%%

int main()
{

extern FILE *yyin,*yyout;

yyin=fopen("Input.c","r");

yyout=fopen("Output.c","w");

yylex();
printf("The no of comments are %d\n",c);
return 0;
}

//"/*"(.)*"*/
