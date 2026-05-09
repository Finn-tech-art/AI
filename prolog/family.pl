% These are the facts 
% parent(Parent, Child)
parent(sarah, issac).
parent(abraham, issac).
parent(issac, esau).
parent(issac, jacob).

% gender
gender(sarah, female).
gender(abraham, male).
gender(issac, male).
gender(esau, male).
gender(jacob, male).

% These are the rules


mother(M, C) :- parent(M, C), gender(M, female).
father(F, C) :- parent(F, C), gender(F, male).
child(C, P) :- parent(P, C).

% Sibling logic (must share a parent and not be the same person)
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

% Grandparent logic
grandfather(GF, GC) :- father(GF, P), parent(P, GC).
grandmother(GM, GC) :- mother(GM, P), parent(P, GC).
grandchild(GC, GP) :- parent(GP, P), parent(P, GC).

% Aunts and Uncles (siblings of a parent)
uncle(U, C) :- parent(P, C), sibling(U, P), gender(U, male).
aunt(A, C) :- parent(P, C), sibling(A, P), gender(A, female).

% Cousin logic (children of siblings)
cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).