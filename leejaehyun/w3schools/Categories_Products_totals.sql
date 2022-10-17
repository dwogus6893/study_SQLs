#분류(Categories)가 Produce, Beverages인 제품(Products) 총 갯수는 ?
#Categories_Products_totals.sql

SELECT COUNT(*)
FROM Products
WHERE Categories IN(SELECT Categories
                    FROM Products
                    WHERE IN('Produce', 'Beverages'));