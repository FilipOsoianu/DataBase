# DIAGRAME, SCHEME SI SINONIME
## Task_1
### Creati o diagrama a bazei de date, folosind forma de vizualizare standard, structura careia este descrisa la inceputul sarcinilor practice din capitolul 4.

![image](https://user-images.githubusercontent.com/32772799/48830436-4d659d00-ed7d-11e8-9c6b-e1e61811bb81.png)

## Task_2
### Sa se adauge constrangeri referentiale (legate cu tabelele studenti si profesori) necesare coloanelor Sef_grupa si Prof_Indrumator (sarcina3, capitolul 6) din tabelul grupe.

![image](https://user-images.githubusercontent.com/32772799/48830329-feb80300-ed7c-11e8-9f96-2d8ca8251fd7.png)

## Task_3
### La diagrama construita, sa se adauge si tabelul orarul definit in capitolul 6 al acestei lucrari: tabelul orarul contine identificatorul disciplinei (ld_Disciplina), identificatorul profesorului (Id_Profesor) si blocul de studii (Bloc). Cheia tabelului este constituita din trei campuri: identificatorul grupei (Id_ Grupa), ziua lectiei (Z1), ora de inceput a lectiei (Ora) , sala unde are loc lectia (Auditoriu).

![image](https://user-images.githubusercontent.com/32772799/48830568-8ef64800-ed7d-11e8-9443-7f416bcd983d.png)

## Task_4
### Tabelul orarul trebuie sa contina si 2 chei secundare: (Zi, Ora, Id_ Grupa, Id_ Profesor) si (Zi, Ora, ld_Grupa, ld_Disciplina).

![image](https://user-images.githubusercontent.com/32772799/48830932-66bb1900-ed7e-11e8-9aa1-e86aa211bd48.png)

## Task_5
### In diagrama, de asemenea, trebuie sa se defineasca constrangerile referentiale (FK-PK) ale atributelor ld_Disciplina, ld_Profesor, Id_ Grupa din tabelului orarul cu atributele tabelelor respective.

![image](https://user-images.githubusercontent.com/32772799/48831719-15138e00-ed80-11e8-836e-c6b5dab114af.png)

## Task_6
### Creați, în baza de date universitatea, trei scheme noi: cadre_didactice, plan_studii și studenti. Transferați tabelul profesori din schema dbo in schema cadre didactice, ținînd cont de dependentele definite asupra tabelului menționat. În același mod să se trateze tabelele orarul,discipline care aparțin schemei plan_studii și tabelele studenți, studenti_reusita, care apartin schemei studenti. Se scrie instructiunile SQL respective.

![image](https://user-images.githubusercontent.com/32772799/48832951-037fb580-ed83-11e8-9ef8-b5bdd094e234.png)

## Task_7
### Modificati 2-3 interogari asupra bazei de date universitatea prezentate in capitolul 4 astfel ca numele tabelelor accesate sa fie descrise in mod explicit, ținînd cont de faptul ca tabelele au fost mutate in scheme noi. ex.10 Gasiti studentii (numele, prenumele), care au obtinut la disciplina Baze de date (examen), în anul 2018, vreo nota mai mica de 8 si mai mare ca 4.

![image](https://user-images.githubusercontent.com/32772799/48834316-30819780-ed86-11e8-9135-a44d49b2cdd4.png)

![image](https://user-images.githubusercontent.com/32772799/48834751-375cda00-ed87-11e8-8d41-6a1c324b64f6.png)

## Task_8
### Creați sinonimele respective pentru a simplifica interogările construite în exercițiul precedent și reformulați interogările, folosind sinonimele create.

![image](https://user-images.githubusercontent.com/32772799/48835174-3d9f8600-ed88-11e8-97ce-47e32f4b2f59.png)
![image](https://user-images.githubusercontent.com/32772799/48835286-793a5000-ed88-11e8-9d28-752c49ea41a3.png)


