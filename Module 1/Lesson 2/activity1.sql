CREATE TABLE IF NOT EXISTS Students(
Roll_No TEXT PRIMARY KEY,
Name TEXT,
Address TEXT,
Age INTEGER,
);

INSERT INTO Students(Roll_No, Name, Address, age)
("01", "Maryam", "BWP", "18"),
("02", "Sadia", "Sahiwal", "32"),
("03", "Babo", "Multan", "35"),
("04", "Nazia", "Lahore", "31"),
("05", "Hamna", "Dubai", "28"),

SELECT * FROM Students;