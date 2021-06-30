 
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


listar_caminhos(X,Y) :-
    conectado(X,Y),
    write("Caminho:"), nl,
    write(X-Y).

listar_caminhos(X,Y) :-
    conectado(X,Z),
    conectado(Z,Y),
    write("Caminho:"), nl,
    write(X-Z), nl,
    write(Z-Y).

listar_caminhos(X,Y) :-
    conectado(X,Z),
    conectado(Z,A),
    conectado(A,Y),
    write("Caminho:"), nl,
    write(X-Z), nl,
    write(Z-A), nl,
    write(A-Y).

listar_caminhos(X,Y) :-
    conectado(X,Z),
    conectado(Z,A),
    conectado(A,B),
    conectado(B,Y),
    write("Caminho:"), nl,
    write(X-Z), nl,
    write(Z-A), nl,
    write(A-B), nl,
    write(B-Y).

listar_caminhos(X,Y) :-
    conectado(X,Z),
    conectado(Z,A),
    conectado(A,B),
    conectado(B,C),
    conectado(C,Y),
    write("Caminho:"), nl,
    write(X-Z), nl,
    write(Z-A), nl,
    write(A-B), nl,
    write(B-C), nl,
    write(C-Y).

listar_caminhos(X,Y) :-
    conectado(X,Z),
    conectado(Z,A),
    conectado(A,B),
    conectado(B,C),
    conectado(C,D),
    conectado(D,Y),
    write("Caminho:"), nl,
    write(X-Z), nl,
    write(Z-A), nl,
    write(A-B), nl,
    write(B-C), nl,
    write(C-D), nl,
    write(D-Y).

listar_caminhos(X,Y) :-
    conectado(X,Z),
    conectado(Z,A),
    conectado(A,B),
    conectado(B,C),
    conectado(C,D),
    conectado(D,E),
    conectado(E,Y),
    write("Caminho:"), nl,
    write(X-Z), nl,
    write(Z-A), nl,
    write(A-B), nl,
    write(B-C), nl,
    write(C-D), nl,
    write(D-E), nl,
    write(E-Y).
