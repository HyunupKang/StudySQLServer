--GROUP BY
--���̵𺰷� ���� ��ġ ����� ��ġ
SELECT userID, SUM(amount) AS '�� ���� ����'
  FROM buyTbl
 GROUP BY userID;


 SELECT userID, amount FROM buyTbl
 GROUP BY userID,amount;


--�츮 ���θ����� ���� �� ���� �� ����� ���̵𺰷� ��ȸ�ϰ�
--�� �ݾ��� ���� ���
SELECT userID, SUM(amount * price) AS '�� ���� �ݾ�'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;


 SELECT SUM(amount * price) AS '�� ���� �ݾ�'
  FROM buyTbl;

--��ձ��űݾ�
SELECT AVG(price) AS '��ձ��űݾ�' 
  FROM buyTbl;

--��������̺��� Ű�� ���� ū ����ϰ� ���� ��������� ��ȸ(���� ���� �̿�)
SELECT * FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl);

SELECT name AS '�̸�', height AS [Ű] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl);

--GROUP BY/HAVING
SELECT userID AS '����� ���̵�'
     , SUM(price * amount) AS[�� ���� �ݾ�]
  FROM buyTbl
  WHERE SUM(price * amount)>=1000  --WHERE������ �����Լ� �� �� ����.
                                   --WHERE�� ���͸� ���� ������
 GROUP BY userID;


SELECT userID AS '����� ���̵�'
     , SUM(price * amount) AS[�� ���� �ݾ�]
  FROM buyTbl
 GROUP BY userID
HAVING SUM(price * amount)>=1000;



--���
--��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName
     , userID
     , SUM(price * amount) AS[�� ���� �ݾ�]
  FROM buyTbl
 GROUP BY userID, groupName;

SELECT groupName
     , userID
     , SUM(price * amount) AS[�� ���� �ݾ�]
  FROM buyTbl
 GROUP BY ROLLUP(userID, groupName); --ROLLUP

SELECT groupName
     , userID
     , SUM(price * amount) AS[�� ���� �ݾ�]
  FROM buyTbl
 GROUP BY CUBE(groupName, userID);

 SELECT groupName
     , SUM(price * amount) AS [�� ���� �ݾ�]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY CUBE(groupName);