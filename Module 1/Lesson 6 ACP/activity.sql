CREATE TABLE IF NOT EXISTS HCompany(
CustomersName TEXT,
Products TEXT,
Orders_No INTEGER,
ExportCountries TEXT
);

INSERT INTO HCompany(CustomersName, Products, Orders_No, ExportCountries)
VALUES
('Hira', 'LipBam', 32, 'USA'),
('Amna', 'LipLiner', 333, 'US'),
('Ammama', 'EyeLiner', 169, 'Oman'),
('Maryam', 'NailPaint', 19, 'BWP'),
('Sajida', 'LipBam', 142, 'HP');

SELECT * FROM HCompany;

SELECT * FROM HCompany WHERE Products = "LipBam";

SELECT * FROM HCompany WHERE Orders_No = 169;
