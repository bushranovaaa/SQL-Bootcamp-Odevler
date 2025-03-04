create database FirstLessonDB
USE FirstLessonDB

create table Employees(
EmployeeID int primary key IDENTITY(1,1),
FirstName nvarchar(100) not null,
LastName nvarchar(100)not null ,
Age tinyint not null,
DepartmentID INT,
Salary DECIMAL(10,2),
JoinDate DATE,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);



CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);


--tüm tablolarý getirme
select * from Employees
select * from Departments

--tabloya veri ilave etme
insert into Employees(FirstName,LastName,Age,DepartmentID,Salary,JoinDate) values('John','Doe',30,1,55000,'2020-01-15')
insert into Employees(FirstName,LastName,Age,DepartmentID,Salary,JoinDate) values('Jane','Smith',45,2,65000,'2018-07-20')
insert into Employees(FirstName,LastName,Age,DepartmentID,Salary,JoinDate) values('Sam','Brown',28,1,52000,'2021-04-25')
insert into Employees(FirstName,LastName,Age,DepartmentID,Salary,JoinDate) values('Lisa','White',35,3,70000,'2019-03-18')
insert into Employees(FirstName,LastName,Age,DepartmentID,Salary,JoinDate) values('Mark','Black',50,1,75000,'2015-11-05')
insert into Employees(FirstName,LastName,Age,DepartmentID,Salary,JoinDate) values('Lucy','Green',40,2,60000,'2017-10-10')

insert into Departments(DepartmentID,DepartmentName) values (1,N'IT'),(2,'HR'),(3,'Finance');


--çalýþma 1:
select FirstName,LastName,Salary from Employees

--çalýþma 2:
SELECT DISTINCT FirstName, DepartmentID
FROM Employees;

--çalýþma 3:
SELECT *
FROM Employees
WHERE DepartmentID = 2;--çalýþma 3:SELECT *
FROM Employees
ORDER BY Salary DESC;--çalýþma 4:SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees;
