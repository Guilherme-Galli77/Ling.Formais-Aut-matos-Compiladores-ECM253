capital(manaus, am).
capital(aracaju, se).
capital(saoPaulo, sp).
capital(rioDeJaneiro, rj).
capital(belem, pa).
capital(curitiba,pr).
capital(portoAlegre,rs).
capital(salvador,ba).
capital(portoVelho, ro).
capital(fortaleza,ce).
capital(campoGrande, ms).
capital(vitoria,es).


pequena(manaus).
pequena(aracaju).
pequena(portoVelho).
pequena(vitoria).
pequena(campoGrande).
grande(saoPaulo).
grande(rioDeJaneiro).
grande(curitiba).
grande(salvador).
grande(portoAlegre).
grande(belem).
grande(fortaleza).

norte(manaus).
norte(aracaju).
norte(belem).
norte(fortaleza).
norte(salvador).
norte(portoVelho).
sul(portoAlegre).
sul(curitiba).
sul(saoPaulo).
sul(rioDeJaneiro).
sul(vitoria).
sul(campoGrande).


capitais(X) :- capital(X,_).
% a) capitais(X).

estadopequeno(Y):- capital(X,Y),pequena(X).
% b) estadopequeno(Y).

estadograndenorte(Y):- capital(X,Y),grande(X),norte(X).
% c) estadograndenorte(Y).

cosmopolita(X):- capital(X,_),grande(X),sul(X).
% d) cosmopolita(X):- capital(X,_),grande(X),sul(X).

% e) cosmopolita(X).
