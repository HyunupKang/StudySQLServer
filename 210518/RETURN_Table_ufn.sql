CREATE OR ALTER FUNCTION ufn_getUser(@height INT)
	RETURNS TABLE -- Table 반환할때는 BEGIN END 필요 없다
AS
	RETURN(
		SELECT * FROM userTbl
		 WHERE height > @height
	)
GO

SELECT * FROM dbo.ufn_getUser(170); -- return이 테이블 

