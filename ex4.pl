ackermann(0,N,NumeroX) :- NumeroX is N+1,!.
ackermann(M,0,NumeroX) :- M>0, 
 Y is M-1, 
 ackermann(Y,1,NumeroX),!.
ackermann(M,N,NumeroX) :- M>0, 
 N>0, 
 Y is M-1, 
 Z is N-1, 
 ackermann(M,Z,NumeroX1), 
 ackermann(Y,NumeroX1,NumeroX).
