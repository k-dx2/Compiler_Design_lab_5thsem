%{

#include<stdio.h>
#include<string.h>
void func(char* s);
int c=0,g=-1;

%}

%%
[a-zA-Z]*     { func(yytext);  
                   }
     
%%

int main()
{
yylex();
return 0;
}

void func(char *s)
{
int i=0,n=strlen(s)-1;
if((s[i]=='a'||s[i]=='A')&&(s[n]=='w'||s[n]=='W'))
  printf("yes\n");
else
 printf("no\n");

}

