--UPDATE


--Ʈ����� ����
BEGIN TRANSACTION;

UPDATE testTbl
   SET userName = '�����'
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '�����'
     , addr = '�λ�'
 WHERE Id = 4;

SELECT * FROM testTbl;

COMMIT;
ROLLBACK;


-- ������ ���θ� �����ϰ� 
-- �ε������� 1���� �ٽ� ����
TRUNCATE TABLE testTbl; 
