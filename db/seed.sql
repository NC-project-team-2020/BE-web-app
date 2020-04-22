DROP DATABASE IF EXISTS nc_chat;
CREATE DATABASE nc_chat;
\c nc_chat;
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR NOT NULL,
  user_img TEXT
);
CREATE TABLE rooms (
  room_id SERIAL PRIMARY KEY,
  room_name VARCHAR NOT NULL
);
CREATE TABLE messages (
  message_id SERIAL PRIMARY KEY,
  message_text TEXT NOT NULL,
  user_id INT REFERENCES users(user_id) NOT NULL,
  room_id INT REFERENCES rooms(room_id) NOT NULL,
  created_at DATE NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users
  (user_name, user_img)
VALUES
  ('Michael Smith', 'https://cdn.onlinewebfonts.com/svg/img_507349.png'),
  ('Hannes Tagerud', 'https://cdn.onlinewebfonts.com/svg/img_507349.png'),
  ('Steven Woods', 'https://cdn.onlinewebfonts.com/svg/img_507349.png'),
  ('Ikhlaas Kapadia', 'https://cdn.onlinewebfonts.com/svg/img_507349.png');

INSERT INTO rooms
  (room_name)
VALUES
  ('Music'),
  ('Sport'),
  ('Baking'),
  ('Coding'),
  ('Politics'),
  ('Art');


 