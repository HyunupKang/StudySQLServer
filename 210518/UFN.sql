--사용자 정의 함수

--getAge
CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
	RETURNS INT -- 프로시저랑 다른점
AS
BEGIN
	DECLARE @age INT
	    SET @age = YEAR(GETDATE()) - @bYear
	 RETURN(@age) -- 프로시저랑 다른점
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
			WHEN (@bYear%12 =0) THEN '원숭이'
			WHEN (@bYear%12 =1) THEN '닭'
			WHEN (@bYear%12 =2) THEN '개'
			WHEN (@bYear%12 =3) THEN '돼지'
			WHEN (@bYear%12 =4) THEN '쥐'
			WHEN (@bYear%12 =5) THEN '소'
			WHEN (@bYear%12 =6) THEN '호랑이'
			WHEN (@bYear%12 =7) THEN '토끼'
			WHEN (@bYear%12 =8) THEN '용'
			WHEN (@bYear%12 =9) THEN '뱀'
			WHEN (@bYear%12 =10) THEN '말'
			ELSE '양'
		END;
	RETURN(@result)
END
GO


SELECT userID, name
	 , birthYear
	 , dbo.ufn_getZodiac(birthYear) AS '띠'
	 , dbo.ufn_getAge(birthYear) AS '나이'
	 , addr
	 , height, dbo.ufn_getInch(height) AS '키(Inch)'
  FROM userTbl