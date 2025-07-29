--delete queries
DELETE FROM [University].[dbo].[GrantApplication] WHERE Person_Id = 1;
DELETE FROM [University].[dbo].[Person] WHERE Person_Id = 1;

DELETE FROM [University].[dbo].[Applications] WHERE Person_Id = 10;
DELETE FROM [University].[dbo].[Person] WHERE Person_Id = 10;

--Aggregate queries
SELECT Country
FROM [University].[dbo].[Person] 
GROUP BY Country;
GO  

SELECT COUNT(DISTINCT City) AS 'Number of unique cities'
FROM[University].[dbo].[Person] 
GO

SELECT AVG(AvailableFund) AS 'Average available fund'
FROM[University].[dbo].[Grants] 
GO

--Wildcard Selections
SELECT *
FROM[University].[dbo].[Person] 
WHERE [Name] LIKE '%ecker' or City LIKE '%ming%'
GO

--Inner Joins
SELECT [Name], HomeSchool,Course,Grade
FROM [University].[dbo].[Person] 
INNER JOIN [University].[dbo].[CompletedCourses]
ON [University].[dbo].[Person].Person_Id = [University].[dbo].[CompletedCourses].Person_Id;

SELECT [Name] As 'Researcher',GrantTitle As 'Grant Applied For',AvailableFund As 'Fund Available'
FROM [University].[dbo].[Person] 
INNER JOIN [University].[dbo].[GrantApplication]
ON [University].[dbo].[Person].Person_Id = [University].[dbo].[GrantApplication].Person_Id
INNER JOIN [University].[dbo].[Grants]
ON [University].[dbo].[GrantApplication].Grant_Id = [University].[dbo].[Grants].Grant_Id;

--Left out join
SELECT [Name],Position
FROM [University].[dbo].[Person] 
LEFT OUTER JOIN [University].[dbo].[Positions]
ON [University].[dbo].[Person].PositionCode = [University].[dbo].[Positions].PositionCode

--returns all even if there is no course title
SELECT Distinct([Name]),CourseTitle
FROM [University].[dbo].[Person]
LEFT OUTER JOIN [University].[dbo].[Applications]
ON [University].[dbo].[Person].Person_Id = [University].[dbo].[Applications].Person_Id
LEFT OUTER JOIN [University].[dbo].[Courses]
ON [University].[dbo].[Applications].CourseCode = [University].[dbo].[Courses].CourseCode

--Right joins (does not return any without course title
SELECT Distinct([Name]),CourseTitle
FROM [University].[dbo].[Person]
RIGHT JOIN [University].[dbo].[Applications]
ON [University].[dbo].[Person].Person_Id = [University].[dbo].[Applications].Person_Id
RIGHT OUTER JOIN [University].[dbo].[Courses]
ON [University].[dbo].[Applications].CourseCode = [University].[dbo].[Courses].CourseCode

SELECT Distinct([Name]),RecommendationLetter,InvitationFromHost,CourseTitle,Course,Grade
FROM [University].[dbo].[Person]
RIGHT JOIN [University].[dbo].[Applications]
ON [University].[dbo].[Person].Person_Id = [University].[dbo].[Applications].Person_Id
RIGHT JOIN [University].[dbo].[Courses]
ON [University].[dbo].[Applications].CourseCode = [University].[dbo].[Courses].CourseCode
RIGHT JOIN [University].[dbo].[CompletedCourses]
ON [University].[dbo].[Person].Person_Id = [University].[dbo].[CompletedCourses].Person_Id

SELECT [Name],GrantTitle
FROM [University].[dbo].[Person]
RIGHT JOIN [University].[dbo].[GrantApplication]
ON [University].[dbo].[Person].Person_Id = [dbo].[GrantApplication].Person_Id
RIGHT JOIN [University].[dbo].[Grants]
ON [University].[dbo].[GrantApplication].[Grant_Id] = [dbo].[Grants].Grant_Id