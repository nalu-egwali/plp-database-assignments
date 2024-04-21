-- create the database
CREATE DATABASE UniversityDB;

-- switch context to the UniversityDB database
USE UniversityDB;

-- create the students table with its attributes
CREATE TABLE Students (
	StudentID INT PRIMARY KEY,
    FirstName VARCHAR (50),
    LASTNAME VARCHAR (50),
    Age INT,
    Major VARCHAR (50)
    );

-- Insert some records into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES (1, 'James', 'Manager', 23, 'CSC');
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES (2, 'Ama', 'West', 20, 'PHY');
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES (3, 'Chuks', 'Mark', 30, 'CSC');
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES (4, 'Anson', 'Great', 33, 'CHM');
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES (5, 'John', 'Harmony', 25, 'CSC');

-- Modify the students table to add GPA column
ALTER TABLE Students ADD GPA DECIMAL;

-- Update the GPA column for the existing records
UPDATE Students SET GPA = 3.25 WHERE StudentID = 1;
UPDATE Students SET GPA = 3.9 WHERE StudentID = 2;
UPDATE Students SET GPA = 4.2 WHERE StudentID = 3;
UPDATE Students SET GPA = 3.25 WHERE StudentID = 4;
UPDATE Students SET GPA = 4.0 WHERE StudentID = 5;

-- rename the students table to enrolled Students
RENAME TABLE Students to EnrolledStudents;

-- create the courses table
CREATE TABLE Courses (
	CourseID INT PRIMARY KEY,
    CourseName VARCHAR (100),
    Instructor VARCHAR (100),
    Credits INT
    );

-- Insert  records into the courses table
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) VALUES (1, 'CSC 110', 'John Paul', 3);
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) VALUES (2, 'PHY 111', 'James Doe', 3);
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) VALUES (3, 'CHM 121', 'Main Paul', 3);
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) VALUES (4, 'CSC 115', 'Jean Kelvin', 3);

-- Drop the enrolled students table from the studentsDB
DROP TABLE enrolledstudents;

 
