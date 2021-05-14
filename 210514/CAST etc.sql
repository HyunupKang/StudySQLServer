--시스템 함수(SQL서버가 기본으로 제공해주는 함수들)

SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;

SELECT CONVERT(float, amount) FROM buyTbl;

SELECT PARSE('3.14' AS INT); --예외 발생하면 쿼리가 비정상종료
SELECT TRY_PARSE('3.14' AS INT); --값을 변환 못하면 NULL로 값 대체

--﻿NULL은 =로 비교하지 않고 IS(같다) 로 비교한다. IS NOT(같지 않다)
SELECT name, height FROM userTbl
 WHERE height IS NOT NULL;

 --height smallINT->VARCHR, CHAR 변환
SELECT name, CAST(height AS VARCHAR) + ' cm' FROM userTbl
 WHERE height IS NOT NULL;

SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT PARSE('2021년 5월 14일 10시 27분' AS DATE);


SELECT @@SERVERNAME;

--날짜 및 시간함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재월';
SELECT DAY(GETDATE()) AS '오늘';

--수치함수
SELECT ABS(-199);  --절대값
SELECT ROUND(3.141592, 3); --반올림 ( 3이면, 소수점 셋째짜리가지 표기)
SELECT FLOOR(RAND()*100); --랜덤 + 내림

--논리함수
SELECT IIF(100>200, '참', '거짓');