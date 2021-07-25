gustaDe(juan,maria).
gustaDe(pedro,ana).
gustaDe(pedro,nora).

gustaDe(Alguien,zulema):-
    gustaDe(Alguien,nora).

gustaDe(julian,Chica):-
    % chica(Chica), sería coherente si no hubiéramos definido ser chica como una condición necesaria para ser morocha
    morocha(Chica).

gustaDe(julian,Chica):-
    chica(Chica),
    tieneOnda(Chica).

gustaDe(mario,Chica):-
    chica(Chica),
    morocha(Chica),
    tieneOnda(Chica).

gustaDe(mario,luisa).

gustaDe(Alguien,laura):-
    gustaDe(Alguien,ana),
    gustaDe(Alguien,luisa).


morocha(julieta).
morocha(fernanda).

tieneOnda(melina).
tieneOnda(candela).

chica(Chica):-
    morocha(Chica).

chica(Chica):-
    tieneOnda(Chica).

