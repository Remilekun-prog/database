CREATE DATABASE fb_clone
Use fb_clone
CREATE TABLE newusers(
	userid INT NOT NULL PRIMARY KEY,
	firstname VARCHAR(255) NOT NULL,
	lastname VARCHAR(255) NOT NULL,
	age INT Check (Age>=18) NOT NULL,
	email VARCHAR(255) NOT NULL,
	Location VARCHAR DEFAULT 'Lagos'
	);

--- Alter Table

ALTER TABLE newusers
ADD phonenumber INT, 
Gender VARCHAR(255);

--Create Index
CREATE INDEX idx_lastname
ON newusers (lastname, userid);


-- Photos table
CREATE TABLE photos(
	PhotoId INT NOT NULL,
	userid INT NOT NULL PRIMARY KEY,
	ImageUrl VARCHAR(355) NOT NULL,
	CreatedAt DATETIME,
	FOREIGN KEY(userid) REFERENCES newusers(userid)
	);

-- Comments table
CREATE TABLE comments(
	userid INT NOT NULL PRIMARY KEY,
	comm_text VARCHAR(255) NOT NULL, 
	createdat DATETIME
	);

INSERT INTO newusers (userid,firstname,lastname,age,email)
VALUES ('101','Layo','Tayo','19','layo@gmail.com'), ('102','Dayo','Palayo','29','bayo@gmail.com')

INSERT INTO photos (PhotoId, userid, ImageUrl)
VALUES ('211', '101', 'http://surl.li/avumb')
