parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(ann, romy).
parent(romy, jimmy).
parent(jimmy, neutron).
female(pam).
female(liz).
female(pat).
female(ann).
male(jim).
male(tom).
male(bob).
father(X, Y) :- parent(X, Y), male(X).
gp(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
aunt(X, Y) :- sibling(X, Z), parent(Z, Y), female(X).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
ancestor(X, Y) :- parent(X, Y).

factorial(0,1) :-!.
factorial(1,1) :-!.
%factorial(X, Y):- Y is X*factorial(X-1). 
%factorial(X, Y):- factorial(X-1, N), Y is X*N.
%factorial(X, Y):- C is X-1, factorial(C, N), Y is X*N.
factorial(X, Y):- C is X-1, factorial(C, N), Y is X*N. 

%[1,2,3,4]

add2([],[]).
add2([H|T], [H1|T1]) :- H1 is H+2, add2(T, T1).

%[1,2,3,4] menyebabkan H=1, T=[2,3,4]
%[2,3,4] menyebabkan H=2, T=[3,4]
%[3,4] menyebabkan H=3, T=[4]
%[4] menyebabkan H=4, T=[]
%[3|[4|[5|[6|[]]]]]

%menjumlahkan elemen list [2,3,4,5] = 14
jumlah([], 0).
jumlah([H|T], L) :- jumlah(T, T1), L is H+T1.
%2+[3,4,5]
%2+3+[4,5]

anggota(H, [H|_]).
anggota(L, [_|T]):- anggota(L, T).

%jika positif
buangneg([], []).
%jika negatif
buangneg([H|T],L):-H<0, buangneg(T, L).
buangneg([H|T],[H|T1]):- H>= 0, buangneg(T, T1).









