/* Companion source code for "flex & bison", published by O'Reilly
 * Media, ISBN 978-0-596-15597-1
 * Copyright (c) 2009, Taughannock Networks. All rights reserved.
 * See the README file for license conditions and contact info.
 * $Header: /home/johnl/flnb/code/RCS/fb1-5.l,v 2.1 2009/11/08 02:53:18 johnl Exp $
 */

/* recognize tokens for the calculator and print them out */

%{
   #include "fb1-5.tab.h"
%}

%%

"+"      { return ADD; }
"-"      { return SUB; }
"*"      { return MUL; }
"/"      { return DIV; }
"|"      { return ABS; }
"("      { return OP; }
")"      { return CP; }
[0-9]+   { yylval = atoi(yytext); return NUMBER; }
\n       { return EOL; }
"//".*  
[ \t]    { /* ignore white space */ }
.        { yyerror("Mystery character %c\n", *yytext); }

%%

