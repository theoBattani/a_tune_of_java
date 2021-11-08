
BEGIN

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/countries.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/countries.csv'
INTO TABLE country
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/cities.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/cities.csv'
INTO TABLE city
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/addresses.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/addresses.csv'
INTO TABLE address
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/persons.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/persons.csv'
INTO TABLE person
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/pieces.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/pieces.csv'
INTO TABLE piece
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/authors.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/authors.csv'
INTO TABLE authors
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/contacts.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/contacts.csv'
INTO TABLE contact
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/families.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/families.csv'
INTO TABLE family
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/categories.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/categories.csv'
INTO TABLE category
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/instruments.csv'
LOAD DATA INFILE 'D:/GitHub/a_tune_of_java/data/test/instruments.csv'
INTO TABLE instrument
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

END;