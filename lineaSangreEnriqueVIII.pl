%Genealogia Enrique VIII

%Raiz
padre(enrique7, arturo).
madre(isabeldeyork, arturo).
padre(enrique7, margarita).
madre(isabeldeyork, margarita).
padre(enrique7, enrique8).
madre(isabeldeyork, enrique8).
padre(enrique7, mariatudor).
madre(isabeldeyork, mariatudor).

%Segundo Nivel
madre(margarita, jacobo5).
padre(jacabo4, jacobo5).

padre(enrique8, maria1).
madre(catalina, maria1).
padre(enrique8, isabel1).
madre(ana, isabel1).
padre(enrique8, eduardo6).
madre(jane, eduardo6).
padre(enrique8, henry).
madre(elizabeth, henry).

madre(mariatudor, henrybrandon).
padre(charles, henrybrandon).
madre(mariatudor, frances).
padre(charles, frances).
madre(mariatudor, eleanor).
padre(charles, eleanor).
madre(mariatudor, henrybrandon2).
padre(charles, henrybrandon2).

%Tercer Nivel
padre(jacobo5, maria1deescocia).
madre(mariadeguisa, maria1deescocia).

madre(frances, juana1).
padre(enriquegrey, juana1).
madre(frances, catalinagrey).
padre(enriquegrey, catalinagrey).
madre(frances, mariagrey).
padre(enriquegrey, mariagrey).

%Reglas de Parentesco
mujer(isabeldeyork).
mujer(margarita).
mujer(mariatudor).
mujer(catalina).
mujer(maria1).
mujer(isabel1).
mujer(frances).
mujer(eleanor).
mujer(mariadeguisa).
mujer(maria1deescocia).
mujer(juana1).
mujer(mariagrey).
mujer(catalinagrey).

hombre(enrique7).
hombre(arturo).
hombre(enrique8).
hombre(jacobo4).
hombre(jacobo5).
hombre(eduardo6).
hombre(henry).
hombre(charles).
hombre(henrybrandon).
hombre(henrybrandon2).
hombre(enriquegrey).

nieta(X, Y) :- padre(Y, Z), padre(Z, X), mujer(X).
nieta(X, Y) :- madre(Y, Z), padre(Z, X), mujer(X).
nieta(X, Y) :- padre(Y, Z), madre(Z, X), mujer(X).
nieta(X, Y) :- madre(Y, Z), madre(Z, X), mujer(X).
nieto(X, Y) :- padre(Y, Z), padre(Z, X), hombre(X).
nieto(X, Y) :- madre(Y, Z), padre(Z, X), hombre(X).
nieto(X, Y) :- padre(Y, Z), madre(Z, X), hombre(X).
nieto(X, Y) :- madre(Y, Z), madre(Z, X), hombre(X).

hermano(X, Y) :- padre(C, X), padre(C, Y), madre(E, X), madre(E, Y), hombre(X), X\==Y.
hermana(X, Y) :- padre(C, X), padre(C, Y), madre(E, X), madre(E, Y), mujer(X), X\==Y.

tio(X, Y) :- padre(C, Y), hermano(X, C).
tio(X, Y) :- madre(C, Y), hermano(X, C).
tia(X, Y) :- padre(C, Y), hermana(X, C).
tia(X, Y) :- madre(C, Y), hermana(X, C).

primo(X, Y) :- tio(C, X), padre(C, Y), hombre(X).
primo(X, Y) :- tia(C, X), madre(C, Y), hombre(X).
prima(X, Y) :- tio(C, X), padre(C, Y), mujer(X).
prima(X, Y) :- tia(C, X), madre(C, Y), mujer(X).

abuelo(X, Y) :- nieta(Y, X), hombre(X).
abuelo(X, Y) :- nieto(Y, X), hombre(X).
abuela(X, Y) :- nieta(Y, X), mujer(X).
abuela(X, Y) :- nieto(Y, X), mujer(X).

sobrino(X, Y) :- tia(Y, X), hombre(X).
sobrino(X, Y) :- tio(Y, X), hombre(X).
sobrina(X, Y) :- tia(Y, X), mujer(X).
sobrina(X, Y) :- tio(Y, X), mujer(X).

mediohermano(X, Y) :- padre(C, X), padre(D, Y), madre(E, X), madre(E, Y), hombre(X), X\=Y, C\=D.
mediohermana(X, Y) :- padre(C, X), padre(D, Y), madre(E, X), madre(E, Y), mujer(X), X\=Y, C\=D.
