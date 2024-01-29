CREATE SCHEMA starwars;
use starwars;

CREATE TABLE empire (
	id INT AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    species VARCHAR(60) NOT NULL,
    affiliation VARCHAR(60),
    rank VARCHAR(60),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO empire (name, species, affiliation, rank) VALUES
('Darth Vader', 'Human', 'Galactic Empire', 'Sith Lord'),
('Grand Moff Tarkin', 'Human', 'Galactic Empire', 'Grand Moff'),
('Emperor Palpatine', 'Human', 'Galactic Empire', 'Emperor'),
('General Veers', 'Human', 'Galactic Empire', 'General'),
('Admiral Piett', 'Human', 'Galactic Empire', 'Admiral'),
('Captain Needa', 'Human', 'Galactic Empire', 'Captain');

SELECT * FROM empire;

UPDATE empire SET rank = 'Admiral' WHERE id=4;

DELETE FROM empire WHERE id=4;