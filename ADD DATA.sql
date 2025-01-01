-- Insert data into Shift 
INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (1, TO_DATE('2024-12-28', 'YYYY-MM-DD'), TO_DATE('08:00:00', 'HH24:MI:SS'), TO_DATE('16:00:00', 'HH24:MI:SS'));

INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (2, TO_DATE('2024-12-29', 'YYYY-MM-DD'), TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('17:00:00', 'HH24:MI:SS'));

INSERT INTO Shift (shift_id, shift_date, start_time, end_time) 
VALUES (3, TO_DATE('2024-12-30', 'YYYY-MM-DD'), TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('18:00:00', 'HH24:MI:SS'));


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
VALUES (105, 'Emily Ng', '012-3456793', 'emily@company.com', 'Maybank', '2233445566', '3333', 'Salesperson');


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


