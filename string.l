%{
    #include<stdio.h>
    void func(char *s);
        int max=0;
        char *str;

%}

%%
[a-zA-Z0-9]+ { if(yyleng>=max)
                {  max=yyleng;
                   str=yytext; 
                   }
                 
               }

%%

int main()
{
    extern FILE *yyin;
    yyin = fopen("input.txt", "r");
    yylex();
    func(str);
    return 0;

}

void func(char *s)
{
 for(int i=strlen(s)-1;i>=0;i--)
  printf("%c",s[i]);

}
