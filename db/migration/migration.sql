DROP SCHEMA IF EXISTS GistsBoard;
CREATE SCHEMA GistsBoard;
USE GistsBoard;

CREATE TABLE `users`
(
  id bigint auto_increment,
  username varchar(255) NOT NULL,
  password_hash varchar(255) NOT NULL,
  email varchar(255),
  PRIMARY KEY (`id`)
);

CREATE TABLE `gists`
(
  id bigint auto_increment,
  title varchar(255) NOT NULL,
  url varchar(255) NOT NULL,
  content text NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  user_id bigint,
  PRIMARY KEY (`id`),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE `comments`
(
  id bigint auto_increment,
  content text NOT NULL,
  created_at datetime NOT NULL,
  user_id bigint,
  gist_id bigint,
  PRIMARY KEY (`id`),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (gist_id) REFERENCES gists(id)
);

INSERT INTO `users` (username, password_hash, email) VALUES ('testuser', 'hashedpassword', 'testuser@example.com');
-- testuserのIDを取得

-- 上記で取得したIDを使ってテストのgistsを作成
INSERT INTO `gists` (title, url, content, created_at, updated_at, user_id) 
VALUES ('Test Gist', 'http://example.com/test-gist', 'This is a test gist.', NOW(), NOW(), (SELECT id FROM `users` WHERE username = 'testuser'))
ON DUPLICATE KEY UPDATE title=VALUES(title), url=VALUES(url), content=VALUES(content), created_at=VALUES(created_at), updated_at=VALUES(updated_at), user_id=VALUES(user_id);