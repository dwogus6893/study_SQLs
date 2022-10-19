-- +1 Categories별로 구성된 제품 개수, 가겨 평균/최고값/최저값을 표시하세요.
SELECT CategoryID, COUNT(CategoryID), AVG(Price), MAX(Price), MIN(Price)
FROM Products
WHERE CategoryID IN (SELECT CategoryID
					FROM Categories)
GROUP BY CategoryID;