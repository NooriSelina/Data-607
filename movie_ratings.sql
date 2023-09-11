-- Create the database (if it doesn't already exist)
CREATE DATABASE IF NOT EXISTS movie_ratings;

-- Use the database
USE movie_ratings;

-- Create the table
CREATE TABLE IF NOT EXISTS movie_ratings (
    Movie VARCHAR(255),
    Friend_1 INT,
    Friend_2 INT,
    Friend_3 INT,
    Friend_4 INT,
    Friend_5 INT
);

-- Insert data into the table
INSERT INTO movie_ratings (Movie, Friend_1, Friend_2, Friend_3, Friend_4, Friend_5)
VALUES
    ('Titanic', 4, 3, 4, null, 4),
    ('Avengers: Endgame', 2, 5, 4, 4, 3),
    ('Frozen', 5, 1, 2, 3, 2),
    ('Avatar', 5, 4, null, 3, 4),
    ('Barbie', 5, 1, 3, 5, 4),
    ('Gran Turismo', null, 5, 3, 2, null);

-- Display the table with "null" values and only one name for each movie
SELECT
    Movie,
    MAX(IFNULL(Friend_1, 'null')) AS "Friend 1",
    MAX(IFNULL(Friend_2, 'null')) AS "Friend 2",
    MAX(IFNULL(Friend_3, 'null')) AS "Friend 3",
    MAX(IFNULL(Friend_4, 'null')) AS "Friend 4",
    MAX(IFNULL(Friend_5, 'null')) AS "Friend 5"
FROM movie_ratings
GROUP BY Movie;







