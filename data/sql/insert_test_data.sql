
SET FOREIGN_KEY_CHECKS = 0;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/countries.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/cities.csv'
INTO TABLE country
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/cities.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/cities.csv'
INTO TABLE city
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/addresses.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/addresses.csv'
INTO TABLE address
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/persons.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/persons.csv'
INTO TABLE person
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/pieces.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/pieces.csv'
INTO TABLE piece
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/authors.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/authors.csv'
INTO TABLE authors
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/contacts.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/contacts.csv'
INTO TABLE contact
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/families.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/families.csv'
INTO TABLE family
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/categories.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/categories.csv'
INTO TABLE category
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/instruments.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/instruments.csv'
INTO TABLE instrument
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/musicians.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/musicians.csv'
INTO TABLE musician
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/bands.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/bands.csv'
INTO TABLE band
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/members.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/members.csv'
INTO TABLE member_of_band
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/directories.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/directories.csv'
INTO TABLE directory
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/meetings.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/meetings.csv'
INTO TABLE meeting
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/performances.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/performances.csv'
INTO TABLE performance
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/during.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/during.csv'
INTO TABLE during
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/play_piece.csv'
-- LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/play_piece.csv'
INTO TABLE play_piece
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SET FOREIGN_KEY_CHECKS = 1;








