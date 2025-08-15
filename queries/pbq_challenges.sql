-- Scenario 1: Highest total sales in Q2
SELECT e.Name, SUM(s.SaleAmount) AS TotalSales
FROM sales s
JOIN employees e ON s.EmployeeID = e.EmployeeID
WHERE s.SaleDate BETWEEN '2023-04-01' AND '2023-06-30'
GROUP BY e.Name
ORDER BY TotalSales DESC
LIMIT 1;

-- Scenario 2: Top 3 profitable products
SELECT p.ProductName, SUM(s.SaleAmount) AS Revenue
FROM sales s
JOIN products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC
LIMIT 3;
