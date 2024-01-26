/* Lex program to identify integer , float , exponential number */
/*Definition Part */
%{

#include<stdio.h>
int in=0;
int flt=0;
int expp=0;
int others=0;
%}

/*Rules Part Start */
%%

[+-]?[0-9]+ {
in++;
printf("\'%s\' is an integer\n", yytext);
}

[+-]?[0-9]*"."[0-9]+ {
flt++;
printf("\'%s\' is an float\n", yytext);
}

[+-]?[0-9]+[Ee][+-]?[0-9]+ {
expp++;
printf("\'%s\' is an exponential\n", yytext);
}

%%
/* Main Part*/
int main(){
yyin=fopen("demo.txt","r");
yylex();
return 0;
}
int yywrap(){
return 1;
}