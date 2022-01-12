CREATE DATABASE LibraryDataBase 

CREATE TABLE Library(
Id int identity primary key,
[Name]varchar(50),
 Location string,	
MaxSize int,
)

CREATE TABLE BOOK(
Id int identity primary key,
[Name]varchar(50),
Author varchar(50),
Year int,
Language string,
Pagecount int,
AuthorId int references Author(Id),
UsersId int references Users(Id),
LibraryId int references Library(Id),
)


CREATE TABLE Librarian(
Id int identity primary key,
[Name]varchar(50),
Surname varchar(50),
Password string,
Loans int,
Email_adress varchar(50),
PhoneNumber varchar(50),
LibraryId int references Library(Id),
)

CREATE TABLE Author(
Id int identity primary key,
[Name]varchar(50),
Surname varchar(50),
Nationality varchar(50),
Date_of_brith int,
Date_of_death int,
Lifespan int,
)

CREATE TABLE Users(
Id int identity primary key,
Name nvarchar(50) NOT NULL
Surname varchar(50),
Adress varchar(50),
PhoneNumber varchar(50),
Email_adress varchar(50),
)

CREATE TABLE Borrow(
Id int identity primary key,
TakenDate int,
BroughtDate int,
)

CREATE TABLE User_Borrow_Id(
Id int identity primary key,
BorrowId int references Borrow(Id),
UsersId int references Users(Id),
)









)

