/*

1.2. maz(S):
	duoto sveik�j� skai�i� s�ra�o S elementai i�d�styti ma�ejimo tvarka.
	Pvz. goal: maz([41,8,2]).
	true.
	   
*/

/* ---- �ilvinas Ku�inskas 4 kursas 1 grup� PS ----*/

maz([]). /* jeigu sarasas tuscias tai cia true viskas tvarkoj */
maz([_]). /* jeigu sarase vienas elementas tai cia true viskas tvarkoj */
maz([X,Y|T]):- X >= Y, 
			   maz([Y|T]).


/* 
	Testavimo atvejai
	
	maz([]). -> Expected: true
	maz([2]). -> Expected : true
	maz([4,3,2]). -> Expected: true
	maz([5,3,7]). -> Expected : false
	maz([5,5,5]). -> Expected : true


*/