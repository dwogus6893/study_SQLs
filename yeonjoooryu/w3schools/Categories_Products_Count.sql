--Categories별로 구성된 제품 갯수, 가격 평균, 최고값, 최저값 표시하세요.
SELECT COUNT(ProductID),CategoryID, AVG(Price),MIN(Price),MAX(Price)
FROM Products
GROUP BY CategoryID;

--COUNT(ProductID)	CategoryID	AVG(Price)	MIN(Price)	MAX(Price)
--12	                1	    37.979167  	4.50	    263.50
--12	                2	    23.062500	10.00	    43.90
--13	                3	    25.160000	9.20	    81.00
--10	                4	    28.730000	2.50	    55.00
--7	                    5	    20.250000	7.00	    38.00
--6	                    6	    54.006667	7.45	    123.79
--5	                    7	    32.370000	10.00	    53.00
--12	                8	    20.682500	6.00	    62.50