CREATE SCHEMA IF NOT EXISTS trackq;

CREATE TABLE IF NOT EXISTS trackq.users (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(30) NOT NULL UNIQUE,
  email VARCHAR(30) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS trackq.roles (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  rolename VARCHAR(30) NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS trackq.user_to_role (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  user_id BIGINT NOT NULL, role_id BIGINT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY(role_id) REFERENCES roles(id)
);

CREATE TABLE IF NOT EXISTS  trackq.user_email_confirmation (
  id INT PRIMARY KEY AUTO_INCREMENT,
  confirmation_id VARCHAR(255),
  user_id INT NOT NULL, role_id INT NOT NULL,
  expiration_timestamp timestamp,
  FOREIGN KEY (user_id) REFERENCES users(id)
);