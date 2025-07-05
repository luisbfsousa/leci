grammar Vector;

main: (stat ';')* EOF;

stat:
    dec     # statDec
    | show  # statShow
    ;

dec: expr '->' VAR;

show: 'show' expr;

expr:
    VECTOR                      # exprVetor 
    | op=('+'|'-') expr         # exprUnary
    | '(' expr ')'              # exprParent
    | expr op=('+'|'-') expr    # exprSumSub
    | expr '*' expr             # ExprMultDiv
    | expr '.' expr             # ExprProd
    | VAR                       # exprVar
    | NUM                       # exprNum
    ;

VECTOR: '[' NUM (',' NUM)* ']';
VAR: [a-z][a-z0-9]*;
NUM: [0-9]+('.'[0-9]+)?;
Whitespace: [ \t\n\r]+ -> skip;
Comment: '#' ~[\n]* -> skip;