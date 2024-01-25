%{
#include<stdio.h>
int others = 0;
%}


%%
"01"[9|4][0-9]+ {fprintf(yyout,"%s is a Banglalink number\n", yytext);}
"01"[7|3][0-9]+ {fprintf(yyout,"%s is a Grameen number\n",yytext);}
"018"[0-9]+ {fprintf(yyout,"%s is a Robi number\n", yytext);}
"016"[0-9]+ {fprintf(yyout,"%s is an Airtel Number\n", yytext);}

[ \n\t] {
others++;
}
. {
others++;
}
%%

int main(){
yyin=fopen("input.txt","r");
yyout = fopen("output.txt","w");
yylex();
return 0;
}

int yywrap(){
return 1;
}