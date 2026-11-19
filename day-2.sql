USE cdg_hyb_jfs_059;

SHOW DATABASES;

SHOW TABLES;

DESCRIBE customers;

SHOW CREATE TABLE customers; 

INSERT INTO 
	customers(customers_id, first_name, last_name) 
VALUES
	(101, 'Surya', 'Duggirala');
INSERT INTO 
	customers(first_name, customers_id , last_name) 
VALUES
	('koti', 102, 'Battula');
INSERT INTO 
	customers(first_name, last_name) 
VALUES
	('Surya', 'Duggirala');
INSERT INTO 
	customers 
VALUES
	(103, 'Sai', 'Krishna');

INSERT INTO 
	customers(customers_id, first_name, last_name) 
VALUES
	(104, 'luffy', 'Monkey'), 
    (105, 'Sasuka', 'Uchiha'), 
    (106, 'Itachi', 'Uchiha');
    
UPDATE customers SET last_name='verma';

SELECT customers_id, first_name, last_name FROM customers;

DROP TABLES courses;