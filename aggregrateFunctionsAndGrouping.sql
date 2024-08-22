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

