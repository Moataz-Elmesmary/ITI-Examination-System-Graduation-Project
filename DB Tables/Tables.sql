use [Final proj]


create table Certificate(
Cert_ID int primary Key, 
St_ID int,
PlatForm varchar(100),
Cost decimal,
Duration int ,
Certificate_Date date,
)

-------------------------------------
Create Table FreeLance(
FreeLance_id int Primary key,
St_ID int,
PlatForm varchar(100),
Payment decimal,
Duration int , 
Date date,
Job_Description varchar(100),
Tools varchar(100)
)
----------------------------------------

create table Intack (
Intake_ID int primary key,
intake_name varchar(50),
Start_Date date,
End_Date date
)
-------------------------------------
Create table St_Company(
Company_ID int,
St_ID int,
PRIMARY KEY (Company_ID , St_ID)
)
--------------------------------
create table Company(
Company_ID int primary key,
Company_name varchar(100),
Company_City varchar(100),
Comapny_Feild varchar(100),
Company_Size int ,
Company_Nationality varchar(100)
)
----------------------------------

create table  Instructor(
Inst_ID int primary key ,
Inst_Fname varchar(50),
Inst_lname varchar(50),
City varchar(50),
Age int ,
Gender char(1),
Degree varchar(50),
Email varchar(50),
Working_Status varchar(50),
Salary int ,
HireDate date,
Password varchar(50),
constraint c1 check (Gender = 'M' or Gender = 'F')
)

----------------------------------
create table Inst_Events(
Events_ID int ,
Inst_ID int,
Primary key (Events_ID,Inst_ID)
)

---------------------------------------

create table ST_Event(
Event_ID int,
St_ID int,
Primary key (Event_ID,st_ID)
)
---------------------------
create table Event(
Event_ID int primary key , 
Event_name varchar(50),
Event_Topic varchar(50),
Event_Date date ,
Branch_ID int
)
------------------------------
create table Result(
Exam_ID int , 
St_ID int,
Final_RESULT int, --Sum(Marks*is_correct)
Primary key (exam_ID,st_ID)
)

---------------------------------
create table St_Exam_Ques(
Ques_ID int , 
Exam_ID int,
St_ID int,
Student_Answer varchar(100),
Is_Correct binary,
Primary key (exam_id,Ques_ID,St_ID)
)
-----------------------------------
create table Exam(
Exam_ID int primary key,
Exam_Name varchar(50),
Exam_Date date,
Max_Grade int ,
Start_Time time,
End_Time time
)
-------------------------
create table Ins_Crs_Exam(
Exam_ID int,
Crs_ID int,
Inst_ID int,
Primary key (Exam_ID ,Crs_ID ,Inst_ID )
)

-- Student Table
CREATE TABLE Student (
    St_ID INT PRIMARY KEY ,
    St_Fname VARCHAR(50) NOT NULL,
    St_Lname VARCHAR(50) NOT NULL,
    St_Age INT NOT NULL CHECK (St_Age BETWEEN 21 AND 35),
    Gender CHAR(1),
	Graduation_Year INT,
    Email VARCHAR(255) UNIQUE NOT NULL,
    [Password] VARCHAR(255) NOT NULL,
    City VARCHAR(100),
    Univ_ID INT,
    Facu_ID INT,
    Intake_ID INT,
    Track_ID INT,
    Branch_ID INT,
	constraint c2 check (Gender = 'M' or Gender = 'F')
)
-----------------------------------------------------------------------------1

--Phone Table
CREATE TABLE St_Phone (
    St_ID INT NOT NULL,
    Phone NVARCHAR(20) NOT NULL,
	PRIMARY KEY (St_ID, Phone),
    
)
-----------------------------------------------------------------------------2

-- University Table
CREATE TABLE University (
    Univ_ID INT PRIMARY KEY,
    Univ_name VARCHAR(100) NOT NULL,
	Univ_city VARCHAR(255)
)
-----------------------------------------------------------------------------3

-- Faculty Table
CREATE TABLE Faculty (
    Facu_ID INT PRIMARY KEY,
    Facu_Name VARCHAR(255) NOT NULL
)
-----------------------------------------------------------------------------4
-- Facu_Uni Table
CREATE TABLE Facu_Uni (
    Facu_ID INT,
    Univ_ID INT,
    PRIMARY KEY (Facu_ID, Univ_ID)
    
)
-----------------------------------------------------------------------------5

-- Inst_Crs Table
CREATE TABLE Inst_Crs (
    Crs_ID INT,
    Inst_ID INT,
    PRIMARY KEY (Crs_ID, Inst_ID)
   
)
-----------------------------------------------------------------------------6

-- Choice Table
CREATE TABLE Choice (
    Choice_ID INT PRIMARY KEY,
    Ques_ID INT,
    A varchar(50),
    B varchar(50),
    C varchar(50),
    D varchar(50)
    
)
-----------------------------------------------------------------------------7

-- Ins_Ques Table
CREATE TABLE Ins_Ques (
    Inst_ID INT,
    Ques_ID INT,
    PRIMARY KEY (Inst_ID, Ques_ID)
   
)
-----------------------------------------------------------------------------8

-- Questions Table
CREATE TABLE Questions (
    Ques_ID INT PRIMARY KEY,
    Ques_Type VARCHAR(20),
    Difficulty INT,
    Correct_Answer CHAR(1),
	Marks INT,
    Question_Topic VARCHAR(100)
)

-- Create Course table
CREATE TABLE Course (
    Crs_ID INT PRIMARY KEY,
    Crs_Name VARCHAR(50),
    Crs_Duration INT,
    Crs_Description VARCHAR(255)
);

-- Create Track table
CREATE TABLE Track (
    Track_ID INT PRIMARY KEY,
    Track_Name VARCHAR(50),
    Track_Description VARCHAR(255),
    SuperV_Inst INT
);

-- Create Branch table
CREATE TABLE Branch (
    Branch_ID INT PRIMARY KEY,
    Branch_Name VARCHAR(50),
    Branch_Loc VARCHAR(50),
    Mgr_Inst INT
);

-- Create Track_Crs table (composite primary key)
CREATE TABLE Track_Crs (
    Track_ID INT,
    Crs_ID INT,
    PRIMARY KEY (Track_ID, Crs_ID)
);

-- Create Branch_Track table (composite primary key)
CREATE TABLE Branch_Track (
    Branch_ID INT,
    Track_ID INT,
    PRIMARY KEY (Branch_ID, Track_ID)
);
-------------------------------------------
