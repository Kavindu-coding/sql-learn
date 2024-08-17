SELECT * 
FROM employee;

SELECT last_name, manager_ID 
FROM employee;

SELECT last_name, manager_ID        
FROM employee
WHERE last_name = 'Hanson' ;    /* single quotes mean case sensitive */

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


