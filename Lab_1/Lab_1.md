**Task 1**

"Creati o baza de date plasata fizic in mapa MyDocuments\Data, fixand o crestere a fisierului
primar a bazei de 16MB cu limita de crestere de 128 MB si a log-ului de 64 MB cu limita de
crestere de 1024 MB. Pentru fisierele secundare sa se defineasca un Filegroup nou implicit,
setand cresterea fisierelor secundare de 64 MB cu limita de 1024 MB."

![](https://github.com/FilipOsoianu/DataBase/blob/master/Lab_1/Photo/1.PNG)


**Task 2**

Creati o baza de date, unde fisierul log sa fie fizic plasat in mapa MyDocuments\Log, numele
fisierului log in mediul sistemului de operare trebuie sa se deosebeasca de ele logic definit in
schema fizica. Este important ca baza de date creata sa fie compatibila cu sistemul MS SQL
Server 2017 si ea sa fie accesibila numai unui singur utizator lntr-un moment de timp.

![](https://github.com/FilipOsoianu/DataBase/blob/master/Lab_1//Photo2.PNG)


**Task 3**

Creati planul de mtretinere a bazei de date, construita m sarcina 1. Spatiul neutilizat de
fisierele bazei de date trebuie indepartat atunci cand el atinge marimea 2000Mb. Spatiul
eliberat trebuie sa fie returnat sistemului de operare. Aceasta operatiune trebuie sa ruleze in
fiecare vineri, la ora 00:00. Raportul executarii planului de intretinere trebuie salvat in docarul
MyDocuments\SQL_event_logs. lnitializati executarea planului. Dupa executare, verificati
rezultatele in fisierul log.

![](https://github.com/FilipOsoianu/DataBase/blob/master/Lab_1/Photo/3.PNG)


**Task 4**

Creati planul de intretinere a bazei de date, construite in exercitiul 2. Numele planului va fi:
,,Reconstruire index". in cadrul acestui plan, sistemul trebuie sa realizeze reconstruirea
indecinilor numai asupra tabelelor de baza (exclusiv viziunilor) din toate schemele care exista
in baza de date in cauza. Spatiul liber pe pagina trebuie sa fie 10%. Sortarea indecsilor trebuie
sa se realizeze in tempdb. Dupa reconstruire, trebuie sa urmeze colectarea statisticilor
complete despre indecsii reconstruiti. Al treilea pas al planului trebuie sa constituie sarcina de
stergere a istoriei despre operatiile de Backup-Restore ce au avut Joe pe SQL Server. Trebuie
sters istoricul care este mai vechi de 6 saptamani. Acest plan trebuie sa fie executat In fiecare
prima duminica a lunii. Creati dosarul MyDocuments\SQL_reports. Raportul de executare a
planului trebuie sa fie adaugat in acest fisier. Procesul de mentenanta - sa fie logat in mod
extended. lnitializati executarea planului. Dupa executare, verificati rezultatele in fisierul log
generat.

![](https://github.com/FilipOsoianu/DataBase/blob/master/Lab_1//Photo4.PNG)


**Report 1**

Microsoft(R) Server Maintenance Utility (Unicode) Version 14.0.2002
Report was generated on "FILIP-PC".
Maintenance Plan: MaintenancePlanlab2
Duration: 00:00:01
Status: Succeeded.
Details:
Check Database Integrity (FILIP-PC)
Check Database integrity on Local server connection
Databases: Data_base_lab_2_1
Include indexes
Physical only
Task start: 2018-09-14T13:51:41.
Task end: 2018-09-14T13:51:42.
Success
Command:USE [Data_base_lab_2_1]
GO
DBCC CHECKDB(N''Data_base_lab_2_1'')  WITH  PHYSICAL_ONLY

GO


Shrink Database (FILIP-PC)
Shrink Database on Local server connection
Databases: Data_base_lab_2_1
Limit: 2000 MB
Free space: 10 %
Task start: 2018-09-14T13:51:42.
Task end: 2018-09-14T13:51:42.
Success
Command:
GO


**Report 2**

Microsoft(R) Server Maintenance Utility (Unicode) Version 14.0.2002
Report was generated on "FILIP-PC".
Maintenance Plan: Reconstruire index
Duration: 00:00:02
Status: Succeeded.
Details:
Rebuild Index (FILIP-PC)
Rebuild index on Local server connection
Databases: Data_base_lab_2_2
Object: Tables and views
10% of free space
Task start: 2018-09-14T15:17:34.
Task end: 2018-09-14T15:17:34.
Success
Command:
GO


Check Database Integrity (FILIP-PC)
Check Database integrity on Local server connection
Databases: Data_base_lab_2_2
Include indexes
Physical only
Task start: 2018-09-14T15:17:34.
Task end: 2018-09-14T15:17:34.
Success
Command:USE [Data_base_lab_2_2]
GO
DBCC CHECKDB(N''Data_base_lab_2_2'')  WITH  PHYSICAL_ONLY

GO


Reorganize Index (FILIP-PC)
Reorganize index on Local server connection
Databases: Data_base_lab_2_2
Object: Tables and views
Compact large objects
Task start: 2018-09-14T15:17:34.
Task end: 2018-09-14T15:17:34.
Success
Command:
GO


Update Statistics (FILIP-PC)
Update Statistics on Local server connection
Databases: Data_base_lab_2_2
Object: Tables and views
All existing statistics
Task start: 2018-09-14T15:17:35.
Task end: 2018-09-14T15:17:35.
Success
Command:
GO


Clean Up History (FILIP-PC)
Cleanup history on Local server connection
History type: Backup
Age: Older than 6 Weeks
Task start: 2018-09-14T15:17:36.
Task end: 2018-09-14T15:17:36.
Success
Command:declare @dt datetime select @dt = cast(N''2018-08-03T15:17:36'' as datetime) exec msdb.dbo.sp_delete_backuphistory @dt

GO








