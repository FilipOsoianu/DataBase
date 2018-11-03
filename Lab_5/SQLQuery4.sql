DECLARE @Tip_evaluare VARCHAR(20) = 'Testul 1';
DECLARE @Nume_Disciplina VARCHAR(20) = 'Baze de date';


SELECT TOP 10 Nume_Student, Prenume_Student
FROM studenti
WHERE Id_Student IN (	
	SELECT IIF(Nota <> 6 AND Nota <> 8, Id_Student, NULL)
	 FROM studenti_reusita, discipline  
	 WHERE studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
	 AND Tip_evaluare = @Tip_evaluare AND Disciplina = @Nume_Disciplina
)