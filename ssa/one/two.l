%{
#include<stdio.h>
#include<string.h>
struct symtab
{
char *name;
};
struct symtab sym[10],*k;
struct sumtab *install_id(char *s);
void disp();
%}

L        [a-zA-Z]
D 	 [0-9]
id 	 {L}({L}|{D})*
num	 {D}+(\.{D}+)?([eE][-+]?{D}+)?
bop	 [-+*/=]
uop	 "++"|"--"
relop	 "<"|"<="|">"|">="|"!="|"=="
lop	 "&&"|"||"
bitlop	 [&|!]
kew	 "if"|"else"|"while"|"do"|"for"|"char"|"float"
pun	 [,;'"\[\]\{\}\)\(]
comment	 "/\*"(.|\n*"\*/"|"//"(.)*
ws	 [\t\n]+
st	 \"(.)*\"

%%
{ws}	{}
{kew} {printf("keywrod=%s\n",yytext);}
{id} {k=install_id(yytext);printf(identifier=%s\n",yytext);}
{num} 
{bop}
{uop}

