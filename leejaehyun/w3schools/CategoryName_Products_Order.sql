+ 7 : CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 주문  OrderID 내역과 총 갯수는 ?
CategoryName_Products_Order.sql

SELECT OrderID
FROM Orders
WHERE OrderID IN(SELECT OrderID
FROM OrderDetails
WHERE ProductID IN (SELECT ProductID
FROM Products
WHERE Price BETWEEN 10 AND 50 
AND CategoryID IN (SELECT CategoryID
FROM Categories
WHERE CategoryName IN('Dairy Products','Seafood'))));

#분류(Categories)CategoriesID가 Produce, Beverages인 제품(Products) 총 갯수는 ?
#Categories_Products_totals.sql

SELECT COUNT(*)
FROM Products 
WHERE CategoriesID IN(SELECT CategoriesID
                    FROM Categories
                    WHERE CategoryName
                    IN('Produce', 'Beverages'));
