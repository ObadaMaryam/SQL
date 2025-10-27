CREATE TABLE IF NOT EXISTS Products(
Pro_id TEXT PRIMARY KEY,
Pro_Name TEXT
Pro_Price TEXT
Pro_Com TEXT
);

INSERT INTO products(Pro_id, Pro_Name, Pro_Price, Pro_Com)
VALUES
("01", "Sprite", "250", "100"),
("02", "Cola", "290", "105"),
("03", "Mint Soda", "180", "70"),
("04", "Lime Drink", "120", "90"),
("05", "Pakola", "220", "150"),

SELECT Pro_Name, Pro_Price
FROM Products
WHERE Pro_Price = (SELECT MIN(Pro_Price)
FROM Products)

SELECT Pro_Name, Pro_Price
FROM Products
WHERE Pro_Price = (SELECT MAX(Pro_Price)
FROM Products)