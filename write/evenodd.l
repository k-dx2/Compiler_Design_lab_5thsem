
%{
    #include<stdio.h>
    int c1=0,c2=0;
%}

no [0-9]

%%
{no}*(0|2|4|6|8)   {c1++;}
{no}*(1|3|5|7|9)   {c2++;}

%%

int main()
{
    extern FILE *yyin, *f1,*f2;
    yyin = fopen("input.txt", "r");
    //f1 = fopen("even.txt", "w");
    //f2=fopen("odd.txt","w");
    yylex();
    printf("Even no %d\n Odd no %d\n ",c1,c2);
    return 0;
}
