/*

7. Sveikieji skai�iai yra modeliuojami termais
     nul, s(nul), s(s(nul)), ... (�r. paskaitos med�iag�).
     Apibr��ti predikatus:
       d) pirmasis skai�ius dalus antrajam;
	   
*/

/* ---- �ilvinas Ku�inskas 4 kursas 1 grup� PS ----*/

/* Z turi buti atemus Y liekana */
 
atimtis(X, nul, X). 
atimtis(s(X), s(Y), Z) :- atimtis(X, Y, Z).


nemazesnis(_, nul).
nemazesnis(s(X), s(Y)) :- nemazesnis(X, Y).


pirmasis_dalus_antrajam(X, X) :- X \==nul.
pirmasis_dalus_antrajam(X, Y) :- Y \== nul, atimtis(X, Y, Z), nemazesnis(Z, Y), pirmasis_dalus_antrajam(Z, Y).

/*
	Testavimo atvejai:
	
	pirmasis_dalus_antrajam(nul, nul). -> Expected: false; dalyba is 0 negalima
	
	pirmasis_dalus_antrajam(s(nul), nul). -> Expected: false; dalyba is 0 negalima
	
	pirmasis_dalus_antrajam(s(nul), s(s(nul))). -> Expected: false; antrasis didesnis uz pirma
	
	pirmasis_dalus_antrajam(s(s(s(s(nul)))), s(s(nul))). -> Expected: true; 4/2 = true
	
	pirmasis_dalus_antrajam(s(s(s(s(nul)))), s(nul)). -> Expected: true; 4/1 = true
	
	pirmasis_dalus_antrajam(s(s(s(s(nul)))), s(s(s(nul)))). -> Expected: false; 4/3 = false
	
	FINALLY 6 TESTS PASS GREEN LIGHT
	0 FAILED
*/