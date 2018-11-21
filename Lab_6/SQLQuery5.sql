USE Universitatea
-- ALTER TABLE grupe
-- ADD Sef_grupa int

SELECT* 

FROM grupe
DECLARE @nr_grupe int = (SELECT COUNT(Id_Grupa)  FROM grupe)
DECLARE @index int = 1;

WHILE (@index <= @nr_grupe)
BEGIN
	UPDATE grupe
	SET Sef_grupa = (SELECT  table1.Id_Student
		FROM (SELECT Id_Student , AVG(CAST(Nota AS float)) AS Media
		FROM studenti_reusita
		WHERE Id_Grupa = @index
		GROUP BY  Id_Student
		HAVING AVG(CAST(Nota AS float)) >= ALL(SELECT AVG(CAST(Nota AS float))
		FROM studenti_reusita
		WHERE Id_Grupa = @index
		GROUP BY Id_Student)  
		) AS table1)
		WHERE Id_Grupa = @index
		SET @index = @index +1;
END