-- the title and release year of all films released in 1990 or 2000 that were longer than two hours.
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000)
AND duration > 120;

--total duration of all films.
SELECT SUM(duration)
FROM films;

--average duration
SELECT AVG(duration)
from films;

--duration of the shortest film
SELECT MIN(duration)
FROM films;

--duration of the longest film
SELECT MAX(duration)
FROM films;

/* Get the title and duration in hours for all films. 
(duration is in minutes, so divide by 60.0 to get the duration in hours. */
SELECT 
  title, 
  (duration/60.0) AS duration_hours
FROM films;

--average duration in hours for all films, aliased as avg_duration_hours
SELECT 
  AVG(duration)/60.0 AS avg_duration_hours
FROM films;
