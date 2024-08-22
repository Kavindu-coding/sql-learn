SELECT *
FROM employee
ORDER BY last_name;      /*Ascending is the default order*/

SELECT *
FROM employee
ORDER BY last_name ASC;

SELECT *
FROM employee
ORDER BY last_name DESC;

SELECT *
FROM employee
ORDER BY salary DESC;

SELECT *
FROM employee
ORDER BY hire_date DESC;

/*-----------------------------*/
/* Order by multiple columns */

SELECT *
FROM employee
ORDER BY last_name ASC, first_name ASC;

SELECT *
FROM employee
ORDER BY hire_date ASC, employee_id DESC;

SELECT *
FROM employee
ORDER BY last_name ASC, hire_date ASC, first_name ;

