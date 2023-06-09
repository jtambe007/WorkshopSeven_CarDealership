-- Get all dealerships
SELECT name FROM [Dealerships]

-- Find all vehicles for a specific dealership
SELECT * FROM [Dealerships]
JOIN Vehicles
WHERE dealerships.name = 'ABC Dealership';

-- Find a car by VIN
SELECT * FROM [Vehicles] WHERE VIN = 'KNADM4A3XF1234596';

-- Find the dealership where a certain car is located, by VIN
SELECT Vehicles.*, Dealerships.name AS dealershipName FROM [Vehicles]
JOIN Dealerships
WHERE VIN = 'KNADM4A3XF1234596';

-- Find all Dealerships that have a certain car type
SELECT Vehicles.*, Dealerships.name AS dealershipName FROM [Vehicles]
JOIN Dealerships
WHERE make = 'Kia';

-- Get all sales information for a specific dealer for a specific date range
SELECT * FROM [Vehicles]
JOIN sales_contracts
ON Vehicles.VIN = sales_contracts.VIN
WHERE SOLD = '1';