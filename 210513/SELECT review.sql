SELECT * FROM userTbl;
--������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 WHERE name LIKE '%��%';

SELECT userID, name, addr FROM userTbl
 WHERE name LIKE '%��%';

--Ư�� ���̺� ���ڵ� ���� Ȯ��
SELECT COUNT(userID) FROM userTbl;

--Ű�� 180�̻��̰� ����⵵�� 1970�� ���Ŀ� �¾ ����� ���̵�� �̸�, Ű�� ��ȸ
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970;