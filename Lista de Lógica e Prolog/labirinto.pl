conectado(1,2).
conectado(3,4).
conectado(5,6).
conectado(7,8).
conectado(9,10).
conectado(12,13).
conectado(13,14).
conectado(15,16).
conectado(17,18).
conectado(19,20).
conectado(4,1).
conectado(6,3).
conectado(4,7).
conectado(6,11).
conectado(14,9).
conectado(11,15).
conectado(16,12).
conectado(14,17).
conectado(16,19).

ligado(A,B) :-
    conectado(A,X),
    conectado(X,B),
    A \= B.

ligado2(A,B) :-
    conectado(A,X),
    conectado(X,Y),
    conectado(Y,B),
    A \= B.

ligado3(A,B) :-
    conectado(A,X),
    conectado(X,Y),
    conectado(Y,Z),
    conectado(Z,B),
    A \= B.

ligado4(A,B) :-
    conectado(A,X),
    conectado(X,Y),
    conectado(Y,Z),
    conectado(Z,W),
    conectado(W,B),
    A \= B.

caminho(X,Y) :-
    conectado(X,Y).

caminho(X,Y) :-
    ligado(X,Y).

caminho(X,Y) :- 
    ligado2(X,Y).

caminho(X,Y) :-
    ligado3(X,Y).

caminho(X,Y) :-
    ligado4(X,Y).
