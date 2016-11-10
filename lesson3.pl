% Calculate list entries
comprAcc(L, C) :- compr3(L, 0, C).

compr3([_ | Xs], Acc, C) :- compr3(Xs, Acc + 1, C).
compr3([], Acc, Result) :- Result = Acc.

compr(L, C) :- comprOther(L, 0, C).

comprOther([], Acc, Result) :- Result is Acc.
comprOther([_ | Xs], Acc, Result) :- comprOther(Xs, Acc + 1, Result).

% Sum list of values
sum([], 0).
sum([X | Xs], X + S) :- sum(Xs, S).

sum1([], 0).
sum1([X | Xs], S) :- sum1(Xs, S1), S is S1 + X.

% Find in list
member(X, [X | _]).
member(X, [_ | Xs]) :- member(X, Xs).

member1(X, L) :- append(_, [X | _], L).

% Append
append1([], Bs, Bs).
append1([A | As], Bs, [A | AsBs]) :- append(As, Bs, AsBs).

% Prefix, Suffix and Sublist
prefix(S, L) :- append(S, _, L).

suffix(S, L) :- append(_, S, L).

sublist(S, L) :- prefix(P, L), suffix(S, P).

sublist1(S, L) :- append(S, _, L); append(_, S, L).
