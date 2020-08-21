%{
#include<stdio.h>
#include<string.h>
int func(char *s);
int c=0,g=-1;
%}

%%
.* {g=func(yytext);
     if(g==1)
      c++;}


%%


int main()
{

extern FILE *yyin;

yyin=fopen("input.txt","r");
yylex();
printf("the no of palindrome is %d \n",c);
return 0;
}

int func(char *s)
{
int i=0,n=strlen(s)-1;

while(n>i)
 {
   if(s[i++]!=s[n--])
    {
    return -1;
     }
   
}
return 1;
}

