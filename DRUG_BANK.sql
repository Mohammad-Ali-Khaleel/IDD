/* https://go.drugbank.com/releases/latest#open-data

DOWNLOAD DrugBank Vocabulary CSV FILE, IMPORT INTO  MS ACCESS DATABASE, MAKE SURE TO MAKE
THE Synonyms FILED AS LONG TEXT FIELD, USE Unicode (UTF-8) , "" AS TEST QUALIFIERS.
THEN EXPORT THE TABLE TO THE SQL SERVER, THEN CONTINUE THE FOLLOWING :
***********************************************************************************************************/

SELECT  [DrugBank ID], [Accession Numbers], [Common name],Synonyms, CAS, UNII,  [Standard InChI Key], value as Splitted_name
INTO Drugbank_vocabulary_SPLITTED
FROM Drugbank_vocabulary
cross apply STRING_SPLIT (CAST(Synonyms as VARCHAR(2000)) , '|') cs;  -- CAST JUST BECAUSE TABLE WS IMPORTED IN ACCESS AND SYNONYMES GOT MEMO or LONG TEXT field type
GO
------------
ALTER TABLE Drugbank_vocabulary_SPLITTED
ADD  RXAUI VARCHAR(8);
GO
-----------

UPDATE Drugbank_vocabulary_SPLITTED
SET Splitted_name = TRIM(REPLACE(REPLACE(REPLACE(Splitted_name, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))  ;


UPDATE Drugbank_vocabulary_SPLITTED
SET [Common name] = TRIM(REPLACE(REPLACE(REPLACE([Common name], CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))  ;

-----------
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.[Common name]
WHERE A.RXAUI IS NULL
AND B.SAB='RXNORM'
AND B.TTY ='IN'
------
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.[Common name]
WHERE A.RXAUI IS NULL
AND B.TTY ='IN'
-----
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.[Common name]
WHERE A.RXAUI IS NULL
AND B.SAB='RXNORM'
----------
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.[Common name]
WHERE A.RXAUI IS NULL
----------
--xxxxxxxxx
-----------
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.Splitted_name
WHERE A.RXAUI IS NULL
AND B.SAB='RXNORM'
AND B.TTY ='IN'
------
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.Splitted_name
WHERE A.RXAUI IS NULL
AND B.TTY ='IN'
-----
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.Splitted_name
WHERE A.RXAUI IS NULL
AND B.SAB='RXNORM'
----------
UPDATE Drugbank_vocabulary_SPLITTED
SET Drugbank_vocabulary_SPLITTED.RXAUI =B.RXAUI
FROM [RXNCONSO] B INNER JOIN  Drugbank_vocabulary_SPLITTED A
ON B.STR = A.Splitted_name
WHERE A.RXAUI IS NULL

-------------------
UPDATE Drugbank_vocabulary_SPLITTED
SET RXAUI =B.RXAUI
FROM Drugbank_vocabulary_SPLITTED  INNER JOIN  Drugbank_vocabulary_SPLITTED B
ON Drugbank_vocabulary_SPLITTED.[Common name] = B.[Common name]
WHERE Drugbank_vocabulary_SPLITTED.RXAUI IS NULL
AND B.RXAUI IS NOT NULL
-------------------
INSERT INTO IDD_0
               (AI, OTHER_NAME, RXAUI, COUNTRY)
SELECT  [Common name], Splitted_name, RXAUI, 'DRUGBANK'
FROM     Drugbank_vocabulary_SPLITTED


