CREATE OR ALTER FUNCTION ufn_getUser(@height INT)
	RETURNS TABLE -- Table ��ȯ�Ҷ��� BEGIN END �ʿ� ����
AS
	RETURN(
		SELECT * FROM userTbl
		 WHERE height > @height
	)
GO

SELECT * FROM dbo.ufn_getUser(170); -- return�� ���̺� 

