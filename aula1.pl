pai(tare, abraao). %1
pai(tare, nacor). %2
pai(tare, isaac). %3
pai(aran, lot). %4
pai(aran, melca). %5
pai(aran, jesca). %6
mae(sara, isaac). %7

fem(X):-mae(X,Y). %1
irmao(X,Y):-pai(P,X),pai(P,Y),X\==Y. %2
tio(T,X):-pai(P,X),irmao(P,T). %3
