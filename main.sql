CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
Select FIRST_NAME AS WORKER_NAME from Worker;
SELECT DISTINCT DEPARTMENT
FROM Worker;
SELECT substring(first_name,1,3)
FROM Worker;
SELECT DISTINCT length(department)
FROM Worker;
SELECT *
FROM Worker
ORDER BY first_name ASC, department DESC;
SELECT *
FROM Worker
WHERE department LIKE 'Admin%';
SELECT *
FROM Worker
WHERE salary BETWEEN 100000 AND 500000;
SELECT concat(first_name, ' ', last_name) AS WORKER_NAME, salary
From Worker
WHERE salary between 500000 and 1000000;
SELECT * FROM Worker
WHERE MOD(Worker_ID, 2) = 0;
SELECT * FROM Worker
WHERE year(joining_date) = 2014 and month(joining_date) = 2;