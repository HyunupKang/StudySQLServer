USE sqlDB; -- ���� ����ϰ��� �ϴ� �����ͺ��̽�. ���� �ٸ� ������ ���̽� �����ص� �ڵ����� sqlDB�� ��
GO

SELECT * FROM userTbl
 WHERE userID = 'KKH';

 
SELECT * FROM userTBl
 WHERE birthYear >= 1970 AND birthYear <=1980 --userTBl�κ��� ��� �����ϰ�, WHERE���� ���ǿ� �����ϴ� ���̺� ã�´�.
   AND height >= 180;