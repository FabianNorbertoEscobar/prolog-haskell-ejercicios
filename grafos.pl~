%aristas dirigidas
aristaDirigida(d,h,4).
aristaDirigida(h,f,9).
aristaDirigida(i,f,11).
aristaDirigida(f,g,10).
aristaDirigida(f,a,8).
aristaDirigida(a,b,7).
aristaDirigida(d,i,2).

%nodoNoAislado
noAislado(X):-
    aristaDirigida(X,_,_).

%costoDeLlegar
costoDeLlegar(Inicio,Destino,Intermedio,Costo):-
    aristaDirigida(Inicio,Intermedio,Costo1),
    aristaDirigida(Intermedio,Destino,Costo2),
    Costo is Costo1 + Costo2.

%camino entre dos nodos
camino(X,Y):-
    aristaDirigida(X,Y,_).
camino(X,Y):-
    aristaDirigida(X,Z,_),camino(Z,Y).











