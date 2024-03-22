
male(dasarath).
male(ram).
male(laxman).
male(luv).
male(kush).
male(david).
male(harka).
female(kaushilya).
female(sita).
female(urmila).
female(maya).
husband(dasarath,kaushilya).
husband(ram, sita).
husband(luv,maya).
husband(laxman, urmila).
father(dasarath, ram).
father(dasarath, laxman).
father(ram,luv).
father(ram,kush).
father(luv,david).
father(luv,harka).
father(dasarath,sita).
father(dasarath,urmila).

grandfather(A,C):- father(A,B),father(B,C).
grandmother(A,C):-husband(B,A),grandfather(B,C).

mother(A, B) :- father(C, B), husband(C,A), female(A).

brother(A, B):- father(C,A), father(C,B), male(C),A\==B.
sister(A, B):-father(C,A), father(C,B), male(C),A\==B.

parent(A,B):- father(A,C), mother(B,C); wife(B,A).
son(A,B):- father(C,A), male(A).
daugther(A,B):- father(B,A), female(A). 

uncle(A,B):- brother(C,A), father(C,B).
aunt(A,B):- husband(C,A), uncle(C,B),female(A).

haschild(X):- father(X,_).