CREATE TABLE Students (
studentID int,
Name varchar(255),
Address varchar(255),
City varchar(255),
Country varchar(255)
);

INSERT INTO Students(studentID, Name, Address, City, Country) VALUES (01, "Maryam", "M.C", "BWP", "Pakistan");
INSERT INTO Students(studentID, Name, Address, City, Country) VALUES (02, "Mala", "M.C", "BWP", "Pakistan");
INSERT INTO Students(studentID, Name, Address, City, Country) VALUES (03, "Mrya", "DHA", "Lahore", "Pakistan");

SELECT * FROM Students;

SELECT studentID,Name,City FROM Students;