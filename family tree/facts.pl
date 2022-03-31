parent(pam,bob).
parent(tom,bob).
parent(tom, tot).
parent(tot, non).
parent(tom,liz).
parent(liz, lola).
parent(liz , man).
parent(bob,ann).
parent(bob,pat).
parent(ann, fox).
parent(pat,jim).
male(tom).
male(bob).
male(jim).
male(man).
male(tot).
male(non).
male(fox).
female(pam).
female(liz).
female(pat).
female(ann).
female(lola).
father(A,B) :- male(A), parent(A,B).
mother(A,B) :- female(A) , parent(A,B).
sibling(A,B) :- parent(X,A), parent(X,B),(A \= B).
brother(A,B) :- sibling(A,B), male(A).
sister(A,B) :- sibling(A,B), female(A).
grandParent(X,Y) :-  parent(X,Z), parent(Z,Y).
grandFather(X,Y) :- male(X), grandParent(X,Y).
grandMother(X,Y) :- female(X), grandParent(X,Y).
grandChild(X,Y) :- grandParent(Y,X).
parentSibling(X,Y) :- sibling(X,Z), parent(Z,Y), X \= Y.
uncle(X,Y) :- male(X) , parentSibling(X,Y).
aunt(X,Y) :-  female(X) , parentSibling(X,Y).
cousin(X,Y) :- male(X), parent(Z,X), parentSibling(Z,Y).
cousiness(X,Y) :- female(X), parent(Z,X), parentSibling(Z,Y).
cousinFromUncle(X,Y) :- male(X), parent(Z,X), uncle(Z,Y).
cousinFromAunt(X,Y) :- male(X), parent(Z,X), aunt(Z,Y).
ancestor(X,Z) :- parent(X,Z) , format('first ancestor ~n').
ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z), format('second ancestor ~f ~r ~n' , succ(1,S)).
