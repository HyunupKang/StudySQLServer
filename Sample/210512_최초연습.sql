--조회 명령문
SELECT memberID, memberName
  FROM memberTBL
 WHERE memberID = 'Sang';

SELECT * FROM memberTBL;
SELECT productName, cost, company FROM productTBL;

--입력명령문
INSERT INTO memberTBL
VALUES ('Bang', '방문식', '부산시 진구')
