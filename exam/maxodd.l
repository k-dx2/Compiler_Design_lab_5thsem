
%{
    #include<stdio.h> 
    #include<stdlib.h>
    int m1=0,m2=0;
    int x,y;
    
%}

no [0-9]

%%
{no}*(0|2|4|6|8)   {x=atoi(yytext);
                        if(x>m1)
                            m1=x;
                           } 
                                        
{no}*(1|3|5|7|9)   {y=atoi(yytext);
                       if(y>m2)
                           m2=y;}

%%

int main()
{
    extern FILE *yyin, *f1,*f2;
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Even max %d\n Odd max %d\n ",m1,m2);
    return 0;
}


