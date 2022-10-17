# 직원(Employees) EmployeeID가 7, 9인 종업원이 받는 주문(Orders) 총 수는 ?
# Employees_Order_totals.sql

SELECT EmployeeID 
FROM Employees
WHERE Orders IN (SELECT Orders
                 FROM Employees
                 WHERE EmployeeID(7,9));


