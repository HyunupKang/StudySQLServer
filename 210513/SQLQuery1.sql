SELECT * FROM userTbl;
--데이터 조회 필터링
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 WHERE name LIKE '%용%';

SELECT userID, name, addr FROM userTbl
 WHERE name LIKE '%용%';

--특정 테이블 레코드 갯수 확인
SELECT COUNT(userID) FROM userTbl;

--키가 180이상이고 출생년도가 1970년 이후에 태어난 사람의 아이디와 이름, 키를 조회
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970;

 --출생년도순으로(오름차순)으로 정렬 조회
SELECT * FROM userTbl
ORDER BY birthYear;--(ASC생략)

--내림 차순
SELECT * FROM userTbl
ORDER BY birthYear DESC;

--SELECT INTO
--userTbl_New 테이블 생성, userTbl을 그대로 복사 생성함 => 백업 만들때 주로 사용
SELECT * INTO userTbl_New FROM userTbl;--user Tbl에는 PK가 있는데(userID), userTbl_New는 PK 안만들어짐

SELECT userID, name, height INTO userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;

SELECT userID, name, height INTO userTbl_Backup2 FROM userTbl
 WHERE addr = '서울';

SELECT * FROM userTbl_Backup2;

