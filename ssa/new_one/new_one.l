%{ 
  # include<stdio.h>
int lc=0,tc=0,sc=0,wc=0,cc=0;
%}
%%
[^ \t\n]+     {cc+=yyleng; wc++;}
[ ]     {cc++;sc++;}
[\t]    {cc++; tc++;}
\n       {cc++; lc++;}
%%
int main()
{
yyin = fopen("test.txt","r");
yyout=fopen("a2.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
return 0;
}
int yywrap()
{
fprintf(yyout,"no. of lines =%d\n",lc);
fprintf(yyout,"no. of tabs=%d\n",tc);
fprintf(yyout,"no. of characters = %d\n",cc);
fprintf(yyout,"no. of spaces = %d\n",sc);
fprintf(yyout,"no. of words=%d\n",wc);
return 1;
}





/*
1. Create a file named count.txt -> Add some input to it -> Ex: Hello, Everyone!
2. Run the following commands ->
(base) mml@mml-OptiPlex-3060:~/Desktop$ lex newfir.l
(base) mml@mml-OptiPlex-3060:~/Desktop$ gcc lex.yy.c 
(base) mml@mml-OptiPlex-3060:~/Desktop$ ./a.out
(base) mml@mml-OptiPlex-3060:~/Desktop$ cat a2.txt
*/

