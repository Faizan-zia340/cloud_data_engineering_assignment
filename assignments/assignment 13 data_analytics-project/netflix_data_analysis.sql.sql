CREATE TABLE NetflixShows (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast VARCHAR(MAX),
    country VARCHAR(100),
    date_added DATE,
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(50),
    listed_in VARCHAR(MAX),
    description VARCHAR(MAX)
);


ALTER TABLE NetflixShows
ALTER COLUMN country VARCHAR(MAX);


--1: Top 10 latest movies 
SELECT TOP 10 title, release_year, country
FROM NetflixShows
WHERE type = 'MOVIE'
ORDER BY release_year DESC;



--2 :TV Shows with more than 1 season
SELECT title, duration
FROM NetflixShows
WHERE type = 'TV SHOW'
AND duration LIKE '%Seasons%'
AND CAST(SUBSTRING(duration, 1, CHARINDEX(' ', duration)-1) AS INT) > 1;



--3:Count of shows by country
SELECT country, COUNT(*) AS total_shows
FROM NetflixShows
GROUP BY country
ORDER BY total_shows DESC;


--4 :Shows by a specific director (example: MIKE FLANAGAN)
SELECT title, type, release_year
FROM NetflixShows
WHERE director = 'MIKE FLANAGAN';


--5 : Shows listed in “Documentaries”
SELECT title, type
FROM NetflixShows
WHERE listed_in LIKE '%Documentaries%';










