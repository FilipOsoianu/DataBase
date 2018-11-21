USE Universitatea
-- ALTER TABLE grupe
--  ADD Prof_Indrumator int

SELECT* 
FROM grupe
DECLARE @nr_grupe int = (SELECT COUNT(Id_Grupa)  FROM grupe)
DECLARE @index int = 1;

WHILE (@index <= @nr_grupe)
BEGIN
	UPDATE grupe
			
	SET Prof_Indrumator = (SELECT  table2.Id_Profesor
		FROM (select Id_Profesor , COUNT(DISTINCT Id_Disciplina) AS Nr_de_discipline
			FROM studenti_reusita
			WHERE Id_Grupa = @index
			GROUP BY  Id_Profesor
			HAVING COUNT(DISTINCT Id_Disciplina) >= all(SELECT COUNT(DISTINCT Id_Disciplina)
				FROM studenti_reusita
				WHERE Id_Grupa = @index
				GROUP BY Id_Profesor)  
				) AS table2)												  
			WHERE Id_Grupa = @index
			SET @index = @index +1;
END