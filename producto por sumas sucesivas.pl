%producto por sumas sucesivas
producto(0,_,0):-!.
producto(X,Y,P):-
    X>0,
    X1 is X-1,
    producto(X1,Y,P1),
    P is Y+P1.
