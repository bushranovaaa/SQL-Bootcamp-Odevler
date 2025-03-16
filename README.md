# SQL Bootcamp Ödev Arşivi 📚

Merhaba! 👋  
Bu repoda, **TurkStudentCo Data Science Bootcamp** boyunca verilen tüm SQL ödevleri ve uygulamaları yer almaktadır.

## İçerik 📌

Bu repo içerisinde, Chinook veritabanı üzerinde yapılan aşağıdaki SQL çalışmalarını bulabilirsiniz:

### 1. Hafta
- Temel SQL Sorguları (SELECT, WHERE, ORDER BY)
- Basit filtreleme ve sıralama işlemleri

### 2. Hafta
- Invoice tablosu üzerinde NULL değer sorgusu
- Total kolonunda matematiksel işlemler ve sıralama
- Adres kolonunda string işlemleri ve tarih filtreleme

### 3. Hafta
- **Join** işlemleri (INNER JOIN, LEFT JOIN)
- Customer ve Invoice tablolarını birleştirerek rapor hazırlama

### 4. Hafta
- **Aggregation** işlemleri (SUM, AVG, COUNT, GROUP BY)
- Satışların ülkelere göre toplamları ve analizleri

## Veritabanı 📚

Çalışmalar, **Chinook** örnek veritabanı kullanılarak yapılmıştır. Chinook, müzik endüstrisini modelleyen bir veritabanıdır ve müzik albümleri, sanatçılar, şarkılar gibi verileri içerir.  
Chinook veritabanına buradan ulaşabilirsiniz:  
[Chinook SQL Files](https://github.com/lerocha/chinook-database)

## Kullanılan Araçlar ⚙️

- PostgreSQL
- pgAdmin4

## Teslim Kuralları ve Şartları 📌

Ödevlerinizi teslim ederken dikkat etmeniz gerekenler:

- SQL sorgularınızı ve kısa açıklamalarınızı içeren bir dosya (.txt veya .pdf formatında) hazırlayınız.
- Sorgularınızı kendi cümlelerinizle açıklayarak, nasıl çalıştığını belirtiniz.
- Ödevde örnek cevaplar veya ipuçları verilmemiştir; konuyu öğrendiğiniz şekilde kendi sorgularınızı oluşturmanız beklenmektedir.

## Ödev Teslim Tarihleri 📅

- **1. Hafta Ödevi Teslim Tarihi**: 04.03.2025 - 23:59  
- **2. Hafta Ödevi Teslim Tarihi**: 18.03.2025 - 23:59  
- Diğer ödevler ve tarihler için güncellemeler yapılacaktır.

## Proje Detayları 💻

Bu proje, SQL dilinin temel ve orta seviye konularını pekiştirmek amacıyla yapılmıştır.  
Aşağıda, her hafta için yapılan çalışmaları ve ilgili SQL sorgularını bulabilirsiniz. 

## Ödevler 📝

### 1. Hafta Ödevi
#### Amaç
Bu proje ödevinin amacı, SQL sorgularını kullanarak veritabanı tablolarında veri seçme, filtreleme, sıralama ve birleştirme işlemleri yapma becerilerinizi geliştirmektir.

#### Veritabanı ve Tablolar
Bu ödevde çalıştığınız veriler **Employees** ve **Departments** tablolarında tutulmaktadır.

- **Employees** Tablosu:
  - EmployeeID
  - FirstName
  - LastName
  - Age
  - Department
  - Salary
  - JoinDate
  
- **Departments** Tablosu:
  - DepartmentID
  - DepartmentName

**Veritabanını oluşturmak için gerekli SQL sorgularına** buradan ulaşabilirsiniz:  
[Tablo Oluşturma İçin Gerekli Dosyalar](https://drive.google.com/file/d/1K9kyQXmYmnyLf70SZsOjFpxumq5GaLqb/view?usp=sharing)

#### Görevler
- Belirli Kolonları Seçme
- DISTINCT Komutu ile Tekrarları Önleme
- Belirli Bir Departmana Ait Çalışanları Listeleme
- Maaşa Göre Sıralama
- Kolonları Birleştirme (Concatenation)

**Teslim Tarihi:** 04.03.2025 - 23:59  
**Teslim Yeri:** [Ödev Teslim Formu](https://forms.gle/Hsvr4ivYtNUoz7K48)

### 2. Hafta Ödevi
#### Amaç
Bu hafta, **Chinook** veritabanındaki **Invoice** tablosu üzerinde sorgular yaparak veritabanı sorgulama becerilerinizi geliştirmek hedeflenmektedir.

#### Invoice Tablosu (Örnek Veri)
Aşağıdaki tablo, Invoice tablosunun örnek kayıtlarını göstermektedir:
- invoice_id
- customer_id
- invoice_date
- billing_address
- billing_city
- billing_state
- billing_country
- billingpostal_code
- total

**Invoice tablosunun tüm verilerine** buradan ulaşabilirsiniz:  
[Invoice Veritabanı](https://drive.google.com/drive/folders/1kwnUOyf311vlW7Vm5XGCvXYE9CTMvOks?usp=sharing)

#### Görevler
- NULL değerleri içeren kayıtların sayısını bulma
- Total kolonunun iki katını görüp karşılaştırma
- Adres kolonunda string işlemleri yaparak yeni bir "Açık Adres" oluşturma ve filtreleme

**Teslim Tarihi:** 18.03.2025 - 23:59  
**Teslim Yeri:** [Ödev Teslim Formu](https://forms.gle/oDhKSYaHjHYEJ9X17)

---

### 🎯 Hedef
Bu proje ile SQL dilini etkili bir şekilde kullanarak, veri analizi, filtreleme, sıralama, birleştirme, agregasyon gibi önemli veri işlemleri üzerinde pratik yapmış olacaksınız.

---

İlerleyen haftalarda ek ödevler ve daha fazla SQL uygulamasıyla ilgili güncellemeler yapılacaktır. Takipte kalın! 👨‍💻👩‍💻
