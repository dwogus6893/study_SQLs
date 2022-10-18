--CategoryName 가 Dairy Products, Seafood이고 Price 10.00이상 50.00이하인 주문  OrderID 내역과 총 갯수는 ?
-- OrderID내역: 10248
-- 총 갯수: 482
SELECT OrderID, COUNT(OrderID) 
FROM OrderDetails
WHERE ProductID IN(SELECT ProductID
					FROM Products
                    WHERE Price BETWEEN 10 AND 50 
					AND CategoryID IN(SELECT CategoryID
                    					FROM Categories
                    					WHERE CategoryName IN('Dairy Products', 'Seafood')));