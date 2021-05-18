SELECT m.Names, m.Levels, m.Addr
     , r.rentalDate
  FROM membertbl AS m
  LEFT OUTER JOIN rentaltbl AS r
    ON m.Idx = r.memberIdx
 WHERE r.rentalDate IS NULL