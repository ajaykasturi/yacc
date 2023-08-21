%{
 #include<stdio.h>
 void yyerror();
 int flag=0;
%}
%%
A : S {}
S : 'a' S 'b' S {}
S : {}
%%
void yyerror()
{
  flag=1;
  printf("Error");
}
void main()
{
  printf("Enter \n");
  yyparse();
  if(flag==0)
{
  printf("Valid");
}
}