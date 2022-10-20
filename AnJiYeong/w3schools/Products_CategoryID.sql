-- +2 : pRODUCTS에 cATEGORYid가 5, 6을 표시, 내용 프로덕트 이름, 공급자, 이름 출력 ?
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
AND Products.CategoryID IN (5, 6)
;
-- 13