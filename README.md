# SQL Veritabanı Ödevi

Bu proje, SQL sorguları kullanarak veritabanı tablolarında veri seçme, filtreleme, sıralama ve birleştirme işlemleri yapmayı hedefleyen bir ödevdir. Veritabanında çalışan bilgileri (**Employees**) ve departman bilgilerini (**Departments**) içeren tablolar kullanılacaktır.

## 1. Veritabanı Yapısı

### **Departments Tablosu**

| Kolon Adı       | Veri Tipi        | Kısıtlama            |
|----------------|-----------------|----------------------|
| DepartmentID  | INT             | PRIMARY KEY         |
| DepartmentName| NVARCHAR(50)    | NOT NULL            |

### **Employees Tablosu**

| Kolon Adı   | Veri Tipi      | Kısıtlama                      |
|------------|--------------|------------------------------|
| EmployeeID | INT          | PRIMARY KEY, IDENTITY(1,1)  |
| FirstName  | NVARCHAR(100)| NOT NULL                    |
| LastName   | NVARCHAR(100)| NOT NULL                    |
| Age        | TINYINT      | NOT NULL                    |
| DepartmentID | INT        | FOREIGN KEY (Departments)   |
| Salary     | DECIMAL(10,2)|                              |
| JoinDate   | DATE        |                              |

---

## 2. SQL Sorguları

Aşağıdaki sorgular bu veritabanı yapısını kullanarak farklı veri manipülasyonları yapmaktadır.

### **1. Belirli Kolonları Seçme**
```sql
SELECT FirstName, LastName, Salary FROM Employees;
```

### **2. DISTINCT Komutu ile Tekrarları Önleme**
```sql
SELECT DISTINCT FirstName, DepartmentID FROM Employees;
```

### **3. Belirli Bir Departmana Ait Çalışanları Listeleme**
```sql
SELECT * FROM Employees WHERE DepartmentID = 2;
```

### **4. Maaşa Göre Sıralama**
```sql
SELECT * FROM Employees ORDER BY Salary DESC;
```

### **5. Ad ve Soyadı Birleştirme**
```sql
SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;
```

---

## 3. Nasıl Kullanılır?

1. PostgreSQL veya bir SQL veritabanı yöneticisi kullanarak sorgularınızı çalıştırabilirsiniz.
2. Önce veritabanını oluşturmalısınız (CREATE DATABASE FirstLessonDB; komutu PostgreSQL'de doğrudan çalıştırılamayabilir, bu yüzden psql veya GUI kullanabilirsiniz).
3. **Departments** ve **Employees** tablolarını oluşturduktan sonra, ilgili INSERT komutlarını kullanarak örnek verileri ekleyebilirsiniz.
4. SQL sorgularını sırasıyla çalıştırarak sonucu gözlemleyebilirsiniz.

---

Bu ödev, SQL'i pratik yaparak öğrenmek için hazırlanmıştır. Geri bildirimleriniz veya sorularınız için iletişime geçebilirsiniz!
