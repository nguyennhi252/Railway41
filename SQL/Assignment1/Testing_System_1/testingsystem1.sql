CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department(
DepartmentID INT,
DepartmentName VARCHAR(50)
);

CREATE TABLE `Position`(
PositionID INT,
PositionName VARCHAR(100)
);

CREATE TABLE Account(
AccountID INT,
Email VARCHAR(100),
Username VARCHAR(100),
Fullname VARCHAR(100),
DeparmentID INT,
PositionID VARCHAR(100),
CreateDate DATE
);

CREATE TABLE `Group`(
GroupID INT,
GroupName VARCHAR(100),
CreatorID INT,
CreateDate DATE
);

CREATE TABLE GroupAccount(
GroupID INT,
AccountID INT,
JoinDate DATE
);

CREATE TABLE TypeQuestion(
TypeID INT,
TypeName VARCHAR(50)
);

CREATE TABLE CategoryQuestion(
CategoryID INT,
CategoryName VARCHAR(100)
);

CREATE TABLE Quesiton(
QuestionID INT,
Content VARCHAR(200),
CategoryID INT,
TypeiD INT,
CreatorID INT,
CreateDate DATE
);

CREATE TABLE Answer(
AnswerID INT,
Content VARCHAR(200),
QuestionID INT,
isCorrect VARCHAR(50)
);

CREATE TABLE Exam(
ExamID INT,
Code INT,
Title VARCHAR(150),
CategoryID INT,
Duration DATE,
CreatorID INT,
CreateDate DATE
);

CREATE TABLE ExamQuestion(
ExamID INT,
QuestionID INT
);

