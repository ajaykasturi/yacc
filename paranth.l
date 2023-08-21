%option noyywrap
%{
 #include<stdio.h>
  #include "paranth.tab.h"
%}
%%
"(" {return yytext[0];}
")" {return yytext[0];}
. return 0;
%%