PRAGMA foreign_keys=on; -- Turns foreign key support in SQLite3 on
-- Your code here
DROP TABLE IF EXISTS Toys;
DROP TABLE IF EXISTS Cats_Owners;
DROP TABLE IF EXISTS Cats;
DROP TABLE IF EXISTS Owners;

CREATE TABLE owners (
  owner_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE cats (
  cat_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  birth_year INT
);

CREATE TABLE cat_owners (
  cat_id INT,
  owner_id INT,
  FOREIGN KEY (cat_id) REFERENCES Cats(cat_id),
  FOREIGN KEY (owner_id) REFERENCES Owners(owner_id)
);

CREATE TABLE toys (
  toy_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  cat_id INT,
  FOREIGN KEY (cat_id) REFERENCES Cats(cat_id)
);

INSERT INTO owners
  (first_name, last_name)
VALUES
  ('Nathan', 'Shanahan'),
  ('Joycelyn', 'Cummerata'),
  ('Weston', 'Jones'),
  ('Melynda', 'Abshire'),
  ('George', 'Beatty'),
  ('Jonathan', 'Arbuckle'),
  ('Hermione', 'Granger');

INSERT INTO cats
  (name, birth_year)
VALUES
  ('Smudge', 2014),
  ('Molly', 2015),
  ('Lucky', 2016),
  ('Bella', 2020),
  ('Tiger', 2012),
  ('Oscar', 2010),
  ('Garfield', 2009),
  ('Crookshanks', 2017);

INSERT INTO cat_owners
  (cat_id, owner_id)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 3),
  (4, 4),
  (5, 4),
  (5, 5),
  (7, 6),
  (8, 7);

INSERT INTO toys
  (cat_id, name)
VALUES
  (1, 'Catnip Mouse'),
  (2, 'Feather Wand'),
  (2, 'Scratcher'),
  (2, 'Laser Pointer'),
  (3, 'Chew Toy'),
  (4, 'Tunnel'),
  (4, 'Flopping Fish'),
  (7, 'Cheetos'),
  (8, 'Crinkle Ball'),
  (8, 'Yarn');