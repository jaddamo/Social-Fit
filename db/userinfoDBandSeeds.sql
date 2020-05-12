DROP DATABASE IF EXISTS users_db;

CREATE DATABASE users_db;

USE users_db;

CREATE TABLE user_info (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  phone INT(10) NULL,
  PRIMARY KEY (id)
);

INSERT INTO user_info (name, email, phone)
VALUES ("jane", jellyjane@gmail.com, 8007886669);

INSERT INTO user_info (name, email, phone)
VALUES ("ed", ededed@gmail.com, 8007885555);

INSERT INTO user_info (name, email, phone)
VALUES ("shaminder", shasha@gmail.com, 1234567890);

INSERT INTO user_info (name, email, phone)
VALUES ("joe", joeeeee@gmail.com, 4346768980);

