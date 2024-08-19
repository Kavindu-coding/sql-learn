SELECT * 
FROM employee;

SELECT last_name, manager_ID 
FROM employee;

SELECT last_name, manager_ID        
FROM employee
WHERE last_name = 'Hanson' ;    /* single quotes mean case sensitive */

SELECT * 
FROM employee 
WHERE last_name IN ('Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson');

SELECT * 
FROM employee 
WHERE last_name NOT IN ('Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson');

SELECT last_name, manager_ID   
FROM employee
WHERE manager_ID > 5 ;

SELECT first_name , last_name, manager_ID    /* Returns records starting with word 'Bu' */
FROM employee                                /* '%' means more characters */
WHERE last_name LIKE 'Bu%' ;

SELECT first_name , last_name, manager_ID   
FROM employee
WHERE last_name LIKE '%B%' ;

SELECT first_name , last_name, manager_ID   
FROM employee
WHERE first_name LIKE 'Ann_' ;           /* '_' only one character can be changed */

/*-----------------------------*/
/* Filtering on date values */

SELECT value
FROM SYS.nls_database_parameters       /* to find out date format */
WHERE parameter = 'NLS_DATE_FORMAT' ;

SELECT *
FROM employee
WHERE hire_date = '03-OCT-2010';

SELECT *
FROM employee
WHERE hire_date <= '01-OCT-2010';

/*-----------------------------*/
/* Using two filters */

SELECT *
FROM employee
WHERE first_name = 'John' AND last_name = 'Hayes';

SELECT *
FROM employee
WHERE first_name = 'John' OR last_name = 'Foster';

/*-----------------------------*/
/* Using multiple filters */

SELECT *
FROM employee
WHERE (first_name = 'Barbara'
AND hire_date < '01-DEC-2014')
OR salary < 70000;

/*-----------------------------*/
/* Using multiple filters */

SELECT * 
FROM employee
WHERE salary IS NULL;

SELECT * 
FROM employee
WHERE salary IS NOT NULL;

/*---------------------------------------*/
/* Getting unique records with DISTINCT */

SELECT DISTINCT last_name
FROM employee;

SELECT DISTINCT last_name, department_id
FROM employee;

/*---------------------------------------*/
/* BETWEEN filter */

SELECT * 
FROM employee
WHERE hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';

SELECT * 
FROM employee
WHERE employee_id BETWEEN 10 AND 20;

SELECT * 
FROM employee
WHERE hire_date NOT BETWEEN '01-JAN-2016' AND '31-DEC-2016';

/*---------------------------------------*/
/* ALL keyword (series of AND keywords) */

SELECT * 
FROM employee
WHERE salary > ALL (30000,40000,50000);

/*---------------------------------------*/
/* ANY keyword (series of OR keywords)*/

SELECT * 
FROM employee
WHERE salary > ANY (30000,40000,50000);


