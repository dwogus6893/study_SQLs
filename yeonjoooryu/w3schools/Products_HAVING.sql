-- 카테고리에 제품이 10개 이상인 카테고리를 표시한다.
SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID
HAVING COUNT(CategoryID) >= 10;

CategoryID	COUNT(ProductID)
    1	            12
    2	            12
    3	            13
    4	            10
    8	            12