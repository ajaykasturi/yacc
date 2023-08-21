%{
  #include<stdio.h>
  void yyerror(char* e);
%}
%token zero one 
%%
A : L  {$$=$1;printf("Result :%d",$$);}
L : L B   {$$=(2*$1)+$2;}
| B     {$$=$1;}
B : zero {$$=$1;}
B : one {$$=$1;}
%%
void yyerror(char* res)
{
  printf("Error");
}
int main()
{
   printf("Enter a Binary Number:\n");
   yyparse();
  return 0;
}