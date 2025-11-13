CREATE TABLE IF NOT EXISTS NOMNOM(
NAME TEXT,
NEIGHBOURHOOD TEXT,
CUISINE TEXT,
REVIEW REAL,
PRICE TEXT,
HEALTH TEXT
);

INSERT INTO NOMNOM(NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE, HEALTH)
VALUES
('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'Pizza', 4, '$$$', 'B'),
('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$$', 'A'),
('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

SELECT * FROM NOMNOM;

SELECT DISTINCT NEIGHBOURHOOD FROM NOMNOM;

SELECT DISTINCT CUISINE FROM NOMNOM;

SELECT * FROM NOMNOM WHERE CUISINE = "Chinese";

SELECT * FROM NOMNOM WHERE REVIEW >= 4;

SELECT * FROM NOMNOM WHERE CUISINE = "Italian" AND PRICE = "$$$";

SELECT * FROM NOMNOM WHERE NAME LIKE "%Candy%";

SELECT * FROM NOMNOM WHERE NEIGHBOURHOOD IN ("Midtown", "Downtown", "Chinatown");

SELECT * FROM NOMNOM ORDER BY REVIEW DESC LIMIT 4;