--문자열
SELECT ASCII('+'), CHAR(47); -- 사용빈도 하
SELECT UNICODE('가');

SELECT CONCAT('SQL', 'server', 2019) AS [name]; --CAST : 문자열 연결, 사용빈도 상
SELECT 'SQL' + 'server' + CAST(2019 AS varchar); --위와 같지만 형변환 필요

--단어 시작 위치
SELECT CHARINDEX('world', 'Hello world!'); -- DB는 1부터 시작. 그래서 결과가 7
                                           -- 문자열의 시작 위치 돌려줌. 
										   -- world가 hello world에서 어디부터 시작하는지







-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);--왼쪽부터 3자리 짤라낸다. 오른쪽으로 4자리

SELECT SUBSTRING('대한민국만세!', 5,2); --5번째부터 2자리 짤라냄

SELECT LEN('Hello world'); --글자열 길이
SELECT LEN('대한민국만세');

SELECT LOWER('hELLO World!'), UPPER('hELLO World!'); --소문자/대문자 
--스페이스 제거 함수
SELECT '     SQL', LTRIM('    SQL'); --LTRIM : 왼쪽 여백 지움
SELECT '     SQL     ', RTRIM('    SQL     '); --RTRIM 오른쪽 여백 지움
SELECT '     SQL     ', TRIM('    SQL     '); --여백 다 지움

--Replace 사용빈도 최상
SELECT REPLACE('SQL server 2019', 'server', '서버');--server 글자를 서버로 대체
SELECT REPLACE('SQL server 2019, server만쉐', 'server', '서버');--server 글자 모두 대체

--STR 사용빈도 상
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT 사용빈도 상
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss');--한국식
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss');--미국식

--순위함수
SELECT name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL
 ORDER BY height DESC;

 SELECT ROW_NUMBER() OVER( ORDER BY height DESC) AS '키순위'
      , name, height, addr
   FROM userTbl
  WHERE height IS NOT NULL;

 SELECT DENSE_RANK() OVER( ORDER BY height DESC) AS '키순위'
      , name, height, addr
   FROM userTbl
  WHERE height IS NOT NULL;

 SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
      , name, height, addr
   FROM userTbl
  WHERE height IS NOT NULL;

SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '구매순위'
       , userID, SUM(price * amount) AS '사용자별구매금액'
  FROM buyTbl
 GROUP BY userID;

 --JSON
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '구매순위'
       , userID, SUM(price * amount) AS '사용자별구매금액'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO;  --FOR XML AUTO; 형태도 있음