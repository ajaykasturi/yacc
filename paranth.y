%{
 #include<stdio.h>
 void yyerror();
int c=0;
%}
%%
A : S {printf("Valid Parenthesis ");}
S : '(' S ')' {c++;}
S : {c=0;}
%%
void yyerror()
{
  printf("Error");
}
void main()
{
  printf("Enter Paranthesis:\n");
  yyparse(); 
  printf("Count:%d",c);
}