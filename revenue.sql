
-- title of every film which doesn't have a budget associated with it.
SELECT title 
FROM films
WHERE budget IS NULL;

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

—-amount grossed by the best performing film between 2000 and 2012, inclusive
SELECT MAX(gross)
FROM films
WHERE release_year BETWEEN 2000 and 2012;

--title and net profit (the amount a film grossed, minus its budget) for all films. 
SELECT 
  title, 
  (gross-budget) AS net_profit
FROM films;
