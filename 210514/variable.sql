--���α׷��� ����
DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2);  -- �� �ټ��ڸ�, ���߿� �Ҽ��� 2�ڸ�
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3);

SET @myVar1 = 4000;
SET @myVar2 = 3.14;
SET @MyVar3 = '���� �̸� ==> ';
SET @inchUnit = 0.393;

--SELECT @myVar1, @myVar2;
--SELECT @myVar3 AS 'string', name FROM userTbl WHERE height > 180;
SELECT name, height * @inchUnit AS 'Ű(inch)' FROM userTbl;