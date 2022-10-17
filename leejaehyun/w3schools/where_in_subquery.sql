SELECT * 
FROM Customers
WHERE Country IN (SELECT Country 
            From Suppliers);