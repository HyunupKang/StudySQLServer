--UPDATE


--트랜잭션 시작
BEGIN TRANSACTION;

UPDATE testTbl
   SET userName = '성명건'
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '성명건'
     , addr = '부산'
 WHERE Id = 4;

SELECT * FROM testTbl;

COMMIT;
ROLLBACK;


-- 데이터 전부를 삭제하고 
-- 인덱스값을 1부터 다시 시작
TRUNCATE TABLE testTbl; 
