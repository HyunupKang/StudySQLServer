--DELETE
--WHERE�� �Ⱦ��� �������� ���� �ȴ�!!
BEGIN TRAN; 

DELETE FROM testTbl
 WHERE id =4;

DELETE FROM testTbl
 WHERE addr ='����';

 SELECT * FROm testTbl;

 COMMIT;
 ROLLBACK;