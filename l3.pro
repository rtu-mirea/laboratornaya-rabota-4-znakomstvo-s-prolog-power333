domains 
food_name = symbol 
predicates 
nondeterm apple(food_name). 
nondeterm orange(food_name). 
nondeterm fruit(food_name). 
clauses 
apple(fuji). 
apple(smith). 
apple(antonovka). 
orange(med). 
orange(klementina). 
orange(tangor). 
fruit(X):-apple(Y); orange(Z). 
fruit(X):-apple(fuji); orange(med). 

goal 
%fruit(X). 
