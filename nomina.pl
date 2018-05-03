persona( nombre('Pedro'), categoria(3), contrato( 'TC' ) ).
persona( nombre('Pedra'), categoria(2), contrato( 'TC' ) ).
persona( nombre('Sebastian :v '), categoria(10), contrato( 'TC') ).
persona( nombre('David'), categoria(5), contrato( 'H' ) ).

% Pagos
minimo(781242).
hora(5000).

% Descuentos
salud(0.085).
pension(0.12).

% Salario por categoria
salario(X,Y,Z,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'TC', minimo(M),salud(C), pension(P), S is (Y* M * (1- C) * (1- P) ).
salario(X,Y,Z,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'MT', minimo(M), S is ((Y* M/2)*(1- C) * (1- P) ).
salario(X,Y,Z,H,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'H', hora(M), S is (Y* M* H ).


% descuento  por categoria
descuento(X,Y,Z,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'TC', minimo(M),salud(C), pension(P), S is (Y* M *  C *  P ).
descuento(X,Y,Z,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'MT', minimo(M), S is ((Y* M/2)* C * P ).


nomina([],R):-R=0. 
nomina([ X | Y ],R) :- sumar(Y, R1), R is R1+X.