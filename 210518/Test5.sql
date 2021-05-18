SELECT d.Names AS names
	 , CONCAT(FORMAT(SUM(b.Price), 'N0', 'en-us'), '원') AS [총합계금액]
  FROM divtbl AS d
INNER JOIN bookstbl AS b
ON d.Division = b.Division
GROUP BY ROLLUP(d.Names)

