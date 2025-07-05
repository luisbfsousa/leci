grammar IIml;

program: command* EOF;

command:
    assignStat
    | createImage
    | placeForm
    | forLoop
    ;

assignStat: types? ID 'is' expr;

createImage: types? 'size' expr 'by' expr 'background' expr;

placeForm: 'place' shapes 'at' expr expr 'with' 'intensity' expr;

forLoop: 'for' ('list')? expr 'within' expr command;

expr:
      '(' expr ')'                                                                                  # parenExpr
    | 'read' STRING                                                                                 # readInput
    | expr op=('+' | '-' | '*' | '/') expr                                                          # binaryOp
    | types '(' expr ')'                                                                            # convertExpr
    | '[' (expr (',' expr)*)? ']'                                                                   # listExpr
    | expr '[' expr ']'                                                                             # listAccess
    | NUMBER                                                                                        # numberLiteral
    | ID                                                                                            # variableExpr
    | STRING                                                                                        # stringLiteral
    ;

shapes: ('circle' 'radius' expr) | ('rect' 'width' expr 'height' expr) | ('cross' 'width' expr 'height' expr) | ('plus' 'width' expr 'height' expr);
types: 'number' | 'image' | 'list' 'of' types;
ID: [a-zA-Z_][a-zA-Z0-9_]*;
STRING: '"' .*? '"' ;
NUMBER: [0-9]+ ('.' [0-9]+)?;

COMMENT: '//' .*? '\n' -> skip;
WS: [ \t\r\n]+ -> skip;
