%name:Joshua Harris 
%ID:101091864

%_________________________Q3__________________________________
Write a predicate random_int/3 that takes two numbers A and B as arguments and returns a random integer in the range [A,B]. You may not use the built-in random_between/3 predicate. 

random_int(A,B,Rand):-
	R is B+1,
	A <  B,
	Result is random(R),
	Result > A, !;
	A < B, random_int(A,B,Rand),!.
	
%	?- random_int(1,36,X).
%	X = 20.

%	?- random_int(1,3,X).
%	X = 2.

%	?- random_int(1,3,2).
%	true.
