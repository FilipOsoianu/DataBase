USE Universitatea

UPDATE studenti_reusita
set Nota = Nota + 1
where Id_Student = ANY (SELECT Id_Student
FROM grupe 
JOIN studenti
ON grupe.Sef_grupa = studenti.Id_Student)
and Nota != 10

SELECT  Sef_grupa, studenti.Id_Student, Id_Disciplina, Nota, Tip_Evaluare
FROM grupe
JOIN studenti_reusita
ON studenti_reusita.Id_Grupa = grupe.Id_Grupa
JOIN studenti
ON studenti.Id_Student = grupe.Sef_grupa
WHERE grupe.Id_Grupa = studenti_reusita.Id_Grupa


