%las listas solo tienen dos elementos
%los elementos son una cabeza y una cola
%tanto la cabeza como la cola pueden ser listas
listar(L):-
    Cabeza = [1,1.1],
    Cola = [2,[3.1,3.2,3.3,3.4],4,5],
    L = [Cabeza|Cola].

%cabeza y cola
dameCabeza([C|L],C).
dameCola([C|L],L).

%sacar los primeros dos elementos de la lista
descabezarDosCabezas([_,_|L],L).
