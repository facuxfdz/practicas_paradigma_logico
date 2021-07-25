cursa(diego, pdp, dodain).
cursa(mary, pdp, gaston).
cursa(elias, pdp, juan).
cursa(celeste, pdp, juan).
cursa(mora, pdp, alf).
cursa(Alguien, pdp, dodain):-
    cursa(Alguien, pdp, juan).
cursa(Alguien, operativos, adriano):-
    cursa(Alguien, pdp, gaston).
 
cursadaBuena(alf, pdp).
cursadaBuena(adriano, operativos).
 
tuvoCursadaBuena(Alguien):-
    cursa(Alguien, Materia, Profesor),
    cursadaBuena(Profesor, Materia).

:- begin_tests(utneanos).

test(persona_que_curso_con_profe_por_transitividad,nondet):-
    cursa(mary,operativos,adriano).

test(persona_que_no_tuvo_cursada_buena,fail):-
    tuvoCursadaBuena(diego).

test(personas_con_buena_cursada,set(Persona == [mora,mary])):-
    tuvoCursadaBuena(Persona).

:- end_tests(utneanos).

