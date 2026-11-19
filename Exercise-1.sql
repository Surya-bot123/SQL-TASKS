-- 1.Online Course Catalogue

USE cdg_hyb_jfs_059;
CREATE TABLE courses (
	course_id INT, 
    course_code VARCHAR(15), 
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee INT,
    delivery_mode VARCHAR(20),
    course_status VARCHAR(20),
    created_at VARCHAR(10)
    );
DESCRIBE courses;
SHOW CREATE TABLE courses;

INSERT INTO courses
(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at)
VALUES
(1, 'CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40, 6000, 'CLASSROOM', 'ACTIVE', '2026-11-18');


INSERT INTO courses
(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at)
VALUES
(2, 'CRS-SQL-102', 'MySQL Essentials', 'Database', 32, 4500, 'ONLINE', 'ACTIVE', '2026-11-18'),
(3, 'CRS-WEB-103', 'Responsive Web Design', 'Web Development', 28, 0, 'ONLINE', 'ACTIVE', '2026-11-18');


INSERT INTO courses
(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at)
VALUES
(4, 'CRS-TST-104', 'Software Testing Basics', 'Testing', 24, 3500, 'HYBRID', 'ACTIVE', '2026-11-18');

INSERT INTO courses
(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at)
VALUES
(5, 'CRS-OLD-105', 'Legacy Systems Overview', 'Technology', 12, 2000, 'ONLINE', 'ARCHIVED', '2026-11-18');

INSERT INTO courses
(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at)
VALUES
(6, 'CRS-PYT-106', 'Python Programming', 'Programming', 35, 5000, 'ONLINE', 'ACTIVE', '2026-11-18');

UPDATE courses SET fee = 6500 WHERE course_code = 'CRS-JAVA-101';
UPDATE courses SET fee = ROUND(fee*1/100) WHERE course_status='ACTIVE';
UPDATE courses SET course_status = 'ACTIVE', fee = 2500 WHERE course_code = 'CRS-WEB-103';
UPDATE courses SET duration_hours = duration_hours + 4 WHERE category = 'Testing';
UPDATE courses SET duration_hours = 0 WHERE course_id = 5;
SELECT course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at FROM courses 
WHERE course_id = 5;

SELECT course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at 
FROM courses WHERE course_code = 'CRS-OLD-105';
DELETE FROM courses WHERE course_code = 'CRS-OLD-105';

INSERT INTO courses VALUES(7, 'CRS-TEMP-999', 'Temporary Course', 'Programming', 10, 1000, 'ONLINE', 'ACTIVE', '2026-11-18');
SELECT course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at FROM courses
WHERE course_code = 'CRS-TEMP-999';
DELETE FROM courses WHERE course_code = 'CRS-TEMP-999';

SELECT course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at FROM courses
WHERE category = 'Testing' AND fee < 5000;
DELETE FROM courses WHERE Category = 'Testing' AND fee < 5000;

SELECT course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at
FROM courses;

DESCRIBE courses;


-- 2.Instructor Directory

USE cdg_hyb_jfs_059;
CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate INT,
    employment_type VARCHAR(20),
    is_active INT,
    joined_on VARCHAR(10),
    created_at VARCHAR(10)
);
DESCRIBE instructors;
SHOW CREATE TABLE instructors;

INSERT INTO instructors ( instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at
    )
VALUES (
    1,
    'INS-JV-001',
    'Kavya',
    'Menon',
    'kavya.menon@example.test',
    'Java',
    8,
    1500,
    'FULL_TIME',
    1,
    '2021-06-14',
    '2026-11-18'
);
INSERT INTO instructors VALUES
(2, 'INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@example.test', 'Databases', 12, 1800, 'CONTRACT', 1, '2019-02-01', '2026-11-18'),
(3, 'INS-WB-003', 'Farah', 'Ali', 'farah.ali@example.test', 'Web Development', 5, 1200, 'PART_TIME', 1, '2023-08-21', '2026-11-18');

INSERT INTO instructors VALUES
(4, 'INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@example.test', 'Software Testing', 7, 1350, 'PART_TIME', 1, '2022-01-10', '2026-11-18'),
(5, 'INS-OLD-005', 'Leela', 'Shah', 'leela.shah@example.test', 'Mainframe Systems', 25, 2000, 'CONTRACT', 0, '2010-05-17', '2026-11-18');

INSERT INTO instructors VALUES
(6, 'INS-PY-006', 'Arjun', 'Reddy', 'arjun.reddy@example.test', 'Python', 6, 1400, 'FULL_TIME', 1, '2022-09-15', '2026-11-18');

SELECT instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on, created_at
FROM instructors;

UPDATE instructors SET hourly_rate=1500 WHERE instructor_code='INS-QA-004';
UPDATE instructors SET hourly_rate= ROUND(hourly_rate*1.08) WHERE employment_type = 'CONTRACT' AND is_active = 1;
UPDATE instructors SET specialization='Full-Stack Web Development' WHERE instructor_code='INS-WB-003';
UPDATE instructors SET years_experience=years_experience+1 WHERE years_experience>50;
UPDATE instructors SET is_active = 0 WHERE instructor_code = 'INS-OLD-005' AND is_active != 0;

SELECT instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, is_active, joined_on, created_at
FROM instructors WHERE instructor_code = 'INS-OLD-005' AND is_active=0;
DELETE FROM instructors WHERE instructor_code = 'INS-OLD-005' AND is_active = 0;

INSERT INTO instructors VALUES
(7, 'INS-TEMP-99', 'Temporary', 'Instructor', 'temp@example.test', 'Java', 3, 1000, 'PART_TIME', 1, '2025-01-10', '2026-11-18');
DELETE FROM instructors
WHERE instructor_code = 'INS-TEMP-99';

SELECT instructor_id, instructor_code, first_name, last_name, employment_type, years_experience, is_active
FROM instructors WHERE employment_type='PART_TIME' AND years_experience>6 AND is_active=1;
DELETE FROM instructors WHERE employment_type = 'PART_TIME' AND years_experience > 6 AND is_active = 1;


-- 3. Warehouse Capacity Register

USE cdg_hyb_jfs_059;
CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    manager_name VARCHAR(100),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE warehouses;
SHOW CREATE TABLE warehouses;

INSERT INTO warehouses (
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    manager_name,
    temperature_controlled,
    operational_status,
    created_at
)
VALUES (
    1,
    'WH-BLR-01',
    'Bengaluru Central',
    'Bengaluru',
    'Karnataka',
    10000,
    6400,
    'Ajay Nair',
    0,
    'ACTIVE',
    '2026-11-18'
);
INSERT INTO warehouses VALUES
(2, 'WH-HYD-02', 'Hyderabad North', 'Hyderabad', 'Telangana', 8000, 7900, 'Sana Reddy', 1, 'ACTIVE', '2026-11-18'),
(3, 'WH-MUM-03', 'Mumbai Port Store', 'Mumbai', 'Maharashtra', 15000, 9000, 'Rohit Shah', 0, 'MAINTENANCE', '2026-11-18');
INSERT INTO warehouses VALUES
(4, 'WH-KOC-04', 'Kochi Cold Hub', 'Kochi', 'Kerala', 6000, 3200, 'Meera Varma', 1, 'ACTIVE', '2026-11-18'),
(5, 'WH-OLD-05', 'Training Closed Store', 'Pune', 'Maharashtra', 2000, 0, 'Test Manager', 0, 'CLOSED', '2026-11-18');
INSERT INTO warehouses VALUES
(6, 'WH-CHN-06', 'Chennai Storage Hub', 'Chennai', 'Tamil Nadu', 12000, 7500, 'Arun Kumar', 1, 'ACTIVE', '2026-11-18');
SELECT warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, manager_name, temperature_controlled, operational_status, created_at
FROM warehouses;

UPDATE warehouses SET occupied_units = occupied_units + 500 WHERE warehouse_code = 'WH-BLR-01';
UPDATE warehouses SET occupied_units=occupied_units - 1000 WHERE warehouse_code = 'WH-HYD-02';
UPDATE warehouses SET operational_status='ACTIVE' WHERE warehouse_code='WH-MUM-03';
UPDATE warehouses SET capacity_units = capacity_units + 1000 WHERE temperature_controlled = 1;
UPDATE warehouses SET capacity_units = capacity_units + 500 WHERE warehouse_code = 'WH-BLR-01';
SELECT warehouse_id, warehouse_code, warehouse_name, capacity_units, occupied_units FROM warehouses WHERE warehouse_code = 'WH-BLR-01';

SELECT warehouse_id, warehouse_code, warehouse_name, city, state, operational_status
FROM warehouses WHERE warehouse_code = 'WH-OLD-05' AND operational_status = 'CLOSED';
DELETE FROM warehouses WHERE warehouse_code = 'WH-OLD-05' AND operational_status = 'CLOSED';

INSERT INTO warehouses VALUES
(7, 'WH-TMP-99', 'Temporary Warehouse', 'Hyderabad', 'Telangana', 5000, 0, 'Temporary Manager', 0, 'ACTIVE', '2026-11-18');
SELECT warehouse_id, warehouse_code, warehouse_name, city, capacity_units, occupied_units
FROM warehouses WHERE warehouse_code = 'WH-TMP-99';
DELETE FROM warehouses WHERE warehouse_code = 'WH-TMP-99';

SELECT warehouse_id, warehouse_code, warehouse_name, capacity_units, occupied_units, operational_status
FROM warehouses WHERE operational_status = 'ACTIVE' AND occupied_units < capacity_units / 2;

SELECT warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, manager_name, temperature_controlled, operational_status
FROM warehouses;
DESCRIBE warehouses;





