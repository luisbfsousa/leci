grammar FracLang;

main: (stat ';')* EOF;

stat:
    dec         # statDec
    | display   # statDisplay
    ;

dec: VAR '<=' expr;

display: 'display' expr;

expr:
    FRACTION    # exprFraction
    | NUM       # exprNum
    | VAR       # exprVar
    ;

FRACTION: [0-9]+ '/' [0-9]+;
NUM: [0-9]+;
VAR: [a-z];
Whitespace: [ \t\n\r]+ -> skip;
Comment: '-' ~[\n]* -> skip;