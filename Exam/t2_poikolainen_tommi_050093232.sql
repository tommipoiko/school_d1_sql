-- T2
-- Poikolainen Tommi 050093232

CREATE TABLE manufactured_in (
    manufacturer_id INT,
    factory_id INT,
    PRIMARY KEY (manufacturer_id, factory_id),
    foreign key (manufacturer_id) references manufacturer,
    foreign key (factory_id) references factory
);

CREATE TABLE factory (
    factory_id INT,
    address varchar(30) not null,
    pho_number int not null,
    director varchar(50) not null,
    PRIMARY KEY (factory_id)
);