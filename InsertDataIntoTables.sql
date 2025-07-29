USE [University]
GO

--FOR TESTING PURPOSES
--delete from [Applications]
--delete from [CompletedCourses]
--delete from [Courses]
--delete from [GrantApplication]
--delete from [Grants]
--delete from [Person]
--delete from [Positions]
--delete from [Proposals]

INSERT INTO [dbo].[Positions]
VALUES
(1,'Student'),
(2,'Researcher')
GO

INSERT INTO [dbo].[Courses]
VALUES
('CS1022','Computer Security','Cardiff Met University',36,'BSc'),
('DS2221','Data Science','Swansea University',12,'MSc'),
('BI0011','Bioinformatics','MIT',36,'PhD')
GO

INSERT INTO [dbo].[Grants]
VALUES
(1,'Short term',20000,6),
(2,'ESRC',250000,24),
(3,'Welsh Government',150000,12);
GO

INSERT INTO [dbo].[Proposals]
VALUES
(1,1000,'Intro'),
(2,200,'Background'),
(3,600,'Risks'),
(4,800,'Methods');
GO

INSERT INTO [dbo].[Person]
VALUES
(1,'Amaya Hebert','Cardiff','1978-04-29','John Frost High','London','England','0722222222',1),
(2,'Gavin Stephenson','Newport','1978-11-20','Duffryn Comp','Manchester','England','0722222223',1),
(3,'Chase Lewis','Swansea','2000-01-30','St Michaels','Birmingham','England','0722222224',1),
(4,'Cael Boyer','Wrexham','1996-08-07','John Frost High','London','England','0722222225',1),
(5,'Glenn Mccann','Monmouth','1981-05-06','Duffryn Comp','Manchester','England','0722222226',1),
(6,'Emilia Peters','Bridgend','1992-10-15','St Michaels','Birmingham','England','0722222227',1),
(7,'Jeremiah Blackburn','Carmarthen','1966-09-14','St Brides','Madrid','Spain','0722222228',1),
(8,'Wyatt Page','Cardiff','1995-05-26','John Frost High','London','England','0711111111',2),
(9,'Karlie Decker','Newport','2000-08-03','Duffryn Comp','Manchester','England','0711111112',2),
(10,'Ishaan Harvey','Swansea','1971-08-26','St Michaels','Birmingham','England','0711111113',2),
(11,'Laila Murray','Wrexham','1986-10-08','Gaer','Bristol','England','0711111114',2),
(12,'Leonidas Jefferson','Monmouth','1974-04-11','Pill','Sheffield','England','0711111115',2),
(13,'Joy Rush','Bridgend','1993-01-24','John Frost High','Glasgow','Scotland','0711111116',2)
GO

INSERT INTO [dbo].[CompletedCourses]
VALUES
(8,'History','A'),
(8,'Maths','B'),
(9,'IT','A'),
(9,'Maths','C'),
(10,'Geography','D'),
(11,'English','C'),
(12,'IT','A'),
(12,'Science','D'),
(13,'Maths','C'),
(13,'IT','D'),
(13,'English','C')
GO

INSERT INTO [dbo].[Applications]
VALUES
(1,8,'Y','Y','CS1022'),
(2,8,'Y','Y','CS1022'),
(3,9,'Y','Y','DS2221'),
(4,9,'Y','Y','DS2221'),
(5,10,'N','Y','BI0011'),
(6,11,'N','Y','CS1022'),
(7,12,'Y','Y','DS2221'),
(8,12,'Y','Y','DS2221'),
(9,13,'Y','Y','BI0011'),
(10,13,'Y','Y','BI0011'),
(11,13,'Y','Y','BI0011')
GO

INSERT INTO [dbo].[GrantApplication]
VALUES
(1,1,1,1),
(2,2,2,2),
(3,3,3,3),
(4,4,4,1),
(5,5,1,2),
(6,6,2,3),
(7,7,3,1)
GO
