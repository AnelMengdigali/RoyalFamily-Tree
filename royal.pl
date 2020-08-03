
% Modeling the British Royal Family.

father(X,Y) :- parent( X,Y ), male(X).
   % forall X,Y : If parent(X,Y) and male(X), then father(X,Y).

mother(X,Y) :- parent( X,Y ), female(X). 
   % forall X,Y : If parent(X,Y) and female(X) then mother(X,Y).

grandparent( X, Z ) :- parent( X, Y ), parent( Y, Z ). 
   % forall X,Y,Z : If parent(X,Y) and parent(Y,Z) then grandparent( X,Z).

grandmother( X, Z ) :- grandparent( X, Z ), female(X). 
grandfather( X, Z ) :- grandparent( X, Z ), male( X ). 

grandchild( X, Y ) :- grandparent( Y, X ).

grandson( X, Y ) :- grandchild(X,Y), male(X).
granddaughter(X,Y) :- grandchild(X,Y), female(X).

% Sibling is common word for brother and sister.

sibling(Y1,Y2) :- parent(X1,Y1), parent(X2,Y1),
                  parent(X1,Y2), parent(X2,Y2), 
                  X1 \= X2,
                  Y1 \= Y2. 

sister(X,Y) :- female(X), sibling(X,Y).
brother(X,Y) :- male(X), sibling(X,Y).

parent( elizabeth, charles ).
parent( elizabeth, anne ).
parent( elizabeth, andrew ).
parent( elizabeth, edward ).

parent( philip, anne ).
parent( philip, charles ).
parent( philip, andrew ).
parent( philip, edward ).

parent( diana, william ).
parent( diana, harry ).

parent( charles, william ).
parent( charles, harry ).

parent( andrew, beatrice ).
parent( andrew, eugenie ).
parent( sarah, beatrice ).
parent( sarah, eugenie ).

female( elizabeth ).
female( anne ).
female( diana ).
female( sarah ).
female( eugenie ).
female( beatrice).

male( philip ).
male( charles ).
male( andrew ).
male( edward ).
male( william ).
male( harry ).


