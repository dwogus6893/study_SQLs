-- +1 Products 카테고리에 10 이상인 제품 있는 카테고리와 개수 표시?
SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID
HAVING COUNT(ProductID) >= 10;