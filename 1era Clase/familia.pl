progenitor(homero, bart).
progenitor(homero, lisa).
progenitor(homero, maggie).
progenitor(abe, homero).
progenitor(abe, jose).
progenitor(jose, pepe).
progenitor(mona, homero).
progenitor(jacqueline, marge).
progenitor(marge, bart).
progenitor(marge, lisa).
progenitor(marge, maggie).

hermanos(Hermano1,Hermano2):-
    progenitor(Padre,Hermano1),
    progenitor(Padre,Hermano2),
    Hermano1 \= Hermano2.

tio(Sobrino,Tio):-
    progenitor(Padre,Sobrino),
    hermanos(Tio,Padre).

primos(Primo1,Primo2):-
    progenitor(Padre,Primo1),
    tio(Primo2,Padre),
    Primo1 \= Primo2.

abuelo(Abuelo,Nieto):-
    progenitor(Padre,Nieto),
    progenitor(Abuelo,Padre).