CREATE TABLE IF NOT EXISTS Customers(
Cus_id TEXT PRIMARY KEY,
Cus_Name TEXT
Cus_Grade INTEGER
City TEXT
);

INSERT INTO Customers(Cus_id, Cus_Name, Cus_Grade, City)
VALUES
("01", "Mrya", 100, "NewYork"),
("02", "Maryam", 105, "NewYork"),
("03", "Mala", 70, "NewYork"),
("04", "Milky", 90, "NewYork"),
("05", "Mano", 150, "NewYork"),
("06", "Mamiyo", 150, "NewYork"),

SELECT * FROM Customers; 

SELECT * FROM Customers WHERE City = "NewYork" OR Grade > 100;