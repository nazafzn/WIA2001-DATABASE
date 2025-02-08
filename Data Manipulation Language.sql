-- Insert data into Shift 
INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (1, TO_DATE('2024-12-28', 'YYYY-MM-DD'), TO_DATE('2024-12-28 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-28 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (2, TO_DATE('2024-12-29', 'YYYY-MM-DD'), TO_DATE('2024-12-29 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-29 17:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (3, TO_DATE('2024-12-30', 'YYYY-MM-DD'), TO_DATE('2024-12-30 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (4, TO_DATE('2024-12-28', 'YYYY-MM-DD'), TO_DATE('2024-12-28 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-28 22:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (5, TO_DATE('2024-12-29', 'YYYY-MM-DD'), TO_DATE('2024-12-29 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-29 22:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (6, TO_DATE('2024-12-30', 'YYYY-MM-DD'), TO_DATE('2024-12-30 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-12-30 22:00:00', 'YYYY-MM-DD HH24:MI:SS'));
COMMIT;

-- Insert data into Employee
INSERT INTO Employee (employee_id, name, phone_no, email, bank_name, bank_acc_no, employee_pin, position) 
VALUES (101, 'Alice Tan', '012-3456789', 'alice@company.com', 'Maybank', '1234567890', '1234', 'Manager');

INSERT INTO Employee (employee_id, name, phone_no, email, bank_name, bank_acc_no, employee_pin, position) 
VALUES (102, 'Bob Lim', '012-3456790', 'bob@company.com', 'CIMB', '0987654321', '5678', 'Cashier');

INSERT INTO Employee (employee_id, name, phone_no, email, bank_name, bank_acc_no, employee_pin, position) 
VALUES (103, 'Cindy Lee', '012-3456791', 'cindy@company.com', 'Public Bank', '1122334455', '1111', 'Supervisor');

INSERT INTO Employee (employee_id, name, phone_no, email, bank_name, bank_acc_no, employee_pin, position) 
VALUES (104, 'David Wong', '012-3456792', 'david@company.com', 'HSBC', '6677889900', '2222', 'Stock Keeper');

INSERT INTO Employee (employee_id, name, phone_no, email, bank_name, bank_acc_no, employee_pin, position) 
VALUES (107, 'Nigel e', '012-3456793', 'nigel@company.com', 'Maybank', '2233445566', '3333', 'Salesperson');
COMMIT;

--Insert data into Shift_Assignment
INSERT INTO Shift_Assignment (shift_id, employee_id) 
VALUES (1, 101);

INSERT INTO Shift_Assignment (shift_id, employee_id) 
VALUES (1, 102);

INSERT INTO Shift_Assignment (shift_id, employee_id) 
VALUES (2, 103);

INSERT INTO Shift_Assignment (shift_id, employee_id) 
VALUES (2, 104);

INSERT INTO Shift_Assignment (shift_id, employee_id) 
VALUES (3, 105);


--insert data into registered customer
INSERT INTO Registered_Customer (customer_id, name, phone_no, email, register_date, points) 
VALUES (201, 'Farah Ali', '012-1234567', 'farah@gmail.com', TO_DATE('2024-12-01', 'YYYY-MM-DD'), 100);

INSERT INTO Registered_Customer (customer_id, name, phone_no, email, register_date, points) 
VALUES (202, 'Johan Malik', '012-1234568', 'johan@gmail.com', TO_DATE('2024-12-02', 'YYYY-MM-DD'), 50);

INSERT INTO Registered_Customer (customer_id, name, phone_no, email, register_date, points) 
VALUES (203, 'Sofia Tan', '012-1234569', 'sofia@gmail.com', TO_DATE('2024-12-03', 'YYYY-MM-DD'), 75);

INSERT INTO Registered_Customer (customer_id, name, phone_no, email, register_date, points) 
VALUES (204, 'Amir Roslan', '012-1234570', 'amir@gmail.com', TO_DATE('2024-12-04', 'YYYY-MM-DD'), 30);

INSERT INTO Registered_Customer (customer_id, name, phone_no, email, register_date, points) 
VALUES (205, 'Mei Lin', '012-1234571', 'mei@gmail.com', TO_DATE('2024-12-05', 'YYYY-MM-DD'), 120);

--insert into product
INSERT INTO Product (product_id, name, price) 
VALUES (301, 'Signature White Kopi', 8.50);

INSERT INTO Product (product_id, name, price) 
VALUES (302, 'Nutella Croissant', 10.00);

INSERT INTO Product (product_id, name, price) 
VALUES (303, 'Caramel Latte', 11.00);

INSERT INTO Product (product_id, name, price) 
VALUES (304, 'Matcha Latte', 10.90);

INSERT INTO Product (product_id, name, price) 
VALUES (305, 'Royal Chocolate Frappe', 13.90);

INSERT INTO Product (product_id, name, price)
VALUES (306, 'Iced Shaken Peach Tea', 9.90);


--insert into add-on table
INSERT INTO Add_on (add_on_id, name, price) 
VALUES (401, 'Shots', 2.00);

INSERT INTO Add_on (add_on_id, name, price) 
VALUES (402, 'Whipped Cream', 2.00);

INSERT INTO Add_on (add_on_id, name, price) 
VALUES (403, 'Vanilla', 2.50);

INSERT into Add_on (add_on_id, name, price)
VALUES (404, 'Gula Apong', 1.00);


--insert into sale table
INSERT INTO Sale (sale_id, customer_id, employee_id, sale_date, total, payment_method) 
VALUES (501, 201, 102, TO_DATE('2024-12-28', 'YYYY-MM-DD'), 50.00, 'Credit Card');

INSERT INTO Sale (sale_id, customer_id, employee_id, sale_date, total, payment_method) 
VALUES (502, 202, 105, TO_DATE('2024-12-28', 'YYYY-MM-DD'), 35.50, 'Cash');

INSERT INTO Sale (sale_id, customer_id, employee_id, sale_date, total, payment_method) 
VALUES (503, 203, 101, TO_DATE('2024-12-28', 'YYYY-MM-DD'), 75.00, 'Credit Card');

INSERT INTO Sale (sale_id, customer_id, employee_id, sale_date, total, payment_method) 
VALUES (504, 204, 103, TO_DATE('2024-12-28', 'YYYY-MM-DD'), 25.00, 'Cash');

INSERT INTO Sale (sale_id, customer_id, employee_id, sale_date, total, payment_method) 
VALUES (505, 205, 104, TO_DATE('2024-12-28', 'YYYY-MM-DD'), 42.00, 'Debit Card');


--insert into customer order table
INSERT INTO Customer_Order (sale_id, product_id, add_on_id, quantity_of_product, order_remarks) 
VALUES (501, 301, NULL, 2, 'Extra hot');

INSERT INTO Customer_Order (sale_id, product_id, add_on_id, quantity_of_product, order_remarks) 
VALUES (502, 302, 401, 1, 'No remarks');

INSERT INTO Customer_Order (sale_id, product_id, add_on_id, quantity_of_product, order_remarks) 
VALUES (503, 303, 402, 3, 'With whipped cream');

INSERT INTO Customer_Order (sale_id, product_id, add_on_id, quantity_of_product, order_remarks) 
VALUES (504, 304, 403, 2, 'Add ice');

INSERT INTO Customer_Order (sale_id, product_id, add_on_id, quantity_of_product, order_remarks) 
VALUES (505, 305, NULL, 1, 'No remarks');

UPDATE CUSTOMER_ORDER
SET ADD_ON_ID = 401
WHERE SALE_ID = 504;
COMMIT;

--insert into supplier table
INSERT INTO Supplier (supplier_id, name, contact_no, email, location)
VALUES (701, 'Fresh Beans', '03-78901234', 'freshbeans@gmail.com', 'Kuala Lumpur');

INSERT INTO Supplier (supplier_id, name, contact_no, email, location) 
VALUES (702, 'Bakery Best', '03-12345678', 'bakerybest@gmail.com', 'Petaling Jaya');

INSERT INTO Supplier (supplier_id, name, contact_no, email, location) 
VALUES (703, 'Healthy Drinks', '03-87654321', 'healthydrinks@gmail.com', 'Shah Alam');


--insert into stock table
INSERT INTO Stock (stock_id, total_in_stock, expiry_date) 
VALUES (801, 100, TO_DATE('2025-01-5', 'YYYY-MM-DD'));

INSERT INTO Stock (stock_id, total_in_stock, expiry_date) 
VALUES (802, 50, TO_DATE('2025-02-01', 'YYYY-MM-DD'));

INSERT INTO Stock (stock_id, total_in_stock, expiry_date) 
VALUES (803, 70, TO_DATE('2025-01-10', 'YYYY-MM-DD'));

INSERT INTO Stock (stock_id, total_in_stock, expiry_date) 
VALUES (804, 60, TO_DATE('2025-01-2', 'YYYY-MM-DD'));

INSERT INTO Stock (stock_id, total_in_stock, expiry_date) 
VALUES (805, 40, TO_DATE('2025-01-25', 'YYYY-MM-DD'));

INSERT INTO Stock (stock_id, total_in_stock, expiry_date)
VALUES (806, 80, TO_DATE('2025-01-10', 'YYYY-MM-DD'));

INSERT INTO Stock (stock_id, total_in_stock, expiry_date)
VALUES (807, 90, TO_DATE('2025-01-8', 'YYYY-MM-DD'));
COMMIT;


--insert into restock table
INSERT INTO Restock (employee_id, stock_id, supplier_id, restock_date) 
VALUES (101, 801, 701, TO_DATE('2024-12-27', 'YYYY-MM-DD'));

INSERT INTO Restock (employee_id, stock_id, supplier_id, restock_date) 
VALUES (102, 802, 702, TO_DATE('2024-12-26', 'YYYY-MM-DD'));

INSERT INTO Restock (employee_id, stock_id, supplier_id, restock_date) 
VALUES (103, 805, 703, TO_DATE('2024-12-25', 'YYYY-MM-DD'));


-- Update employee phone number
UPDATE Employee
SET PHONE_NO = '109-2671234'
WHERE employee_id = 101;

-- Update customer points after a purchase
UPDATE Registered_Customer
SET point = point + 2000
WHERE customer_id = 205;
COMMIT;

-- Update product price
UPDATE Product
SET price = 6.49
WHERE product_id = 1;


-- Delete a specific sale record (sale_id = 2)
DELETE FROM Sale
WHERE sale_id = 2;

-- Delete an employee (employee_id = 106)
DELETE FROM Employee
WHERE employee_id = 106;

-- Delete a product (product_id = 2)
DELETE FROM Product
WHERE product_id = 2;

-- Find all sales records along with customer and employee names
SELECT
    S.sale_id,
    RC.name AS customer_name,
    E.name AS employee_name,
    S.total
FROM Sale S
JOIN Registered_Customer RC ON S.customer_id = RC.customer_id
JOIN Employee E ON S.employee_id = E.employee_id;


-- Find sales records along with product and add-on names
SELECT
    S.sale_id,
    P.name AS product_name,
    A.name AS add_on_name,
    O.quantity_of_product,
    O.order_remarks
FROM Customer_Order O
JOIN Product P ON O.product_id = P.product_id
LEFT JOIN Add_on A ON O.add_on_id = A.add_on_id
JOIN Sale S ON O.sale_id = S.sale_id;



-- Calculate the total revenue from all sales
SELECT SUM(total) AS total_revenue
FROM Sale;

-- Get the average price of products
SELECT AVG(price) AS average_price
FROM Product;

-- Get the number of products sold in total
SELECT SUM(quantity_of_product) AS total_products_sold
FROM Customer_Order;



-- Get the products that have a price higher than the average product price
SELECT name, price
FROM Product
WHERE price > (SELECT AVG(price) FROM Product);

-- Get the total sales by each employee, WHERE total sales exceed 10
SELECT E.name AS employee_name, SUM(S.total) AS total_sales
FROM Employee E
LEFT JOIN Sale S ON E.employee_id = S.employee_id
GROUP BY E.name
HAVING SUM(S.total) > 10;

-- get all shifts on 28/2/2024
SELECT *
FROM Shift
WHERE shift_date = TO_DATE('2024-12-28', 'YYYY-MM-DD');

 SELECT p.name
FROM Product p
JOIN Customer_Order co ON p.product_id = co.product_id
JOIN Sale s ON co.sale_id = s.sale_id
JOIN Supplier sp ON s.employee_id = sp.supplier_id
WHERE sp.supplier_id = 701;
