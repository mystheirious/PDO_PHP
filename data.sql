-- Create Customers table
CREATE TABLE Customers (
customer_id INTEGER PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
contact_number VARCHAR(15) NOT NULL,
email_address VARCHAR(100) NOT NULL
);

-- Create Optometrists table
CREATE TABLE Optometrists (
optometrist_id INTEGER PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
contact_number VARCHAR(15) NOT NULL,
email_address VARCHAR(100) NOT NULL,
license_number VARCHAR(50) NOT NULL
);

-- Create Prescriptions table
CREATE TABLE Prescriptions (
prescription_id INTEGER PRIMARY KEY,
customer_id INTEGER NOT NULL,
optometrist_id INTEGER NOT NULL,
right_eye_power DECIMAL(4, 2),
left_eye_power DECIMAL(4, 2),
eye_exam_date DATE NOT NULL,
notes TEXT
);

-- Create Appointments table
CREATE TABLE Appointments (
appointment_id INTEGER PRIMARY KEY,
customer_id INTEGER NOT NULL,
optometrist_id INTEGER NOT NULL,
appointment_date DATE NOT NULL,
status VARCHAR(50) NOT NULL
);

-- Create Products table
CREATE TABLE Products (
product_id INTEGER PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL,
price DECIMAL(10, 2) NOT NULL,
stock_quantity INTEGER NOT NULL
);

-- Create Orders table
CREATE TABLE Orders (
order_id INTEGER PRIMARY KEY,
customer_id INTEGER NOT NULL,
order_date DATE NOT NULL,
total_amount DECIMAL(10, 2) NOT NULL,
payment_method VARCHAR(50) NOT NULL,
payment_status VARCHAR(50) NOT NULL,
payment_date DATE
);

-- Create Order_Items table
CREATE TABLE Order_Items (
order_item_id INTEGER PRIMARY KEY,
order_id INTEGER NOT NULL,
product_id INTEGER NOT NULL,
quantity INTEGER NOT NULL,
unit_price DECIMAL(10, 2) NOT NULL,
total_price DECIMAL(10, 2) NOT NULL
);


-- 10 records for Customers table
INSERT INTO Customers (customer_id, first_name, last_name, contact_number,
email_address) VALUES
(1,'Adara','Manshaw','786-3175-109','amanshaw0@nmail.com'),
(2,'Mallory','Labram','331-7374-088','mlabram1@nmail.com'),
(3,'Kathe','Skeemer','281-3002-476','kskeemer2@nmail.com'),
(4,'Tedmund','Khalid','943-1055-505','tkhalid3@nmail.com'),
(5,'Kathryn','Sackett','835-7325-899','ksackett4@nmail.com'),
(6,'Pearl','Hamerton','262-7562-730','phamerton5@nmail.cn'),
(7,'Bradan','Corballis','231-4072-008','bcorballis6@nmail.com'),
(8,'Martie','Reveley','444-5726-499','mreveley7@nmail.com'),
(9,'Lillian','Ridings','800-3516-645','lridings8@nmail.com'),
(10,'York','Geertsen','613-3542-715','ygeertsen9@nmail.com');

-- 5 records for Optometrists table
INSERT INTO Optometrists (optometrist_id, first_name, last_name, contact_number,
email_address, license_number) VALUES
(1,'Julie','Deegin','595-1956-631','jdeegin0@nmail.com','100558-KK'),
(2,'Leopold','Julian','981-2198-566','ljulian1@nmail.com','656256-YU'),
(3,'Valida','Willstrop','208-3949-800','vwillstrop2@nmail.com','534203-YI'),
(4,'Sandie','Leming','612-8315-650','sleming3@nmail.com','094612-TL'),
(5,'Fiorenze','Ambler','676-2329-873','fambler4@nmail.com','848975-HO');

-- 12 records for Prescriptions table
INSERT INTO Prescriptions (prescription_id, customer_id, optometrist_id, right_eye_power,
left_eye_power, eye_exam_date, notes) VALUES
(1, 5, 3, -1.00, -0.75, '2023-11-15', 'Glasses required for reading.'),
(2, 2, 2, -1.75, -2.00, '2023-12-01', 'Patient advised to start using eye drops to combat dryness.'),
(3, 3, 1, -0.50, 0, '2024-01-22', 'Initial prescription. Slight nearsightedness.'),
(4, 1, 1, -2.00, -1.50, '2024-05-12', 'Mild astigmatism. Glasses recommended.'),
(5, 4, 2, -1.25, -1.00, '2024-06-15', 'Recommended reading glasses.'),
(6, 1, 1, -2.25, -1.50, '2024-08-10', 'Follow-up. Increased power in left eye.'),
(7, 6, 1, -2.25, -2.50, '2024-09-03', 'Strong myopia, advised for contact lenses.'),
(8, 2, 2, -2.00, -2.25, '2024-09-05', 'Follow-up. Slight increase in power.'),
(9, 7, 2, -0.50, -0.75, '2024-09-05', 'Recommend anti-glare coating.'),
(10, 8, 3, -1.75, -1.50, '2024-09-06', 'Patient experiencing dry eyes.'),
(11, 9, 4, -2.50, -2.75, '2024-09-07', 'Advised for prescription eye drops and new glasses.'),
(12, 10, 5, -3.00, -3.25, '2024-09-10', 'Prescribed progressive lenses.');

-- 15 records for Appointments table
INSERT INTO Appointments (appointment_id, customer_id, optometrist_id, appointment_date,
status) VALUES
(1, 5, 3, '2023-11-15', 'Completed'),
(2, 2, 2, '2023-12-01', 'Completed'),
(3, 3, 1, '2024-01-22', 'Completed'),
(4, 6, 1, '2024-03-18', 'Canceled'),
(5, 1, 1, '2024-05-12', 'Completed'),
(6, 4, 2, '2024-06-15', 'Completed'),
(7, 1, 1, '2024-08-10', 'Completed'),
(8, 9, 4, '2024-09-01', 'Canceled'),
(9, 6, 1, '2024-09-03', 'Completed'),
(10, 2, 2, '2024-09-05', 'Completed'),
(11, 7, 2, '2024-09-05', 'Completed'),
(12, 8, 3, '2024-09-06', 'Completed'),
(13, 9, 4, '2024-09-07', 'Completed'),
(14, 10, 5, '2024-09-10', 'Completed'),
(15, 5, 3, '2024-09-17', 'Scheduled');

-- 7 records for Products table
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES
(1, 'Anti-Glare Coating', 'Lens Coating', 500.00, 30),
(2, 'Contact Lens Solution', 'Eye Care', 600.00, 40),
(3, 'Reading Glasses', 'Eyewear', 1000.00, 20),
(4, 'Eye Drops', 'Eye Care', 1200.00, 50),
(5, 'Contact Lenses', 'Eyewear', 1500.00, 25),
(6, 'Ordinary Glasses', 'Eyewear', 1800.00, 15),
(7, 'Progressive Glasses', 'Eyewear', 3500.00, 10);

-- 12 records for Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount, payment_method,
payment_status, payment_date) VALUES
(1, 5, '2023-11-15', 1000.00, 'Credit Card', 'Paid', '2023-11-15'),
(2, 2, '2023-12-01', 3000.00, 'Bank Transfer', 'Paid', '2023-12-01'),
(3, 3, '2024-01-22', 1000.00, 'Cash', 'Paid', '2024-01-22'),
(4, 1, '2024-05-12', 1800.00, 'Credit Card', 'Paid', '2024-05-12'),
(5, 4, '2024-06-15', 1000.00, 'Credit Card', 'Paid', '2024-06-15'),
(6, 1, '2024-08-10', 3500.00, 'Credit Card', 'Paid', '2024-08-10'),
(7, 6, '2024-09-03', 2100.00, 'Cash', 'Paid', '2024-09-03'),
(8, 2, '2024-09-05', 4700.00, 'Bank Transfer', 'Paid', '2024-09-05'),
(9, 7, '2024-09-05', 500.00, 'Credit Card', 'Paid', '2024-09-05'),
(10, 8, '2024-09-06', 1200.00, 'Cash', 'Paid', '2024-09-06'),
(11, 9, '2024-09-07', 3000.00, 'Credit Card', 'Paid', '2024-09-07'),
(12, 10, '2024-09-10', 3500.00, 'Credit Card', 'Paid', '2024-09-10');

-- 16 records for Order_Items table
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price,
total_price) VALUES
(1, 1, 3, 1, 1000.00, 1000.00),
(2, 2, 4, 1, 1200.00, 1200.00),
(3, 2, 6, 1, 1800.00, 1800.00),
(4, 3, 3, 1, 1000.00, 1000.00),
(5, 4, 6, 1, 1800.00, 1800.00),
(6, 5, 3, 1, 1000.00, 1000.00),
(7, 6, 7, 1, 3500.00, 3500.00),
(8, 7, 5, 1, 1500.00, 1500.00),
(9, 7, 2, 1, 600.00, 600.00),
(10, 8, 4, 1, 1200.00, 1200.00),
(11, 8, 7, 1, 3500.00, 3500.00),
(12, 9, 1, 1, 500.00, 500.00),
(13, 10, 4, 1, 1200.00, 1200.00),
(14, 11, 4, 1, 1200.00, 1200.00),
(15, 11, 6, 1, 1800.00, 1800.00),
(16, 12, 7, 1, 3500.00, 3500.00);
