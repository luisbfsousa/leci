grammar Iml;

program: command* EOF;

command:
      imageCommand
    | assignStat
    | controlCommand
    | outputStat
    | listAppend
    ;

imageCommand:
      'draw' ID                                                                                   # plotImage
    | ID 'store' 'into' STRING                                                                    # storeImage
    ;

assignStat: types? ID 'is' expr;

controlCommand:
      'if' expr 'then' thenCommands+=command* ('else' elseCommands+=command*)? 'done'             # ifStat
    | 'until' expr 'do' command* 'done'                                                           # untilStat
    | 'for' varType=('percentage' | 'image')? ID 'within' ID 'do' command* 'done'                 # forStat
    ;

outputStat: 
      'output' ID                                                                                 # outputImage
    | 'output' STRING                                                                             # outputString
    | 'output' expr                                                                               # outputExpression
    ;

listAppend: ID 'append' expr;

expr: 
      '(' expr ')'                                                                                # parenExpr
    | 'load' 'from' expr                                                                          # loadImageExpr
    | 'run' 'from' expr                                                                           # runFromReadExpr
    | scaletype=('columns' | 'rows') 'of' ID                                                      # imageColumnsRowsExpr
    | expr '.*' expr                                                                              # pixelBinaryOpHp
    | expr op=('.+' | '.-' | '.>' | '.<') expr                                                    # pixelBinaryOpLp
    | expr op=('-*' | '|*' | '+*') expr                                                           # scaleBinaryOp
    | op=('-' | '|' | '+') expr                                                                   # flipImageExpr
    | expr op=('+' | '-' | '*' | '/' | '%' | '!=' | '==' | '<' | '<=' | '>' | '>=') expr          # binaryOp
    | expr morphOp=('open' | 'close' | 'erode' | 'dilate' | 'top hat' | 'black hat') 'by' ID      # morphExpression
    | 'any' 'pixel' expr                                                                          # anyPixelExpr
    | 'all' 'pixel' expr                                                                          # allPixelExpr
    | 'count' 'pixel' expr 'in' expr                                                              # countPixelExpr
    | type=('string' | 'number') '(' expr ')'                                                     # convertExpr
    | 'read' STRING                                                                               # readInput
    | ID                                                                                          # variableExpr
    | NUMBER                                                                                      # numberLiteral
    | PERCENTAGE                                                                                  # percentageLiteral
    | STRING                                                                                      # stringLiteral
    | '[' (expr (',' expr)*)? ']'                                                                 # listLiteral
    ;

types: 'number' | 'image' | 'list' 'of' (types) | 'percentage' | 'string';
ID: [a-zA-Z_][a-zA-Z0-9_]*;
STRING: '"' .*? '"' ;
PERCENTAGE: [0-9]+ '%' ;
NUMBER: [0-9]+ ('.' [0-9]+)?;

COMMENT: '//' .*? '\n' -> skip;
WS: [ \t\r\n]+ -> skip;