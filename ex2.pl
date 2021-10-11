bissexto(X) :- 0 is mod(X,4),
 0 is mod(X,400),
 X mod 400 =\= 0.
huluculu(X) :- 0 is mod(X,15).
bulukulu(X) :- 0 is mod(X,55),
 bissexto(X).
ordinary(X) :- X \= bissexto(X),
 X \= huluculu(X),
 X \= bulukulu(X).
