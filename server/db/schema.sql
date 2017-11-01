DROP DATABASE fakeFB;
CREATE DATABASE fakeFB;

USE fakeFB;

CREATE TABLE users (
  id INTEGER AUTO_INCREMENT,
  name VARCHAR(20),
  email VARCHAR(20),
  username VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE albums (
  id INTEGER AUTO_INCREMENT,
  main_photo_id INTEGER,
  title VARCHAR(20),
  date_created TIMESTAMP,
  creator_id INTEGER,
  PRIMARY KEY (id)
--   FOREIGN KEY (main_photo_id) REFERENCES photos(id),
--   FOREIGN KEY (creator_id) REFERENCES users(id)
);

CREATE TABLE photos (
  id INTEGER AUTO_INCREMENT,
  caption VARCHAR(20),
  image_url VARCHAR(20),
  album_id INTEGER,
  date_created TIMESTAMP,
  PRIMARY KEY (id)
--   FOREIGN KEY (album_id) REFERENCES albums(id)
);

ALTER TABLE albums ADD FOREIGN KEY (creator_id) REFERENCES users(id);
ALTER TABLE albums ADD FOREIGN KEY (main_photo_id) REFERENCES photos(id);
ALTER TABLE photos ADD FOREIGN KEY (album_id) REFERENCES albums(id);

INSERT INTO users (name, email, username) VALUES ('Ross Geller', 'rgeller@gmail.com', 'rgeller');