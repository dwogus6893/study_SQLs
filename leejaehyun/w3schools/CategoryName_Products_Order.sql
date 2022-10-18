-- + 7 : CategoryName 가 Dairy Products, Seafood이고
--Price 10.00이상 50.00이하인 주문  OrderID 내역과 총 갯수는 ?
=========================================

--WHERE은 조건문, 연결고리
--CategoryName 가 Dairy Products, Seafood이고
SELECT CategoryID
FROM Categories
WHERE CategoryName IN ('Dairy Products','Seafood');

--Price 10.00이상 50.00이하인
SELECT ProductID
FROM Products
WHERE Price BETWEEN 10 AND 50;

--주문  OrderID 내역과 총 갯수는 ?
SELECT OrderID ,Count(OrderID)
FROM OrdersDetails;

=========================================

SELECT OrderID, Count(OrderID)
FROM OrdersDetails
WEHRE ProductID IN (SELECT ProductID
					FROM Products
					WHERE Price BETWEEN 10 AND 50
					AND CategoryId IN(
					SELECT CategoryID
					FROM Categories
					WHERE CategoryName IN ('Dairy Products','Seafood')));
