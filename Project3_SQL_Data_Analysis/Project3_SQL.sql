-- Project 3: SQL Data Analysis
-- Dataset: Orders

-- Query 1: View all records
SELECT * FROM Orders;

-- Query 2: View first 10 records
SELECT *
FROM Orders
LIMIT 10;

-- Query 3: Filter orders with TotalPrice greater than 1000
SELECT OrderID, Product, TotalPrice
FROM Orders
WHERE TotalPrice > 1000;

-- Query 4: View shipped orders
SELECT *
FROM Orders
WHERE OrderStatus = 'Shipped';

-- Query 5: Sort orders by TotalPrice in descending order
SELECT OrderID, Product, TotalPrice
FROM Orders
ORDER BY TotalPrice DESC;

-- Query 6: Count orders by product
SELECT Product, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY Product;

-- Query 7: Average order value by product
SELECT Product, AVG(TotalPrice) AS AveragePrice
FROM Orders
GROUP BY Product;

-- Query 8: Revenue by product
SELECT Product, SUM(TotalPrice) AS Revenue
FROM Orders
GROUP BY Product
ORDER BY Revenue DESC;

-- Query 9: Orders by payment method
SELECT PaymentMethod, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY PaymentMethod;

-- Query 10: Orders by referral source
SELECT ReferralSource, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY ReferralSource;
