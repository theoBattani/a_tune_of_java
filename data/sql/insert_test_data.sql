
LOAD DATA INFILE 'C:/Users/User-07/GitHub/a_tune_of_java/data/test/persons.csv'
INTO TABLE users
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;