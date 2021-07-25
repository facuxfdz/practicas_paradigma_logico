% esMaestroDe(Personaje,Elemento).
esMaestroDe(agua,katara).
esMaestroDe(fuego,zuko).
esMaestroDe(tierra,toph).
esMaestroDe(fuego,azula).
esMaestroDe(lodo,toph).
esMaestroDe(rayo,azula).
esMaestroDe(fuego,roku).
esMaestroDe(fuego,jeongJeong).
esMaestroDe(fuego,guido).
esMaestroDe(rayo,guido).
esMaestroDe(tierra,diana).
esMaestroDe(lava,diana).
esMaestroDe(tierra,bolin).
esMaestroDe(tierra,lin).
esMaestroDe(metal,lin).
esMaestroDe(metal,facu).

esMaestroDe(aire,Nombre):-
    creoElMovimiento(_,Nombre).
esMaestroDe(aire,Nombre):-
    cantidadMovimientos(Nombre,Cantidad),
    Cantidad >= 36.

% cantidadMovimientos(Personaje,Cantidad) -> cantidadMovimientos/2
cantidadMovimientos(jinora,39).
cantidadMovimientos(aang,123).
cantidadMovimientos(meelo,15).

% creoElMovimiento(Movimiento,Personaje) -> creoElMovimiento/2
creoElMovimiento(patinetaDeAire,aang).
creoElMovimiento(volar,zaheer).
creoElMovimiento(embudoDeAire,carpincho).



% tieneDobleMaestria(Alguien) -> tieneDobleMaestria/1
tieneDobleMaestria(Alguien):-
    esMaestroDe(Elemento1,Alguien),
    esMaestroDe(Elemento2,Alguien),
    Elemento1 \= Elemento2.

% confiaEn(EnQuienConfiar,Desconfiado) -> confiaEn/2
confiaEn(zuko, aang).
confiaEn(sokka, aang).
confiaEn(toph, aang).
confiaEn(appa, aang).
confiaEn(momo, aang).
confiaEn(jeongJeong, aang).
confiaEn(momo, aang).

confiaEn(Quien,katara):-
    confiaEn(Quien,aang),
    not(esMaestroDe(fuego,Quien)).

% esEnemigoDe(Personaje,Enemigo) -> esEnemigoDe/2
esEnemigoDe(zhao,Enemigo):-
    esMaestroDe(Elemento,Enemigo),
    Elemento \= fuego.

esEnemigoDe(zhao,zuko).