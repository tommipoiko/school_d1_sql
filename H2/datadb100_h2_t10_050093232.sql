-- Tietokantojen perusteet - Database basics 2021
-- H2 T10
-- tommi.poikolainen@tuni.fi

CREATE TABLE movie (
    title VARCHAR (30),
    director VARCHAR(30),
    release_date date,
    PRIMARY KEY (title)
);


INSERT INTO movie
VALUES ('Jaws', 'Spielberg', '1975-12-19');  

INSERT INTO movie
VALUES ('Jurassic Park', 'Spielberg', '1993-09-03');  

INSERT INTO movie
VALUES ('2001: A Space Odyssey', 'Kubrick', '1968-09-20');

INSERT INTO movie
VALUES ('The Shining', 'Kubrick', '1980-09-26');  

create table actor (
	actor_id int,
	actor_name varchar (30),
	primary key (actor_id)
);

insert into actor
values ('101', 'Tim Tom');

insert into actor
values ('102', 'Flim Flom');

insert into actor
values ('103', 'Ping Pong');

create table acts_in (
	actor_id int,
	actor_name varchar (30),
	title varchar (30),
	primary key (actor_id, title),
	foreign key (actor_id) references actor,
	foreign key (title) references movie
);

insert into acts_in
values ('101', 'Tim Tom', 'The Shining');

insert into acts_in
values ('101', 'Tim Tom', 'Jurassic Park');

insert into acts_in
values ('101', 'Tim Tom', 'Jaws');

insert into acts_in
values ('102', 'Flim Flom', 'Jaws');

insert into acts_in
values ('102', 'Flim Flom', '2001: A Space Odyssey');