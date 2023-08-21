%{
  #include<stdio.h>
  #include "Binary2Dec.tab.h"
  extern int yylval;
%}
%%
0 {yylval=0; return  zero;}
1 {yylval=1; return  one;}
. return 0;
%%
int yywrap(){}