-- Veritabanı oluşturma
CREATE DATABASE FirstLessonDB;
GO
USE FirstLessonDB;
GO

-- Departmanlar tablosu oluşturuluyor
CREATE TABLE Departments(
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,  -- IDENTITY eklenerek otomatik artan ID
    DepartmentName NVARCHAR(50) NOT NULL
);

-- Çalışanlar tablosu oluşturuluyor
CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),  -- EmployeeID de otomatik artacak şekilde IDENTITY kullanıldı
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    Age TINYINT NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10,2) NOT NULL,  -- Salary'ye NOT NULL eklendi, her çalışan için maaş zorunlu
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)  -- Departman ile ilişkilendirme
);

-- Departmanlara veri ekleniyor
INSERT INTO Departments(DepartmentName)
VALUES (N'IT'), (N'HR'), (N'Finance');

-- Çalışanlar için veri ekleniyor
INSERT INTO Employees(FirstName, LastName, Age, DepartmentID, Salary, JoinDate) 
VALUES 
    ('John', 'Doe', 30, 1, 55000, '2020-01-15'),
    ('Jane', 'Smith', 45, 2, 65000, '2018-07-20'),
    ('Sam', 'Brown', 28, 1, 52000, '2021-04-25'),
    ('Lisa', 'White', 35, 3, 70000, '2019-03-18'),
    ('Mark', 'Black', 50, 1, 75000, '2015-11-05'),
    ('Lucy', 'Green', 40, 2, 60000, '2017-10-10');

-- Çalışanları listeleme
SELECT * FROM Employees;

-- Departmanları listeleme
SELECT * FROM Departments;

-- Çalışanlardan yalnızca isim, soyisim ve maaş bilgisi
SELECT FirstName, LastName, Salary FROM Employees;

-- Çalışanların departman bilgilerini listelerken, tekrarları engelleme
SELECT DISTINCT FirstName, DepartmentID FROM Employees;

-- İkinci departmandaki (HR) çalışanları listeleme
SELECT * FROM Employees WHERE DepartmentID = 2;

-- Çalışanları maaşlarına göre büyükten küçüğe sıralama
SELECT * FROM Employees ORDER BY Salary DESC;

-- Ad ve soyad bilgilerini birleştirerek tam isim oluşturma
SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;