--DATA DEFINITION LANGUAGE--
-- shifts table
CREATE TABLE Shift (
    shift_id INT PRIMARY KEY NOT NULL,
    shift_date DATE NOT NULL,
    start_time DATE NOT NULL,
    end_time DATE NOT NULL
);

-- employee table
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    phone_no VARCHAR(15),
    email VARCHAR(20),
    bank_name VARCHAR(50),
    bank_acc_no VARCHAR(20),
    employee_pin VARCHAR(4),
    position VARCHAR(50)
);

-- shift assignment table
CREATE TABLE Shift_Assignment (
    shift_id INT,
    employee_id INT,
    PRIMARY KEY (shift_id, employee_id),
    CONSTRAINT FK_shift_assigned FOREIGN KEY (shift_id) REFERENCES Shift(shift_id),
    CONSTRAINT FK_shift_employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- registered customers talbles
CREATE TABLE Registered_Customer (
    customer_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    phone_no VARCHAR(15),
    email VARCHAR(20),
    register_date DATE NOT NULL,
    points INT DEFAULT 0
);

-- products table
CREATE TABLE Product (
    product_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- add-ons table
CREATE TABLE Add_on (
    add_on_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- sales table
CREATE TABLE Sale (
    sale_id INT PRIMARY KEY NOT NULL,
    customer_id INT,
    employee_id INT,
    sale_date DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    CONSTRAINT FK_sale_customer FOREIGN KEY (customer_id) REFERENCES Registered_Customer(customer_id),
    CONSTRAINT FK_sale_employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- orders table
CREATE TABLE Customer_Order (
    sale_id INT,
    product_id INT,
    add_on_id INT,
    quantity_of_product INT NOT NULL,
    order_remarks VARCHAR(100),
    PRIMARY KEY (sale_id, product_id),
    CONSTRAINT FK_order_sale FOREIGN KEY (sale_id) REFERENCES Sale(sale_id),
    CONSTRAINT FK_order_product FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT FK_order_add_on FOREIGN KEY (add_on_id) REFERENCES Add_on(add_on_id)
);

-- supplier table
CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    contact_no VARCHAR(15),
    email VARCHAR(20),
    location VARCHAR(255)
);

-- stocks table
CREATE TABLE Stock (
    stock_id INT PRIMARY KEY NOT NULL,
    total_in_stock INT NOT NULL,
    expiry_date DATE
);

-- restock table
CREATE TABLE Restock (
    employee_id INT,
    stock_id INT,
    supplier_id INT,
    restock_date DATE NOT NULL,
    PRIMARY KEY (employee_id, stock_id),
    CONSTRAINT FK_restock_employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    CONSTRAINT FK_restock_stock FOREIGN KEY (stock_id) REFERENCES Stock(stock_id),
    CONSTRAINT FK_restock_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

-- Insert data into Shift (Fewer rows)
INSERT INTO Shift (shift_id, shift_date, start_time, end_time) VALUES
(1, '2024-12-28', '08:00:00', '16:00:00');

-- Insert data into Employee (More rows for flexibility)
INSERT INTO Employee (employee_id, name, phone_no, email, bank_name, bank_acc_no, employee_pin, position) VALUES
(101, 'Alice Tan', '012-3456789', 'alice@company.com', 'Maybank', '1234567890', '1234', 'Manager'),
(102, 'Bob Lim', '012-3456790', 'bob@company.com', 'CIMB', '0987654321', '5678', 'Cashier'),
(103, 'Cindy Lee', '012-3456791', 'cindy@company.com', 'Public Bank', '1122334455', '1111', 'Supervisor'),
(104, 'David Wong', '012-3456792', 'david@company.com', 'HSBC', '6677889900', '2222', 'Stock Keeper'),
(105, 'Emily Ng', '012-3456793', 'emily@company.com', 'Maybank', '2233445566', '3333', 'Salesperson');

-- Insert data into Shift_Assignment (Fewer rows based on shifts)
INSERT INTO Shift_Assignment (shift_id, employee_id) VALUES
(1, 101),
(1, 102),
(2, 103),
(2, 104),
(3, 105);

-- Insert data into Registered_Customer (More rows for diversity)
INSERT INTO Registered_Customer (customer_id, name, phone_no, email, register_date, points) VALUES
(201, 'Farah Ali', '012-1234567', 'farah@gmail.com', '2024-12-01', 100),
(202, 'Johan Malik', '012-1234568', 'johan@gmail.com', '2024-12-02', 50),
(203, 'Sofia Tan', '012-1234569', 'sofia@gmail.com', '2024-12-03', 75),
(204, 'Amir Roslan', '012-1234570', 'amir@gmail.com', '2024-12-04', 30),
(205, 'Mei Lin', '012-1234571', 'mei@gmail.com', '2024-12-05', 120);

-- Insert data into Product (More rows for variety)
INSERT INTO Product (product_id, name, price) VALUES
(301, 'Coffee', 8.50),
(302, 'Sandwich', 12.00),
(303, 'Muffin', 5.00),
(304, 'Tea', 6.00),
(305, 'Juice', 7.50);

-- Insert data into Add_on (Fewer rows, specific to products)
INSERT INTO Add_on (add_on_id, name, price) VALUES
(401, 'Extra Cheese', 2.00),
(402, 'Whipped Cream', 1.50),
(403, 'Ice', 0.50);

-- Insert data into Sale (More rows for realism)
INSERT INTO Sale (sale_id, customer_id, employee_id, sale_date, total, payment_method) VALUES
(501, 201, 102, '2024-12-28', 50.00, 'Credit Card'),
(502, 202, 105, '2024-12-28', 35.50, 'Cash'),
(503, 203, 101, '2024-12-28', 75.00, 'Credit Card'),
(504, 204, 103, '2024-12-28', 25.00, 'Cash'),
(505, 205, 104, '2024-12-28', 42.00, 'Debit Card');

-- Insert data into Customer_Order (More rows linked to sales)
INSERT INTO Customer_Order (sale_id, product_id, add_on_id, quantity_of_product, order_remarks) VALUES
(501, 301, NULL, 2, 'Extra hot'),
(502, 302, 401, 1, 'No remarks'),
(503, 303, 402, 3, 'With whipped cream'),
(504, 304, 403, 2, 'Add ice'),
(505, 305, NULL, 1, 'No remarks');

-- Insert data into Supplier (Fewer rows, manageable suppliers)
INSERT INTO Supplier (supplier_id, name, contact_no, email, location) VALUES
(701, 'Fresh Beans', '03-78901234', 'freshbeans@supplier.com', 'Kuala Lumpur'),
(702, 'Bakery Best', '03-12345678', 'bakerybest@supplier.com', 'Petaling Jaya'),
(703, 'Healthy Drinks', '03-87654321', 'healthydrinks@supplier.com', 'Shah Alam');

-- Insert data into Stock (More rows to cover product inventory)
INSERT INTO Stock (stock_id, total_in_stock, expiry_date) VALUES
(801, 100, '2025-01-15'),
(802, 50, '2025-02-01'),
(803, 70, '2025-01-10'),
(804, 60, '2025-01-20'),
(805, 40, '2025-01-25');

-- Insert data into Restock (Fewer rows for select products)
INSERT INTO Restock (employee_id, stock_id, supplier_id, restock_date) VALUES
(101, 801, 701, '2024-12-27'),
(102, 802, 702, '2024-12-26'),
(103, 805, 703, '2024-12-25');

