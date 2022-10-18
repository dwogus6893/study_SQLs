-- CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 합계와 평균은 ?
-- SUM: 390.34
SELECT SUM(Price) -- AVG
FROM Products
WHERE Price BETWEEN 10 AND 50 
AND CategoryID IN(SELECT CategoryID
                    FROM Categories
                    WHERE CategoryName IN('Dairy Products', 'Seafood'));

-- AVG: 24.396250  
SELECT AVG(Price) 
FROM Products
WHERE Price BETWEEN 10 AND 50 
AND CategoryID IN(SELECT CategoryID
                    FROM Categories
                    WHERE CategoryName IN('Dairy Products', 'Seafood'));                  
