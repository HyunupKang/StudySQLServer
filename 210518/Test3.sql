SELECT b.Idx
     , CONCAT('제목 : ', b.Names) AS Names
     , CONCAT('저자 > ', b.Author) AS Author
	 , FORMAT(b.ReleaseDate,'yyyy년 MM월 dd일') AS '출판일'
	 , b.ISBN
	 , CONCAT(FORMAT( b.Price, 'N0', 'en-us'), '원') AS '가격'
 FROM bookstbl AS b
ORDER BY b.Idx DESC
