%{

   #include<stdio.h>
   int f=0;
%}

comp and|but|or


%%
{comp}  { f=1;}
\n      {if(f==1) 
              { printf("compound\n"); f=0;}
         else     printf("simple\n")
        }

.   { }



%%

int main()
{
  yylex();
return 0;

 } 


