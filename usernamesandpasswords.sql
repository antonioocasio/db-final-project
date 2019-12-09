CREATE DATABASE usernamesandpasswords;

CREATE TABLE users(
  userID INT NOT NULL,
  firstName VARCHAR(35),
  lastName VARCHAR(35),
  phoneNumber INT(10),
  PRIMARY KEY(userID)
);

CREATE TABLE credentials(
  userID INT NOT NULL,
  websiteName VARCHAR(25),
  username VARCHAR(35),
  password VARCHAR(50),
  dateCreated DATE,
  PRIMARY KEY(userID)
);

CREATE TABLE category(
  categoryID INT NOT NULL,
  categoryName CHAR(15),
  PRIMARY KEY(categoryID)
);
