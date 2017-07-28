%cociente por restas sucesivas
cociente(X,Y,0):-X<Y,!.
cociente(X,Y,Z):-
    X>=Y,
    Y>0,
    XY is X-Y,
    cociente(XY,Y,Z1),
    Z is Z1+1.
