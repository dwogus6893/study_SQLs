SELECT CategoryID, COUNT(CategoryID), AVG(Price), MAX(Price), MIN(Price)
FROM Products
WHERE CategoryID IN (SELECT CategoryID
					FROM Categories)
GROUP BY CategoryID;