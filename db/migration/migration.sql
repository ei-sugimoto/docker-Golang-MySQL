DROP SCHEMA IF EXISTS testDB;
CREATE SCHEMA testDB;
USE testDB;

CREATE TABLE `users`
(
  id bigint auto_increment,
  username varchar(255) NOT NULL,
  password_hash varchar(255) NOT NULL,
  email varchar(255),
  PRIMARY KEY (`id`)
);

INSERT INTO `users` (username, password_hash, email) VALUES ('testuser', 'hashedpassword', 'testuser@example.com');
