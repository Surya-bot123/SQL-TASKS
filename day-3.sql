USE cdg_hyb_jfs_059;
DROP TABLE products;
CREATE TABLE products (
    product_id INT,
    name VARCHAR(100),
    price DECIMAL
);

CREATE TABLE products (
    product_id INT,
    name VARCHAR(100),
    price DECIMAL(6, 2)
);

INSERT INTO products(product_id, name, price) VALUES (101, 'Maggie veg', 15);
INSERT INTO products(product_id, name, price) VALUES (102, 'Maggie Atta veg', 25.50);
INSERT INTO products(product_id, name, price) VALUES (103, 'Maggie Chicken', 9999.99);
INSERT INTO products(product_id, name, price) VALUES (104, 'Kissan Apple juice', 9999.999);
INSERT INTO products(product_id, name, price) VALUES (105, 'Maggie Orange Chicken', 99999.99);

SELECT 
    product_id, name, price
FROM
    products;

CREATE TABLE bookings (
    booking_id INT,
    train_no INT,
    train_name VARCHAR(50),
    date_of_journey DATE,
    depature_time TIME,
    booking_date_time DATETIME
); 
INSERT INTO bookings(booking_id, train_no, train_name, date_of_journey, depature_time, booking_date_time)
VALUES
	(101, 1234, 'Gowthami SuperFast', '2026-11-20', '05:45', '2026-11-19 10:34:55');

INSERT INTO bookings(booking_id, train_no, train_name, date_of_journey, depature_time, booking_date_time)
VALUES
	(102, 12785, 'KCG AP SF EXP', '2026-11-20', '19:05', '2026-11-19 22:34:55');
INSERT INTO bookings(booking_id, train_no, train_name, date_of_journey, depature_time, booking_date_time)
VALUES
	(103, 22692, 'SBC RAJDHANI', '2026-11-20', '17:25', '2026-11-19 14:46:20');
INSERT INTO bookings(booking_id, train_no, train_name, date_of_journey, depature_time, booking_date_time)
VALUES
	(104, 17603, 'KCG YNK EXP', '2026-11-20', '21:25', '2026-11-19');
INSERT INTO bookings(booking_id, train_no, train_name, date_of_journey, depature_time, booking_date_time)
VALUES
	(105, 18261, 'BSP YNK EXP', '2026-11-20', '06:05', NOW());
    
SELECT 
    booking_id,
    train_no,
    train_name,
    date_of_journey,
    depature_time,
    booking_date_time
FROM
    bookings;
    
SELECT CURRENT_DATE(), CURRENT_TIME(), NOW(), CURDATE(), CURTIME();

CREATE TABLE test_1(date_1 DATETIME, DATE_2 TIMESTAMP);

INSERT INTO test_1 VALUES(NOW(), NOW());

SET time_zone= '+5:30';
SELECT * FROM test_1;

SET time_zone='-05:00';
SELECT date_1, date_2 FROM test_1;

