DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS albums;

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  artist VARCHAR(255)
);
CREATE TABLE albums(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  artist_id INT REFERENCES artists(id)
);
