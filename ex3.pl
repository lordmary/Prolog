divisivel(X):- 0 is mod(X,7), !.
r(X,A):- A is (X-((X//10)*10)).
q(X,B):- B is X//10.
resolve(X,B,A,C):- r(X,A),q(X,B),C is (B-A*2).
divisivel7(X,B,A,C):- X>50,
 resolve(X,B,A,C),
 divisivel(X),!;
 divisivel(X),!.
