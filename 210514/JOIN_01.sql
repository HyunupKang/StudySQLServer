-- JOIN : INNER JOIN(내부조인)
SELECT * FROM userTbl
 INNER JOIN buyTbl
    ON userTBl.userID = buyTbl.userID;

SELECT userTbl.userID
     , userTbl.name
	 , userTbl.addr
	 , CONCAT(userTbl.mobile1, userTbl.mobile2) AS mobile
	 , buyTbl.num
	 , buyTbl.prodName
	 , buyTbl.price
	 , buyTbl.amount
  FROM userTbl
 INNER JOIN buyTbl
    ON userTBl.userID = buyTbl.userID;


SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.num
	 , b.prodName
	 , b.price
	 , b.amount
  FROM userTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
	WHERE u.userID = 'JYP';