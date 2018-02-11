man(marcus).
pompeian(marcus).
born(marcus,40).
erupted(volcano,79).


mortal(X) :- man(X).
at_range(W,Y,Z) :-  \+ (W =< Z), \+ (W >= Y).
died_after_volcano(X,W) :- pompeian(X), born(X,Y), erupted(volcano,Z), (Y =< Z), \+ at_range(W,Y,Z).
is_mortal(X,Y) :- mortal(X), (Y =< 150).
is_alive(X,Y) :- died_after_volcano(X,Y),is_mortal(X,Y).





