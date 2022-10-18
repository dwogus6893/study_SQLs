+ 6 : CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 합계와 평균은 ?
CategoryName_Products.sql

SELECT SUM(Price),AVG(Price)
From Products
WHERE Price BETWEEN 10.00 AND 50.00
AND CategoryID IN (SELECT CategoryID
                    FROM Categories 
                    WHERE CategoryName IN('Dairy Products, Seafood'));
