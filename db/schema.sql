-- candidates must be dropped before parties becuase of the constraint relying on parties.id
DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXISTS parties;

CREATE TABLE parties (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description TEXT
);

CREATE TABLE candidates (
    id INTEGER auto_increment PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    party_id INTEGER,
    industry_connected BOOLEAN NOT NULL,
    -- SETS FOREIGN KEY ***** MUST BE BELOW THE RELIED UPON TABLE (IN THIS CASE parties)
    CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties(id) ON DELETE SET NULL
);
