CREATE TABLE IF NOT EXISTS SALESMAN(
Salesman_id TEXT PRIMARY KEY,
Name TEXT,
City TEXT,
Comission REAL
);

INSERT INTO SALESMAN(Salesman_id, Name, City, Comission)
VALUES
('5001', 'James Hoog', 'New York', 0.15),
('5002', 'Nail Knite', 'Paris', 0.13),
('5005', 'Pit Alex', 'London', 0.11),
('5006', 'Mc Lyon', 'Paris', 0.14),
('5007', 'Paul Adam', 'Rome', 0.13),
('5003', 'Lauson Hen', 'San Jose', 0.12);

CREATE TABLE IF NOT EXISTS CUSTOMER(
Customer_id TEXT,
CustomerName TEXT PRIMARY KEY,
City TEXT,
Grade INTEGER,
Salesman_id TEXT
);

INSERT INTO CUSTOMER(Customer_id, CustomerName, City, Grade, Salesman_id)
VALUES
('3002', 'nick rimando', 'new york', 100, '5001'),
('3007', 'brad davis', 'new york', 200, '5001'),
('3005', 'graham zusi', 'california', 200, '5002'),
('3008', 'julian green', 'london', 300, '5002'),
('3004', 'fabian johnson', 'paris', 300, '5006'),
('3009', 'geoff cameron', 'berlin', 100, '5003'),
('3003', 'jozy altidor', 'moscow', 200, '5007'),
('3001', 'brad guzan', 'london', NULL, '5005');

CREATE TABLE IF NOT EXISTS Orders(
Order_No TEXT PRIMARY KEY,
Purch_AMT REAL,
Order_Date TEXT,
Customer_id TEXT,
Salesman_id TEXT,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);

INSERT INTO Orders(Order_No, Purch_AMT, Order_Date, Customer_id, Salesman_id)
VALUES
('70001', 150.5, '2012-10-05', '3005', '5002'),
('70009', 270.65, '2012-09-10', '3001', '5001'),
('70002', 65.26, '2012-10-05', '3002', '5003'),
('70004', 110.5, '2012-08-17', '3009', '5007'),
('70007', 948.5, '2012-09-10', '3005', '5005'),
('70005', 2400.6, '2012-07-27', '3007', '5006');

SELECT CUSTOMER.CustomerName, SALESMAN.Name, SALESMAN.City
FROM CUSTOMER
JOIN SALESMAN ON CUSTOMER.City = SALESMAN.City;

SELECT CUSTOMER.CustomerName, SALESMAN.Name
FROM CUSTOMER
JOIN SALESMAN ON CUSTOMER.Saleman_id = SALESMAN.Saleman_id;

SELECT Orders.Order_No, CUSTOMER.CustomerName, Orders.Customer_id, Orders.Salesman_id
FROM Orders
JOIN CUSTOMER ON Orders.Customer_id = CUSTOMER.Customer_id
JOIN SALESMAN ON Orders.Salesman_id = SALESMAN.Salesman_id
WHERE CUSTOMER.City <> SALESMAN.City;

