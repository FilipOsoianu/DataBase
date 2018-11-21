ALTER TABLE grupe 
ADD UNIQUE (Cod_Grupa)
ALTER TABLE grupe 
ALTER COLUMN Cod_Grupa char(6) NOT NULL;

SELECT Cod_Grupa
FROM grupe

