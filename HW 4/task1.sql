DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
  petName varchar(255) NOT NULL PRIMARY KEY,
  owner varchar(255) NOT NULL,
  species varchar(255) NOT NULL,
  gender ENUM('M', 'F', 'X') NULL,
  birth date NULL,
  death date NULL
);

CREATE TABLE petEvent (
  petName varchar(255) NOT NULL,
  eventdate date,
  eventtype varchar(255) NOT NULL,
  remark text NULL,
  FOREIGN KEY (petName) REFERENCES petPet (petName),
  PRIMARY KEY (petName)
);