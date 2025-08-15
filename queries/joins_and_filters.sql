-- Join sales with employee names
SELECT s.SaleID, e.Name, s.SaleAmount
FROM sales s
JOIN employees e ON s.EmployeeID = e.EmployeeID;

-- Filter sales by department
SELECT s.SaleID, e.Department, s.SaleAmount
FROM sales s
JOIN employees e ON s.EmployeeID = e.EmployeeID
WHERE e.Department = 'Sales';
