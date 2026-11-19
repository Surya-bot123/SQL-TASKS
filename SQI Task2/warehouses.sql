USE cdg_hyb_jfs_059;

CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    monthly_rent DECIMAL(12,2),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    opening_time TIME,
    closing_time TIME,
    last_inspection DATE,
    created_at DATETIME
);

INSERT INTO warehouses VALUES
(1, 'WH-BLR-01', 'Bengaluru Central', 'Bengaluru', 'Karnataka', 10000, 6400, 125000.50, 0, 'ACTIVE', '08:00:00', '20:00:00', '2026-10-01', '2026-11-19 09:00:00'), 
(2, 'WH-HYD-02', 'Hyderabad North', 'Hyderabad', 'Telangana', 8000, 7900, 98000.00, 1, 'ACTIVE', '07:00:00', '22:00:00', '2026-09-15', '2026-11-19 09:15:00'),
(3, 'WH-MUM-03', 'Mumbai Port Store', 'Mumbai', 'Maharashtra', 15000, 9000, 175500.75, 0, 'MAINTENANCE', '09:00:00', '18:00:00', '2026-08-20', '2026-11-19 09:30:00'), 
(4, 'WH-KOC-04', 'Kochi Cold Hub', 'Kochi', 'Kerala', 6000, 3200, 85000.25, 1, 'ACTIVE', '06:00:00', '21:00:00', '2026-10-10', '2026-11-19 09:45:00'),
(5, 'WH-PUN-05', 'Pune Distribution Hub', 'Pune', 'Maharashtra', 5000, 2500, 75000.00, 0, 'ACTIVE', '08:30:00', '19:30:00', '2026-10-25', '2026-11-19 10:00:00');
INSERT INTO warehouses VALUES
(6, 'WH-CHN-06', 'Chennai Storage Hub', 'Chennai', 'Tamil Nadu', 12000, 5500, 112750.85, 1, 'ACTIVE', '08:00:00', '20:00:00', '2026-11-01', '2026-11-19 10:15:00');
INSERT INTO warehouses VALUES
(7, 'WH-VIZ-07', 'Vizag Logistics Hub', 'Visakhapatnam', 'Andhra Pradesh', 7000, 4100, 92500.50, 0, 'ACTIVE', '06:30:00', '18:30:00', '2026-11-05', '2026-11-19 10:30:00');

UPDATE warehouses 
SET 
    occupied_units = occupied_units + 500
WHERE
    warehouse_code = 'WH-BLR-01';
UPDATE warehouses 
SET 
    occupied_units = occupied_units - 1000
WHERE
    warehouse_code = 'WH-BLR-02';
UPDATE warehouses
SET operational_status = 'ACTIVE'
WHERE warehouse_code = 'WH-MUM-03';
UPDATE warehouses 
SET 
    monthly_rent = ROUND(monthly_rent + 5.50 / 100, 2)
WHERE
    temperature_controlled = 1;
UPDATE warehouses 
SET 
    last_inspection = '2026-11-15'
WHERE
    warehouse_code = 'WH-KOC-04';
UPDATE warehouses 
SET 
    opening_time = '07:00:00',
    closing_time = '21:00:00'
WHERE
    operational_status = 'ACTIVE';

SELECT 
    *
FROM
    warehouses;
