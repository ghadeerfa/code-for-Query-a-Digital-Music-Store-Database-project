-- q2 The top 10 band Who is writing the rock music
SELECT ar.name ,count(*) as totaltrack, a.artistid
from genre g 
join  Track t
ON t.genreid=g.genreid
join Album a
ON t.albumid = a.albumid
JOIN Artist ar
on a.artistid = ar.artistid
WHERE g.name = 'Rock'
GROUP by a.artistid
ORDER by totaltrack DESC
LIMIT 10 ;

