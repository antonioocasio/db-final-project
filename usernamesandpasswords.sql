-- CREATE DATABASE usernamesandpasswords;

CREATE TABLE users(
  userID INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(35),
  lastName VARCHAR(35),
  phoneNumber INT(10),
  PRIMARY KEY(userID)
);

CREATE TABLE category(
  categoryID INT AUTO_INCREMENT PRIMARY KEY,
  categoryName CHAR(15)
);

CREATE TABLE credentials(
  userID INT NOT NULL AUTO_INCREMENT,
  websiteName VARCHAR(25),
  username VARCHAR(35),
  password VARCHAR(50),
  dateCreated DATE,
  categoryID INT,
  PRIMARY KEY(userID),
  FOREIGN KEY(userID) REFERENCES users(userID),
  FOREIGN KEY(categoryID) REFERENCES category(categoryID)
);

