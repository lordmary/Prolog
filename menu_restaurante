entrada(alface,10).
entrada(tomate,12).
entrada(legumes,17).
entrada(rucula,15).
principal(pf,75).
principal(lasanha,99).
principal(feijoada,120).
principal(macarrao,83).
sobremesa(gelatina,22).
sobremesa(sorvete,33).
sobremesa(pudim,15).
sobremesa(sem,0). 
tipo(diet,130).
tipo(normal,_).
tipo(glutao,145).
menu(Tipo,T,Entrada,E,Principal,P,Sobremesa,S,X) :- tipo(Tipo,T),
 entrada(Entrada,E),
 principal(Principal,P), 
 sobremesa(Sobremesa,S),
 X is E+P+S,
 X=< T; 
 X >= T; 
 X.
