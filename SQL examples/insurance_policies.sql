--  9. Insurance Policy Register

USE cdg_hyb_jfs_059;

CREATE TABLE insurance_policies (
    policy_id INT,
    policy_number VARCHAR(14),
    policyholder_name VARCHAR(120),
    policy_type VARCHAR(20),
    coverage_amount INT,
    premium_amount INT,
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    payment_frequency VARCHAR(20),
    nominee_name VARCHAR(120),
    policy_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE insurance_policies;
SHOW CREATE TABLE insurance_policies;
INSERT INTO insurance_policies VALUES
(1, 'POL00000000001', 'Aditi Rao', 'HEALTH', 1000000, 18000, '2026-01-01', '2026-12-31', 'ANNUAL', 'Rohan Rao', 'ACTIVE', '2026-11-19'),
(2, 'POL00000000002', 'Dev Kapoor', 'VEHICLE', 800000, 22000, '2026-04-15', '2027-04-14', 'QUARTERLY', NULL, 'ACTIVE', '2026-11-19');
INSERT INTO insurance_policies (policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, nominee_name, policy_status, created_at)
VALUES
(3, 'POL00000000003', 'Meera Nair', 'LIFE', 5000000, 36000, '2026-06-01', '2046-05-31', 'ANNUAL', 'Arun Nair', 'ACTIVE', '2026-11-19');
INSERT INTO insurance_policies VALUES
(4, 'POL00000000004', 'Kabir Shah', 'TRAVEL', 500000, 4500, '2026-10-01', '2026-10-31', 'MONTHLY', NULL, 'ACTIVE', '2026-11-19'),
(5, 'POL00000000005', 'Test Policyholder', 'HOME', 2000000, 15000, '2025-01-01', '2025-12-31', 'ANNUAL', NULL, 'CANCELLED', '2026-11-19');

UPDATE restaurants
SET rating_x10 = 45
WHERE restaurant_code = 'RES-BLR-001';
UPDATE restaurants
SET average_cost_for_two = ROUND(average_cost_for_two * 1.10)
WHERE city = 'Mumbai';
UPDATE restaurants
SET rating_x10 = 40,
    vegetarian_only = 1
WHERE restaurant_code = 'RES-HYD-004';
UPDATE restaurants
SET seating_capacity = seating_capacity + 10
WHERE opening_status = 'OPEN'
AND seating_capacity < 60;
UPDATE restaurants
SET rating_x10 = 55
WHERE restaurant_code = 'RES-BLR-001';

SELECT restaurant_code, restaurant_name, rating_x10
FROM restaurants
WHERE restaurant_code = 'RES-BLR-001';

SELECT * FROM restaurants
WHERE restaurant_code = 'RES-OLD-005';
DELETE FROM restaurants
WHERE restaurant_code = 'RES-OLD-005';
INSERT INTO restaurants VALUES (
    6,
    'RES-TEMP-999',
    'Temporary Restaurant',
    'Indian',
    'Hyderabad',
    '9876601099',
    30,
    600,
    40,
    0,
    'OPEN',
    '2026-11-19',
    '2026-11-19'
);
DELETE FROM restaurants
WHERE restaurant_code = 'RES-TEMP-999';
SELECT * FROM restaurants
WHERE opening_status = 'OPEN'
AND rating_x10 < 41;DELETE FROM restaurants
WHERE opening_status = 'OPEN'
AND rating_x10 < 41;

SELECT 
    policy_id,
    policy_number,
    policyholder_name,
    policy_type,
    coverage_amount,
    premium_amount,
    start_date,
    end_date,
    payment_frequency,
    nominee_name,
    policy_status,
    created_at
FROM
    insurance_policies;

