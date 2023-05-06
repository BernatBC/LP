// Gramàtica per expressions senzilles
grammar exprs;
root : expr             // l'etiqueta ja és root
     ;
expr : <assoc=right> expr '^' expr    # potencia
     | expr mult=( '*' | '/' ) expr    # mult_div
     | expr add=( '+' | '-' ) expr    # suma_resta
     | NUM              # numero
     ;
NUM : [0-9]+ ;
WS  : [ \t\n\r]+ -> skip ;