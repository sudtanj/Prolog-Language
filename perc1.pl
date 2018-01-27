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

