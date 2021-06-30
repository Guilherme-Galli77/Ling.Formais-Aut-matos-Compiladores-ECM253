
pai(jose, marcio).
pai(jose, joao).
pai(jose,nachor).

pai(joao,flavio).

pai(marcio,ricardo).
pai(marcio,maria).
pai(marcio,julia).

mae(silvia,flavio).

homem(jose).
homem(joao).
homem(marcio).
homem(nachor).
homem(flavio).
homem(ricardo).
mulher(silvia).
mulher(julia).
mulher(maria).

filho(X,Y):- pai(Y,X),homem(X).
filho(X,Y):- mae(Y,X),homem(X).

filha(X,Y):- pai(Y,X),mulher(X).
filha(X,Y):- mae(Y,X),mulher(X).

paisde(Y,X):- pai(Y,X).
paisde(Y,X):- mae(Y,X).

avo(X,Z) :- paisde(X,Y), paisde(Y,Z).


ancestral(X,Y) :- paisde(X,Y).
ancestral(X,Y) :- paisde(X,Y), ancestral(X,Y).
