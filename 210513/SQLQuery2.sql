--GROUP BY
--아이디별로 물건 얼마치 샀는지 조치
SELECT userID, SUM(amount) AS '총 구매 갯수'
  FROM buyTbl
 GROUP BY userID;


 SELECT userID, amount FROM buyTbl
 GROUP BY userID,amount;


--우리 쇼핑몰에서 가장 돈 많이 쓴 사람을 아이디별로 조회하고
--그 금액을 같이 출력
SELECT userID, SUM(amount * price) AS '총 구매 금액'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;


 SELECT SUM(amount * price) AS '총 구매 금액'
  FROM buyTbl;

--평균구매금액
SELECT AVG(price) AS '평균구매금액' 
  FROM buyTbl;

--사용자테이블에서 키가 가장 큰 사람하고 가장 작은사람을 조회(서브 쿼리 이용)
SELECT * FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl);

SELECT name AS '이름', height AS [키] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl);

--GROUP BY/HAVING
SELECT userID AS '사용자 아이디'
     , SUM(price * amount) AS[총 구매 금액]
  FROM buyTbl
  WHERE SUM(price * amount)>=1000  --WHERE절에는 집계함수 들어갈 수 없다.
                                   --WHERE은 필터링 같은 역할임
 GROUP BY userID;


SELECT userID AS '사용자 아이디'
     , SUM(price * amount) AS[총 구매 금액]
  FROM buyTbl
 GROUP BY userID
HAVING SUM(price * amount)>=1000;



--통계
--제품그룹별로 사용자가 얼마만큼 구매를 했는지 조회
SELECT groupName
     , userID
     , SUM(price * amount) AS[총 구매 금액]
  FROM buyTbl
 GROUP BY userID, groupName;

SELECT groupName
     , userID
     , SUM(price * amount) AS[총 구매 금액]
  FROM buyTbl
 GROUP BY ROLLUP(userID, groupName); --ROLLUP

SELECT groupName
     , userID
     , SUM(price * amount) AS[총 구매 금액]
  FROM buyTbl
 GROUP BY CUBE(groupName, userID);

 SELECT groupName
     , SUM(price * amount) AS [총 구매 금액]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY CUBE(groupName);