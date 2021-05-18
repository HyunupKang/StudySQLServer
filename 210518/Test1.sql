SELECT LOWER(Email) AS email
     , Mobile AS mobile
	 , Names AS names
	 , Addr AS addr
  FROM membertbl
ORDER BY names DESC;