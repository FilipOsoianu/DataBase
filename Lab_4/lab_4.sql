USE Universitatea
select distinct  Disciplina ,AVG(Nota) as Media_Disciplina
from discipline
INNER JOIN
studenti_reusita 
ON discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
GROUP BY  Disciplina 
HAVING AVG(Nota) > 7.0



USE Universitatea

SELECT DISTINCT Nume_Profesor, Prenume_Profesor
FROM profesori
JOIN studenti_reusita
ON profesori.Id_Profesor = studenti_reusita.Id_Profesor
JOIN studenti
ON studenti.Id_Student = studenti_reusita.Id_Student
JOIN discipline
ON discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
WHERE studenti.Id_Student = 100



USE Universitatea

Select DISTINCT Count(Nume_Student) as Nume_Stud, Count(Prenume_Student) as Prenume_Student, Nume_Student, Prenume_Student 
FROM studenti 
INNER JOIN studenti_reusita  ON studenti.Id_Student = studenti_reusita.Id_Student INNER JOIN 
discipline ON discipline.Id_Disciplina = studenti_reusita.Id_Disciplina
WHERE Tip_Evaluare = 'Reusita Curenta' AND Nota < 5
GROUP BY Nume_Student, Prenume_Student 
HAVING Count(Nume_Student) = 4

