SELECT d.Names AS names
	 , CONCAT(FORMAT(SUM(b.Price), 'N0', 'en-us'), '��') AS [���հ�ݾ�]
  FROM divtbl AS d
INNER JOIN bookstbl AS b
ON d.Division = b.Division
GROUP BY ROLLUP(d.Names)

