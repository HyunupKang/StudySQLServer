--DELETE
--WHERE을 안쓰면 사유서를 쓰게 된다!!
BEGIN TRAN; 

DELETE FROM testTbl
 WHERE id =4;

DELETE FROM testTbl
 WHERE addr ='서울';

 SELECT * FROm testTbl;

 COMMIT;
 ROLLBACK;