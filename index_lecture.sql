USE employees;
DESCRIBE employees;

describe departments;

SHOW CREATE TABLE departments;
# lesson start
USE codeup_test_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id int UNSIGNED,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT
);

DESCRIBE pets;

# add a primary key
ALTER TABLE pets
MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT;

# Dropping a Primary Key //ALSO CAN SLOWLY CHANGE THINGS
ALTER TABLE pets
MODIFY COLUMN id INT;

ALTER TABLE pets
DROP PRIMARY KEY;

SHOW CREATE TABLE pets;

# define primary key
DROP TABLE pets;

CREATE TABLE pets (
    id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT
);
DESCRIBE pets;

# DEFINE A Primary Key for Multiple columns (oNLY FOR DEMO NOT IN CLASS)
DROP TABLE pets;

CREATE TABLE pets (
    id int UNSIGNED AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    PRIMARY KEY (id, age)
);

describe pets;

# add name index
ALTER TABLE pets
ADD INDEX `pet_name_key` (pet_name);

# drop name index;
ALTER TABLE pets
DROP INDEX pet_name_key;

SHOW INDEX FROM pets;




DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id int UNSIGNED AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    PRIMARY KEY (id),
    UNIQUE unique_pn_on(pet_name, owner_name)

);

DESCRIBE pets;

# test unique constraint
INSERT INTO pets (pet_name, owner_name, age)
VALUES('Buddy', 'Jack Smith',3);

INSERT INTO pets (pet_name, owner_name, age)
VALUES('Buddy', 'fred',2);

INSERT INTO pets(pet_name, owner_name, age)
VALUES('Snickers;', 'Jack Smith',3);

INSERT INTO pets (pet_name, owner_name, age)
VALUES('Buddy', 'Jack Smith',3);


