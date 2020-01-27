predicates 
​nondeterm parent(symbol,symbol) 
​nondeterm female(symbol) 
​nondeterm male(symbol) 
​nondeterm mother(symbol,symbol) 
​nondeterm father(symbol,symbol) 
​nondeterm ancestor(symbol,symbol) 
​nondeterm child(symbol,symbol) 
​nondeterm brother(symbol,symbol) 
​nondeterm sister(symbol,symbol) 
​nondeterm grandfather(symbol,symbol) 
​nondeterm grandmother(symbol,symbol) 
​nondeterm uncle(symbol,symbol) 

clauses 
​parent(irina,yan). 
​parent(lisa,yan). 
​parent(lisa,olya). 
​parent(yan,sima). 
​parent(yan,vova). 
​parent(vova,ali). 
​female(irina). 
​female(olya). 
​female(sima). 
​female(vova). 
​male(lisa). 
​male(yan). 
​male(ali). 
​child(Y,X):- 
​parent(X,Y). 
​mother(X,Y):- 
​parent(X,Y),female(X). 
​father(X,Y):- 
​parent(X,Y),male(X). 
​ancestor(X,Z):- 
​parent(X,Z). 
​ancestor(X,Z):- 
​parent(X,Y),ancestor(Y,Z). 
​ 
​brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X<>Y. 
​sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X), X<>Y. 
​grandfather(X,Y) :- father(X,Z), parent(Z,Y). 
​grandmother(X,Y) :- mother(X,Z), parent(Z,Y). 
​uncle(X,Y) :- parent(Z,Y), brother(X,Z), X<>Z. 
​ 
goal 
​%sister(X,Y). 
​%brother(X,Y). 
​%grandfather(X,Y). 
​%grandmother(X,Y). 
​%uncle(X,Y).
