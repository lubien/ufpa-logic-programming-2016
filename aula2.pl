% compr(L,T):-L=[],T=0.
compr([],0).

% pega3(E,L) :- L=[B|A], A=[Y|Ys], Ys=[Z|D], Z=E
% pega3(E,[B|[Y|[E|D]]]).
% pega3(E,[
%     _|[
% 	_|[
% 	    E|_
% 	]
%     ]
% ]).
pega3(E, [_, _, E|_]).
