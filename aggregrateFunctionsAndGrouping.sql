/* ------------------------------------------------------ */
/* COUNT function (to count data) */

SELECT COUNT (*)    /* number of records in the table*/
FROM employee;

SELECT COUNT (1)    /* same as COUNT (*) */
FROM employee;

SELECT COUNT(*)
FROM customer_order;

SELECT COUNT(*)
FROM customer_order;

SELECT COUNT(*) 
FROM employee
WHERE first_name = 'Barbara';

SELECT COUNT(salary)
FROM employee;

SELECT COUNT(DISTINCT last_name)
FROM employee;

/* ------------------------------------------------------ */
/* GROUP BY function (to count per value) */

SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name;

SELECT department_id, COUNT(*)
FROM product
GROUP BY department_id;

/* ------------------------------------------------------ */
/* GROUP BY function (with WHERE and WHERE) */

SELECT last_name, COUNT(*)
FROM employee
WHERE last_name LIKE 'B%'       /* Count of names staring with letter B */
GROUP BY last_name;

SELECT salary, COUNT(*)
FROM employee
WHERE salary > 100000
GROUP BY salary;

SELECT salary, COUNT(*)
FROM employee
WHERE salary > 100000
GROUP BY salary
ORDER BY COUNT(*) ASC;

SELECT last_name, COUNT(*)
FROM employee
WHERE last_name LIKE 'B%'       /* Count of names staring with letter B */
GROUP BY last_name
ORDER BY COUNT(*) ASC;


/* ------------------------------------------------------ */
/* GROUP BY with multiple columns */

SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id;

SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id
ORDER BY last_name;

SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id
ORDER BY COUNT(*) DESC;

SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name   /* When the first name is equal second name is used to order */
ORDER BY first_name, last_name;  

SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;

SELECT first_name, last_name, department_id, COUNT(*)
FROM employee
GROUP BY first_name, last_name, department_id
ORDER BY COUNT(*) DESC;



/* ------------------------------------------------------ */
/* GROUP BY with HAVING */

SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name       /* HAVING is used to filter records after grouping */
HAVING COUNT(*) > 1;

SELECT first_name , last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
HAVING COUNT(*)>1;


/* ------------------------------------------------------ */
/* SUM function */

SELECT SUM(salary)
FROM employee;

SELECT SUM(price)
FROM product;

SELECT department_id, SUM(salary)
FROM employee
GROUP BY department_id
ORDER BY SUM(salary) DESC;

/* ------------------------------------------------------ */
/* MAX and MIN functions */

SELECT MAX(salary)
FROM employee;

SELECT MIN(salary)
FROM employee;

SELECT MAX(salary), MIN(salary)
FROM employee;

SELECT department_id, MAX(salary)
FROM employee         /* Max salary per department */
GROUP BY department_id;

SELECT department_id, MIN(salary)
FROM employee         /* minimum salary per department */
GROUP BY department_id;

SELECT MIN(hire_date)
FROM employee;       /* Earliest */

SELECT MAX(hire_date)   /* Latest */
FROM employee;

SELECT MAX(last_name)   /* alphabetical order */
FROM employee;

/* ------------------------------------------------------ */
/* AVG Function (finding average) */
SELECT AVG(salary)
FROM employee;

SELECT department_id, AVG(salary)
FROM employee
GROUP BY department_id;

SELECT department_id, AVG(salary)
FROM employee
GROUP BY department_id
ORDER BY AVG(salary);






