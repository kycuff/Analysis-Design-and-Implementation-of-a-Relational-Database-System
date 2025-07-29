CREATE DATABASE University;
--USE University;

CREATE TABLE Positions(
	PositionCode int PRIMARY KEY,
	Position NVARCHAR(255)
);

CREATE TABLE Person(
	Person_Id int PRIMARY KEY,
	"Name" NVARCHAR(255),
	PlaceOfBirth NVARCHAR(255),
	DateOfBirth Date,
	HomeSchool NVARCHAR(255),
	City NVARCHAR(255),
	Country NVARCHAR(255),
	ContactNumber NVARCHAR(255),
	PositionCode int NOT NULL FOREIGN KEY REFERENCES Positions(PositionCode)
);

CREATE TABLE CompletedCourses(
	Person_Id int,
	Course NVARCHAR(255),
	Grade NCHAR(1),
	CONSTRAINT PK_CompletedCourses PRIMARY KEY (Person_Id, Course),
	CONSTRAINT FK_Person_Id FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id)
);

CREATE TABLE Courses(
	CourseCode nchar(6) NOT NULL PRIMARY KEY,
	CourseTitle NVARCHAR(255),
	HostUniversity NVARCHAR(255),
	DurationMonths int,
	"Type" NCHAR(3)
);

CREATE TABLE Applications (
	Application_Id int NOT NULL PRIMARY KEY,
	Person_Id int NOT NULL FOREIGN KEY REFERENCES Person(Person_Id),
	RecommendationLetter NCHAR(1),
	InvitationFromHost NCHAR(1),
	CourseCode nchar(6) NOT NULL FOREIGN KEY REFERENCES Courses(CourseCode)
);

CREATE TABLE Grants(
	Grant_Id int PRIMARY KEY,
	GrantTitle NVARCHAR(255),
	AvailableFund int,
	DurationMonths int
);

CREATE TABLE Proposals(
	Proposal_Id int PRIMARY KEY,
	RequiredFund int,
	Proposal NVARCHAR(255)
);

CREATE TABLE GrantApplication(
	GrantApplication_Id int PRIMARY KEY,
	Person_Id int,
	Proposal_Id int,
	Grant_Id int,
	CONSTRAINT FK_Persons_Id FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id),
	CONSTRAINT FK_Grant_Id FOREIGN KEY (Grant_Id) REFERENCES Grants(Grant_Id),
	CONSTRAINT FK_Proposal_Id FOREIGN KEY (Proposal_Id) REFERENCES Proposals(Proposal_Id)
);