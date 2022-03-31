time( morning). 
time( afternoon). 
professor( compilers, amira). 
professor( artiflcial_intelligence, amira). 
professor( artificial_intelligence, esmat). 
professor( crypto, esmat). 
professor( crypto, abdelghany). 
professor( compilers, gehad). 
professor( artificial_intelligence, omar). 

# case when sessions are at different time
no_conflict(Session_Time1, _, _,Session_Time2,_,_) :-
  Session_Time1 \= Session_Time2.

# case when sessions are at the same time but with diffrent professors
no_conflict(SessionTime, Session1Professor1, Session2Professor2, SessionTime, Session2Professor1, Session2Professor2):-
  Session1Professor1 \= Session2Professor1,
  Session1Professor2 \= Session2Professor2.

schedule( Ta, Al, A2, Tb, B1, B2, Td, DI, D2) :-
 session( Ta, artificial_intelligence, Al, A2), 
 session( Tb, compilers, Bl, B2), 
 session( Td, crypto, Dl, D2), 
 no_conflict( Ta, Al, A2, Tb, B1, B2), 
 no_conflict( Ta, Al, A2, Td, DI, D2), 
 no_conflict( Tb, B1, B2, Td, Dl, D2). 

session( Time, Topic, Pl, P2) :-
 time( Time), 
 professor( Topic, P1), 
 professor( Topic, P2), 
 Pl\= P2. 

