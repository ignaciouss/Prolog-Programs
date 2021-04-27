%Name:Joshua Harris    
%ID:101091864
%FACTS
%male(X). % X is male.
%female(X). % X is female.
%father(X,Y). %X is the father of Y.
%mother(X,Y). %X is the mother of Y.
%married(X,Y). %X is married to Y.
%____________male___________________
male(joshua).    
male(jordan).
male(ethan).
male(curtis).
male(kc).
male(william).
male(leroy).
%____________female___________________
female(menna).
female(alma).  
female(vela).
female(joyce).
female(agatha).
female(philis).
female(carmen).
%____________married___________________
married(alma,curtis).
married(agatha,kc).
married(philis,william).
married(menna,joshua).
%____________father___________________
father(curtis,joshua).
father(curtis,jordan).
father(curtis,ethan).
father(william,alma).
father(kc,curtis).
father(joshua,leo).
father(william,vela).
father(william, leroy).
father(joshua, leo).
father(curtis,carmen).
%____________mother___________________
mother(joyce,ethan).
mother(alma,joshua).
mother(alma,jordan).
mother(philis,alma).
mother(philis,vela).
mother(philis,leroy).
mother(agatha,curtis).
mother(menna,leo).
mother(alma,carmen).


%____________RULES__________________________________________________________


%X is the parent of Y


parent(X,Y):-
    mother(X,Y);
    father(X,Y).
	
	
%TESTS:
/*
    ?- parent(joshua,leo).  %Expected: True
    true.
	
    ?- parent(curtis,ethan). %Expected: True
    true.
	
    ?- parent(philis,alma). %Expected: True
    true.
	
    ?- parent(alma,philis). %Expected: False
    false.
	
    ?- parent(curtis,kc). %Expected: False
    false.
	
    ?- parent(agatha,kc). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is a mother
is_mother(X):-
    mother(X,_).
	
	
%TESTS:
/*
    ?- is_mother(alma).  %Expected: True
    true.
	
    ?- is_mother(philis). %Expected: True
    true.
	
    ?- is_mother(joyce). %Expected: True
    true.
	
    ?- is_mother(vela). %Expected: False
    false.
	
    ?- is_mother(ethan). %Expected: False
    false.
	
    ?- is_mother(jordan). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is a father
is_father(X):-
    father(X,_).
	
	
%TESTS:
/*
    ?- is_father(joshua).  %Expected: True
    true.
	
    ?- is_father(curtis). %Expected: True
    true.
	
    ?- is_father(williiam). %Expected: True
    true.
	
    ?- is_father(jordan). %Expected: False
    false.
	
    ?- is_father(alma). %Expected: False
    false.
	
    ?- is_father(ethan). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is a sister of Y


sister(X,Y):-
    female(X),
    parent(P1,X),
    parent(P2,Y),
    P1=P2,
	X\=Y.
	
	
%TESTS:
/*
    ?- sister(alma,vela).  %Expected: True
    true.
	
    ?- sister(alma,leroy). %Expected: True
    true.
	
    ?- sister(carmen,jordan). %Expected: True
    true.
	
    ?- sister(alma,joshua). %Expected: False
    false.
	
    ?- sister(carmen,agatha). %Expected: False
    false.
	
    ?- sister(curtis,alma). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is a brother of Y


brother(X,Y):-
    male(X),
    parent(P1,X),
    parent(P2,Y),
    P1=P2,
	X\=Y.
	
	
%TESTS:
/*
    ?- brother(jordan,joshua).  %Expected: True
    true.
	
    ?- brother(leroy,alma). %Expected: True
    true.
	
    ?- brother(leroy,vela). %Expected: True
    true.
	
    ?- brother(carmen,ethan). %Expected: False
    false.
	
    ?- brother(kc,curtis). %Expected: False
    false.
	
    ?- brother(michelle,betty). %Expected: False
    false.

*/
%_____________________________________________________________________
% X is an aunt of Y if they are blood related.


aunt(X,Y):-
    female(X),
    parent(T1,Y),
    sister(X,T2),
    T1=T2.
	
	
%TESTS:
/*
    ?- aunt(vela,jordan).  %Expected: True
    true.
	
    ?- aunt(vela,joshua). %Expected: True
    true.
	
    ?- aunt(alma,joshua). %Expected: False
    false.
	
    ?- aunt(leroy,joshua). %Expected: False
    false.
	
    ?- aunt(agatha ,joshua). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is an uncle of Y if they are blood related.


uncle(X,Y):-
    male(X),
    parent(T1,Y),
    brother(X,T2),
    T1=T2.
	
	
%TESTS:
/*
    ?- uncle(leroy,joshua).  %Expected: True
    true.
	
    ?- uncle(leroy,jordan). %Expected: True
    true.
	
    ?- uncle(ethan,joshua). %Expected: False
    false.
	
    ?- uncle(leroy,ethan). %Expected: False
    false.
	
    ?- uncle(kc,alma). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is a grandfather of Y


grandfather(X,Y):-
    male(X),
    parent(X,T1),
    parent(T2,Y),
    T1=T2.
	
	
%TESTS:
/*
    ?- grandfather(william,joshua).  %Expected: True
    true.
	
    ?- grandfather(curtis,ethan). %Expected: True
    true.
	
    ?- grandfather(kc,jordan). %Expected: True
    true.
	
    ?- grandfather(kc,alma). %Expected: False
    false.
	
    ?- grandfather(agatha,jordan). %Expected: False
    false.
	
    ?- grandfather(ethan,jordan). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is a grandmother of Y


grandmother(X,Y):-
    female(X),
    parent(X,T1),
    parent(T2,Y),
    T1=T2.
	
	
%TESTS:
/*
    ?- grandmother(agatha,jordan).  %Expected: True
    true.
	
    ?- grandmother(philis,joshua). %Expected: True
    true.
	
    ?- grandmother(alma,leo). %Expected: True
    true.
	
    ?- grandmother(alma,carmen). %Expected: False
    false.
	
    ?- grandmother(agatha,vela). %Expected: False
    false.
	
    ?- grandmother(vela,ethan). %Expected: False
    false.

*/
%_____________________________________________________________________

% X is an ancestor of Y

 
ancestor(X,Y):- 
    parent(X,Y).
	
ancestor(X,Y):- 
    parent(X,T),
    ancestor(T,Y).
	
	
%TESTS:
/*
    ?- ancestor(kc,jordan).  %Expected: True
    true.
	
    ?- ancestor(curtis,ethan). %Expected: True
    true.
	
    ?- ancestor(agatha,leo). %Expected: True
    true.
	
    ?- ancestor(agatha,vela). %Expected: False
    false.
	
    ?- ancestor(philis,curtis). %Expected: False
    false.
	
    ?- ancestor(kc,ethan). %Expected: False
    false.

*/

