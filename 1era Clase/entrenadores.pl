entrenador(ash).
entrenador(misty).
entrenador(brock).
entrenador(guido).
entrenador(diana).

tieneA(ash,pikachu).
tieneA(ash,pidgeot).
tieneA(ash,charizard).
tieneA(brock,gyarados).
tieneA(misty,charizard).
tieneA(guido,carpincho).
tieneA(diana,meowth).
tieneA(brock,charizard).
tieneA(brock,onix).
tieneA(mrMime).

quiereSerElMejor(Alguien):-
    entrenador(Alguien).


groso(Alguien):-
    tieneA(Alguien,pikachu),
    tieneA(Alguien,charizard).
groso(rasta).

estaSolo(Entrenador):-
    not(tieneA(Entrenador,_)).