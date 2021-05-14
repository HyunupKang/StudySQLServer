--�ܺ�����

--��������
SELECT u.userID, u.name, b.prodName
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
  FROM userTbl AS u
  INNER JOIN buyTbl AS b
  on u.userID = b.userID
  ORDER BY u.userID

--�ܺ�����
SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 LEFT OUTER JOIN buyTbl AS b
    on u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;

--RIGHT ����ϸ� �ƹ��͵� �ȶ� => ���̺� ����, ������ �־�� �ϴµ� ���̺��� 2���� ���� �ȸ���
SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    on u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID


--�л�, ���Ƹ�, �������� ���̺�
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

--����(���̺� ��ġ��)
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl

SELECT StdName, Region FROM stdTbl
UNION
SELECT StdName, Region FROM stdTbl

SELECT StdName, Region FROM stdTbl
UNION ALL
SELECT StdName, Region FROM stdTbl
