divd(T):- 0 is mod(T,7), !.

r(T,R):- R is (T-((T//10)*10)).
q(T,Q):- Q is T//10.

calcula(T,Q,R,N):- r(T,R),q(T,Q),N is (Q-R*2).

div7(T,Q,R,N):- T>50,calcula(T,Q,R,N),divd(T),!;
    divd(T),!.
