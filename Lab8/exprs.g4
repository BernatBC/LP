// Gramàtica per expressions senzilles
grammar exprs;
root : (statement)* EOF             // l'etiqueta ja és root
     ;

statement : 'write' expr                # escriptura
     | VAR ':=' expr                    # assignacio
     ;

expr : <assoc=right> expr '^' expr      # potencia
     | expr mult=( '*' | '/' ) expr     # mult_div
     | expr add=( '+' | '-' ) expr      # suma_resta
     | NUM                              # numero
     | VAR                              # variable
     ;

NUM : [0-9]+ ;

VAR : [a-z|A-Z]+;

WS  : [ \t\n\r]+ -> skip ;