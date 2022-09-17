 --DATABASE YARADILMASI----
create database classroom
-- SECILEN BAZADA ISLEMEK---
use classroom
--CEDVELIN YARADILMASI---
create table [Students](
[ID] INT IDENTITY(1,3) PRIMARY KEY NOT NULL,
[NAME] VARCHAR(20) NOT NULL,
[SURNAME] VARCHAR(20) NOT NULL,
[BIRTH_DATE] DATE NOT NULL,
[REGISTRATION] VARCHAR(30),
[GENDER] VARCHAR(5),
[GROUP] VARCHAR(10) NOT NULL,
[SPECIALIZATION] VARCHAR(30),
[DEPARTMENT] VARCHAR(10));
-------TELEBELERIN QEYDIYYATI------
INSERT INTO [Students]([NAME],[SURNAME],[BIRTH_DATE],[GROUP],[GENDER],[SPECIALIZATION],[DEPARTMENT],[REGISTRATION]) VALUES(
'NURGUN','GANBAROVA','20030313','683.1','QADIN','INFORMASIYA TEXNOLOGIYALARI','ITIF','BAKU'),
('ZEYNAB','MAMMADLI','20030516','683.1','QADIN','INFORMASIYA TEXNOLOGIYALARI','ITIF','BAKU'),
('APHAR','MAGARRAMOVA','20020617','681.1','QADIN','INFORMASIYA TEXNOLOGIYALARI','ITIF','BAKU'),
('AYXAN','ALIZADA','20020617','681.1','KISI','INFORMASIYA TEHLUKESIZLIYI','ITIF','GANJA'),
('NIGAR','HUSEYNLI','20020617','681.1','QADIN','KOMPUTER ELMLERI','ITIF','LENKERAN'),
('RASHID','ALIZADA','20020617','681.1','KISI','INFORMASIYA TEHLUKESIZLIYI','ITIF','SHAMAKHI'),
('SHAMIL','ALIYEV','20020617','681.1','KISI','INFORMASIYA TEHLUKESIZLIYI','ITIF','QUBA'),
('ELSAD','MEHERREMOV','20020617','681.1','KISI','INFORMASIYA TEHLUKESIZLIYI','ITIF','SHAMAKHI');
-----SORGULAR-----
--683.1 TELEBELERINI GOSTERMEK---
SELECT * FROM [Students]
WHERE [GROUP]=683.1;
---681.1 ANCAQ AD SOYAD GOSTERMEK--
SELECT [NAME],[SURNAME] FROM [Students]
WHERE [GROUP]=681.1;
--Soyada GORE [A-Z]`e siralama--
SELECT [ID], 
    [NAME],
    [SURNAME]
  FROM [Students]
  ORDER BY [SURNAME] ASC;

--ADINDA E VE Y OLMAYANLARI GOSTERMEK--

SELECT * FROM Students WHERE [NAME] NOT LIKE '%E%' AND [NAME] NOT LIKE  '%Y%'
/*task1*/


