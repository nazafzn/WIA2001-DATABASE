ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI';

--**
--Finding total sales made by each employee in descending order
SELECT 
    e.EMPLOYEE_ID, 
    e.name AS Employee_Name, 
    SUM(s.total) AS Total_Sales

FROM Employee e
LEFT JOIN Sales s ON e.EMPLOYEE_ID = s.EMPLOYEE_ID
GROUP BY e.EMPLOYEE_ID, e.name
ORDER BY Total_Sales DESC;


--Finding customers who made purchase above a certain amount
SELECT 
    c.customer_id, 
    c.name AS customer_name, 
    SUM(s.total) AS total_spent
FROM  Registered_Customer c
INNER JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(s.total) > 50;


--Find customers' ranks based on the points collected
SELECT 
    customer_id, 
    name AS name, 
    point
FROM  Registered_Customer
ORDER BY point DESC;

--**
--Display employees along with their assigned shifts
SELECT 
    e.EMPLOYEE_ID, 
    e.name AS NAME, 
    sh.SHIFT_DATE, 
    sh.START_TIME, 
    sh.END_TIME

FROM EMPLOYEE e
INNER JOIN Shift_Assignment sa ON e.EMPLOYEE_ID = sa.EMPLOYEE_ID
INNER JOIN Shift sh ON sa.SHIFT_ID = sh.SHIFT_ID
ORDER BY e.name, sh.SHIFT_DATE;


--Finding stocks nearing to expiry date
SELECT 
    stock_id, 
    expiry_date

FROM Stock
WHERE expiry_date <= SYSDATE + 2
ORDER BY expiry_date ASC;

--**
--Determining most popular product
SELECT 
    p.product_id,
    p.name AS product_name,
    SUM(co.quantity_of_product) AS total_quantity_sold
FROM Product p
INNER JOIN Customer_Order co ON p.product_id = co.product_id
GROUP BY p.product_id, p.name
ORDER BY total_quantity_sold DESC;

-- get all shifts on 28/2/2024
SELECT *
FROM Shift
WHERE shift_date = TO_DATE('2024-12-28', 'YYYY-MM-DD');


