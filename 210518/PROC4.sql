CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT;
	DECLARE @zodiac NVARCHAR(3) -- ¶ì ÀÌ¸§ ÇÒ´ç º¯¼ö
	SELECT @bYear = birthYear FROM userTbl
	 WHERE name = @userName;

	SET @zodiac = 
		CASE
			WHEN (@bYear%12 =0) THEN '¿ø¼þÀÌ'
			WHEN (@bYear%12 =1) THEN '´ß'
			WHEN (@bYear%12 =2) THEN '°³'
			WHEN (@bYear%12 =3) THEN 'µÅÁö'
			WHEN (@bYear%12 =4) THEN 'Áã'
			WHEN (@bYear%12 =5) THEN '¼Ò'
			WHEN (@bYear%12 =6) THEN 'È£¶ûÀÌ'
			WHEN (@bYear%12 =7) THEN 'Åä³¢'
			WHEN (@bYear%12 =8) THEN '¿ë'
			WHEN (@bYear%12 =9) THEN '¹ì'
			WHEN (@bYear%12 =10) THEN '¸»'
			ELSE '¾ç'
		END;
	PRINT CONCAT(@userName, '(', @bYear, '³â»ý)', 'ÀÇ ¶ì ==> ' + @zodiac);
Go

EXEC usp_zodiac  '¼º½Ã°æ'