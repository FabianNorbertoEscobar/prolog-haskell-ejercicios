%personas
persona('juan').
persona('maria').
persona('pablo').
persona('marcela').
persona('carlos').
persona('debora').

%el primero es padre del segundo
padreDe('juan','maria').
padreDe('pablo','juan').
padreDe('pablo','marcela').
padreDe('carlos','debora').

%el primero es hijo del segundo
hijoDe(A,B):-
    padreDe(B,A).

%el primero es abuelo del segundo
abueloDe(A,B):-
    padreDe(A,C),
    padreDe(C,B).

%hermanos
hermanos(A,B):-
    padreDe(C,A),
    padreDe(C,B),
    A\==B.

%son familiares sin son padre e hijo o hermanos
familiares(A,B):-
    padreDe(A,B).
familiares(A,B):-
    hijoDe(A,B).
familiares(A,B):-
    hermanos(A,B).


