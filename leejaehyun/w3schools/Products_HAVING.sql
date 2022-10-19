SELECT CategoryName
FROM Categories
WHERE CategoryID 
IN (SELECT CategoryID
	FROM Products
	GROUP BY CategoryID
	HAVING COUNT(*) >=10);
