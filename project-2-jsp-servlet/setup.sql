-- Create the database
CREATE DATABASE IF NOT EXISTS employeedb;
USE employeedb;

-- Create users table for login
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

-- Create employee table
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DOUBLE NOT NULL
);

-- Insert sample users
INSERT INTO users (username, password) VALUES ('admin', 'prabha@123');

-- Insert sample employees
INSERT INTO employee (name, department, salary) VALUES 
('John Doe', 'IT', 50000),
('Jane Smith', 'HR', 45000),
('Bob Johnson', 'Finance', 55000);

-- Grant privileges to root user
GRANT ALL PRIVILEGES ON employeedb.* TO 'root'@'localhost' IDENTIFIED BY 'prabha@123';
FLUSH PRIVILEGES;
