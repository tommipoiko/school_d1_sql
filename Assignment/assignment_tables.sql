.cd /Users/tommipoiko/Desktop/Stuff/DATA/TiKaPe/Assignment
.open assignment
.mode column
.headers on
;

CREATE TABLE tuotemerkki (
    tmtunnus VARCHAR(30),
    tmnimi VARCHAR(30),
    maa VARCHAR(30),
    PRIMARY KEY (tmtunnus),
    UNIQUE (tmnimi)
);


INSERT INTO tuotemerkki
VALUES ('MC', 'McCee', 'Yhdysvallat');  

INSERT INTO tuotemerkki
VALUES ('KT', 'KooTek', 'Suomi');  

CREATE TABLE tuote (
    ttunnus VARCHAR(30),
    tnimi VARCHAR(30),
    kuvaus VARCHAR(30),
    hinta NUMERIC(5, 2),
    tmtunnus VARCHAR(30),
    PRIMARY KEY (ttunnus),
    UNIQUE (tnimi),
    FOREIGN KEY (tmtunnus) REFERENCES tuotemerkki
);


INSERT INTO tuote
VALUES ('TRC', 'Trimmeri TRCee', 'tehokas 4-tahtinen', '179.00', 'MC');  

INSERT INTO tuote
VALUES ('CEE', 'Trimmerisiima Cee', 'laadukas siima', '6.99', 'MC');  

INSERT INTO tuote
VALUES ('MSC', 'Moottorisaha MSCee RR', 'robusti ja raskas', '559.00', 'MC');

INSERT INTO tuote
VALUES ('TSY', 'Trimmerisiima Y', 'yleissiima', '3.99', 'KT');  

INSERT INTO tuote
VALUES ('LPL', 'Lapio L', 'kevyt yleislapio', '23.95', 'KT');

CREATE TABLE kategoria (
	ktunnus VARCHAR(30),
	knimi VARCHAR(30),
	PRIMARY KEY (ktunnus),
	UNIQUE (knimi)
);

INSERT INTO kategoria
VALUES ('PT', 'puutarha');

INSERT INTO kategoria
VALUES ('MT', 'metsä');

INSERT INTO kategoria
VALUES ('LT', 'lumityöt');

CREATE TABLE tuote_kategoria (
	ttunnus VARCHAR(30),
	ktunnus VARCHAR(30),
	PRIMARY KEY (ttunnus, ktunnus),
	FOREIGN KEY (ttunnus) REFERENCES tuote,
	FOREIGN KEY (ktunnus) REFERENCES kategoria
);

INSERT INTO tuote_kategoria
VALUES ('TRC', 'PT');

INSERT INTO tuote_kategoria
VALUES ('CEE', 'PT');

INSERT INTO tuote_kategoria
VALUES ('MSC', 'MT');

INSERT INTO tuote_kategoria
VALUES ('MSC', 'PT');

INSERT INTO tuote_kategoria
VALUES ('TSY', 'PT');

INSERT INTO tuote_kategoria
VALUES ('LPL', 'PT');

INSERT INTO tuote_kategoria
VALUES ('LPL', 'LT');

CREATE TABLE kayttaja (
    katunnus VARCHAR(30),
    kanimi VARCHAR(30),
    sukupuoli VARCHAR(30),
    syntymavuosi date,
    PRIMARY KEY (katunnus),
    UNIQUE (kanimi)
);


INSERT INTO kayttaja
VALUES ('NaNNi', 'Anni N', 'nainen', '1985');

INSERT INTO kayttaja
VALUES ('Juusto', 'Juuso K','mies', '1990');

INSERT INTO kayttaja
VALUES ('EinoU', 'Eino U', 'mies', '1940');

INSERT INTO kayttaja
VALUES ('Jaila', 'Aila J','nainen', '1953');

CREATE TABLE arviointi (
	katunnus VARCHAR(30),
	ttunnus VARCHAR(30),
	paivamaara date,
	arvosana int,
	arvio VARCHAR(50),
	PRIMARY KEY (katunnus, ttunnus, paivamaara),
	FOREIGN KEY (katunnus) REFERENCES kayttaja,
	FOREIGN KEY (ttunnus) REFERENCES tuote
);

INSERT INTO arviointi
VALUES ('NaNNi', 'TRC', '2017-06-05', '3', null);

INSERT INTO arviointi
VALUES ('NaNNi', 'CEE', '2017-06-13', '2', null);

INSERT INTO arviointi
VALUES ('NaNNi', 'LPL', '2017-07-24', '3', null);

INSERT INTO arviointi
VALUES ('NaNNi', 'TSY', '2017-08-13', '4', null);

INSERT INTO arviointi
VALUES ('NaNNi', 'TRC', '2017-09-12', '5', 'luotettava ja toimiva kapistus');

INSERT INTO arviointi
VALUES ('EinoU', 'TRC', '2017-06-30', '5', 'loistava');

INSERT INTO arviointi
VALUES ('EinoU', 'CEE', '2017-07-02', '2', 'kohtalaisesti toimii');

INSERT INTO arviointi
VALUES ('Juusto', 'LPL', '2017-06-04', '1', 'rahastusta');

INSERT INTO arviointi
VALUES ('Jaila', 'LPL', '2017-08-11', '1', 'ei tee mitään');
