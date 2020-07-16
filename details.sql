--the number of years between the newest film and oldest film.
SELECT MAX(release_year)- MIN(release_year) AS difference
FROM films;

--the number of decades the films table covers. 
SELECT  (MAX(release_year) - MIN(release_year )) /10.0 AS number_of_decades
FROM films;

--title and certification of all films with an NC-17 or R certification.
SELECT 
  title, 
  certification
FROM films
WHERE certification IN ('R', 'NC-17');
