#분류(Categories)CategoriesID가 Produce, Beverages인 제품(Products) 총 갯수는 ?
#Categories_Products_totals.sql

SELECT COUNT(*)
FROM Products
WHERE CategoriesID IN(SELECT CategoriesID
                    FROM Categories
                    WHERE CategoryName
                    IN('Produce', 'Beverages'));

