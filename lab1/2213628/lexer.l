%{
#include <stdio.h>
%}

%%
"int"           { printf("KEYWORD: int\n"); }
"float"         { printf("KEYWORD: float\n"); }
"void"          { printf("KEYWORD: void\n"); }
"while"         { printf("KEYWORD: while\n"); }
"return"        { printf("KEYWORD: return\n"); }
"scanf"         { printf("FUNCTION: scanf\n"); }
"printf"        { printf("FUNCTION: printf\n"); }
"#define"       { printf("DIRECTIVE: #define\n"); }
[0-9]+          { printf("NUMBER: %s\n", yytext); }
[0-9]+\.[0-9]+  { printf("FLOAT: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
"="             { printf("OPERATOR: =\n"); }
"\+"            { printf("OPERATOR: +\n"); }
"-"             { printf("OPERATOR: -\n"); }
"\*"            { printf("OPERATOR: *\n"); }
"/"             { printf("OPERATOR: /\n"); }
"=="            { printf("OPERATOR: ==\n"); }
"<="            { printf("OPERATOR: <=\n"); }
">="            { printf("OPERATOR: >=\n"); }
"("             { printf("SYMBOL: (\n"); }
")"             { printf("SYMBOL: )\n"); }
"{"             { printf("SYMBOL: {\n"); }
"}"             { printf("SYMBOL: }\n"); }
";"             { printf("SYMBOL: ;\n"); }
","             { printf("SYMBOL: ,\n"); }
[ \t\n]+        { /* 忽略空格、制表符和换行符 */ }
.               { printf("UNKNOWN: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
