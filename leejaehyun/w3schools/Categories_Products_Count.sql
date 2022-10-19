--Categories별로 구성된 제품 갯수,가격평균,최고값,최저값 표시하세요.

-- Categories 별로 구성된 
SELECT CategoryID
FROM Categories;

-- 제품 갯수, 가격 평균/최고값/최저값 표시
--(CategoryID는 Categories 테이블에서 온다.)
--(CategoryID를 그룹화 한다)
SELECT CatgoryID,Count(*),AVG(Price),Max(Price),Min(Price)
FROM Products
WHERE CategoryID IN( SELECT CategoryID
		   FROM Categories)
	GROUP BY CategoryID;