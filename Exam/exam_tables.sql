-- jäätelön valmistajia
-- ice cream manufacturers

CREATE TABLE manufacturer (
    manufacturer_id INT,
    manufacturer_name VARCHAR (20) NOT NULL,
    PRIMARY KEY (manufacturer_id),
    UNIQUE (manufacturer_name)
);

-- jäätelöitä
-- ice creams

CREATE TABLE ice_cream (
    ice_cream_id INT,
    ice_cream_name VARCHAR (20) NOT NULL,
    manufacturer_id INT NOT NULL,
    manufacturing_cost NUMERIC (4,2),
    PRIMARY KEY (ice_cream_id),
    UNIQUE (ice_cream_name),
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturer
);

-- aineksia
-- ingredients
-- plant_based 0=ei,no 1=kyllä,yes 

CREATE TABLE ingredient (
    ingredient_id INT,
    ingredient_name VARCHAR (20) NOT NULL,
    kcal INT,
    protein NUMERIC (4,2),
    plant_based INT,
    PRIMARY KEY (ingredient_id),
    UNIQUE(ingredient_name)
);

-- jäätelöt sisältävät aineksia
-- ice creams contain ingredients

CREATE TABLE contains(
    ice_cream_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantity INT,
    PRIMARY KEY (ice_cream_id, ingredient_id),
    FOREIGN KEY (ice_cream_id) REFERENCES ice_cream,
    FOREIGN KEY (ingredient_id) REFERENCES ingredient
);


--Ice cream manufacturers
INSERT INTO manufacturer VALUES (
    1, 'Jen & Berry'
);

INSERT INTO manufacturer VALUES (
    2, '4 Friends'
);

INSERT INTO manufacturer VALUES (
    3, 'Gelatron'
);

--Ice cream

INSERT INTO ice_cream VALUES (
    1, 'Plain Vanilla', 1, 1.00
);

INSERT INTO ice_cream VALUES (
    2, 'Vegan Vanilla', 2, 0.89
);

INSERT INTO ice_cream VALUES (
    3, 'Super Strawberry', 2, 1.44
);

INSERT INTO ice_cream VALUES (
    4, 'Very plain', 2, 1.20
);


--Ingredients
INSERT INTO ingredient VALUES (
    1, 'Cream', 400, 3, 0
);

INSERT INTO ingredient VALUES (
    2, 'Coconut cream', 230, 2.3, 1
);

INSERT INTO ingredient VALUES (
    3, 'Sugar', 387, 0, 1
);

INSERT INTO ingredient VALUES (
    4, 'Vanilla extract', 12, 0, 1
);


INSERT INTO ingredient VALUES (
    5, 'Strawberry', 33, 0.7, 1
);


--Contains

INSERT INTO contains VALUES ( 
    1, 1, 70
);
INSERT INTO contains VALUES ( 
    1, 3, 27
);
INSERT INTO contains VALUES ( 
    1, 4, 3
);


INSERT INTO contains VALUES ( 
    2, 2, 74
);
INSERT INTO contains VALUES ( 
    2, 3, 21
);
INSERT INTO contains VALUES ( 
    2, 4, 5
);

INSERT INTO contains VALUES ( 
    3, 1, 60
);
INSERT INTO contains VALUES ( 
    3, 3, 10
);
INSERT INTO contains VALUES ( 
    3, 5, 30
);


INSERT INTO contains VALUES ( 
    4, 2, 95
);
INSERT INTO contains VALUES ( 
    4, 4, 5
);
