--except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT -- ��������
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL;


--���� ���̺� ���� �����ϴ� �����͸� �߷����°�
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT 
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL;