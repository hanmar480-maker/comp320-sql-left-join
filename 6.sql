SELECT e.LastName,e.FirstName,
       
       COALESCE(SUM(i.Total), 0) AS TotalSales
FROM Employee e
LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i  ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY COALESCE(SUM(i.Total), 0) DESC,
         e.EmployeeId ASC;