%{
   #include<stdio.h>
   void fun();
%}
%%
[a-zA-Z0-9]+ {fun();}
%%
void fun()
{
  if(yytext[0]=='a' || yytext[0]=='e' || yytext[0]=='i' || yytext[0]=='o' || yytext[0]=='u')
  {
    printf("String accepted");
  }
  else
  {
  printf("String not accepted");  
  }
}
int yywrap(){}
int main()
{
   printf("Enter a String:\n");
   yylex();
   return 0;
}