%{
 #include<stdio.h>
 int yyerror(char* ch);
 int flag=0;
%}
%token Number
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
AE:E {$$=$1;printf("Result:%d \n",$$);}
E: E '+' E  {$$=$1+$3;}
| E '*' E  {$$=$1*$3;}
| E '/' E {$$=$1/$3;}
| E '-' E  {$$=$1-$3;}
| '(' E ')' {$$=$2;}
| E '%' E {$$=$1%$3;}
E: F {$$=$1;}
F : Number {$$=$1;}
%%
int yyerror(char* res)
{
  flag=1;
  printf("Arithmetic Expression is Invalid");
}
int main()
{
  printf("Enter an Expression:\n");
  yyparse();
  if(flag==0)
  {
    printf("Valid Expression");
  }
   return 0;
}