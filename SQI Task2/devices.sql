USE cdg_hyb_jfs_059;

CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date DATE,
    purchase_price DECIMAL(12,2),
    warranty_expiry DATE,
    last_maintenance_at DATETIME,
    maintenance_cost DECIMAL(10,2),
    device_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE devices;
INSERT INTO devices VALUES
(1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop', 'LAPTOP', 'Lenovo', 'ThinkPad E14', '2026-01-15', 78000.50, '2029-01-14', '2026-10-10 10:30:00', 1500.00, 'ASSIGNED', NOW());
INSERT INTO devices VALUES
(2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop', 'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10', 62000.00, '2028-08-09', '2026-09-15 11:00:00', 900.50, 'AVAILABLE', NOW()),
(3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet', 'TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05', 68000.75, '2028-03-04', '2026-10-20 12:00:00', 500.00, 'AVAILABLE', NOW());
INSERT INTO devices VALUES
(4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router', 'ROUTER', 'Cisco', 'RV340', '2024-06-20', 28000.00, '2027-06-19', '2026-11-01 09:15:00', 2500.75, 'REPAIR', NOW()),
(5, 'AST-PHN-005', 'SN-PHN-260005', 'Retired Phone', 'PHONE', 'Nokia', 'Test Model', '2020-01-10', 8000.00, '2021-01-09', '2025-12-10 14:00:00', 300.00, 'RETIRED', NOW());
INSERT INTO devices VALUES
(6, 'AST-LAP-006', 'SN-LAP-260006', 'Design Laptop', 'LAPTOP', 'HP', 'Pavilion 15', '2026-02-12', 56999.99, '2029-02-11', '2026-10-15 15:30:00', 1250.50, 'AVAILABLE', NOW());
INSERT INTO devices VALUES
(7, 'AST-TAB-007', 'SN-TAB-260007', 'Office Tablet', 'TABLET', 'Apple', 'iPad Air', '2026-04-20', 59900.00, '2029-04-19', '2026-11-05 10:00:00', 0.00, 'AVAILABLE', NOW());

UPDATE devices 
SET 
    device_status = 'ASSIGNED'
WHERE
    asset_tag = 'AST-DES-002';
UPDATE devices 
SET 
    device_status = 'AVAILABLE'
WHERE
    asset_tag = 'AST-RTR-004';
UPDATE devices 
SET 
    warranty_expiry = '2030-01-14'
WHERE
    asset_tag = 'AST-LAP-001';
UPDATE devices 
SET 
    purchase_price = purchase_price * 1.03
WHERE
    device_type = 'TABLET';
UPDATE devices 
SET 
    last_maintenance_at = '2026-11-15 16:45:00'
WHERE
    asset_tag = 'AST-TAB-003';
UPDATE devices 
SET 
    maintenance_cost = 1750.50
WHERE
    asset_tag = 'AST-RTR-004';

SELECT 
    *
FROM
    devices;