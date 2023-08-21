%option noyywrap
%{
  #include<stdio.h>
  #include "aabb.tab.h"
%}
%%
"a" {return yytext[0];}
"b" {return yytext[0];}
. {}
%%