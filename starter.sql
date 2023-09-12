0:
SELECT * FROM Customers
1:
SELECT  product_id,product_name,category_id FROM Products WHERE unit_price >=50;
2:
SELECT contact_name FROM Customers WHERE country LIKE 'Germany';
3:
SELECT * FROM Orders WHERE customer_id  = 'ALFKI';
4:
SELECT
    c.customer_id,
    SUM(od.unit_price) AS total_price_for_customer
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
JOIN
    Order_details od ON o.order_id = od.order_id
GROUP BY
    c.customer_id, c.company_name
ORDER BY
    c.customer_id;
5:
SELECT product_id, product_name, category_id,unit_price
FROM Products
ORDER BY unit_price DESC
LIMIT 5;
6:
SELECT *
FROM Employees
WHERE EXTRACT(YEAR FROM birth_date) < 1960;
7:
SELECT *
FROM Products
WHERE units_in_stock = 0;
8:
SELEC T AVG(unit_price)AS avg_of_product
FROM Products;
9:
SELECT SUM(unit_price)
FROM Order_details
WHERE product_id = 7


--יש לך טעות בשאלה 9 - הכוונה היא שתציך את סך כל הרווחים ממוצר מסויים
-- ל כמות * מחיר * (1-הנחה) כשאלו נמדדים כמכפלה ש
10:
SELECT COUNT(*) AS category_count
FROM Categories;
11:
SELECT *
FROM Products
WHERE Discontinued = 1;
12:
SELECT COUNT(*) AS order_count
FROM Orders
WHERE EXTRACT(YEAR FROM order_date) >= 1973;
13:
SELECT *
FROM Customers
WHERE contact_title IN ('Owner', 'CEO');
14:
SELECT product_id, product_name, category_id, unit_price
FROM Products
ORDER BY unit_price DESC
LIMIT 1;
15:
SELECT AVG(AGE(birth_date)) AS average_age
FROM Employees;
16:
SELECT * 
FROM customers
WHERE phone LIKE('%123%')
17:
SELECT *
FROM Products
WHERE units_in_stock = 10 AND Discontinued = 0;
18:
SELECT
    MAX(unit_price) AS highest_price,
    MIN(unit_price) AS lowest_price
FROM
    Products;
19:
SELECT *
FROM Orders
WHERE order_date >= '1997-05-05';
20:
SELECT
    product_name,
    quantity_per_unit
FROM
    Products;
21:
SELECT *
FROM Products
WHERE unit_price > (SELECT AVG(unit_price) FROM Products);
22:
SELECT city, COUNT(*) AS employee_count
FROM Employees
GROUP BY city;



