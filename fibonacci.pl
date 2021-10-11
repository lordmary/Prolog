fib(1, 1) :- !.
fib(2,1) :- !.
fib(3,2) :- !.
fib(N, Resultado) :- N1 is N - 1, 
 N2 is N - 2, 
 fib(N1, Resultado1), 
 fib(N2, Resultado2), 
 Resultado is Resultado1 + Resultado2.
