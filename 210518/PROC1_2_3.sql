--�Ķ����(�Ű�����) �þ�� ���ν���
CREATE PROC usp_users1
	@userName NVARCHAR(10)
AS
	--����
	SELECT userID, name, birthYear FROM userTbl
	WHERE name = @userName;
GO

EXEC usp_users1 '������'; -- ���α׷��� �����Ѵ�??


CREATE PROC usp_users2  -- Void Ÿ���� �޼���
	@userBrithYear INT,
	@userHeight SMALLINT
AS
	SELECT userID, name, birthYear, height, mDate FROM userTbl
	WHERE birthYear >= @userBrithYear
	  AND height >= @userHeight;
GO

EXEC usp_users2 1960, 178; --���� ���ν��� ����



CREATE PROC usp_users3
	@lastName NVARCHAR(2), -- �Ķ���ͷ� �Է� �޴� ��
	@outCount INT OUTPUT -- OUTPUT : return ��, outCount�� �����Ѵ�.
AS
	SELECT @outCount = COUNT(*) FROM userTbl WHERE name LIKE @lastName + '%'; -- output�� ����� ����
GO

DECLARE @myValue INT;
EXEC usp_users3 '��', @myValue OUTPUT; -- @myValue�� ���ϰ� �޴´�.
PRINT CONCAT('�达 ���� ���� ����� ����', @myvalue);


CREATE OR ALTER PROC usp_isyoung --OR ALTER�� ���� ������ �����ϸ�, �̹� ������ ��ü��� ���� ���. ���ǻ� OR ALTER�� ����.
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT --����⵵ ���� ����

	SELECT @bYear = birthYear FROM userTbl
	 WHERE name= @userName;

	IF (@bYear >= 1980)
	BEGIN
		PRINT '���� �����ϴ�';
	END
	ELSE
	BEGIN
		PRINT '�����̳׿�';
	END
GO

EXEC usp_isyoung '�̽±�'