# Crime Database Management System

## Overview
This project implements a crime database management system using **Oracle APEX Application Builder**. It includes full **CRUD functionality** (Create, Read, Update, Delete) for managing crime and event records. Security features such as password hashing and role-based access control have been implemented to protect sensitive user data.

---

## Features

### User Management
- User registration and login implemented with encrypted passwords using **PL/SQL hashing functions**.
- Automatic password encryption via triggers for data integrity.
- User roles: Administration and Contribution rights with controlled access.

### Crime & Event Management
- Master-detail pages for **crime records** including associated events.
- Automatic **crime ID generation** using sequences and triggers.
- Forms for inserting, updating, and deleting crime and event records.
- Pop-up LOVs (List of Values) for status selection.

### Application Functionality
- **Dynamic actions** for interactive UI elements.
- Validation and reset/create buttons for user roles.
- Home page includes **bar chart visualization** showing crime distribution by city.

### Database
- Implemented using **Oracle DB** with PL/SQL, SQL, and Application Builder.
- Tables include `USERR`, `CRIME`, `EVENT`, `USER_LOGIN_INFO`, and related entities.
- Ensures data integrity with triggers, sequences, and validation rules.

---

## Technologies
- **Oracle APEX Application Builder**
- **PL/SQL, SQL**
- **Application Builder Forms**
- Data visualization using APEX chart components

---

## Usage
1. Open the Oracle APEX workspace.
2. Import the application and run.
3. Use the master-detail pages to manage crime and event records.
4. Explore home page visualizations to analyze crime by city.

---

## Security
- Passwords are hashed and stored securely.
- Role-based access control implemented for administration and contribution rights.

---

## Author
**Kaushik Gupta** – Database Systems Student  
Email: kaushikgupta108@gmail.com
