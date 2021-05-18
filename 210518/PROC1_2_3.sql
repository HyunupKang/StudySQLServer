--파라미터(매개변수) 늘어가는 프로시져
CREATE PROC usp_users1
	@userName NVARCHAR(10)
AS
	--로직
	SELECT userID, name, birthYear FROM userTbl
	WHERE name = @userName;
GO

EXEC usp_users1 '조관우'; -- 프로그램을 실행한다??


CREATE PROC usp_users2  -- Void 타입의 메서드
	@userBrithYear INT,
	@userHeight SMALLINT
AS
	SELECT userID, name, birthYear, height, mDate FROM userTbl
	WHERE birthYear >= @userBrithYear
	  AND height >= @userHeight;
GO

EXEC usp_users2 1960, 178; --저장 프로시저 실행



CREATE PROC usp_users3
	@lastName NVARCHAR(2), -- 파라미터로 입력 받는 값
	@outCount INT OUTPUT -- OUTPUT : return 값, outCount를 리턴한다.
AS
	SELECT @outCount = COUNT(*) FROM userTbl WHERE name LIKE @lastName + '%'; -- output에 결과값 저장
GO

DECLARE @myValue INT;
EXEC usp_users3 '김', @myValue OUTPUT; -- @myValue에 리턴값 받는다.
PRINT CONCAT('김씨 성을 가진 사용자 수는', @myvalue);


CREATE OR ALTER PROC usp_isyoung --OR ALTER를 빼고 여러번 수행하면, 이미 생성된 개체라며 오류 뜬다. 편의상 OR ALTER를 쓴다.
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT --출생년도 저장 변수

	SELECT @bYear = birthYear FROM userTbl
	 WHERE name= @userName;

	IF (@bYear >= 1980)
	BEGIN
		PRINT '아직 젊습니다';
	END
	ELSE
	BEGIN
		PRINT '늙으셨네요';
	END
GO

EXEC usp_isyoung '이승기'