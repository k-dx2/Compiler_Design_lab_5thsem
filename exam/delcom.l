%{

#include<stdio.h>
int c=0,f=0;
%}

%%

[/][*].*\n          {fprintf(yyout," ");f=1;}
.*[*][/]            {if(f==1) {fprintf(yyout," ");f=0;}}
.*                  {if(f==1) {fprintf(yyout," ");}
		     else     {fprintf(yyout,"%s",yytext);}
                          }
%%

int main()
{

extern FILE *yyin,*yyout;

yyin=fopen("input.txt","r");

yyout=fopen("output.txt","w");

yylex();
return 0;
}
