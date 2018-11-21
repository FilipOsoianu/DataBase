USE Universitatea
INSERT INTO orar (Id_Disciplina, Id_Profesor, Id_Grupa, Zi, Auditoriu, Ora)
VALUES

((SELECT Id_Disciplina FROM discipline WHERE Disciplina = 'Structuri de date si algoritmi'),
	(SELECT Id_Profesor FROM profesori WHERE Nume_Profesor = 'Bivol' and Prenume_Profesor = 'Ion'),
		(SELECT Id_Grupa FROM grupe WHERE Cod_Grupa = 'INF171'), 'Luni','203', '08:00'),

((SELECT Id_Disciplina FROM discipline WHERE Disciplina = 'Programe aplicative'),
	(SELECT Id_Profesor FROM profesori WHERE Nume_Profesor = 'Mircea' and Prenume_Profesor = 'Sorin'),
		(SELECT Id_Grupa FROM grupe WHERE Cod_Grupa = 'INF171'), 'Luni', '200', '11:30'),


 ((SELECT Id_Disciplina FROM discipline WHERE Disciplina = 'Baze de date'),
		(SELECT Id_Profesor FROM profesori WHERE Nume_Profesor = 'Micu' and Prenume_Profesor = 'Elena'),
		(SELECT Id_Grupa FROM grupe WHERE Cod_Grupa = 'INF171'), 'Luni','204', '13:00');

SELECT *
FROM orar