CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;

CREATE TABLE Department(
DepartmentID tinyint primary key auto_increment,
DepartmentName VARCHAR(50)
);

CREATE TABLE `Position`(
PositionID tinyint primary key auto_increment,
PositionName enum( 'Dev', 'Test', 'Scrum Master', 'PM')
);

CREATE TABLE `Account`(
AccountID INT primary key auto_increment,
Email VARCHAR(100) unique key,
Username VARCHAR(100),
Fullname VARCHAR(100) not null,
DepartmentID tinyint,
PositionID tinyint,
foreign key (DepartmentID) references Department (DeparmentID),
foreign key (PositionID ) references `Position` (PositionID),
CreateDate datetime default now()
);

CREATE TABLE `Group`(
GroupID tinyint  primary key auto_increment,
GroupName VARCHAR(100),
CreatorID INT,
CreateDate datetime default now(),
foreign key (CreatorID) references `Account`(AccountID)
);

CREATE TABLE GroupAccount(
GroupID tinyint ,
AccountID INT,
JoinDate datetime,
foreign key (GroupID) references `Group` (GroupID),
foreign key (AccountID) references `Account`( AccountID)
);

CREATE TABLE TypeQuestion(
TypeID tinyint primary key auto_increment,
TypeName enum( 'Essay','Multiple-Choice') unique
);

CREATE TABLE CategoryQuestion(
CategoryID tinyint  primary key auto_increment,
CategoryName VARCHAR(100)
);

CREATE TABLE Quesiton(
QuestionID INT primary key auto_increment,
Content VARCHAR(200),
CategoryID tinyint,
TypeiD tinyint,
CreatorID INT,
CreateDate datetime ,
foreign key (CreatorID) references `Account`(AccountID),
foreign key( CategoryID) references CategoryQuestion(CategoryID),
foreign key( TypeiD) references TypeQuestion(TypeID)
);

CREATE TABLE Answer(
AnswerID INT primary key auto_increment,
Content VARCHAR(200),
QuesitonID INT,
isCorrect enum( 'yes','No'),
foreign key (QuesitonID) references Quesiton(QuestionID)
);

CREATE TABLE Exam(
ExamID INT primary key auto_increment,
Code INT,
Title VARCHAR(150) not null,
CategoryID tinyint,
Duration DATE,
CreatorID INT,
CreateDate DATE,
foreign key (CategoryID) references CategoryQuestion(CategoryID ),
foreign key (CreatorID) references `Account`(AccountID)
);

CREATE TABLE ExamQuestion(
ExamID INT,
QuestionID INT,
foreign key (ExamID) references Exam (ExamID),
foreign key (QuestionID) references  Quesiton (QuestionID)
);
