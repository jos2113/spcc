%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL

%%
stmt: S NL {printf("valid string\n"); exit(0);}
     ;

S: A A S B
 | 
     ;
%%

int yyerror(char *msg)
{ 
    printf("invalid string\n"); 
    exit(0); 
}

int main() {
    printf("Enter the string:\n"); 
    yyparse();
    return 0;
}
