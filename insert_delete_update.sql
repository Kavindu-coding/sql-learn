/*=========================*/
/*  INSERT */

/*
    No need to specify all columns
    Missed columns get a NULL value
*/

INSERT INTO employee (employee_id, first_name, last_name, department_id)
VALUES (300, 'John', 'Smith', 3);

SELECT * FROM employee
WHERE employee_id = 300;

INSERT INTO employee (employee_id, first_name, last_name, department_id, salary, manager_id, hire_date)
VALUES (301, 'MARGE', 'Abbot', 3,31000,51,'04-JAN-2017');

SELECT * FROM employee
WHERE employee_id = 301;

INSERT ALL
INTO employee (employee_id, first_name, last_name, department_id) VALUES(303, 'Mark', 'Spencer',4)
INTO employee (employee_id, first_name, last_name, department_id) VALUES(304, 'Simone', 'Fletcher',4)
INTO employee (employee_id, first_name, last_name, department_id) VALUES(305, 'Alison', 'Smith',4)
SELECT * FROM dual;

SELECT * FROM employee
WHERE employee_id IN (303,304,305);

/*=========================*/
/*  INSERT data from another table */

/*
    INSERT INTO target_table(columns)
    SELECT(columns) FROM source_table
*/

SELECT first_name, last_name 
FROM customer 
WHERE customer_id =1 ;

INSERT INTO employee(employee_id, first_name, last_name)
SELECT 250, first_name, last_name
FROM customer
WHERE customer_id =1 ;

SELECT * 
FROM employee
WHERE employee_id = 250;

/*=========================*/
/*  UPDATE data */

/*
    UPDATE table
    SET col1 = val1,
    col2 = val2
    [WHERE condition]
    
    if no WHERE clause all the data will be updated
*/

SELECT * 
FROM employee
WHERE employee_id = 85;

UPDATE employee
SET salary = salary +10000
WHERE employee_id = 85;

UPDATE employee
SET salary = salary + 100000
WHERE employee_id = 85;

SELECT * 
FROM employee
WHERE employee_id IN (102,59,16);

UPDATE employee
SET manager_id = 30,
salary = salary + 5000
WHERE employee_id IN (102,59,16);

/*=========================*/
/*  DELETE data */

/*
    DELETE FROM table [WHERE consition];
    
    WHERE is optional. But if not WHERE condition,
    all the rows will be deleted
    No columns are needed, entire row is deleted
*/

SELECT * 
FROM employee;

SELECT * 
FROM employee
WHERE employee_id = 250;

DELETE FROM employee
WHERE employee_id = 250;

DELETE FROM employee
WHERE last_name = 'Larson';

/*=========================*/
/*  COMMIT and ROLLBACK */

/*
    COMMIT = save your changes
    ROLLBACK = close without saving
    
    INSERT, UPDATE, DELETE can be all rolled backed or commited
*/

INSERT INTO product (product_id, product_name, price, department_id)
VALUES(12, 'Large Table', 225.50,2);

SELECT * 
FROM product;

COMMIT;

INSERT INTO product (product_id, product_name, price, department_id)
VALUES(13, 'Red Chair', 52,6);

ROLLBACK;


/*=========================*/
/*  Truncating data */

/*
    Similar to DELETE without the WHERE clause
    Does not allow to roll back 
    Commits the changes instantly
    Faster in large tables
*/

SELECT * 
FROM customer_order

TRUNCATE TABLE customer_order;






















