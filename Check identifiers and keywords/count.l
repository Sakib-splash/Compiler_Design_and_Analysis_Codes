/*Lex program to recognize and count the number of identifiers in a given input*/
/*Definition Section*/
%{
	#include<stdio.h>
int others = 0;
int keyword = 0;
int id = 0;
%}

/*Rules Section*/
%%
"int"|"double"|"float"|"char"|"do"|"while"|"main"|"return"|"printf"|"scanf"|"include"|"stdio.h" {
keyword++;
printf("\'%s\' is a keyword\n",yytext);}

[a-zA-Z_][a-zA-Z0-9_]* {
id++;
printf("\'%s\' is an identifier\n" ,yytext);
}

%%

int main()
{
yyin = fopen("input.c","r");
yylex();
printf("Number of identifiers is %d\n", id);

printf("Number of keywords is %d\n", keyword);

return 0;
}

int yywrap()
{
return 1;
}