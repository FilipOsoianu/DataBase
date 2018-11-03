USE Universitatea
DECLARE  @Nume_Disciplina varchar(20) = 'Baze de date';
DECLARE  @Tip_evaluare varchar(20) = 'Testul 1';
DECLARE  @Nota1 int = 6;
DECLARE @Nota2 int = 8;
IF @Nota1 !=any (SELECT  TOP (10) Nota
FROM studenti, studenti_reusita, discipline
WHERE studenti.Id_Student = studenti_reusita.Id_Student
AND discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
AND Disciplina = @Nume_Disciplina
AND Tip_Evaluare = @Tip_evaluare)

AND @Nota2 != any (SELECT  TOP (10) Nota
FROM studenti, studenti_reusita, discipline
WHERE studenti.Id_Student = studenti_reusita.Id_Student
AND discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
AND Disciplina = @Nume_Disciplina
AND Tip_Evaluare = @Tip_evaluare)

BEGIN

SELECT  TOP (10) Nume_Student, Prenume_Student, Nota
FROM studenti, studenti_reusita, discipline
WHERE discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
AND studenti.Id_Student = studenti_reusita.Id_Student
AND Disciplina = @Nume_Disciplina
AND Tip_Evaluare = @Tip_evaluare
AND Nota not in (@Nota1, @Nota2)
END