%Name:Joshua Harris
%ID: 101091864
element(air).
element(earth).
element(fire).
element(water).

compound(animal,[life,forest]).
compound(bird,[animal,air]).
compound(cloud, [water,air]).
compound(fish,[life,ocean]).
compound(forest, [plant,plant]).
compound(life, [lightning,ocean,volcano]).
compound(lightning, [storm,cloud,earth]).
compound(ocean, [water,water,water]).
compound(plant, [earth,life]).
compound(rain, [cloud,water]).
compound(storm, [cloud,wind]).
compound(volcano, [fire,earth]).
compound(wind, [air,air]).

%_________________________Q5a__________________________________  
%    Write a predicate called simplify(Thing,Elements) which is true if Elements is the list of primitive elements (fire,water,earth,air only) that make up the atom Thing. 

%constructing simplify
thisList([],[]).

%used to make a list
combList(X,L):-
    L=[X].
	
	%to account for compounds
thisList([B|E],O):-
    compound(B,In),
    thisList(In,R1),
    thisList(E,R2),
    append(R1,R2,O).
	
	%to account for elements
thisList([B|E],O):-
    element(B),
    combList(B,R1),
    thisList(E,R2),
    append(R1,R2,O).
	

simplify(Thing,Elements):-
    compound(Thing,E1),
    thisList(E1,Elements).
	
%TESTS
%
%   ?- simplify(wind, [air,air]).
%   true .
%   ?- simplify(volcano, X).
%   X = [fire, earth] .

%   ?- simplify(ocean,X).
%   X = [water, water, water].


