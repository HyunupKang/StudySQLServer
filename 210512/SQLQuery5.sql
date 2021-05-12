USE sqlDB; -- 내가 사용하고자 하는 데이터베이스. 위에 다른 데이터 베이스 선택해도 자동으로 sqlDB가 됨
GO

SELECT * FROM userTbl
 WHERE userID = 'KKH';

 
SELECT * FROM userTBl
 WHERE birthYear >= 1970 AND birthYear <=1980 --userTBl로부터 모두 선택하고, WHERE절로 조건에 만족하는 테이블 찾는다.
   AND height >= 180;