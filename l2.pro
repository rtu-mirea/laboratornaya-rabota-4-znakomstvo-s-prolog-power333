predicates 
nondeterm likes(symbol,symbol) nondeterm can_buy(symbol, symbol) 
nondeterm person(symbol) nondeterm exist(symbol) nondeterm haveMoney(symbol) 

clauses 
person(marina). 
person(anna). 
person(fedor). 
person(rina). 
person(lisa). 
person(katya). 
person(lena). 

haveMoney(marina). haveMoney(anna). 
haveMoney(lisa). haveMoney(fedor). haveMoney(lena). 

likes(anna, peper). 
likes(lisa tea). 
likes(fedor, water). 
likes(lena, toy). 
likes(rina, dog). 
likes(katya, cat). 

exist(peper). exist(tea). exist(water). exist(toy). exist(dog). 
can_buy(X, Y) :- person(X), 
exist(Y), likes(X, Y), haveMoney(X). 

goal can_buy(X, Y).
