grammar strLang;

main: (stat '\n'*)* EOF;

stat:
    dec         # statDec
    | print     # statPrint
    ;

dec: VAR ':' STRING;

print: 'print' expr;

expr:
    | expr '+' expr
    | expr '-' expr
    | 'trim' expr
    | '(' expr ')'
    | expr '/' expr '/' expr
    | STRING      # exprString
    | VAR       # exprVar
    ;

STRING: '"' .*? '"';
VAR: [a-zA-Z][a-zA-Z0-9]*;
Whitespace: [ \t\r]+ -> skip;
Comment: '//' .*? '\n' -> skip;