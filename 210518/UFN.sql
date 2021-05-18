--����� ���� �Լ�

--getAge
CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
	RETURNS INT -- ���ν����� �ٸ���
AS
BEGIN
	DECLARE @age INT
	    SET @age = YEAR(GETDATE()) - @bYear
	 RETURN(@age) -- ���ν����� �ٸ���
END
GO

--getInch
CREATE OR ALTER FUNCTION ufn_getInch(@height INT)
	RETURNS INT
AS
BEGIN
	DECLARE @val INT
	SET @val = @height * 0.393;
	RETURN(@val)
END
GO

--getZodiac
CREATE OR ALTER FUNCTION ufn_getZodiac(@bYear INT)
	RETURNS NVARCHAR(3)
AS
BEGIN
	DECLARE @result NVARCHAR(3)

	SET @result = 
		CASE
			WHEN (@bYear%12 =0) THEN '������'
			WHEN (@bYear%12 =1) THEN '��'
			WHEN (@bYear%12 =2) THEN '��'
			WHEN (@bYear%12 =3) THEN '����'
			WHEN (@bYear%12 =4) THEN '��'
			WHEN (@bYear%12 =5) THEN '��'
			WHEN (@bYear%12 =6) THEN 'ȣ����'
			WHEN (@bYear%12 =7) THEN '�䳢'
			WHEN (@bYear%12 =8) THEN '��'
			WHEN (@bYear%12 =9) THEN '��'
			WHEN (@bYear%12 =10) THEN '��'
			ELSE '��'
		END;
	RETURN(@result)
END
GO


SELECT userID, name
	 , birthYear
	 , dbo.ufn_getZodiac(birthYear) AS '��'
	 , dbo.ufn_getAge(birthYear) AS '����'
	 , addr
	 , height, dbo.ufn_getInch(height) AS 'Ű(Inch)'
  FROM userTbl