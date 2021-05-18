SELECT b.Idx
     , CONCAT('���� : ', b.Names) AS Names
     , CONCAT('���� > ', b.Author) AS Author
	 , FORMAT(b.ReleaseDate,'yyyy�� MM�� dd��') AS '������'
	 , b.ISBN
	 , CONCAT(FORMAT( b.Price, 'N0', 'en-us'), '��') AS '����'
 FROM bookstbl AS b
ORDER BY b.Idx DESC
