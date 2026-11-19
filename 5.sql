SELECT FirstName || ' ' || LastName || ' is ' ||
       CAST((julianday('now') - julianday(BirthDate)) / 365.25 AS INTEGER) ||
       ' years old' AS Result
FROM Employee
WHERE ReportsTo IS NULL;