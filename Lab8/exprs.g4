// Gramàtica per expressions senzilles
grammar exprs;
root : block EOF             // l'etiqueta ja és root
     ;

block : statement*
     ;

statement : 'write' expr                     # escriptura
     | VAR ':=' expr                         # assignacio
     | 'if' bool 'then' block 'end'          # condicio
     | 'while' bool 'do' block 'end'         # bucle_while
     ;

expr : '(' expr ')'                          # parentesis
     | <assoc=right> expr '^' expr           # potencia
     | expr mult=( '*' | '/' ) expr          # mult_div
     | expr add=( '+' | '-' ) expr           # suma_resta
     | NUM                                   # numero
     | VAR                                   # variable
     ;

bool : '(' bool ')'                          # parentesis_bool
     | bool '||' bool                        # or_bool
     | bool '&&' bool                        # and_bool
     | expr ('=' | '<>' | '<' | '>') expr    # oper_bool
     ;

NUM : [0-9]+ ;

VAR : [a-z|A-Z]+;

WS  : [ \t\n\r]+ -> skip ;