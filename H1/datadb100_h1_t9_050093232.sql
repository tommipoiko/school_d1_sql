-- Tietokantojen perusteet - Database basics 2021
-- H1 T9
-- tommi.poikolainen@tuni.fi

.mode column
.headers on

CREATE TABLE piikkari (
    tunnus VARCHAR (30) NOT NULL,
    nimi VARCHAR(30) NOT NULL,
    tyyppi VARCHAR(30),
    hinta NUMERIC(5, 2),
    PRIMARY KEY (tunnus),
    UNIQUE (nimi)
);

INSERT INTO piikkari
VALUES ('1', 'X 10', 'pikajuoksu', '79,95');

INSERT INTO piikkari
VALUES ('4', 'ABC 101', 'pikajuoksu', '124,95');

INSERT INTO piikkari
VALUES ('6', 'ABC 201', 'hyppy', '159,00');

INSERT INTO piikkari
VALUES ('7', 'X 20', 'keskimatka', NULL);

