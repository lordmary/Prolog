par(X) :- 0 is mod(X, 2). 
somatotal(Total1,Digit,Total):-
 par(Digit),
 par(Total1),
 Total is Total1 + Digit;
 par(Digit),
 Total is 0 + Digit;
 par(Total1),
 Total is 0 + Total1.
soma(Numero,Numero):- Numero < 10.
soma(Numero,Total):-
Numero >= 10,
Digit is mod(Numero,10),
NovoNumero is Numero // 10,
soma(NovoNumero,Total1),
somatotal(Total1,Digit, Total),!.
