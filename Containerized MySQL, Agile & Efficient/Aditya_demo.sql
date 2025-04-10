CREATE DATABASE Aditya;
USE Aditya;

CREATE TABLE students(
    StudentID INT NOT NULL AUTO_INCREMENT, 
    FirstName VARCHAR(100) NOT NULL,
    Surname VARCHAR(100) NOT NULL,
    PRIMARY KEY (StudentID)
);

INSERT INTO students (FirstName, Surname)
VALUES("Aditya", "Katoch"), ("Aryan", "Soni");
