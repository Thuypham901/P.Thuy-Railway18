DROP DATABASE IF EXISTS Testing_System_Assignment_1;

CREATE DATABASE Testing_System_Assignment_1  ;
USE Testing_System_Assignment_1;

CREATE TABLE  Department (
	DepartmentID	INT PRIMARY KEY AUTO_INCREMENT,
	DepartmentName	VARCHAR(50)	
);

CREATE TABLE Position (
	PositionID		INT PRIMARY KEY AUTO_INCREMENT,
	PositionName	VARCHAR(50)
);

CREATE TABLE  Account (
	account_id	INT PRIMARY KEY AUTO_INCREMENT,
    email		VARCHAR(50),
    username	VARCHAR(50),
    fullname	VARCHAR(50),
    department_id	INT,
    position_id		INT,
    Create_date		DATETIME
);


CREATE TABLE  `Group`(
	group_id	INT PRIMARY KEY AUTO_INCREMENT,
    group_name	VARCHAR(50),
    creator_id	INT,
    create_date	DATETIME
); 

CREATE TABLE GroupAccount (
	groupid		INT,
    accountid	INT,
    joindate	DATETIME
);

CREATE TABLE TypeQuestion (
	typeid		INT PRIMARY KEY AUTO_INCREMENT,
	typename	VARCHAR(100)
);
CREATE TABLE CategoryQuestion (
	categoryid	INT PRIMARY KEY AUTO_INCREMENT,
    categoryname	VARCHAR(50)
); 
CREATE TABLE  Question (
	questionid	INT PRIMARY KEY AUTO_INCREMENT,
    content		VARCHAR(100),
    categoryid  INT,
    typeid		INT,
    creatorid	INT,
    createdate	DATETIME
);
CREATE TABLE Answer (
	answerid	INT PRIMARY KEY AUTO_INCREMENT,
    content		VARCHAR(50),
    questionid  INT,
    Iscorrect	VARCHAR(50)
);
CREATE TABLE Exam (
	examid		INT PRIMARY KEY AUTO_INCREMENT,
    code		VARCHAR(50),
    Title		VARCHAR(50),
    categoryid	INT,
    Duration	DATETIME,
    creatorid	INT,
    createdate	DATETIME
);
CREATE TABLE ExamQuestion (
	examid		INT,
    questionid	INT
);

