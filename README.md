# 🎓 Student Management Application (Spring Boot)

A **Student Management Web Application** built using **Spring Boot, Spring MVC, Spring Data JPA, and MySQL**.
This application allows an admin to manage student records including **enrollment, search, batch management, fee payment, and pagination**.

---

# 🚀 Features

✔ Admin Login Authentication
✔ Add / Enroll New Student
✔ View All Students
✔ Search Students by **Batch Number and Batch Mode**
✔ Delete Student Record
✔ Fee Payment Management
✔ Batch Shift Functionality
✔ Pagination Support
✔ MVC Architecture Implementation

---

# 🛠️ Tech Stack

| Technology      | Description           |
| --------------- | --------------------- |
| Java            | Programming Language  |
| Spring Boot     | Backend Framework     |
| Spring MVC      | Web Architecture      |
| Spring Data JPA | Database ORM          |
| Hibernate       | Persistence Framework |
| MySQL           | Database              |
| Maven           | Dependency Management |
| JSP / HTML      | View Layer            |

---

# 📂 Project Structure

```
src/main/java
│
├── controller
│   └── AdminController.java
│
├── model
│   └── Student.java
│
├── repository
│   └── StudentRepositoryI.java
│
├── servicei
│   └── StudentServiceI.java
│
├── serviceimpl
│   └── StudentServiceImpl.java
```

---

# ⚙️ Functional Modules

## 1️⃣ Admin Login

Admin logs into the system using credentials.

Default Credentials:

```
Username : admin
Password : admin
```

---

## 2️⃣ Student Enrollment

Admin can add new students with details:

* Name
* Email
* Age
* College Name
* Course
* Batch Number
* Batch Mode

---

## 3️⃣ Search Students

Search students using:

```
Batch Number
Batch Mode
```

Example:

```
Batch Number : B100
Batch Mode   : Online
```

---

## 4️⃣ Delete Student

Admin can delete any student using the **Student ID**.

---

## 5️⃣ Fee Payment

Admin can update student fee details.

Example:

```
Previous Fees Paid : 10000
Entered Amount     : 5000
Total Fees Paid    : 15000
```

---

## 6️⃣ Batch Shift

Admin can change the student's:

* Batch Number
* Batch Mode

Example:

```
Batch Number : B200
Batch Mode   : Offline
```

---

## 7️⃣ Pagination

Pagination is implemented using **Spring Data JPA PageRequest**.

Example:

```
Page Number : 0
Page Size   : 4
```

---

# 🗄️ Database Entity

## Student Entity

Fields in Student Table:

| Field              | Type   |
| ------------------ | ------ |
| studentId          | int    |
| studentFullName    | String |
| studentEmail       | String |
| studentAge         | int    |
| studentCollageName | String |
| studentCourse      | String |
| batchNumber        | String |
| batchMode          | String |
| feesPaid           | double |

---

# 📌 Repository Layer

Custom JPA Query Method:

```java
public List<Student> findAllByBatchNumberAndBatchMode(String batchNumber,String batchMode);
```

Used for filtering students based on batch details.

---

# ▶️ How to Run the Project

### 1️⃣ Clone the Repository

```
git clone https://github.com/yourusername/student-management-application.git
```

### 2️⃣ Open Project in IDE

Recommended IDE:

* IntelliJ IDEA
* Eclipse
* Spring Tool Suite

### 3️⃣ Configure Database

Update **application.properties**

```
spring.datasource.url=jdbc:mysql://localhost:3306/studentdb
spring.datasource.username=root
spring.datasource.password=root
spring.jpa.hibernate.ddl-auto=update
```

### 4️⃣ Run the Project

Run the main Spring Boot application.

Open browser:

```
http://localhost:8080
```

---

# 📸 Screenshots (Optional)

You can add screenshots here:

* Login Page
* Admin Dashboard
* Student List
* Fee Payment Page

---

# 📈 Future Improvements

* Spring Security Authentication
* REST API Version
* Angular / React Frontend
* Student Update Feature
* File Upload for Student Documents

---

