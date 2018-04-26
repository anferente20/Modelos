persona( nombre('Pedro'), categoria(3), contrato( 'TC' ) ).
persona( nombre('Pedra'), categoria(2), contrato( 'H' ) ).
persona( nombre('Sebastian :v '), categoria(10), contrato( 'MT') ).
persona( nombre('David'), categoria(5), contrato( 'H' ) ).

minimo(781771).
horas(5000).

% Salario por categoria
salario(X,Y,Z,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'TC', minimo(M), S is (Y* M ).
salario(X,Y,Z,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'MT', minimo(M), S is (Y* M/2 ).
salario(X,Y,Z,H,S):-persona( nombre(X), categoria(Y), contrato(Z) ), Z == 'H', horas(M), S is (Y* M* H ).

