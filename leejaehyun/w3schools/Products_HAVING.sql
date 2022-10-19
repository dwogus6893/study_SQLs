SELECT CategoryID,COUNT(ProductID)
FROM Products
GROUP BY CategoryID
HAVING COUNT(CategoryID) >=10;