/*
                                MYSQL SYNTAX THAT I USE
CREATE TABLE departments(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    credits INT NOT NULL,
    professor_quantity INT
);

CREATE TABLE professors(
    p_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    major VARCHAR(50),
    cgpa DECIMAL(4, 2) CHECK (cgpa BETWEEN 0.0 AND 10.0),
    mentor_id INT,
    FOREIGN KEY (mentor_id) REFERENCES professors(p_id),
    CONSTRAINT chk_email CHECK (email LIKE '%@%.%')
);
*/

-- Create a table called Departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    credits INT NOT NULL,
    professor_quantity INT
);

-- Create a table called Professors
CREATE TABLE professors (
    p_id INT IDENTITY(1,1) PRIMARY KEY,  -- Auto-increment
    name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create a table called Students
CREATE TABLE students (
    student_id INT IDENTITY(1,1) PRIMARY KEY,  -- Auto-increment
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    enrollment_date DATETIME DEFAULT GETDATE() NOT NULL,  -- Use DATETIME instead of TIMESTAMP
    major VARCHAR(50),
    cgpa DECIMAL(4, 2) CHECK (cgpa BETWEEN 0.0 AND 10.0),
    mentor_id INT,
    FOREIGN KEY (mentor_id) REFERENCES professors(p_id),
    CONSTRAINT chk_email CHECK (email LIKE '%@%.%')
);
