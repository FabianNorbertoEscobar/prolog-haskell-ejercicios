%numeros del 1 al 5
numero(1).
numero(2).
numero(3).
numero(4).
numero(5).

%producto cartesiano de los numeros
productoCartesiano(X,Y):-numero(X),numero(Y).

%seleccion de numeros menores a un valor
seleccionarNumeroMenor(X,Y):-numero(X),X<Y.

%seleccion de numeros mayores a un valor
seleccionarNumeroMayor(X,Y):-numero(X),X>Y.

%seleccion de pares xy donde x<y
seleccionarParesXMenorY(X,Y):-productoCartesiano(X,Y),X<Y.

%seleccion de pares xy donde x>y
seleccionarParesXMayorY(X,Y):-productoCartesiano(X,Y),X>Y.

%proyeccion primero del par
proyectarPrimeroDelParXMenorY(X):-seleccionarParesXMenorY(X,_).

%maximo de los numeros proyectados
maximo(X):-numero(X),not(proyectarPrimeroDelParXMenorY(X)).

%tripla de numeros
tripla(X,Y,Z):-numero(X),numero(Y),numero(Z).

%operador de corte ,!
tripla1(X,Y,Z):-!,numero(X),numero(Y),numero(Z).
tripla2(X,Y,Z):-numero(X),!,numero(Y),numero(Z).
tripla3(X,Y,Z):-numero(X),numero(Y),!,numero(Z).
tripla4(X,Y,Z):-numero(X),numero(Y),numero(Z),!.
