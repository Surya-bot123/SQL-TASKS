-- 7. Organisation Device Register

USE cdg_hyb_jfs_059;

CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date VARCHAR(10),
    purchase_price INT,
    warranty_expiry VARCHAR(10),
    assigned_to VARCHAR(120),
    device_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE devices;
SHOW CREATE TABLE devices;

INSERT INTO devices (
    device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date,
    purchase_price, warranty_expiry, assigned_to, device_status, created_at
)
VALUES (
    1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop', 'LAPTOP', 'Lenovo', 'ThinkPad E14', '2026-01-15',
    78000, '2029-01-14', 'Kavya Menon', 'ASSIGNED', '2026-11-19'
);

INSERT INTO devices VALUES
(
    2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop', 'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10',
    62000, '2028-08-09', NULL, 'AVAILABLE', '2026-11-19'
),
(
    3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet','TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05',
    68000, '2028-03-04', NULL, 'AVAILABLE', '2026-11-19'
);
INSERT INTO devices VALUES
(
    4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router', 'ROUTER', 'Cisco', 'RV340', '2024-06-20',
    28000, NULL, 'Network Team', 'REPAIR', '2026-11-19'
),
(
    5, 'AST-OLD-005', 'SN-OLD-260005', 'Retired Phone', 'PHONE', 'Nokia', 'Test Model', '2020-01-10',
    8000, '2021-01-09', NULL, 'RETIRED', '2026-11-19'
);

INSERT INTO devices VALUES
(
    6, 'AST-MON-006', 'SN-MON-260006', 'Office Monitor', 'MONITOR', 'HP', 'P24h G5', '2026-02-12', 18000, '2029-02-11', 'Arjun Rao',
    'ASSIGNED', '2026-11-19'
);
SELECT device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, assigned_to,
device_status, created_at
FROM devices;

UPDATE devices
SET assigned_to = 'Rohan Das',
    device_status = 'ASSIGNED'
WHERE asset_tag = 'AST-DES-002';
UPDATE devices
SET device_status = 'AVAILABLE',
    assigned_to = NULL
WHERE asset_tag = 'AST-RTR-004';
UPDATE devices
SET warranty_expiry = '2030-01-14'
WHERE asset_tag = 'AST-LAP-001';
UPDATE devices
SET purchase_price = ROUND(purchase_price * 1.03)
WHERE device_type = 'TABLET';
UPDATE devices
SET warranty_expiry = '2025-01-01'
WHERE asset_tag = 'AST-LAP-001';
SELECT asset_tag, purchase_date, warranty_expiry
FROM devices
WHERE asset_tag = 'AST-LAP-001';

SELECT device_id, asset_tag, device_name, device_status
FROM devices
WHERE asset_tag = 'AST-OLD-005';
DELETE FROM devices
WHERE asset_tag = 'AST-OLD-005';
INSERT INTO devices VALUES
(
    7, 'AST-TEMP-999', 'SN-TEMP-999', 'Temporary Laptop',
    'LAPTOP', 'HP', 'ProBook', '2026-05-10',
    55000, '2029-05-09', NULL, 'AVAILABLE', '2026-11-19'
);
SELECT device_id, asset_tag, device_name
FROM devices
WHERE asset_tag = 'AST-TEMP-999';
DELETE FROM devices
WHERE asset_tag = 'AST-TEMP-999';
SELECT device_id, asset_tag, device_name,
       assigned_to, device_status, warranty_expiry
FROM devices
WHERE device_status = 'AVAILABLE'
AND assigned_to IS NULL
AND warranty_expiry IS NOT NULL;
DELETE FROM devices
WHERE device_status = 'AVAILABLE'
AND assigned_to IS NULL
AND warranty_expiry IS NOT NULL;

SELECT 
    device_id,
    asset_tag,
    serial_number,
    device_name,
    device_type,
    manufacturer,
    model,
    purchase_date,
    purchase_price,
    warranty_expiry,
    assigned_to,
    device_status,
    created_at
FROM
    devices;

