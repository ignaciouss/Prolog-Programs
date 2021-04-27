%name:Joshua Harris 
%ID:101091864

%player(name(First,Last),team(City),pos(Position),stats(Goals,Assists,Shots))
player(name(alex,ovechkin),team(was),pos(lw),stats(51,38,338)).
player(name(marcus,pettersson),team(pit),pos(d),stats(2,23,87)).
player(name(kevin,fiala),team(min),pos(lw),stats(13,26,174)).
player(name(ryan,hartman),team(min),pos(rw),stats(12,14,145)).
player(name(leon,driasaitl),team(edm),pos(c),stats(50,55,231)).
player(name(john,tavares),team(tor),pos(c),stats(47,41,286)).
player(name(steven,stamkos),team(tb),pos(c),stats(45,53,234)).
player(name(nikita,kucherov),team(tb),pos(rw),stats(41,87,246)).
player(name(nathan,mackinnon),team(col),pos(c),stats(41,58,365)).
player(name(alex,debrincat),team(chi),pos(rw),stats(41,35,220)).
player(name(jake,guentzel),team(pit),pos(lw),stats(40,36,227)).
player(name(jeff,skinner),team(buf),pos(lw),stats(40,23,268)).
player(name(mark,scheifele),team(wpg),pos(c),stats(38,46,199)).
player(name(johnny,gaudreau),team(cgy),pos(lw),stats(36,63,245)).
player(name(mike,hoffman),team(fla),pos(lw),stats(36,34,253)).
player(name(aleksander,barkov),team(fla),pos(c),stats(35,61,206)).
player(name(morgan,rielly),team(tor),pos(d),stats(20,52,223)).
player(name(brent,burns),team(sj),pos(d),stats(16,67,300)).
player(name(patrick,kane),team(chi),pos(rw),stats(44,66,341)).


%_________________________Q2a__________________________________
%  On what team does Mike Hoffman play, and in what position?
%    Query: player(name(mike,hoffman),Team,Pos,_).
%           Result:
%           Team = team(fla),
%           Pos = pos(lw).
%           
%_________________________Q2b__________________________________
%   What is the last name of any player who has at least 52 assists?
%    Query: player(name(_,Last),_,_,stats(_,A,_)),A>52.
%           Result:
%           Last = driasaitl,
%			A = 55 ;
%			Last = stamkos,
%			A = 53 ;
%			Last = kucherov,
%			A = 87 ;
%			Last = mackinnon,
%			A = 58 ;
%			Last = gaudreau,
%			A = 63 ;
%			Last = barkov,
%			A = 61 ;
%			Last = burns,
%			A = 67 ;
%			Last = kane,
%			A = 66.
%_________________________Q2c__________________________________
%    Who plays centre? 
%   Query:  player(name(First,Last),_,Pos,_),Pos=pos(c).
%           Result:
%			First = leon,
%			Last = driasaitl,
%			Pos = pos(c) ;
%			First = john,
%			Last = tavares,
%			Pos = pos(c) ;
%			First = steven,
%			Last = stamkos,
%			Pos = pos(c) ;
%			First = nathan,
%			Last = mackinnon,
%			Pos = pos(c) ;
%			First = mark,
%			Last = scheifele,
%			Pos = pos(c) ;
%			First = aleksander,
%			Last = barkov,
%			Pos = pos(c) ;
%
%_________________________Q2d__________________________________
%    What teams have a player with the first name "John"?
% Query:    player(name(john,_),Team,_,_).
%           Result:
%           Team = team(tor).
%
%_________________________Q2e__________________________________    
%		What pairs of players play on the same team?
%  Query:   player(T1,Team,_,_),player(T2,Team,_,_),not(T1=T2).
%           Result:
%           T1 = name(marcus, pettersson),
% 			Team = team(pit),
% 			T2 = name(jake, guentzel) ;
% 			T1 = name(kevin, fiala),
% 			Team = team(min),
% 			T2 = name(ryan, hartman) ;
% 			T1 = name(ryan, hartman),
% 			Team = team(min),
% 			T2 = name(kevin, fiala) ;
% 			T1 = name(john, tavares),
% 			Team = team(tor),
% 			T2 = name(morgan, rielly) ;
% 			T1 = name(steven, stamkos),
% 			Team = team(tb),
% 			T2 = name(nikita, kucherov) ;
% 			T1 = name(nikita, kucherov),
% 			Team = team(tb),
% 			T2 = name(steven, stamkos) ;
% 			T1 = name(alex, debrincat),
% 			Team = team(chi),
% 			T2 = name(patrick, kane) ;
% 			T1 = name(jake, guentzel),
% 			Team = team(pit),
% 			T2 = name(marcus, pettersson) ;
% 			T1 = name(mike, hoffman),
% 			Team = team(fla),
% 			T2 = name(aleksander, barkov) ;
% 			T1 = name(aleksander, barkov),
% 			Team = team(fla),
% 			T2 = name(mike, hoffman) ;
% 			T1 = name(morgan, rielly),
% 			Team = team(tor),
% 			T2 = name(john, tavares) ;
% 			T1 = name(patrick, kane),
% 			Team = team(chi),
%    		T2 = name(alex, debrincat) ;
%
%_________________________Q2f__________________________________  
%    What players have fewer than 100 points? (where points = goals + assists)
%   Query:  player(name(First,Last),_,_,stats(G,A,_)),G+A < 100.
%           Result:
%           First = alex,
%			Last = ovechkin,
%			G = 51,
%			A = 38 ;
%			First = marcus,
%			Last = pettersson,
%			G = 2,
%			A = 23 ;
%			First = kevin,
%			Last = fiala,
%			G = 13,
%			A = 26 ;
%			First = ryan,
%			Last = hartman,
%			G = 12,
%			A = 14 ;
%			First = john,
%			Last = tavares,
%			G = 47,
%			A = 41 ;
%			First = steven,
%			Last = stamkos,
%			G = 45,
%			A = 53 ;
%			First = nathan,
%			Last = mackinnon,
%			G = 41,
%			A = 58 ;
%			First = alex,
%			Last = debrincat,
%			G = 41,
%			A = 35 ;
%			First = jake,
%			Last = guentzel,
%			G = 40,
%			A = 36 ;
%			First = jeff,
%			Last = skinner,
%			G = 40,
%			A = 23 ;
%			First = mark,
%			Last = scheifele,
%			G = 38,
%			A = 46 ;
%			First = johnny,
%			Last = gaudreau,
%			G = 36,
%			A = 63 ;
%			First = mike,
%			Last = hoffman,
%			G = 36,
%			A = 34 ;
%			First = aleksander,
%			Last = barkov,
%			G = 35,
%			A = 61 ;
%			First = morgan,
%			Last = rielly,
%			G = 20,
%			A = 52 ;
%			First = brent,
%			Last = burns,
%			G = 16,
%			A = 67 ;
%
%______________________________________Q2h_________________________________________
%           What is the shot accuracy of the player with the most goals? (where shot accuracy = goals / shots)
%   Query:  player(name(First,Last),_,_,stats(G1,_,Shots)),Accuracy1 = G1 / Shots,not((player(_,_,_,stats(G2,_,_)),G2 > G1,Accuracy = G2 / Shots)).
%			First = alex,
%			Last = ovechkin,
%			G1 = 51,
%			Shots = 338,
%			Accuracy1 = 51/338
