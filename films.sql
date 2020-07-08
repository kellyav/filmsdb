%%sql

-- see the database
SELECT * from films;

-- selects all details for films released in 2016. 
SELECT * 
FROM films
WHERE release_year = 2016;


-- selects all details for ‘French’ films. 
SELECT *
FROM films
WHERE language= 'French’;


-- Get all details for Spanish language films released after 2000, but before 2010.
SELECT * 
FROM films
WHERE language='Spanish' AND release_year> 2000 AND release_year <2010;

/* Lets get more specific… 
Get the title and release year for films released in the 90s, 
filters the records to only include French or Spanish language films, 
and only return films that took in more than $2M gross. */

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000) AND (language= 'French' OR language= 'Spanish')
AND gross > 2000000;


-- Get the title and release year of all films released between 1990 and 2000 (inclusive), select only films that have budgets over $100 million, only return Spanish or French language films.
SELECT title, release_year 
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
AND budget > 100000000 
AND (language= 'Spanish' OR language= 'French');


-- Get the title and release year of all films released in 1990 or 2000 that were longer than two hours.
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000)
AND duration > 120;

--Get the title and language of all films which were in English, Spanish, or French.
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');


--Get the title and certification of all films with an NC-17 or R certification.
SELECT title, certification
FROM films
WHERE certification IN ('R', 'NC-17')

--Get the title of every film which doesn't have a budget associated with it.
SELECT title 
FROM films
WHERE budget IS NULL;

--Get the number of films which don't have a language associated with them.
SELECT COUNT(*)
FROM films
WHERE language IS NULL;

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

--total amount grossed by all films.
SELECT SUM(gross)
FROM films;

--average amount grossed by all films
SELECT AVG(gross)
FROM films;

--amount grossed by the worst performing film.
SELECT MIN(gross)
FROM films;

--amount grossed by the best performing film.
SELECT MAX(gross)
FROM films;

--total amount grossed by all films made in the year 2000 or later.
SELECT SUM(gross)
FROM films
WHERE release_year >= 2000;

--average amount grossed by all films whose titles start with the letter 'A'.
SELECT AVG(gross)
FROM films
WHERE title LIKE 'A%';

--amount grossed by the worst performing film in 1994.
SELECT MIN(gross)
FROM films
WHERE release_year = 1994;

—amount grossed by the best performing film between 2000 and 2012, inclusive
SELECT MAX(gross)
FROM films
WHERE release_year BETWEEN 2000 and 2012;

--Get the title and net profit (the amount a film grossed, minus its budget) for all films. 
SELECT title, (gross-budget) AS net_profit
FROM films;

--Get the title and duration in hours for all films. The duration units is in minutes, so we divide by 60.0 to get the duration in hours.
SELECT title, (duration/60.0) AS duration_hours
FROM films;

--average duration in hours for all films, aliased as avg_duration_hours
SELECT AVG(duration)/60.0 AS avg_duration_hours
FROM films;

--the number of years between the newest film and oldest film.
SELECT MAX(release_year)- MIN(release_year) AS difference
FROM films;

--the number of decades the films table covers. 
SELECT  (MAX(release_year) - MIN(release_year )) /10.0 AS number_of_decades
FROM films;

