DROP TABLE IF EXISTS albums CASCADE;
DROP TABLE IF EXISTS tracks CASCADE;
--- 'albums' table
CREATE TABLE albums (
    album_id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    artist VARCHAR(255),
    genre VARCHAR(255),
    label VARCHAR(255)
);
--- 'tracks' table
CREATE TABLE tracks(
    album_id INT REFERENCES albums(album_id),
    track_id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    length INT
);
--- Insert at least 10 rows into the 'album' table
INSERT INTO albums(title, release_year, artist, genre, label)
VALUES ('21', 2011, 'Adele', 'Pop', 'XL Recordings'),
    ( 'Goodbye Yellow Brick Road', 1973, 'Elton John', 'Rock', 'MCA Records' ), 
    ( 'Born to Run', 1975, 'Bruce Springsteen', 'Rock', 'Columbia Records' ),
    ( 'Raising Hell', 1986, 'Run-DMC', 'Hip Hop', 'Profile Records' ),
    ( 'The Joshua Tree', 1987, 'U2', 'Rock', 'Island Records' ),
    ('21', 2011, 'Adele', 'Pop', 'XL Recordings'),
    ( 'Goodbye Yellow Brick Road', 1973, 'Elton John', 'Rock', 'MCA Records' ),
    ( 'Born to Run', 1975, 'Bruce Springsteen', 'Rock', 'Columbia Records' ),
    ( 'Raising Hell', 1986, 'Run-DMC', 'Hip Hop', 'Profile Records' ),
    ( 'The Joshua Tree', 1987, 'U2', 'Rock', 'Island Records' );
--- Insert additional rows into the 'tracks' table
INSERT INTO tracks (title, length, album_id)
VALUES('Rolling in the Deep', 4, 1),
    ('Someone Like You', 5, 8),
    ('Love the Way You Lie', 4, 10),
    ('Stan', 6, 10),
    ('Rocket man', 5, 10),
    ('Candle in the Wind', 4, 3),
    ('Jeremy', 5, 4),
    ('Alive', 5, 5),
    ('Even Flow', 5, 4),
    ('Born to Run', 5, 5),
    ('Born to Run', 5, 6);
--- SQL query to see the albums and tracks that belong to a certain album
SELECT a.title AS album_title,
    t.title AS track_title,
    t.length
FROM albums as a
    JOIN tracks as t ON t.album_id = a.album_id
ORDER BY a.title ASC
LIMIT 10;
-- SQL query to see the tracks that belong to a certain album
SELECT t.title AS track_title,
    a.title AS album_title,
    t.length
FROM albums as a
    JOIN tracks as t ON t.album_id = a.album_id
ORDER BY t.title ASC
LIMIT 10;
--- SQL query to see the number of songs an album has
SELECT a.title,
    COUNT(t.track_id) AS n_tracks
FROM albums as a
    JOIN tracks as t ON t.album_id = a.album_id
GROUP BY a.title;
--- SQL query to see how many albums a particular trackk is included in
SELECT t.title,
    COUNT(a.album_id) AS n_albums
FROM albums as a
    JOIN tracks as t ON t.album_id = a.album_id
GROUP BY t.title;