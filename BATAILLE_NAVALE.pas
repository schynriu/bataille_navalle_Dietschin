{algorithme  motherfucking_bataille_navalle
//but faire une bataille navale 
//principe 
//entree
//sortie
{ il faut quand meme faire un tableau a une dimension, il ffaut ensuite utiliser une enumeration de x et y pour pouvoir interagir avec le tableau et pouvoir le modifier 
on va avoir un tableau dans lequel on a les deux axe , parse que on va mettre un type de valeur dedans FAIRE UN TABLEAU A UNE DIMENSION avec dedans une enumeration x et y  }


{enregistrement:

type cell = enregistrement 

	position_y: ENTIER
	position_x: ENTIER 



FINENREGISTREMENT

type bateau = enregistrement


	porte_avion: TABLEAU [1..5] DE cell
	croiseur: TABLEAU [1..4] DE cell
	torpilleur: TABLEAU [1..3] DE cell
	petit_torpilleur :TABLEAU [1..2] DE cell

FINENREGISTREMENT



type flotte = enregistrement

	tab_flotte TABLEAU [1..2] DE bateau

FINENREGISTREMENT



fonction creation_bateau( flotte:tab_flotte[1.2]){quesion 6}

{var: cell: ENREGISTREMENT
V : ENTIER 
H : ENTIER
i: ENTIER


POUR i DE 1 A 2 FAIRE 

	ECRIRE "veuillez entrez la position de vos bateau "
		
	
	ECRIRE "porte_avion"
		
		FONCTION Creacell(5,tab_flotte[i].porte_avion[])

	ECRIRE "croiseur"
		
		FONCTION Creacell(4,tab_flotte[i].croiseur[])

	ECRIRE "torpilleur"

		FONCTION Creacell(3,tab_flotte[i].torpilleur[])

		
	ECRIRE "mmini_torpilleur"

		FONCTION Creacell(2,tab_flotte[i].petit_torpilleur[])

FINPOUR 

FINFONCTION



Fonction :creacell(var: nbboucle:ENTIER BateauSelec[]:Bateau ) {question 4}

	{var i=1 :ENTIER

		REPETER 
			ECRIRE"veuillez ecrire la position de votre bateau,(postion verticale) "
			LIRE V
			
			ECRIRE "(position horizontale)"
			LIRE H
			
			BateauSelec[i].x←V
			BateauSelec[i].Y←H

		JUSQUA i>nbboucle

FINFONCTION

FONCTION VerifBateau(var X,Y,N:ENTIER tab_flotte[]:flotte);

	SI VerifCase(X,Y,tab_flotte[N].porte_avion[1] = VRAI)
		LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].porte_avion[2] = VRAI)
		LIRE("Touche!")
	
	SINON SI VerifCase(X,Y,tab_flotte[N].porte_avion[3] = VRAI)
		LIRE("Touche!")


	SINON SI VerifCase(X,Y,tab_flotte[N].porte_avion[4] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].porte_avion[5] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].croiseur[1] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].croiseur[2] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].croiseur[3] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].croiseur[4] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].torpilleur[1] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].torpilleur[2] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].torpilleur[3] = VRAI)
	LIRE("Touche!")

	SINON SI VerifCase(X,Y,tab_flotte[N].petit_torpilleur[1] = VRAI)
	LIRE("Touche!")


	SINON SI VerifCase(X,Y,tab_flotte[N].petit_torpilleur[2] = VRAI)
	LIRE("Touche!")


	SINON 
		LIRE("Manquer!")}






PROGRAM bataille navale;

USES crt;


type 
	cell = record// cell qui va dans chaque bateau

	position_y: INTEGER;
	position_x: INTEGER; 



end;

type 
	bateau = record//bateau qui va dans chaque flotte 


	porte_avion= ARRAY[1..5] OF  cell;
	croiseur= ARRAY [1..4] OF  cell;
	torpilleur= ARRAY [1..3] OF  cell;
	petit_torpilleur =ARRAY [1..2] OF  cell;

end;



type
 flotte = RECORD // flotte qui contient les bateaux, dont chaque bateau contient les coordonee x,y , donc c'est un enregistrement qui contient un enregistrement qui contient un enregistremet 

	tab_flotte ARRAY[1,2]OF bateau;

END;



FUNCTION creation_bateau(flotte:tab_flotte[1.2]) ;{quesion 6, mettre lq position des batteau suivant un axe x et y, le nombre represente le nombre de case que prend le bateau}

var cell: RECORD;
	 V,H : INTEGER;


	writeln "veuillez entrez la position de vos bateau ";
		


	
	writeln "porte_avion" ;
		
		 Creacell(5,tab_flotte.porte_avion[]);

	writeln "croiseur";
		
		 Creacell(4,tab_flotte.croiseur[]);

	writeln "torpilleur";

		 Creacell(3,tab_flotte.torpilleur[]);

		
	writeln "mmini_torpilleur";

		 Creacell(2,tab_flotte.petit_torpilleur[]);

END;

PROCEDURE joueur (var cptj:INTEGER);//compteur joueur pour determiner qui joue 
BEGIN
			IF cptj MOD 2=0 THEN
			
				writeln ('joueur 1 joue');		
			ELSE
				writeln('joueur 2 joue');
				
END;		


FUNCTION creacell(var nbboucle:INTEGER BateauSelec[]:Bateau);{question 4}

	var I:INTEGER;
		
		I:=1;

		REPEAT

			writeln"veuillez ecrire la position de votre bateau,(postion verticale) ";
			readln V;
			
			writeln "veuillez ecrire la position de votre bateau,(position horizontale)";
			readln H;
			

			VerifCase(V,H,BateauSelec[i]) 
			
			BateauSelec[i].x:=V;
			BateauSelec[i].Y:=H;

		UNTIL i>nbboucle;

END;



FUNCTION VerifCase(var X,Y:INTEGER, cellule:cell) ;
	 

	iF cellule.x>10 OR cellule.y>10 THEN
		writeln 'Il faut jouer dans le tableau';
		VerifCase:=FALSE;

	ELSE iF cellule.x<0 OR cellule.y<0 THEN
		writeln 'il faut jouer dans le tableau';
		VerifCase:=FALSE;
	
	ElSE IF  cellule.x = X AND  cellule.y = Y THEN 
		VerifCase:=TRUE;

	ELSE 
		VerifCase:=FALSE;

END;

FUNCTION VerifBateau(var X,Y,N:INTEGER tab_flotte[]:flotte);// verifier si le tir touche la case ou non , pour chaque bateau

	IF VerifCase(X,Y,tab_flotte[N].porte_avion[1] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].porte_avion[2] = TRUE)
		LIRE("Touche!");
	
	ELSE IF VerifCase(X,Y,tab_flotte[N].porte_avion[3] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].porte_avion[4] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].porte_avion[5] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].croiseur[1] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].croiseur[2] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].croiseur[3] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].croiseur[4] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].torpilleur[1] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].torpilleur[2] = TRUE)
		LIRE("Touche!");


	ELSE IF VerifCase(X,Y,tab_flotte[N].torpilleur[3] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].petit_torpilleur[1] = TRUE)
		LIRE("Touche!");

	ELSE IF VerifCase(X,Y,tab_flotte[N].petit_torpilleur[2] = TRUE)
		LIRE("Touche!");

	ELSE
		LIRE("Manquer!");


//programme principale, commencer par incrementer le compteut joueur, idem avec les flottes , ensuite cree les bateau et leur emplacement, ensuite verification du joueur a jouer, verifier qu'il tire bien dans le tableau, puis verifier qu'il tire bien sur un bateau existant
VAR tab_flotte[1..2]:flotte;
	cptj:INTEGER


	cptj:=2

	flotte:=tab_flotte;

	 creation_bateau(flotte:tab_flotte[]);

	 creacell (nbboucle:INTEGER BateauSelec[]:Bateau);


	 REPEAT

	 joueur (cptj:INTEGER);

	 VerifCase( X,Y:INTEGER, cellule:cell);

	 VerifBateau( X,Y,N:INTEGER tab_flotte[]:flotte);

	 cptj:=cptj+1

	 UNTIL 