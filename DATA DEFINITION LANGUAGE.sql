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
    email VARCHAR(30),
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

COMMIT;