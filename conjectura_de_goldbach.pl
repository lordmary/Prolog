par(1,0).
par(2,1).
par(N,Y) :- N>2, T is N-1, par(T,1),Y=0.
par(N,Y) :- N>2, T is N-1, par(T,0),Y=1.
composto1(P1) :- P1>2, P1 mod 2 =:= 0;
composto2(P2) :- P2>2, P2 mod 2 =:= 0;
 
composto_impar1(P1,3).
composto_impar1(P1,F) :- F<P1, P1 mod F =:= 0,!;
F<P1, Fp is F + 2,composto_impar1(P1,Fp).
composto_impar2(P2,3).
composto_impar2(P2,F) :- F<P2, P2 mod F =:= 0,!;
F<P2, Fp is F + 2,composto_impar2(P2,Fp).
eh_primo(2):-!.
eh_primo(3):-!.
eh_primo(P1) :- P1 > 3, \+ composto1(P1).
eh_primo(P2) :- P2 > 3, \+ composto2(P2).
p(X,N) :- P is X+1, eh_primo(P), N is P,!;
 pp(X+1,N1), N is N1.
goldbach(N, Y, P1,P2) :- par(N,Y), N is P1+P2.
