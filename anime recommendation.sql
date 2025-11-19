CREATE DATABASE anime_recommendation;
USE anime_recommendation;

-- ANIME TABLE
CREATE TABLE Anime (
    anime_id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    episodes INT,
    studio VARCHAR(255),
    release_year INT
);

-- USERS TABLE
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255)
);

-- RATINGS TABLE
CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    anime_id INT,
    rating DECIMAL(3,1),
    watched_episodes INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (anime_id) REFERENCES Anime(anime_id)
);

-- WATCHLIST TABLE
CREATE TABLE Watchlist (
    watchlist_id INT PRIMARY KEY,
    user_id INT,
    anime_id INT,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (anime_id) REFERENCES Anime(anime_id)
);

INSERT INTO Anime VALUES
(1, 'Naruto', 'Action, Adventure', 220, 'Studio Pierrot', 2002),
(2, 'Attack on Titan', 'Action, Drama', 75, 'MAPPA', 2013),
(3, 'Death Note', 'Thriller, Mystery', 37, 'Madhouse', 2006),
(4, 'Haikyuu!!', 'Sports, Comedy', 85, 'Production I.G', 2014),
(5, 'Your Name', 'Romance, Drama', 1, 'CoMix Wave Films', 2016);

INSERT INTO Users VALUES
(1, 'Ram'),
(2, 'arjun'),
(3, 'Sita');

INSERT INTO Ratings VALUES
(1, 1, 1, 9.0, 200),
(2, 1, 2, 8.5, 50),
(3, 1, 3, 9.5, 37),
(4, 2, 1, 8.0, 150),
(5, 2, 4, 9.2, 70),
(6, 3, 5, 9.0, 1),
(7, 3, 3, 8.8, 37);

INSERT INTO Watchlist VALUES
(1, 1, 4, 'planned'),
(2, 1, 5, 'completed'),
(3, 2, 2, 'watching'),
(4, 3, 1, 'dropped');

-- top rated anime query
SELECT title, genre, AVG(rating) AS avg_rating
FROM Anime
JOIN Ratings USING(anime_id)
GROUP BY anime_id
ORDER BY avg_rating DESC;

