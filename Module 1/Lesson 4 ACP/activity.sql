CREATE TABLE IF NOT EXISTS Hacker_News (
id INTEGER PRIMARY KEY,
title TEXT,
author TEXT,
score INTEGER,
comments INTEGER,
category TEXT,
posted_on DATE
);


INSERT INTO Hacker_News (id, title, author, score, comments, category, posted_on)
VALUES
(01, 'AI breakthrough', 'Alice', 375, 45, 'Technology', '2024-11-10'),
(02, 'Python 4.0 Released', 'Bob', 800, 100, 'Programming', '2024-11-11'),
(03, 'Cybersecurity Tips', 'Carol', 340, 60, 'Security', '2024-11-10'),
(04, 'Startup Raises 5M', 'Dave', 270, 20, 'Business', '2024-11-09'),
(05, 'New JavaScript Framework', 'Eve', 410, 80, 'Programming', '2024-11-08'),
(06, 'Quantum Computing Explained', 'Frank', 430, 55, 'Technology', '2024-11-10'),
(07, 'AI Ethics Debate', 'Grace', 250, 25, 'Technology', '2024-11-11'),
(08, 'Stock Market Update', 'Hank', 140, 18, 'Business', '2024-11-10'),
(09, 'Cloud Security Breach', 'Ivy', 390, 70, 'Security', '2024-11-09');


SELECT 
category,
COUNT(*) AS total_articles,
AVG(score) AS avg_score,
AVG(comments) AS avg_comments
FROM Hacker_News
GROUP BY category
HAVING AVG(score) > 200
ORDER BY avg_score DESC;


SELECT 
title,
author,
score,
comments,
category
FROM Hacker_News
WHERE posted_on >= '2025-11-01'
ORDER BY score DESC, comments DESC
LIMIT 1;


SELECT H1.category, H1.title, H1.author, H1.score
FROM Hacker_News H1
WHERE H1.score = (
SELECT MAX(H2.score)
FROM Hacker_News H2
WHERE H2.category = H1.category
)
ORDER BY H1.score DESC;


SELECT 
author,
SUM(score) AS total_score,
COUNT(*) AS total_articles
FROM Hacker_News
GROUP BY author
HAVING total_score > 200
ORDER BY total_score DESC;


SELECT 
category,
SUM(comments) AS total_comments
FROM Hacker_News
GROUP BY category
ORDER BY total_comments DESC;