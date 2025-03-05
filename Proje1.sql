-- Veritabanı oluşturma
CREATE DATABASE FirstLessonDB;
GO
USE FirstLessonDB;
GO

-- Departmanlar tablosu
CREATE TABLE Departments(
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(50) NOT NULL
);

-- Çalışanlar tablosu 
CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    Age TINYINT NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Departmanlara veri ekleme
INSERT INTO Departments(DepartmentID, DepartmentName)
VALUES (1, N'IT'), (2, N'HR'), (3, N'Finance');

-- Çalışanlara veri ekleme
INSERT INTO Employees(FirstName, LastName, Age, DepartmentID, Salary, JoinDate) 
VALUES 
    ('John', 'Doe', 30, 1, 55000, '2020-01-15'),
    ('Jane', 'Smith', 45, 2, 65000, '2018-07-20'),
    ('Sam', 'Brown', 28, 1, 52000, '2021-04-25'),
    ('Lisa', 'White', 35, 3, 70000, '2019-03-18'),
    ('Mark', 'Black', 50, 1, 75000, '2015-11-05'),
    ('Lucy', 'Green', 40, 2, 60000, '2017-10-10');

-- Tüm çalışanları listeleme
SELECT * FROM Employees;
-- Tüm departmanları listeleme
SELECT * FROM Departments;

-- Çalışma 1: Belirli kolonları seçme
SELECT FirstName, LastName, Salary FROM Employees;

-- Çalışma 2: DISTINCT ile tekrarları önleme
SELECT DISTINCT FirstName, DepartmentID FROM Employees;

-- Çalışma 3: Belirli departmandaki çalışanları listeleme
SELECT * FROM Employees WHERE DepartmentID = 2;

-- Çalışma 4: Maaşa göre sıralama (Büyükten küçüğe)
SELECT * FROM Employees ORDER BY Salary DESC;

-- Çalışma 5: Ad ve soyadı birleştirme
SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;
