--외부조인

--내부조인
SELECT u.userID, u.name, b.prodName
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
  FROM userTbl AS u
  INNER JOIN buyTbl AS b
  on u.userID = b.userID
  ORDER BY u.userID

--외부조인
SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 LEFT OUTER JOIN buyTbl AS b
    on u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;

--RIGHT 출력하면 아무것도 안뜸 => 테이블 좌측, 우측이 있어야 하는데 테이블이 2개라 조건 안맞음
SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    on u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID


--학생, 동아리, 가입정보 테이블
--OUTER JOIN
SELECT s.stdiD, s.stdName, s.Region
     , r.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s
  INNER JOIN reginfoTbl AS r
    On s.stdiD = r.StdID
  INNER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName

SELECT s.stdiD, s.stdName, s.Region
     , r.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
    On s.stdiD = r.StdID
  INNER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName

SELECT s.stdiD, s.stdName, s.Region
     , r.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
    On s.stdiD = r.StdID
  LEFT OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName

SELECT s.stdiD, s.stdName, s.Region
     , r.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
    On s.stdiD = r.StdID
  RIGHT OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName

SELECT s.stdiD, s.stdName, s.Region
     , r.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s
  FULL OUTER JOIN reginfoTbl AS r
    On s.stdiD = r.StdID
  FULL OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName






SELECT s.stdiD, s.stdName, s.Region
     , r.ClubName, r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
    On s.stdiD = r.StdID


SELECT c.ClubName, c.ClubRoom, r.id, r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
    ON c.ClubName = r.ClubName

SELECT c.ClubName,  r.id, r.RegDate
  FROM reginfoTbl AS c
  RIGHT OUTER JOIN reginfoTbl AS r
    ON c.ClubName = r.ClubName

--집합(테이블 합치기)
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl

SELECT StdName, Region FROM stdTbl
UNION
SELECT StdName, Region FROM stdTbl

SELECT StdName, Region FROM stdTbl
UNION ALL
SELECT StdName, Region FROM stdTbl
