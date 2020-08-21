
 
%{
    #include<stdio.h>
     
%}
keyword main|int|sacnf|printf|if|else|return|include


%%
{keyword} { fprintf(yyout, "");}
.         { fprintf(yyout, "%s", yytext); }
%%

int main()
{
    extern FILE *yyin, *yyout;
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
    return 0;
}
