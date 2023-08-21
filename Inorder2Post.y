%{
 #include<stdio.h>
 int yyerror(char* ch);
 int flag=0;
%}
%token Number
%left '+' '-'
%left '*' '/' 
%left '(' ')' 
%%
E: E '+' E  {printf("+");}
| E '*' E  {printf("*");}
| E '/' E {printf("/");}
| E '-' E  {printf("-");}
| '(' E ')' {}
E : Number {printf("%d",$$);}
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
    printf("\nValid Expression");
  }
   return 0;
}