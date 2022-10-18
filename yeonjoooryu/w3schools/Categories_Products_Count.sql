--Categories별로 구성된 제품 갯수, 가격 평균, 최고값, 최저값 표시하세요.
--제품 갯수 12/12/13/10/7/6/5/12
SELECT COUNT(*), CategoryID
FROM Products
GROUP BY CategoryID;

--가격 평균
-- 37.979167 / 23.062500 / 25.160000 / 28.730000 / 20.250000 / 54.006667 / 32.370000 / 20.682500
SELECT AVG(Price), CategoryID
FROM Products
GROUP BY CategoryID;

--가격 최고값
-- 263.50 / 43.90 / 81.00 / 55.0 / 38.00 / 123.79 / 53.00 / 62.50
SELECT MAX(Price), CategoryID
FROM Products
GROUP BY CategoryID;

--가격 최저값
-- 4.50 / 10.00 / 9.20 / 2.50 / 7.00 / 7.45 / 10.00 / 6.00
SELECT MIN(Price), CategoryID
FROM Products
GROUP BY CategoryID;