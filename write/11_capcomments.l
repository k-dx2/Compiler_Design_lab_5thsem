%{
#include<stdio.h>
void capital(char *s);
int c=0,f=0;
%}

%%
[/][/].*("\n")	    {capital(yytext);}
[/][*].*("\n")      {capital(yytext);f=1;}
.*[*][/]            {if(f==1) {capital(yytext);f=0;}}
.                   { fprintf(yyout,"%s",yytext);}
%%

int main()
{

extern FILE *yyin,*yyout;

yyin=fopen("input.txt","r");

yyout=fopen("output.txt","w");

yylex();

return 0;
}

void capital(char *s)
{ int i=0;
for(i=0;i<strlen(s);i++)
{
 fprintf(yyout,"%c",toupper(s[i]));
}
}
