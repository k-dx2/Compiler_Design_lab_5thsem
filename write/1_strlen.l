%{
 #include<stdio.h> 
 #include<string.h>
   int words=0;
  int n=0;
%}

%%

[a-zA-Z]+ { n=strlen(yytext);  if(n>10) words++;}

%%

int main(int argc,char **argv)
{
yylex();
printf("The Number of words Greater than 10 are %d\n",words);
}
