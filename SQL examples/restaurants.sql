-- 8. Restaurant Directory

USE cdg_hyb_jfs_059;

CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_code VARCHAR(12),
    restaurant_name VARCHAR(120),
    cuisine_type VARCHAR(80),
    city VARCHAR(80),
    phone VARCHAR(15),
    seating_capacity INT,
    average_cost_for_two INT,
    rating_x10 INT,
    vegetarian_only INT,
    opening_status VARCHAR(25),
    opened_date VARCHAR(10),
    created_at VARCHAR(10)
);
DESCRIBE restaurants;
INSERT INTO restaurants VALUES (
    1,
    'RES-BLR-001',
    'Spice Courtyard',
    'Indian',
    'Bengaluru',
    '9876601001',
    80,
    1200,
    44,
    0,
    'OPEN',
    '2018-06-15',
    '2026-11-19'
);
INSERT INTO restaurants VALUES
(
    2,
    'RES-CHE-002',
    'Green Banana Leaf',
    'South Indian',
    'Chennai',
    '9876601002',
    60,
    700,
    46,
    1,
    'OPEN',
    '2020-02-10',
    '2026-11-19'
),
(
    3,
    'RES-MUM-003',
    'Coastal Plate',
    'Seafood',
    'Mumbai',
    '9876601003',
    100,
    1800,
    42,
    0,
    'OPEN',
    '2017-09-21',
    '2026-11-19'
);
INSERT INTO restaurants (
    restaurant_id,
    restaurant_code,
    restaurant_name,
    cuisine_type,
    city,
    phone,
    seating_capacity,
    average_cost_for_two,
    rating_x10,
    vegetarian_only,
    opening_status,
    opened_date,
    created_at
)
VALUES (
    4,
    'RES-HYD-004',
    'Urban Bowl',
    'Fusion',
    'Hyderabad',
    '9876601004',
    45,
    950,
    0,
    0,
    'OPEN',
    '2026-01-12',
    '2026-11-19'
);
INSERT INTO restaurants VALUES (
    5,
    'RES-OLD-005',
    'Training Cafe',
    'Cafe',
    'Pune',
    '9876601005',
    20,
    400,
    20,
    0,
    'PERMANENTLY_CLOSED',
    '2015-05-01',
    '2026-11-19'
);
SELECT * FROM restaurants;

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
AND rating_x10 < 41;
DELETE FROM restaurants
WHERE opening_status = 'OPEN'
AND rating_x10 < 41;