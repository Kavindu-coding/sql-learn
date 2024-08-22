/* -----------------------------------------------------------------*/
/*UNION operator (Removes duplicates when joining)*/

SELECT first_name, last_name
FROM employee
UNION
SELECT first_name, last_name
FROM customer;

SELECT 'Employee' , first_name, last_name
FROM employee
UNION
SELECT 'Customer' , first_name, last_name
FROM customer;

SELECT 'Employee' , first_name, last_name
FROM employee
UNION
SELECT 'Customer' , first_name, last_name
FROM customer
ORDER BY last_name;

/* -----------------------------------------------------------------*/
/*UNION ALL operator (Keeps duplicates when joining)*/

SELECT first_name, last_name
FROM employee
UNION ALL
SELECT first_name, last_name
FROM customer;

/* -----------------------------------------------------------------*/
/*INTERSECT operator*/

SELECT first_name, last_name
FROM employee
INTERSECT
SELECT first_name, last_name
FROM customer;

/* -----------------------------------------------------------------*/
/*Minus operator (Query 1 - Query 2)*/

SELECT first_name, last_name
FROM employee
MINUS
SELECT first_name, last_name
FROM customer;

/* -----------------------------------------------------------------*/
/*Three or more sets and Once*/
/* Query1 UNION query2 UNIO query3 */

SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
INTERSECT 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000;

SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION
(SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
INTERSECT 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000)
MINUS
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 31000 AND 33000;







