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

hijode(A,B) :- padrede(B,A).
nietode(A,B) :- padrede(B,C),padrede(C,A).
hermanode(A,B) :- padrede(C,A),padrede(C,B),A\==B.
sobrinode(A,B):- hijode(A,C),hermanode(C,B).
primode(A,B) :- hijode(A,C),hermanode(C,D),padrede(D,B).
abuelode(A,B) :- padrede(A,C),padrede(C,B).
tiode(A,B) :- hermanode(A,C),padrede(C,B).