
 
%{
    #include<stdio.h>
     
%}

%%
[-+&~|^/%*(),.;!#$]  { fprintf(yyout, "");}
.         { fprintf(yyout, "%s", yytext); }
%%

int main()
{
    extern FILE *yyin, *yyout;
    yyin = fopen("Input.txt", "r");
    yyout = fopen("Output.txt", "w");
    yylex();
    return 0;
}
