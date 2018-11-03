DECLARE @Tip_evaluare VARCHAR(20) = 'Testul 1';
DECLARE @Nume_Disciplina VARCHAR(20) = 'Baze de date';

BEGIN TRY
	SELECT TOP 10 Nume_Student, Prenume_Student
	FROM studenti
	WHERE Id_Student IN (	
		SELECT IIF(Nota <> 6 AND Nota <> 8, Id_Student, NULL)
		 FROM studenti_reusita, discipline  
		 WHERE studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
		 AND Tip_evaluare = @Tip_evaluare AND Disciplina = @Nume_Disciplina
	)
END TRY 

BEGIN CATCH
	PRINT ERROR_NUMBER()
	PRINT ERROR_SEVERITY()
	PRINT ERROR_STATE()
	PRINT ERROR_PROCEDURE()
	PRINT ERROR_LINE()
	PRINT ERROR_MESSAGE()
END CATCH