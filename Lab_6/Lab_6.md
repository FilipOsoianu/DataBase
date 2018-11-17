
## Task_1
### Sa se scrie o instructiune T-SQL, care ar popula coloana Adresa _ Postala _ Profesor din tabelul profesori cu valoarea mun. Chisinau, unde adresa este necunoscută.

![image](https://user-images.githubusercontent.com/32772799/48311258-c575db00-e5a5-11e8-9610-e51089892325.png)

## Task_2
### Sa se modifice schema tabelului grupe, ca sa corespunda urmatoarelor cerinte:
#### 1. Campul Cod_ Grupa sa accepte numai valorile unice și să nu accepte valori necunoscute. 
#### 2. Să se țină cont că cheie primară, deja, este definită asupra coloanei Id_ Grupa. 

![image](https://user-images.githubusercontent.com/32772799/48311307-72505800-e5a6-11e8-877e-605c48da68b3.png)

## Task_3
### La tabelul grupe, să se adauge 2 coloane noi Sef_grupa și Prof_Indrumator, ambele de tip INT. Să se populeze câmpurile nou-create cu cele mai potrivite candidaturi în baza criteriilor de mai jos:

#### 1. Șeful grupei trebuie să aibă cea mai bună reușită (medie) din grupă la toate formele de evaluare și la toate disciplinele. Un student nu poate fi șef de grupa la mai multe grupe.

#### 2. Profesorul îndrumător trebuie să predea un număr maximal posibil de discipline la grupa data. Daca nu există o singură candidatură, care corespunde primei cerințe, atunci este ales din grupul de candidați acel cu identificatorul (Id_Profesor) minimal. Un profesor nu poate fi indrumător la mai multe grupe.

#### 3. Să se scrie instructiunile ALTER, SELECT, UPDATE necesare pentru crearea coloanelor în tabelul grupe, pentru selectarea candidaților și înserarea datelor.

![image](https://user-images.githubusercontent.com/32772799/48663062-64fa0880-ea93-11e8-8e47-acbbcfd0d22f.png)

![image](https://user-images.githubusercontent.com/32772799/48663068-704d3400-ea93-11e8-8d8f-64fb6aef1211.png)

## Task_4
### Să se scrie o instrucțiune T-SQL, care ar mări toate notele de evaluare șefilor de grupe cu un punct. Nota maximală (10) nu poate fi mărită.

![image](https://user-images.githubusercontent.com/32772799/48663085-970b6a80-ea93-11e8-9977-37ed3576b2fb.png)


## Task_6
### Să se insereze datele in tabelul orarul pentru Grupa= 'CIBJ 71' (Id_ Grupa= 1) pentru ziua de luni. Toate lectiile vor avea loc în blocul de studii 'B'. Mai jos, sunt prezentate detaliile de inserare:

#### (ld_Disciplina = 107, Id_Profesor= 101, Ora ='08:00', Auditoriu = 202);
#### (Id_Disciplina = 108, Id_Profesor= 101, Ora ='11:30', Auditoriu = 501);
#### (ld_Disciplina = 119, Id_Profesor= 117, Ora ='13:00', Auditoriu = 501);

![image](https://user-images.githubusercontent.com/32772799/48663171-d090a580-ea94-11e8-8b1f-38d6847ee0a7.png)


## Tasl_7

### Sa se scrie expresiile T-SQL necesare pentru a popula tabelul orarul pentru grupa INF171 , ziua de luni. Datele necesare pentru inserare trebuie sa fie colectate cu ajutorul instructiunii/instructiunilor SELECT si introduse in tabelul-destinatie, stiind ca: 
#### lectie #1 (Ora ='08:00', Disciplina = 'Structuri de date si algoritmi', Profesor ='Bivol Ion')
#### lectie #2 (Ora ='11 :30', Disciplina = 'Programe aplicative', Profesor ='Mircea Sorin')
#### lectie #3 (Ora ='13:00', Disciplina ='Baze de date', Profesor = 'Micu Elena')

![image](https://user-images.githubusercontent.com/32772799/48663278-97593500-ea96-11e8-81f4-3a3e4db4e0d9.png)
