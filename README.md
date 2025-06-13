<div align="center">
<img src="https://media.giphy.com/media/qgQUggAC3Pfv687qPC/giphy.gif" width="250" />

<h1>🚀 ITI Examination & Business Intelligence System</h1>

<p>
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=22&duration=3000&pause=1000&color=36BCF7&center=true&width=600&lines=Comprehensive+Database+Solution;Advanced+Business+Intelligence;Full-Stack+Examination+System;Data+Warehouse+%26+ETL+Pipeline" alt="Typing SVG" />
</p>

<p>
  <img src="https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SQL Server"/>
  <img src="https://img.shields.io/badge/T--SQL-00758F?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="T-SQL"/>
  <img src="https://img.shields.io/badge/SSIS-FF6C37?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SSIS"/>
  <img src="https://img.shields.io/badge/SSRS-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SSRS"/>
  <img src="https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=power-bi&logoColor=black" alt="Power BI"/>
  <img src="https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white" alt="Tableau"/>
</p>

<p>
  <img src="https://img.shields.io/badge/Status-🔥_Active_Development-ff6b6b?style=for-the-badge" alt="Status"/>
  <img src="https://img.shields.io/badge/Team-5_Developers-4ecdc4?style=for-the-badge" alt="Team"/>
  <img src="https://img.shields.io/badge/Progress-75%25-45b7d1?style=for-the-badge" alt="Progress"/>
</p>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif">

</div>

## 🎯 Project Overview

<div align="center">
<img src="https://media.giphy.com/media/26tn33aiTi1jkl6H6/giphy.gif" width="400"/>
</div>

> **Building the Future of Educational Management** 🌟

This project represents a **revolutionary end-to-end solution** designed to transform how the Information Technology Institute (ITI) manages its academic operations. We're not just building a database - we're crafting a complete ecosystem that handles everything from student registration to advanced business intelligence.

---

## 🏗️ System Architecture & ERD

<div align="center">
<img src="https://media.giphy.com/media/3oKIPEqDGUULpEU0aQ/giphy.gif" width="300"/>

### Our Multi-Layered Architecture

```mermaid
graph TB
    A[🌐 Website Interface] --> B[📊 Power BI Dashboards]
    A --> C[🎨 Tableau Visualizations]
    B --> D[📋 SSRS Reports]
    C --> D
    D --> E[🔄 SSIS Integration]
    E --> F[🏢 Data Warehouse DWH]
    F --> G[⚙️ Stored Procedures]
    G --> H[🗄️ Database Creation]
    H --> I[🗺️ ERD & Mapping]
    
    style A fill:#ff6b6b,stroke:#fff,stroke-width:3px,color:#fff
    style B fill:#4ecdc4,stroke:#fff,stroke-width:3px,color:#fff
    style C fill:#45b7d1,stroke:#fff,stroke-width:3px,color:#fff
    style D fill:#96ceb4,stroke:#fff,stroke-width:3px,color:#fff
    style E fill:#feca57,stroke:#fff,stroke-width:3px,color:#fff
    style F fill:#ff9ff3,stroke:#fff,stroke-width:3px,color:#fff
    style G fill:#54a0ff,stroke:#fff,stroke-width:3px,color:#fff
    style H fill:#5f27cd,stroke:#fff,stroke-width:3px,color:#fff
    style I fill:#00d2d3,stroke:#fff,stroke-width:3px,color:#fff
```

### 🎯 Our Complete Technology Stack

| Layer | Technology | Status | Description |
|-------|------------|--------|-------------|
| 🗺️ **ERD Design** | Draw.io | ✅ Complete | Entity Relationship Diagram & Database Design |
| 🗺️ **Mapping** | SQL Server | ✅ Complete | Table Relations & Foreign Key Constraints |
| 🏗️ **Database Creation** | T-SQL Scripts | ✅ Complete | Full Database Implementation with 25+ Tables |
| ⚙️ **Stored Procedures** | T-SQL | ✅ Complete | 70+ Procedures for CRUD & Business Logic |
| 🏢 **Data Warehouse** | SQL Server | 🔄 In Progress | Star Schema Design & Implementation |
| 🔄 **SSIS Integration** | SQL Server Integration Services | 🔄 In Progress | ETL Pipelines & Data Migration |
| 📋 **SSRS Reports** | SQL Server Reporting Services | 🔄 In Progress | 15+ Professional Reports |
| 📊 **20+ Dashboards** | Power BI & Tableau | 🔄 In Progress | Interactive Business Intelligence |
| 📈 **Power BI** | Microsoft Power BI | 🔄 In Progress | Executive & Operational Dashboards |
| 🎨 **Tableau Desktop** | Tableau | 🔄 In Progress | Advanced Data Visualizations |
| 🌐 **Website Interface** | ASP.NET Core / React | 📋 Planned | Modern Web Application |
</div>

---

## 📊 Database Schema Deep Dive

### 🗂️ Core Tables Breakdown

<details>
<summary>🎓 <strong>Student Management Tables</strong></summary>

| Table | Key Fields | Description |
|-------|------------|-------------|
| **👨‍🎓 Student** | `St_ID`, `St_Fname`, `St_Lname`, `Email` | Complete student profiles with validation |
| **📚 Course** | `Crs_ID`, `Crs_Name`, `Duration` | Course catalog and details |
| **🏃‍♂️ Track** | `Track_ID`, `Track_Name`, `SuperV_Inst` | Academic tracks with supervision |
| **🏢 Branch** | `Branch_ID`, `Branch_Name`, `Location` | Institute branch management |

</details>

<details>
<summary>👨‍🏫 <strong>Instructor & Teaching Tables</strong></summary>

| Table | Key Fields | Description |
|-------|------------|-------------|
| **👨‍🏫 Instructor** | `Inst_ID`, `Inst_Name`, `Salary`, `Degree` | Faculty management system |
| **🔗 Inst_Crs** | `Inst_ID`, `Crs_ID` | Instructor-Course assignments |
| **📅 Inst_Events** | `Inst_ID`, `Event_ID` | Event participation tracking |

</details>

<details>
<summary>📝 <strong>Examination System Tables</strong></summary>

| Table | Key Fields | Description |
|-------|------------|-------------|
| **📋 Exam** | `Exam_ID`, `Exam_Type`, `Start_Time` | Comprehensive exam management |
| **❓ Questions** | `Ques_ID`, `Question`, `Crs_ID` | Question bank with categorization |
| **✅ St_Answer** | `St_ID`, `Ques_ID`, `St_Answer` | Student response tracking |
| **🎯 St_Grade** | `St_ID`, `Exam_ID`, `Grade` | Grade management system |

</details>

---

## ⚙️ Powerful Database Procedures

### 🛠️ Core System Functions

<details>
<summary>🎲 <strong>Exam Generation System</strong></summary>

```sql
-- 🎯 Smart Exam Generation
EXEC dbo.genrate_exam @CourseID = 101, @ExamType = 'Final'

-- 📝 Student Exam Assignment  
EXEC dbo.assign_Exam @StudentID = 1001, @ExamID = 5001

-- 📊 Grade Calculation
EXEC dbo.getresult @StudentID = 1001, @ExamID = 5001
```

</details>

<details>
<summary>📈 <strong>Advanced Reporting Suite</strong></summary>

- 📚 **Course Topics Report**: `GetTopicsByCourse` ✅
- 👥 **Students by Track**: Advanced filtering and sorting 🔄
- 🎓 **Student Grade Analytics**: Complete academic history 🔄  
- 👨‍🏫 **Instructor Workload**: Teaching load analysis 🔄
- 📋 **Student Answer Sheet**: Detailed exam responses 🔄

</details>

---

## 🗺️ Project Roadmap

### Phase Progress Tracker

```
Phase 1: Database Design        ████████████████████ 100% ✅
Phase 2: Implementation         ████████████████████ 100% ✅  
Phase 3: Data Population        ████████████████████ 100% ✅
Phase 4: Core Procedures        ████████████████████ 100% ✅
Phase 5: BI & Reporting         ████████████░░░░░░░░  75% 🔄
Phase 6: Application Dev        ████░░░░░░░░░░░░░░░░  25% 🔄
```

### 🚀 Upcoming Features

- 🏢 **Data Warehouse Design** - Star schema implementation
- 🔄 **SSIS ETL Packages** - Automated data pipelines  
- 📊 **Power BI Dashboards** - 20+ interactive reports
- 🎨 **Tableau Visualizations** - Executive dashboards
- 💻 **Desktop Application** - C# WinForms interface
- 🌐 **Web Application** - Modern web interface

---
## 🌟 Meet Our Legendary Team

<div align="center">
<h2>🔥 The Code Warriors 🔥</h2>

<table>
<tr>

<!-- Moataz Elmesmary -->
<td align="center">
<div style="position: relative;">
<img src="https://github.com/user-attachments/assets/6a71e465-798f-4f07-8df9-aaec157664e6" width="120px" height="120px" style="border-radius: 50%; border: 4px solid #ff6b6b; box-shadow: 0 0 20px rgba(255, 107, 107, 0.5); object-fit: cover; display: block; margin: auto;"/>
<br />
<img src="https://media.giphy.com/media/WUlplcMpOCEmTGBtBW/giphy.gif" width="30"/>
<br />
<sub><b>🔥 Moataz Elmesmary</b></sub>
<br />
<sub>BI Dev & Data Analyst</sub>
</div>
<br />
<a href="https://github.com/moataz-elmesmary">
<img src="https://img.shields.io/badge/GitHub-FF6B6B?style=for-the-badge&logo=github&logoColor=white" />
</a>
<br />
<a href="https://linkedin.com/in/moataz-elmesmary">
<img src="https://img.shields.io/badge/LinkedIn-FF6B6B?style=for-the-badge&logo=linkedin&logoColor=white" />
</a>
</td>

<!-- Omar Elqersh -->
<td align="center">
<div style="position: relative;">
<img src="https://avatars.githubusercontent.com/u/2?v=4" width="120px" height="120px" style="border-radius: 50%; border: 4px solid #4ecdc4; box-shadow: 0 0 20px rgba(78, 205, 196, 0.5); object-fit: cover; display: block; margin: auto;"/>
<br />
<img src="https://media.giphy.com/media/26tn33aiTi1jkl6H6/giphy.gif" width="30"/>
<br />
<sub><b>⚡ Omar Elqersh</b></sub>
<br />
<sub>BI Dev & Data Analyst</sub>
</div>
<br />
<a href="https://github.com/omar-elqersh">
<img src="https://img.shields.io/badge/GitHub-4ECDC4?style=for-the-badge&logo=github&logoColor=white" />
</a>
<br />
<a href="https://linkedin.com/in/omar-elqersh">
<img src="https://img.shields.io/badge/LinkedIn-4ECDC4?style=for-the-badge&logo=linkedin&logoColor=white" />
</a>
</td>

<!-- Ahmed Mekky -->
<td align="center">
<div style="position: relative;">
<img src="https://avatars.githubusercontent.com/u/3?v=4" width="120px" height="120px" style="border-radius: 50%; border: 4px solid #45b7d1; box-shadow: 0 0 20px rgba(69, 183, 209, 0.5); object-fit: cover; display: block; margin: auto;"/>
<br />
<img src="https://media.giphy.com/media/ZVik7pBtu9dNS/giphy.gif" width="30"/>
<br />
<sub><b>💎 Ahmed Mekky</b></sub>
<br />
<sub>BI Dev & Data Analyst</sub>
</div>
<br />
<a href="https://github.com/ahmed-mekky">
<img src="https://img.shields.io/badge/GitHub-45B7D1?style=for-the-badge&logo=github&logoColor=white" />
</a>
<br />
<a href="https://linkedin.com/in/ahmed-mekky">
<img src="https://img.shields.io/badge/LinkedIn-45B7D1?style=for-the-badge&logo=linkedin&logoColor=white" />
</a>
</td>

<!-- Abdelrahman Hisham -->
<td align="center">
<div style="position: relative;">
<img src="https://avatars.githubusercontent.com/u/4?v=4" width="120px" height="120px" style="border-radius: 50%; border: 4px solid #96ceb4; box-shadow: 0 0 20px rgba(150, 206, 180, 0.5); object-fit: cover; display: block; margin: auto;"/>
<br />
<img src="https://media.giphy.com/media/3oKIPEqDGUULpEU0aQ/giphy.gif" width="30"/>
<br />
<sub><b>🎯 Abdelrahman Hisham</b></sub>
<br />
<sub>BI Dev & Data Analyst</sub>
</div>
<br />
<a href="https://github.com/abdelrahman-hisham">
<img src="https://img.shields.io/badge/GitHub-96CEB4?style=for-the-badge&logo=github&logoColor=white" />
</a>
<br />
<a href="https://linkedin.com/in/abdelrahman-hisham">
<img src="https://img.shields.io/badge/LinkedIn-96CEB4?style=for-the-badge&logo=linkedin&logoColor=white" />
</a>
</td>

<!-- Seif Salah -->
<td align="center">
<div style="position: relative;">
<img src="https://avatars.githubusercontent.com/u/5?v=4" width="120px" height="120px" style="border-radius: 50%; border: 4px solid #feca57; box-shadow: 0 0 20px rgba(254, 202, 87, 0.5); object-fit: cover; display: block; margin: auto;"/>
<br />
<img src="https://media.giphy.com/media/l46Cy1rHbQ92uuLXa/giphy.gif" width="30"/>
<br />
<sub><b>🌟 Seif Salah</b></sub>
<br />
<sub>BI Dev & Data Analyst</sub>
</div>
<br />
<a href="https://github.com/seif-salah">
<img src="https://img.shields.io/badge/GitHub-FECA57?style=for-the-badge&logo=github&logoColor=white" />
</a>
<br />
<a href="https://linkedin.com/in/seif-salah">
<img src="https://img.shields.io/badge/LinkedIn-FECA57?style=for-the-badge&logo=linkedin&logoColor=white" />
</a>
</td>

</tr>
</table>

<br />

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=18&pause=1000&color=FF6B6B&center=true&width=435&lines=Together+We+Code%2C+Together+We+Conquer!" width="300">

<br />

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif">

### 🎉 Thank You for Visiting!


<img src="https://media.giphy.com/media/26u4lOMA8JKSnL9Uk/giphy.gif" width="200"/>

**Made with ❤️ by the ITI Dream Team**

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=18&duration=2000&pause=1000&color=36BCF7&center=true&width=500&lines=Star+⭐+if+you+love+our+work!;Fork+🍴+to+contribute!;Follow+👀+for+updates!" alt="Typing SVG" />

![Footer](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=12&height=150&section=footer)

</div>
