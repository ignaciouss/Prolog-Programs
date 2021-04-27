%name:Joshua Harris    
%ID:101091864

%_________________________Q4a__________________________________   
%Write a predicate list(L) that succeeds if the argument L is a list. (You may not use the built-in is_list predicate for this).
list([_|T]):-
    list(T).
	

%TESTS
%
%   ?- list([1,2,3]).
%   true.
%   ?- list([5,6,9]).
%   true.
%   ?- list(hello).
%   false.

%_________________________Q4b__________________________________
$   Write a predicate called treeFlat(T,L) that succeeds if the tree T (nested list) contains the same elements as the (flat) list L. You may not use the built-in flatten predicate in your answer

treeFlat([],[]).
treeFlat([Beg|End],L):-
	treeFlat(Beg,H1),
    treeFlat(End,H2),
    append(L1,L2,L).
treeFlat(Res,[Res]).


%TESTS
%
%   ?- treeFlat([1,[2,3],[[4,[5]],6]],[1,2,3,4,5,6]).
%   true .

%   ?- treeFlat([1,[2,3],[[4,[5]],6]], L).
%   L = [1, 2, 3, 4, 5, 6] .

%   ?- treeFlat([1,[3,3],[[6,[2,8]],6]], L).
%   L = [1, 3, 3, 6, 2,8, 6]

%   ?- treeFlat([1,[3,3],[[6,[2,8]],6]], [1, 3, 3, 6, 2,8, 6]).
%   true .

%   ?- treeFlat([1,[2,3],[[4,[5]],6], [1, 3, 3, 6, 2,8, 6]).
%   false.

%_________________________Q4c__________________________________  
%   Write a predicate treeSum(T,S) that succeeds if the sum of all elements in the tree T equals S. You may not use the built-in predicate sumlist.

%Adding a rule to List to handle adding element
list([Beg|End],Res):-
    list(End,Acc),
    Res is Beg + Res.
	
treeSum(End,S):-
    treeFlat(End,T),
    list(T,S).
%TESTS
%
%   ?- treeSum([[1,[2,3]],4,[5,6,[7]]], S).
%   S = 28.

%   ?- treeSum([[1,[2,3]],4,[5,6,[7]]],28).
%   true. 

%   ?- treeSum([[1,[2,3]],4,[5,6,[7],8]], S)
%   S = 36.

%   ?- treeSum([[1,[2,3]],4,[5,6,[7],8]],36).
%   true .

%   ?- treeSum([[1,[2,3]],4,[5,6]], S).
%   S = 21 .
%   ?- treeSum([[1,[2,3]],4,[5,6]], 21).
%   true .
