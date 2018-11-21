USE Universitatea
CREATE TABLE orar
	( Id_Disciplina int,
	Id_Profesor int,
	Id_Grupa smallint,
	Zi varchar(255),
	Ora Time,
	Auditoriu int,
	Bloc varchar(255),
	PRIMARY KEY (Id_Grupa, Zi, Ora, Auditoriu))
INSERT INTO orar (Id_Disciplina , Id_Profesor, Id_Grupa, Zi, Ora, Auditoriu, Bloc)
 VALUES ( 107, 101, '1', 'Luni','08:00', 202, 'B'),
 ( 108, 101, '1', 'Luni','11:30', 501, 'B' ),
 ( 109, 117, '1', 'Luni','13:00', 501, 'B' );

SELECT * 
FROM orar