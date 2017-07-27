%precio del transporte
transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

%precio del alojamiento por una semana
alojamiento(roma,hotel,50).
alojamiento(roma,hostel,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostel,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostel,20).
alojamiento(tunez,camping,5).

%reglas secundarias
multiplicar(P,X,Y):-
    P is X*Y.
sumar(S,X,Y):-
    S is X+Y.
menor(X,Y):-
    X<Y.

%viaje a la ciudad C, durante S semanas con estancia en H y precio P
viaje(C,S,H,P):-
    transporte(C,T),
    alojamiento(C,H,A1),
    multiplicar(A,A1,S),
    sumar(P,T,A).

%viaje económico
viajeEconomico(C,S,H,P,Pmax):-
    viaje(C,S,H,P),
    menor(P,Pmax).
