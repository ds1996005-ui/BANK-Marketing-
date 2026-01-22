USE bankdb;
SHOW TABLES;
DESCRIBE bank_marketing;
DROP TABLE bank_marketing;

CREATE TABLE bank_marketing (
    age INT,
    job VARCHAR(50),
    marital VARCHAR(20),
    education VARCHAR(30),
    balance INT,
    housing VARCHAR(10),
    loan VARCHAR(10),
    contact VARCHAR(20),
    day INT,
    month VARCHAR(10),
    duration INT,
    campaign INT,
    pdays INT,
    previous INT,
    poutcome VARCHAR(20),
    y VARCHAR(10)
);

SELECT * FROM bankmarketing LIMIT 10;
SELECT COUNT(*) FROM bankmarketing;

DESCRIBE bankmarketing;

SELECT DISTINCT job FROM bankmarketing;

SELECT age, job, balance
FROM bankmarketing;

SELECT *
FROM bankmarketing
WHERE job = 'admin.';

SELECT *
FROM bankmarketing
WHERE age > 30 AND balance > 1000;

SELECT age, job, balance
FROM bankmarketing
ORDER BY balance DESC;

SELECT age, job
FROM bankmarketing
ORDER BY age ASC;

SELECT COUNT(*) AS Total_Customers
FROM bankmarketing;

SELECT AVG(balance) AS Avg_Balance
FROM bankmarketing;
SELECT job, SUM(balance) AS Total_Balance
FROM bankmarketing
GROUP BY job;

SELECT job, SUM(balance) AS Total_Balance
FROM bankmarketing
GROUP BY job
HAVING SUM(balance) > 100000;

SELECT *
FROM bankmarketing
WHERE age BETWEEN 25 AND 40;

SELECT *
FROM bankmarketing
WHERE job LIKE 'm%';

SELECT COUNT(*) 
FROM bankmarketing
WHERE y = 'yes';

SELECT job, COUNT(*) AS Subscriptions
FROM bankmarketing
WHERE y = 'yes'
GROUP BY job;
SELECT * FROM bankmarketing LIMIT 10;
SELECT COUNT(*) FROM bankmarketing;
-- more queries

-- View data
SELECT * FROM bankmarketing LIMIT 10;

-- Count records
SELECT COUNT(*) FROM bankmarketing;

-- Filtering
SELECT * FROM bankmarketing WHERE age > 30;

-- Aggregation
SELECT job, AVG(balance)
FROM bankmarketing
GROUP BY job;

-- etc...








