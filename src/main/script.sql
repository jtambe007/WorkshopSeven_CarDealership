-- Create dealerships table
CREATE TABLE Dealerships (
  dealership_id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (dealership_id),
  name VARCHAR(255),
  address VARCHAR(255),
  phone VARCHAR(255)
);

INSERT INTO Dealerships (name, address, phone) VALUES
  ('ABC Dealership', '123 Main Street', '980-1234'),
  ('XYZ Motors', '456 Elm Avenue', '807-5678'),
  ('Sunset Autos', '789 Oak Boulevard', '651-9012'),
  ('City Cars', '321 Pine Lane', '555-3456'),
  ('Golden Wheels', '654 Cedar Road', '316-7890');

-- Create vehicles table
CREATE TABLE Vehicles (
  VIN VARCHAR(17) NOT NULL,
  PRIMARY KEY (VIN),
  SOLD BOOLEAN
  year INT,
  make VARCHAR(255),
  model VARCHAR(255),
  price INT
);

INSERT INTO Vehicles (VIN, SOLD, year, make, model, price) VALUES
  ('1HGCM82633A123456', FALSE, 2022, 'Honda', 'Accord', 25000),
  ('2G1WF52K3Y123457', TRUE, 2015, 'Chevrolet', 'Impala', 15000),
  ('3VW2K7AJ5EM123458', FALSE, 2014, 'Volkswagen', 'Jetta', 12000),
  ('KNADM4A3XF1234596', FALSE, 2015, 'Kia', 'Rio', 10000),
  ('1FADP3K23FL123461', TRUE, 2020, 'Ford', 'Focus', 18000);

-- Create inventory table
CREATE TABLE Inventory (
  dealership_id INT,
  VIN VARCHAR(17),
  FOREIGN KEY (dealership_id) REFERENCES Dealerships(dealership_id),
  FOREIGN KEY (VIN) REFERENCES Vehicles(VIN),
  PRIMARY KEY (dealership_id, VIN)
);

INSERT INTO Inventory (dealership_id, VIN) VALUES
  (1, '1HGCM82633A123456'),
  (1, '2G1WF52K3Y123457'),
  (2, '3VW2K7AJ5EM123458'),
  (3, 'KNADM4A3XF1234596'),
  (4, '1FADP3K23FL123461');

-- Create sales contracts table
CREATE TABLE Sales_contracts (
  id INT NOT NULL AUTO_INCREMENT,
  VIN VARCHAR(17),
  FOREIGN KEY (VIN) REFERENCES Vehicles(VIN),
  PRIMARY KEY (id)
);
INSERT INTO Sales_contracts (VIN) VALUES
  ('1HGCM82633A123456'),
  ('3VW2K7AJ5EM123458'),
  ('1FADP3K23FL123461'),
  ('2G1WF52K3Y123457'),
  ('KNADM4A3XF1234596');

-- Create lease contracts table
CREATE TABLE lease_contracts (
  id INT NOT NULL AUTO_INCREMENT,
  VIN VARCHAR(17),
  FOREIGN KEY (VIN) REFERENCES Vehicles(VIN),
  PRIMARY KEY (id)
);

INSERT INTO lease_contracts (VIN) VALUES
  ('1HGCM82633A123456'),
  ('3VW2K7AJ5EM123458'),
  ('1FADP3K23FL123461'),
  ('2G1WF52K3Y123457'),
  ('KNADM4A3XF1234596');