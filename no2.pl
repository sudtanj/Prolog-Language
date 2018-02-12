% According to the slide presented by Tim Smith 
% in Artificial Intelligence Programming in Prolog (AIPP) 
%	course, School of Informatics, The University of 
%	Edinburgh, Scotland, Great Britain.
go(Out):- 	read(X),		
% read user input
name(X,L),	
% turn input into list of ASCII codes
tokenize(L,Out).	
%pass list to tokenizer
tokenize([],[]):-!.		
% base case: no codes left
tokenize(L,[Word|Out]):- L\==[],	
tokenize(L,Rest,WordChs),
% identify first word
name(Word,WordChs),	
% turn codes into a Prolog term	
tokenize(Rest,Out).	
% move onto rest of codes
tokenize([],[],[]):- !.		
% end of word: no codes left
tokenize([46|_],[],[]):- !.		
% full-stop = end of word
tokenize([32|T],T,[]):- !.

tokenize([35|T],T,[]):- !.	
% space = end of word
tokenize([H|T],Rest,[H|List]):- tokenize(T,Rest,List). 
%if not the end of a word then add code to output list 
%and recurse. 

