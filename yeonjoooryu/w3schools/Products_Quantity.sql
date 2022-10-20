-- 제품명, 가격, 주문갯수 표시
-- refer: https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_join
SELECT Products.ProductName, Products.Price, OrderDetails.Quantity
FROM OrderDetails INNER JOIN Products
ON OrderDetails.ProductID = Products.ProductID
;