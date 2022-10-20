SELECT Products.ProductName , Products.Price, OrderDetails.Quantity
FROM Products INNER JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID;