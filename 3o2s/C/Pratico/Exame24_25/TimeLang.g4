    grammar TimeLang;

    main: (stat ';')* EOF;

    stat:
        dec         # statDec
        | write     # statWrite
        ;

    dec: VAR ':=' expr;

    write: 'write' (expr (',' expr)*)?;

    expr:
        HOUR    #exprHour
        | VAR   # exprVar
        ;

    HOUR: [0-9]+'h'[0-9]+'m'[0-9]+'s';
    VAR: [a-zA-Z][a-zA-Z0-9]*;
    Whitespace: [ \t\n\r]+ -> skip;
    Comment: '::-' ~[\n]* -> skip;
