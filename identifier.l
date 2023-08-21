%{
  #include<stdio.h>
  int yywrap();
%}
%%
[a-zA-Z_][a-zA-Z0-9]+ {printf("Identifier");}
[0-9]+ {printf("Integer");}
[0-9]+"."[0-9]+ {printf("Floating point Number");}
.* {printf("not identifier");}
%%
int yywrap()
{
}
int main()
{
  yylex();
 return 0;
}
