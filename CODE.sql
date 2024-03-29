CREATE database dbmsminiproject;
use dbmsminiproject;

#Create Employee table
CREATE TABLE Employee (
    empID INT PRIMARY KEY,
    emp_Username VARCHAR(50),
    Password VARCHAR(50),
    Name VARCHAR(100),
    Contact_info VARCHAR(20),
    Address VARCHAR(255),
    Sex CHAR(1),
    DOB DATE,
    Shift_time TIME
);

INSERT INTO Employee VALUES
(7010, 'john doe', 'password123', 'John Doe', '555-1234', '123 Main St, City, State', 'M', '1990-05-15', '08:00:00'),
(7011, 'jane smith', 'letmein', 'Jane Smith', '555-5678', '456 Elm St, City, State', 'F', '1988-10-20', '09:00:00'),
(7012, 'bob jackson', 'securepass', 'Bob Jackson', '555-9876', '789 Oak St, City, State', 'M', '1995-02-28', '10:00:00'),
(7013, 'alice green', 'password123', 'Alice Green', '555-4321', '321 Pine St, City, State', 'F', '1992-07-10', '08:00:00'),
(7014, 'sam wilson', 'p@ssw0rd', 'Sam Wilson', '555-8765', '654 Cedar St, City, State', 'M', '1985-12-03', '09:00:00'),
(7015, 'emily brown', 'brownie', 'Emily Brown', '555-2468', '987 Maple St, City, State', 'F', '1998-09-18', '10:00:00'),
(7016, 'michael clark', 'clarky', 'Michael Clark', '555-1357', '147 Walnut St, City, State', 'M', '1993-04-25', '08:00:00'),
(7017, 'sarah jones', 'sarah123', 'Sarah Jones', '555-3698', '369 Birch St, City, State', 'F', '1991-08-30', '09:00:00'),
(7018, 'david robinson', 'dave', 'David Robinson', '555-7890', '789 Pineapple St, City, State', 'M', '1996-11-12', '10:00:00'),
(7019, 'lisa miller', 'password', 'Lisa Miller', '555-2580', '258 Orange St, City, State', 'F', '1989-03-07', '08:00:00'),
(7020, 'adam_smith', 'adam123', 'Adam Smith', '555-1234', '123 Oak St, City, State', 'M', '1990-05-15', '08:00:00'),
(7021, 'emily_johnson', 'emily456', 'Emily Johnson', '555-5678', '456 Walnut St, City, State', 'F', '1988-10-20', '09:00:00'),
(7022, 'jacob_williams', 'jacobpass', 'Jacob Williams', '555-9876', '789 Elm St, City, State', 'M', '1995-02-28', '10:00:00'),
(7023, 'olivia_jones', 'olivia123', 'Olivia Jones', '555-4321', '321 Cedar St, City, State', 'F', '1992-07-10', '08:00:00'),
(7024, 'liam_brown', 'liam456', 'Liam Brown', '555-8765', '654 Pine St, City, State', 'M', '1985-12-03', '09:00:00'),
(7025, 'ava_miller', 'ava789', 'Ava Miller', '555-2468', '987 Maple St, City, State', 'F', '1998-09-18', '10:00:00'),
(7026, 'william_davis', 'william123', 'William Davis', '555-1357', '147 Cherry St, City, State', 'M', '1993-04-25', '08:00:00'),
(7027, 'sophia_garcia', 'sophia456', 'Sophia Garcia', '555-3698', '369 Birch St, City, State', 'F', '1991-08-30', '09:00:00'),
(7028, 'james_rodriguez', 'jamespass', 'James Rodriguez', '555-7890', '789 Pine St, City, State', 'M', '1996-11-12', '10:00:00'),
(7029, 'mia_martinez', 'mia123', 'Mia Martinez', '555-2580', '258 Elm St, City, State', 'F', '1989-03-07', '08:00:00');
select * from Employee;

#Create Pharmacy table
CREATE TABLE Pharmacy (
    PharmacyID INT PRIMARY KEY,
    Phar_name VARCHAR(100),
    Pharm_adress VARCHAR(255),
    Pharm_no VARCHAR(20),
    empID INT,
    FOREIGN KEY (empID) REFERENCES Employee(empID)
);
INSERT INTO Pharmacy (PharmacyID, Phar_name, Pharm_adress, Pharm_no, empID) VALUES
(101, 'HealthPlus', '123 Main Street', '123-456-7890', 7010),
(102, 'GreenCross', '456 Elm Street', '987-654-3210', 7011),
(103, 'OakwoodPharma', '789 Oak Street', '456-789-1230', 7012),
(104, 'MapleLeafPharmacy', '987 Maple Avenue', '789-456-0123', 7013),
(105, 'PineTreePharmacy', '654 Pine Street', '321-654-9870', 7014),
(106, 'CedarPharma', '321 Cedar Lane', '159-357-8520', 7015),
(107, 'ElmStreetPharmacy', '852 Elmwood Boulevard', '654-321-0987', 7016),
(108, 'WillowLanePharma', '456 Willow Court', '357-951-7530', 7017),
(109, 'BirchwoodPharmacy', '753 Birch Street', '258-369-1470', 7018),
(110, 'ForestHillPharma', '159 Forest Lane', '147-258-3690', 7019);

#Create Customer table
CREATE TABLE Customer (
    CustID INT PRIMARY KEY,
    cust_Username VARCHAR(50),
    Password VARCHAR(50),
    Name VARCHAR(100),
    Contact_info VARCHAR(20),
    Address VARCHAR(255),
    Sex CHAR(1),
    DOB DATE,
    Allergies VARCHAR(255)
);

INSERT INTO Customer VALUE
(5001, 'johndoe123', 'password123', 'John Smith', '555-1234', '123 Main St, Anytown, USA', 'M', '1990-05-15', 'Penicillin');
INSERT INTO Customer VALUES
(5002, 'janedoe456', 'securepass', 'Jane Johnson', '555-5678', '456 Elm St, Othertown, USA', 'F', '1985-10-20', NULL),
(5003, 'smithjoe789', '123456', 'Joe Williams', '555-9876', '789 Oak St, Anycity, USA', 'M', '1978-03-12', 'Peanuts'),
(5004, 'emilyjane', 'password123', 'Emily Brown', '555-4321', '321 Maple St, Somewhere, USA', 'F', '1995-12-28', 'Shellfish'),
(5005, 'mikebrown', 'ilovemypet', 'Mike Davis', '555-8765', '567 Pine St, Anywhere, USA', 'M', '1980-08-03', NULL),
(5006, 'amandasmith', 'password', 'Amanda Martinez', '555-6543', '654 Cedar St, Nowhere, USA', 'F', '1992-07-19', 'Dairy'),
(5007, 'chriswilliams', 'pass123', 'Chris Rodriguez', '555-5678', '789 Oak St, Anycity, USA', 'M', '1984-09-25', 'Aspirin'),
(5008, 'laurajohnson', 'laura123', 'Laura Hernandez', '555-9876', '321 Maple St, Somewhere, USA', 'F', '1976-11-08', NULL),
(5009, 'robertbrown', 'brown123', 'Robert Lopez', '555-2345', '567 Pine St, Anywhere, USA', 'M', '1998-02-14', 'Ibuprofen'),
(5010, 'sarahmiller', 'miller456', 'Sarah Gonzalez', '555-6789', '654 Cedar St, Nowhere, USA', 'F', '1989-06-30', NULL),
(5011, 'michaelthomas', 'mike123', 'Michael Wilson', '555-8765', '123 Main St, Anytown, USA', 'M', '1982-04-17', 'Sulfa drugs'),
(5012, 'rachelgreen', 'friends', 'Rachel Lee', '555-5432', '456 Elm St, Othertown, USA', 'F', '1993-08-22', 'Latex'),
(5013, 'davidjones', 'david456', 'David Taylor', '555-3210', '789 Oak St, Anycity, USA', 'M', '1975-01-05', 'Gluten'),
(5014, 'jenniferlee', 'password', 'Jennifer Moore', '555-0123', '321 Maple St, Somewhere, USA', 'F', '1991-09-10', NULL),
(5015, 'kevinwhite', 'kevin123', 'Kevin Clark', '555-4567', '567 Pine St, Anywhere, USA', 'M', '1987-11-29', 'Soy'),
(5016, 'ameliabrown', 'amelia456', 'Amelia Hall', '555-7890', '654 Cedar St, Nowhere, USA', 'F', '1996-03-07', NULL),
(5017, 'williamtaylor', 'will123', 'William Allen', '555-2345', '123 Main St, Anytown, USA', 'M', '1983-07-14', 'Eggs'),
(5018, 'lindasmith', 'linda456', 'Linda King', '555-5678', '456 Elm St, Othertown, USA', 'F', '1990-02-18', 'Shellfish'),
(5019, 'jasonmiller', 'jason123', 'Jason Wright', '555-8901', '789 Oak St, Anycity, USA', 'M', '1979-05-03', 'Lactose'),
(5020, 'nataliejones', 'password', 'Natalie Hill', '555-2109', '321 Maple St, Somewhere, USA', 'F', '1984-12-11', 'Peanuts');


#Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    invoice_date DATE,
    order_type VARCHAR(50),
    order_total_amount DECIMAL(10, 2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(CustID)
);

INSERT INTO Orders (order_id, invoice_date, order_type, order_total_amount, customer_id) VALUES
(3001, '2024-03-01', 'Online', 150.00, 5001),
(3002, '2024-03-02', 'In-store', 200.00, 5005),
(3003, '2024-03-03', 'Online', 75.00, 5002),
(3004, '2024-03-04', 'Online', 300.00, 5007),
(3005, '2024-03-05', 'In-store', 100.00, 5010),
(3006, '2024-03-06', 'Online', 250.00, 5003),
(3007, '2024-03-07', 'Online', 180.00, 5015),
(3008, '2024-03-08', 'In-store', 90.00, 5009),
(3009, '2024-03-09', 'Online', 120.00, 5012),
(3010, '2024-03-10', 'Online', 160.00, 5004),
(3011, '2024-03-11', 'Online', 220.00, 5019),
(3012, '2024-03-12', 'In-store', 180.00, 5017),
(3013, '2024-03-13', 'Online', 90.00, 5006),
(3014, '2024-03-14', 'Online', 300.00, 5014),
(3015, '2024-03-15', 'In-store', 150.00, 5008),
(3016, '2024-03-16', 'Online', 200.00, 5020),
(3017, '2024-03-17', 'Online', 120.00, 5013),
(3018, '2024-03-18', 'In-store', 80.00, 5018),
(3019, '2024-03-19', 'Online', 100.00, 5001),
(3020, '2024-03-20', 'Online', 180.00, 5016);


#Create Supplier Company table
CREATE TABLE Supplier_Company (
    comp_id INT PRIMARY KEY,
    comp_name VARCHAR(100),
    comp_address VARCHAR(255),
    comp_contact VARCHAR(20),
    PharmacyID INT,
    FOREIGN KEY (PharmacyID) REFERENCES Pharmacy(PharmacyID)
);

INSERT INTO Supplier_Company VALUES
(9901, 'ABC Pharmaceuticals', '123 Main St, City, State', '555-1234', 101),
(9902, 'XYZ Medical Supplies', '456 Elm St, City, State', '555-5678', 102),
(9903, 'MediCo Solutions', '789 Oak St, City, State', '555-9876', 103),
(9904, 'HealthPro Inc.', '321 Pine St, City, State', '555-4321', 104),
(9905, 'PharmaTech Ltd.', '654 Cedar St, City, State', '555-8765', 105),
(9906, 'Global Health Supplies', '987 Maple St, City, State', '555-2468', 106),
(9907, 'VitaCare Pharmaceuticals', '147 Walnut St, City, State', '555-1357', 107),
(9908, 'MediSupply Co.', '369 Birch St, City, State', '555-3698', 108),
(9909, 'LifeLine Medical Equipment', '789 Pineapple St, City, State', '555-7890', 109),
(9910, 'HealthFirst Supplies', '258 Orange St, City, State', '555-2580', 110);


#Create PurchaseInvoice table
CREATE TABLE PurchaseInvoice (
    purchase_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    expiry_date DATE,
    Batch_no VARCHAR(50),
    total_qty INT,
    total_amount DECIMAL(10, 2),
    retail_price INT,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO PurchaseInvoice VALUES
(8001, 'Paracetamol', '2024-12-31', 'PARA001', 100, 5.00, 500.00, 3001),
(8002, 'Ibuprofen', '2025-01-31', 'IBUP002', 150, 8.00, 1200.00, 3002),
(8003, 'Amoxicillin', '2025-02-28', 'AMOX003', 200, 10.00, 2000.00, 3003),
(8004, 'Aspirin', '2025-03-31', 'ASPN004', 120, 6.00, 720.00, 3004),
(8005, 'Omeprazole', '2025-04-30', 'OMPRZ005', 80, 15.00, 1200.00, 3005),
(8006, 'Loratadine', '2025-05-31', 'LORT006', 110, 12.00, 1320.00, 3006),
(8007, 'Simvastatin', '2025-06-30', 'SIMVA007', 90, 20.00, 1800.00, 3007),
(8008, 'Metformin', '2025-07-31', 'METF008', 70, 18.00, 1260.00, 3008),
(8009, 'Prednisone', '2025-08-31', 'PRED009', 100, 25.00, 2500.00, 3009),
(8010, 'Ciprofloxacin', '2025-09-30', 'CIPRO001', 130, 30.00, 3900.00, 3010),
(8011, 'Diazepam', '2025-10-31', 'DIAZ011', 160, 22.00, 3520.00, 3011),
(8012, 'Fluoxetine', '2025-11-30', 'FLUO012', 180, 28.00, 5040.00, 3012),
(8013, 'Gabapentin', '2025-12-31', 'GABA013', 140, 35.00, 4900.00, 3013),
(8014, 'Atorvastatin', '2026-01-31', 'ATOR014', 200, 20.00, 4000.00, 3014),
(8015, 'Hydrochlorothiazide', '2026-02-28', 'HCTZ015', 110, 18.00, 1980.00, 3015),
(8016, 'Amlodipine', '2026-03-31', 'AMLO016', 90, 16.00, 1440.00, 3016),
(8017, 'Levothyroxine', '2026-04-30', 'LEVO017', 120, 10.00, 1200.00, 3017),
(8018, 'Metoprolol', '2026-05-31', 'METO018', 150, 24.00, 3600.00, 3018),
(8019, 'Warfarin', '2026-06-30', 'WARF019', 170, 27.00, 4590.00, 3019),
(8020, 'Insulin', '2026-07-31', 'INSU020', 190, 50.00, 9500.00, 3020);

#Create Attendance table - WEAK ENTITY (NO PRIMARY KEY)
CREATE TABLE Attendance (
date DATE,
employee_id INT,
time_in TIME,
time_out TIME,
status VARCHAR(50),
FOREIGN KEY (employee_id) REFERENCES Employee(empID)
);

ALTER TABLE Attendance 
drop PRIMARY KEY;


INSERT INTO Attendance VALUES
('2024-03-28', 7010, '08:00:00', '17:00:00', 'present'),
('2024-03-28', 7011, '08:30:00', '17:30:00', 'present'),
('2024-03-28', 7012, '09:00:00', '18:00:00', 'present'),
('2024-03-28', 7013, NULL, NULL, 'absent'),
('2024-03-28', 7014, NULL, NULL, 'absent'),
('2024-03-28', 7015, '08:15:00', '17:15:00', 'present'),
('2024-03-28', 7016, '09:30:00', '18:30:00', 'present'),
('2024-03-28', 7017, NULL, NULL, 'absent'),
('2024-03-28', 7018, '08:45:00', '17:45:00', 'present'),
('2024-03-28', 7019, '09:15:00', '18:15:00', 'present'),
('2024-03-28', 7020, '08:10:00', '17:10:00', 'present'),
('2024-03-28', 7021, '09:20:00', '18:20:00', 'present'),
('2024-03-28', 7022, NULL, NULL, 'absent'),
('2024-03-28', 7023, '08:20:00', '17:20:00', 'present'),
('2024-03-28', 7024, NULL, NULL, 'absent'),
('2024-03-28', 7025, '08:40:00', '17:40:00', 'present'),
('2024-03-28', 7026, '09:10:00', '18:10:00', 'present'),
('2024-03-28', 7027, '08:05:00', '17:05:00', 'present'),
('2024-03-28', 7028, NULL, NULL, 'absent'),
('2024-03-28', 7029, NULL, NULL, 'absent');

#Create Medication table to keep a track of all the medicines provided by suppliers
CREATE TABLE Medicine_info (
    Medication_no INT PRIMARY KEY,
    Med_name VARCHAR(100),
    Ingredients VARCHAR(100),
    Diagnose VARCHAR(100),
    Quantity_supplied INT,
    Amount DECIMAL(10,2),
    Comp_id INT,
    Brand_name varchar(30),
    FOREIGN KEY (comp_id) REFERENCES Supplier_Company(comp_id)
);

INSERT INTO Medicine_info VALUES
(2001, 'Paracetamol', 'Acetaminophen', 'Fever', 100, 10.00, 9901, 'ParaCure'),
(2002, 'Paracetamol', 'Acetaminophen', 'Fever', 150, 15.00, 9902, 'ParaRelief'),
(2003, 'Paracetamol', 'Acetaminophen', 'Fever', 200, 20.00, 9903, 'ParaCare'),
(2004, 'Ibuprofen', 'Ibuprofen', 'Pain and Inflammation', 120, 12.00, 9904, 'IbuRelief'),
(2005, 'Ibuprofen', 'Ibuprofen', 'Pain and Inflammation', 80, 8.00, 9905, 'IbuComfort'),
(2006, 'Amoxicillin', 'Amoxicillin', 'Bacterial Infections', 110, 11.00, 9906, 'AmoxiMed'),
(2007, 'Amoxicillin', 'Amoxicillin', 'Bacterial Infections', 90, 9.00, 9907, 'AmoxiCare'),
(2008, 'Aspirin', 'Aspirin', 'Pain and Heart Health', 70, 7.00, 9908, 'AspiCare'),
(2009, 'Aspirin', 'Aspirin', 'Pain and Heart Health', 100, 10.00, 9909, 'AspiRelief'),
(2010, 'Omeprazole', 'Omeprazole', 'Acid Reflux', 130, 13.00, 9910, 'OmepraGuard'),
(2011, 'Omeprazole', 'Omeprazole', 'Acid Reflux', 150, 15.00, 9901, 'OmepraRelief'),
(2012, 'Loratadine', 'Loratadine', 'Allergies', 180, 18.00, 9902, 'LoraClear'),
(2013, 'Loratadine', 'Loratadine', 'Allergies', 90, 9.00, 9903, 'LoraRelief'),
(2014, 'Simvastatin', 'Simvastatin', 'Cholesterol', 160, 16.00, 9905, 'SimvaStat'),
(2015, 'Simvastatin', 'Simvastatin', 'Cholesterol', 140, 14.00, 9906, 'SimvaCare'),
(2016, 'Metformin', 'Metformin', 'Diabetes', 200, 20.00, 9907, 'Metabeta'),
(2017, 'Metformin', 'Metformin', 'Diabetes', 120, 12.00, 9908, 'Metabex'),
(2018, 'Prednisone', 'Prednisone', 'Inflammatory Conditions', 100, 10.00, 9909, 'PredniCare'),
(2019, 'Prednisone', 'Prednisone', 'Inflammatory Conditions', 110, 11.00, 9910, 'PredniRelief'),
(2020, 'Ciprofloxacin', 'Ciprofloxacin', 'Bacterial Infections', 140, 14.00, 9902, 'CiproMed');

#Create Sale invoice table
CREATE TABLE Sale_invoice (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    total_products INT,
    total_price DECIMAL(10, 2),
    product_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(CustID),
    FOREIGN KEY (product_id) REFERENCES Inventory (product_id)
);

INSERT INTO Sale_invoice (sale_id, customer_id, total_products, total_price, product_id) VALUES
(10001, 5001, 3, 150.00, 8801),
(10002, 5002, 2, 100.00, 8802),
(10003, 5003, 4, 200.00, 8803),
(10004, 5004, 1, 50.00, 8804),
(10005, 5005, 3, 180.00, 8805),
(10006, 5006, 2, 120.00, 8806),
(10007, 5007, 5, 250.00, 8807),
(10008, 5008, 1, 60.00, 8808),
(10009, 5009, 4, 190.00, 8809),
(10010, 5010, 2, 110.00, 8810);

#Create Inventory table
CREATE TABLE Inventory (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    products_in_total INT,
    Medication_no INT,
    FOREIGN KEY (Medication_no) REFERENCES Medicine_info(Medication_no)
);

INSERT INTO Inventory VALUES
(8801, 'Paracetamol', 50, 2001),
(8802, 'Aspirin', 75, 2002),
(8803, 'Amoxicillin', 60, 2003),
(8804, 'Ibuprofen', 40, 2004),
(8805, 'Lisinopril', 55, 2005),
(8806, 'Metformin', 70, 2006),
(8807, 'Atorvastatin', 65, 2007),
(8808, 'Levothyroxine', 45, 2008),
(8809, 'Prednisone', 80, 2009),
(8810, 'Omeprazole', 90, 2010);

#RELATED QUERRIES !!!!

#task 1: Select sales transactions for a specific drug:
SELECT * FROM sale_Invoice WHERE product_id = '8805';

#task 2: Find the maximum and minimum no. of drug from the inventory:
SELECT MAX(products_in_total) FROM Inventory;
SELECT MIN(products_in_total) FROM Inventory;

#task 3: Select the top 5 customers who spent the most on purchases:
select customer_id,total_qty,total_amount,retail_price,rank() over(order by retail_price desc) 
from PurchaseInvoice as PI join Orders as O on PI.order_id = O.order_id
limit 5;

#task 4: Select the top 5 customers who spent the least on purchases:
select customer_id,total_qty,total_amount,retail_price,rank() over(order by retail_price asc) 
from PurchaseInvoice as PI join Orders as O on PI.order_id = O.order_id
limit 5;

#task 5: find the information of those employees whose name start with the letter j: 
select * from Employee where Name like 'j%';

#task 6: inserting a new drug in the inventory: 
INSERT INTO Inventory value(8811,'Alerid',45,2015);

#task 7: finding the information on the employee that works in health plus : 
SELECT E.empID, emp_Username, Password, Name, Contact_info, Address, Sex, DOB, Shift_time 
FROM Employee AS E JOIN Pharmacy as P 
ON E.empID = P.empID
WHERE phar_name = 'HealthPlus';

#task 8: calculate the number of online and in store orders :
SELECT order_type, COUNT(*) AS order_count
FROM Orders
GROUP BY order_type;

#task 9: Find the names and addresses of all customers who ordered products with quantities greater than 50.
SELECT c.Name, c.Address,o.order_total_amount
FROM Customer AS c JOIN Orders AS o ON c.CustID = o.customer_id
WHERE o.order_total_amount > 50;

#task 10: Retrieve the names and addresses of all suppliers who are associated with the pharmacy named "GreenCross".
SELECT s.comp_name, s.comp_address
FROM Supplier_Company as s JOIN Pharmacy as p 
ON s.PharmacyID = p.PharmacyID
WHERE p.Phar_name = 'GreenCross';

#task 11: Provide a list of all the customers who are prone to some kind of allergies.
SELECT Name, Allergies
FROM Customer
WHERE Allergies IS NOT NULL;

#task 12: Provide the names of all those brands that sell the provide the medicine paraceamol.
select Med_name,Brand_name from Medicine_info where Med_name = 'Paracetamol';

#task 13: give me the batch and corresponding names of all those medicines that will be useless by the third month of the year 2025.
SELECT p.Batch_no, p.product_name AS Med_name
FROM PurchaseInvoice AS p
WHERE p.expiry_date < '2025-03-31';

#task 14: Retrieve data of all the employees
select * from Employee;

#task 15: find all the employees who start their shift at exactly 8 am in the morning 
select * from Employee where Shift_time = '08:00:00';

#task 16: find the customer that has the maximum orders through online transactions
SELECT C.Name, COUNT(O.order_id) 
AS Online_Order_Count
FROM Customer AS C
JOIN Orders AS O ON C.CustID = O.customer_id
WHERE O.order_type = 'Online'
GROUP BY C.Name;

#task 17: name of all the employees that were present on 2024-03-28
select * from Employee AS E JOIN Attendance AS A
ON E.empID = A.employee_id
WHERE status = 'present';

#task 18: Give a list of all the male customers who have order total amount more than 100 and have ordered online 
select Name, Contact_info, Address ,Sex,order_type
FROM Customer as c JOIN Orders as o 
ON c.custID = o.customer_id
where Sex = 'M'
AND order_type = 'Online';

#task 19: Name of all the medicines present id the database whose nam start with the letter P 
select * from Medicine_info 
where med_name like 'P%';

#task 20: Give the name of the eployee working in and which company provides medicines to the PharmacyID 109.
SELECT * FROM Employee WHERE empID 
IN (SELECT empID FROM Pharmacy WHERE PharmacyID 
IN (SELECT PharmacyID FROM Supplier_company WHERE PharmacyID = 109));

#task 21: provide the complete information of medicines that can be bought if a person has  cholestrol
select * from Medicine_info
where Diagnose = 'Cholesterol'
limit 1;

#task 22: which medicine to give to a person suffereing from bacterial infection
select * from Medicine_info
where Diagnose = 'Bacterial Infections';
