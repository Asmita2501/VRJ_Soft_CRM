
# VRJ Soft CRM

**VRJ Soft CRM** is a web-based Customer Relationship Management (CRM) system built using Java, JSP, Servlets, and MySQL. It is designed to help businesses efficiently manage client interactions, daily tasks, financial entries, and internal communication through a structured admin-employee interface.

---

## 🚀 Features

### 🔐 Login
- Secure login system for Admin and Employees
- Role-based dashboard access

### 👨‍💼 Admin Functionalities
- Track user activity logs
- Create and assign service tickets
- View and approve day plans
- Create new user accounts
- Manage financial records (Profit & Loss via Day Book)

### 👩‍💻 Employee Functionalities
- Manage client enquiries and registrations
- Follow-up on client leads
- Record client and employee payments
- Vendor registration for procurement
- Day plan task entry
- Petty cash expense entry

---

## 🛠️ Tech Stack

| Layer         | Technology        |
|---------------|-------------------|
| Frontend      | JSP, HTML, CSS    |
| Backend       | Java Servlets     |
| Database      | MySQL             |
| Server        | Apache Tomcat     |
| IDE           | NetBeans / Eclipse|

---

## 🗃️ Database Structure

- `users` – Stores login credentials and roles  
- `clients` – Stores client information  
- `leads` – Tracks sales leads  
- `tickets` – Logs service tickets  
- `payments` – Tracks employee and client payments  
- `vendors` – Stores vendor details  
- `daybook` – Financial profit/loss records  

---

## 📸 Screenshots

(Add screenshots of login page, dashboard, forms, etc.)

---

## 📦 How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/vrj-soft-crm.git

2.Open the project in NetBeans or Eclipse
3.Set up MySQL database and import the provided .sql file (if available)
4.Configure JDBC connection in your code (username, password, DB name)
5.Deploy project on Apache Tomcat server
6.Run the project on http://localhost:8080/vrj-soft-crm
   

## Status

✅ Project completed

🧪 Tested locally
🛠️ Can be enhanced with Spring Boot, REST APIs, or deployment to cloud


## Future Improvements

Role-based user permissions (Manager, Sales Executive, Support)
Data export to PDF or Excel
Email/SMS notifications
Modern UI using Bootstrap or React
Real-time notifications and calendar

## Author

Asmita Khatavkar
Final Year Student
Java Full-Stack Enthusiast

## Linkedin profile
www.linkedin.com/in/asmita-khatavkar-b1a1bb242

## 📜 License

This project is for educational purposes only.

