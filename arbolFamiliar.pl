% Yo: Felipe
% Hermanos: Sara
% Papás: ManuelR - Sandra
% Tios: Gonzalo - Yamile - SandraR - Johana
% Primos: Paula - Abigail - Juan - Natalia
% Abuelos: Miguel - Manuel - Mercedez - Emilia
% Bisabuelos: Pablo - Claudia - Maria - Roberto -Narciza - Luis -Donatila
padrede('ManuelR','Felipe').
padrede('Sandra','Felipe').
padrede('ManuelR','Sara').
padrede('Sandra','Sara').
padrede('Miguel','Sandra').
padrede('Mercedez','Sandra').
padrede('Miguel','Gonzalo').
padrede('Mercedez','Gonzalo').
padrede('Gonzalo','Natalia').
padrede('Rocio','Natalia').
padrede('Miguel','Yamile').
padrede('Mercedez','Yamile').
padrede('Yamile','Abigail').
padrede('Edward','Abigail').
padrede('Manuel','ManuelR').
padrede('Emilia','ManuelR').
padrede('Manuel','SandraR').
padrede('Emilia','SandraR').
padrede('Manuel','Johana').
padrede('Emilia','Johana').
padrede('SandraR','Paula').
padrede('Alirio','Paula').
padrede('Johana','Juan').
padrede('David','Juan').
padrede('Pablo','Miguel').
padrede('Claudia','Miguel').
padrede('Maria','Mercedez').
padrede('Roberto','Manuel').
padrede('Narciza','Manuel').
padrede('Luis','Emilia').
padrede('Donatila','Emilia').

% Relaciones Sanguineas
hijode(A,B) :- padrede(B,A).
nietode(A,B) :- padrede(B,C),padrede(C,A).
hermanode(A,B) :- padrede(C,A),padrede(C,B),A\==B.
sobrinode(A,B):- hijode(A,C),hermanode(C,B).
primode(A,B) :- hijode(A,C),hermanode(C,D),padrede(D,B).
abuelode(A,B) :- padrede(A,C),padrede(C,B).
tiode(A,B) :- hermanode(A,C),padrede(C,B).
bisnietode(A,B) :- nietode(A,C),hijode(C,B).
bisabuelode(A,B) :- padrede(A,C),abuelode(C,B).

% Relaciones no Sanguineas.
esposode(A,B) :- padrede(A,C),padrede(B,C),A\==B.
suegrode(A,B) :- padrede(A,C),esposode(C,B).
hijopoliticode(A,B) :- esposode(A,C),hijode(C,B).
