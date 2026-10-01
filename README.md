🎓 Student Management System

A web-based Student Management System developed using Java Spring Boot, ORM, JSP, REST APIs, and MySQL. The system provides an easy way to manage student records, including adding, viewing, updating, and deleting student information.

📌 Project Overview

The Student Management System is designed to simplify student record management for educational institutions.

The application allows authorized users to manage student details through a web interface and REST APIs.

Main Features
🔐 User Login and Logout
👨‍🎓 Add Student
📋 View All Students
🔍 Search Student
✏️ Update Student Details
🗑️ Delete Student
🌐 REST API support
🗄️ MySQL database integration
🔒 Session-based authentication
📱 Web-based user interface
🎯 Objectives

The main objectives of this project are:

To digitize student record management.
To reduce manual data entry and maintenance.
To provide centralized student information.
To perform CRUD operations efficiently.
To provide REST APIs for student data.
To implement secure login and logout functionality.
🛠️ Technologies Used
Backend
Java
Spring Boot
Spring MVC
Spring Data JPA / ORM
REST API
Frontend
JSP
HTML5
CSS3
JavaScript
Bootstrap
Database
MySQL
Development Tools
Eclipse / Spring Tool Suite
Maven
Apache Tomcat
MySQL / XAMPP
Postman
🏗️ System Architecture
              ┌───────────────────────┐
              │       User            │
              └───────────┬───────────┘
                          │
                          ▼
              ┌───────────────────────┐
              │    JSP / Web UI       │
              │   HTML CSS JavaScript │
              └───────────┬───────────┘
                          │
                          ▼
              ┌───────────────────────┐
              │    Spring Boot        │
              │    Controllers        │
              └───────────┬───────────┘
                          │
                          ▼
              ┌───────────────────────┐
              │ Service / Business    │
              │       Logic           │
              └───────────┬───────────┘
                          │
                          ▼
              ┌───────────────────────┐
              │ JPA / Hibernate ORM   │
              └───────────┬───────────┘
                          │
                          ▼
              ┌───────────────────────┐
              │       MySQL           │
              │      Database         │
              └───────────────────────┘
📂 Project Structure
student-management-system/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/student/
│   │   │       ├── controller/
│   │   │       │   ├── LoginController.java
│   │   │       │   └── StudentController.java
│   │   │       │
│   │   │       ├── model/
│   │   │       │   └── Student.java
│   │   │       │
│   │   │       ├── repository/
│   │   │       │   └── StudentRepository.java
│   │   │       │
│   │   │       ├── service/
│   │   │       │   └── StudentService.java
│   │   │       │
│   │   │       └── StudentManagementApplication.java
│   │   │
│   │   ├── resources/
│   │   │   ├── application.properties
│   │   │   └── static/
│   │   │
│   │   └── webapp/
│   │       └── WEB-INF/
│   │           └── views/
│   │               ├── login.jsp
│   │               ├── dashboard.jsp
│   │               ├── add-student.jsp
│   │               ├── update-student.jsp
│   │               └── students.jsp
│   │
│   └── test/
│
├── pom.xml
└── README.md
🗄️ Database

The application uses MySQL for storing student information.

Student Table
Field	Description
id	Unique student ID
name	Student name
age	Student age
department	Department
email	Email address
phone	Contact number
address	Student address

Example:

ID          : 1
Name        : Gowtham
Age         : 21
Department  : CSE
Email       : student@example.com
Phone       : 9876543210
Address     : Chennai
🔄 CRUD Operations

The system supports the following CRUD operations:

Create

Add a new student:

POST /api/students
Read

Get all students:

GET /api/students

Get a student by ID:

GET /api/students/{id}
Update

Update student information:

PUT /api/students/{id}
Delete

Delete a student:

DELETE /api/students/{id}
🌐 REST API Example
Add Student
{
  "name": "Gowtham",
  "age": 21,
  "department": "CSE",
  "email": "gowtham@example.com",
  "phone": "9876543210",
  "address": "Chennai"
}
Response
{
  "id": 1,
  "name": "Gowtham",
  "age": 21,
  "department": "CSE",
  "email": "gowtham@example.com",
  "phone": "9876543210",
  "address": "Chennai"
}
🔐 Authentication

The application provides login and logout functionality.

Login Flow
User
  ↓
Login Page
  ↓
Username / Password
  ↓
Authentication
  ↓
Dashboard
  ↓
Student Management

Session management is used to prevent unauthorized access to protected pages.

🚀 Installation and Setup
1. Clone the Repository
git clone YOUR_REPOSITORY_URL
cd student-management-system
2. Configure MySQL

Create a database:

CREATE DATABASE student_management;
3. Configure Database Connection

Update application.properties:

spring.datasource.url=jdbc:mysql://localhost:3306/student_management
spring.datasource.username=root
spring.datasource.password=YOUR_PASSWORD

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp

Replace YOUR_PASSWORD with your MySQL password.

4. Install Dependencies

Using Maven:

mvn clean install
5. Run the Application
mvn spring-boot:run

Or run:

StudentManagementApplication.java

from Spring Tool Suite / Eclipse.

🌐 Application URL

After starting the application:

http://localhost:8080/
🧪 Testing REST APIs

The REST APIs can be tested using:

Postman
Thunder Client
Browser
curl

Example:

curl http://localhost:8080/api/students
📊 Application Modules
1. Login Module

Handles:

User login
Session creation
Logout
Protected pages
2. Student Module

Handles:

Add student
View student
Search student
Update student
Delete student
3. REST API Module

Provides API endpoints for external applications and frontend integration.

4. Database Module

Uses MySQL with JPA/Hibernate ORM for persistent storage.

🔄 Application Workflow
             Start
               │
               ▼
          Login Page
               │
               ▼
        Authentication
          /         \
       Failed      Success
         │            │
         ▼            ▼
     Login Again   Dashboard
                      │
          ┌───────────┼───────────┐
          ▼           ▼           ▼
       Add       View/Search    Update
      Student      Students     Student
          │           │           │
          └───────────┼───────────┘
                      │
                      ▼
                  Delete
                  Student
                      │
                      ▼
                    Logout
🎓 Learning Outcomes

Through this project, the following technologies and concepts are demonstrated:

Java programming
Spring Boot application development
MVC architecture
REST API development
CRUD operations
JPA and Hibernate ORM
MySQL database integration
JSP-based web development
Session management
Maven project management
API testing using Postman
🔮 Future Enhancements

Possible future improvements include:

Student profile management
Attendance management
Marks and grade management
Faculty management
Role-based access control
Dashboard analytics
Email notifications
PDF report generation
Responsive mobile UI
Cloud deployment
JWT authentication
👨‍💻 Author

Gowtham R

Computer Science and Engineering

📜 License

This project is developed for educational and academic purposes.


Save it as **`README.md`** in your project root, alongside `pom.xml`.

If you're pushing it to GitHub afterward:

```powershell
git add README.md
git commit -m "docs: add student management system README"
git push origin main
