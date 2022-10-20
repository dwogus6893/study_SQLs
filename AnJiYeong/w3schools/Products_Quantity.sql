-- +3 : 제품명, 가격, 주문 개수 나타내기
SELECT Products.ProductName, Products.Price, OrderDetails.Quantity
FROM  Products INNER JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID;