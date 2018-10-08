past_vocab(ask,asked).
past_vocab(decide,decided).
past_vocab(destroy,destroyed).
past_vocab(endure,endured).
past_vocab(happen,happened).
past_vocab(look,looked).
past_vocab(love,loved).
past_vocab(select,selected).
past_vocab(study,studied).
past_vocab(surrender,surrendered).

past_tense(S,V,O,Y) :-
 	past_vocab(V,Y),
	write(S), tab(1),
	write(Y), tab(1),
	write(O).