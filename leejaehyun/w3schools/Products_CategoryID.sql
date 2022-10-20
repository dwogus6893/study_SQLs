SELECT Products.ProductName, Suppliers.SupplierName
FROM Products INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
AND Products.CategoryID IN (5,6);