time( morning). 
time( afternoon). 
professor( compilers, amira). 
professor( artiflcial_intelligence, amira). 
professor( artificial_intelligence, esmat). 
professor( crypto, esmat). 
professor( crypto, abdelghany). 
professor( compilers, gehad). 
professor( artificial_intelligence, omar). 

session( Time, Topic, Pl, P2) :-
 time( Time), 
 professor( Topic, P1), 
 professor( Topic, P2), 
 Pl\= P2. 
 
# case when sessions are at different time
no_conflict(Session_Time1, _, _,Session_Time2,_,_) :-
  Session_Time1 \= Session_Time2.

# case when sessions are at the same time but with diffrent professors
no_conflict(SessionTime, Session1Professor1, Session2Professor2, SessionTime, Session2Professor1, Session2Professor2):-
  Session1Professor1 \= Session2Professor1,
  Session1Professor2 \= Session2Professor2.

schedule( TimeOfSession1, S1P1, S1P2, TimeOfSession2, S2P1, S2P2, TimeOfSession3, S3P1, S3P2) :-
 session( TimeOfSession1, artificial_intelligence, S1P1, S1P2), 
 session( TimeOfSession2, compilers, S2P1, S2P2), 
 session( TimeOfSession3, crypto, S3P1, S3P2), 
 no_conflict( TimeOfSession1, S1P1, S1P2, TimeOfSession2, S2P1, S2P2), 
 no_conflict( TimeOfSession1, S1P1, S1P2, TimeOfSession3, S3P1, S3P2), 
 no_conflict( TimeOfSession2, S2P1, S2P2, TimeOfSession3, S3P1, S3P2). 


