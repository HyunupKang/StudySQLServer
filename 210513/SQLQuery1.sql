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

 --����⵵������(��������)���� ���� ��ȸ
SELECT * FROM userTbl
ORDER BY birthYear;--(ASC����)

--���� ����
SELECT * FROM userTbl
ORDER BY birthYear DESC;

--SELECT INTO
--userTbl_New ���̺� ����, userTbl�� �״�� ���� ������ => ��� ���鶧 �ַ� ���
SELECT * INTO userTbl_New FROM userTbl;--user Tbl���� PK�� �ִµ�(userID), userTbl_New�� PK �ȸ������

SELECT userID, name, height INTO userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;

SELECT userID, name, height INTO userTbl_Backup2 FROM userTbl
 WHERE addr = '����';

SELECT * FROM userTbl_Backup2;

