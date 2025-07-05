grammar LangComplex;

main: (stat ';')* EOF;

stat:
    dec         # statDec
    | display   # statDisplay
    ;

dec: VAR '<=' expr;

display: 'display' expr;

expr:
    expr op=('+' | '-') expr    # exprExpr
    | NUM                       # exprNum
    | IM                        # ExprIm
    | VAR                       # ExprVar
    ;   

IM : ([0-9]+ ('.'[0-9]+)?)? 'i';
VAR: [a-zA-Z][a-zA-Z0-9]*;
NUM: [0-9]+('.'[0-9]+)?;
Whitespace: [ \t\n\r]+ -> skip;
Comment: '*COM*' ~[\n]* -> skip;