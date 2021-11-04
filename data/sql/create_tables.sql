
USE a_tune_of_java_db;

CREATE TABLE civility(
   id_civility INT,
   title VARCHAR(8) ,
   PRIMARY KEY(id_civility)
);

CREATE TABLE country(
   id_country INT,
   denomination VARCHAR(255) ,
   PRIMARY KEY(id_country)
);

CREATE TABLE category(
   id_category INT,
   denomination VARCHAR(255)  NOT NULL,
   PRIMARY KEY(id_category)
);

CREATE TABLE instrument(
   id_instrument INT,
   denomination VARCHAR(255)  NOT NULL,
   id_category INT NOT NULL,
   PRIMARY KEY(id_instrument),
   FOREIGN KEY(id_category) REFERENCES category(id_category)
);

CREATE TABLE piece(
   id_piece INT,
   denomination VARCHAR(255)  NOT NULL,
   duration INT,
   PRIMARY KEY(id_piece)
);

CREATE TABLE frequency(
   id INT,
   denomination VARCHAR(255)  NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE speciality(
   id_speciality INT,
   denomination VARCHAR(255)  NOT NULL,
   PRIMARY KEY(id_speciality)
);

CREATE TABLE city(
   id_city INT,
   denomination VARCHAR(255)  NOT NULL,
   id_country INT NOT NULL,
   PRIMARY KEY(id_city),
   FOREIGN KEY(id_country) REFERENCES country(id_country)
);

CREATE TABLE address(
   id_address INT,
   number INT NOT NULL,
   track VARCHAR(255)  NOT NULL,
   id_city INT NOT NULL,
   PRIMARY KEY(id_address),
   FOREIGN KEY(id_city) REFERENCES city(id_city)
);

CREATE TABLE place(
   id_place INT,
   denomination VARCHAR(255)  NOT NULL,
   id_address INT,
   PRIMARY KEY(id_place),
   UNIQUE(id_address),
   FOREIGN KEY(id_address) REFERENCES address(id_address)
);

CREATE TABLE person(
   id_person INT,
   firstname VARCHAR(255)  NOT NULL,
   lastname VARCHAR(255)  NOT NULL,
   birthdate DATE,
   id_address INT,
   id_civility INT NOT NULL,
   PRIMARY KEY(id_person),
   FOREIGN KEY(id_address) REFERENCES address(id_address),
   FOREIGN KEY(id_civility) REFERENCES civility(id_civility)
);

CREATE TABLE contact(
   id_contact INT,
   phone VARCHAR(16) ,
   fax VARCHAR(16) ,
   email VARCHAR(255) ,
   id_person INT NOT NULL,
   PRIMARY KEY(id_contact),
   UNIQUE(id_person),
   FOREIGN KEY(id_person) REFERENCES person(id_person)
);

CREATE TABLE band(
   id_band INT,
   denomination VARCHAR(255)  NOT NULL,
   id_person INT NOT NULL,
   PRIMARY KEY(id_band),
   UNIQUE(id_person),
   FOREIGN KEY(id_person) REFERENCES person(id_person)
);

CREATE TABLE musician(
   id_musician INT,
   id_speciality INT,
   id_person INT NOT NULL,
   PRIMARY KEY(id_musician),
   FOREIGN KEY(id_speciality) REFERENCES speciality(id_speciality),
   FOREIGN KEY(id_person) REFERENCES person(id_person)
);

CREATE TABLE meeting(
   id_meeting INT,
   denomination VARCHAR(255)  NOT NULL,
   expected_visitors VARCHAR(50) ,
   id_place INT NOT NULL,
   id INT NOT NULL,
   PRIMARY KEY(id_meeting),
   UNIQUE(id_place),
   FOREIGN KEY(id_place) REFERENCES place(id_place),
   FOREIGN KEY(id) REFERENCES frequency(id)
);

CREATE TABLE period(
   id INT,
   begin_date DATE NOT NULL,
   end_date DATE NOT NULL,
   id_meeting INT NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(id_meeting),
   FOREIGN KEY(id_meeting) REFERENCES meeting(id_meeting)
);

CREATE TABLE performance(
   id_performance VARCHAR(50) ,
   performance_date DATE NOT NULL,
   begin_time TIME NOT NULL,
   end_time TIME NOT NULL,
   id_band INT NOT NULL,
   PRIMARY KEY(id_performance),
   FOREIGN KEY(id_band) REFERENCES band(id_band)
);

CREATE TABLE member_of_band(
   id_band INT,
   id_musician INT,
   responsibility VARCHAR(255) ,
   PRIMARY KEY(id_band, id_musician),
   FOREIGN KEY(id_band) REFERENCES band(id_band),
   FOREIGN KEY(id_musician) REFERENCES musician(id_musician)
);

CREATE TABLE play(
   id_musician INT,
   id_instrument INT,
   PRIMARY KEY(id_musician, id_instrument),
   FOREIGN KEY(id_musician) REFERENCES musician(id_musician),
   FOREIGN KEY(id_instrument) REFERENCES instrument(id_instrument)
);

CREATE TABLE authors(
   id_person INT,
   id_piece INT,
   PRIMARY KEY(id_person, id_piece),
   FOREIGN KEY(id_person) REFERENCES person(id_person),
   FOREIGN KEY(id_piece) REFERENCES piece(id_piece)
);

CREATE TABLE directory(
   id_band INT,
   id_piece INT,
   PRIMARY KEY(id_band, id_piece),
   FOREIGN KEY(id_band) REFERENCES band(id_band),
   FOREIGN KEY(id_piece) REFERENCES piece(id_piece)
);

CREATE TABLE during(
   id_meeting INT,
   id_performance VARCHAR(50) ,
   PRIMARY KEY(id_meeting, id_performance),
   FOREIGN KEY(id_meeting) REFERENCES meeting(id_meeting),
   FOREIGN KEY(id_performance) REFERENCES performance(id_performance)
);

CREATE TABLE play_piece(
   id_piece INT,
   id_performance VARCHAR(50) ,
   PRIMARY KEY(id_piece, id_performance),
   FOREIGN KEY(id_piece) REFERENCES piece(id_piece),
   FOREIGN KEY(id_performance) REFERENCES performance(id_performance)
);
