%{

   #include<stdio.h>
%}


%%
,       {printf(" ");}
.      {printf("%s",yytext);}
%%

int main()
{ extern FILE *yyin;
  yyin=fopen("input.txt","r");
  yylex();
return 0;

 } 


