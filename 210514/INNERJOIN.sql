--3개 테이블 내부조인
SELECT * FROM stdTbl;
SELECT * FROM clubTbl;


SELECT s.StdID, s.StdName, r.ClubName, c.ClubRoom, r.RegDate
  FROM stdTbl AS s
 INNER JOIN reginfoTbl AS r
    ON s.StdID = r.StdID
 INNER JOIN clubTbl AS c
    ON c.ClubName = r.CluName;