
-- see the database
SELECT * from films;

-- selects all details for ‘French’ films. 
SELECT *
FROM films
WHERE language= 'French’;


--Get the number of films which don't have a language associated with them.
SELECT COUNT(*)
FROM films
WHERE language IS NULL;


--Get the title and language of all films which were in English, Spanish, or French.
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');


/* Lets get more specific… 
Get the title and release year for films released in the 90s, 
filters the records to only include French or Spanish language films, 
and only return films that took in more than $2M gross. */

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000) AND (language= 'French' OR language= 'Spanish')
AND gross > 2000000;

/* Get the title and release year of all Spanish or French language films that: 
were released between 1990 and 2000 (inclusive), and with budgets over $100 million */
SELECT title, release_year 
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
AND budget > 100000000 
AND (language= 'Spanish' OR language= 'French');
