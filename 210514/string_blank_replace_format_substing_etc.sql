--���ڿ�
SELECT ASCII('+'), CHAR(47); -- ���� ��
SELECT UNICODE('��');

SELECT CONCAT('SQL', 'server', 2019) AS [name]; --CAST : ���ڿ� ����, ���� ��
SELECT 'SQL' + 'server' + CAST(2019 AS varchar); --���� ������ ����ȯ �ʿ�

--�ܾ� ���� ��ġ
SELECT CHARINDEX('world', 'Hello world!'); -- DB�� 1���� ����. �׷��� ����� 7
                                           -- ���ڿ��� ���� ��ġ ������. 
										   -- world�� hello world���� ������ �����ϴ���







-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);--���ʺ��� 3�ڸ� ©�󳽴�. ���������� 4�ڸ�

SELECT SUBSTRING('���ѹα�����!', 5,2); --5��°���� 2�ڸ� ©��

SELECT LEN('Hello world'); --���ڿ� ����
SELECT LEN('���ѹα�����');

SELECT LOWER('hELLO World!'), UPPER('hELLO World!'); --�ҹ���/�빮�� 
--�����̽� ���� �Լ�
SELECT '     SQL', LTRIM('    SQL'); --LTRIM : ���� ���� ����
SELECT '     SQL     ', RTRIM('    SQL     '); --RTRIM ������ ���� ����
SELECT '     SQL     ', TRIM('    SQL     '); --���� �� ����

--Replace ���� �ֻ�
SELECT REPLACE('SQL server 2019', 'server', '����');--server ���ڸ� ������ ��ü
SELECT REPLACE('SQL server 2019, server����', 'server', '����');--server ���� ��� ��ü

--STR ���� ��
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT ���� ��
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss');--�ѱ���
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss');--�̱���

--�����Լ�
SELECT name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL
 ORDER BY height DESC;

 SELECT ROW_NUMBER() OVER( ORDER BY height DESC) AS 'Ű����'
      , name, height, addr
   FROM userTbl
  WHERE height IS NOT NULL;

 SELECT DENSE_RANK() OVER( ORDER BY height DESC) AS 'Ű����'
      , name, height, addr
   FROM userTbl
  WHERE height IS NOT NULL;

 SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����'
      , name, height, addr
   FROM userTbl
  WHERE height IS NOT NULL;

SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '���ż���'
       , userID, SUM(price * amount) AS '����ں����űݾ�'
  FROM buyTbl
 GROUP BY userID;

 --JSON
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '���ż���'
       , userID, SUM(price * amount) AS '����ں����űݾ�'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO;  --FOR XML AUTO; ���µ� ����