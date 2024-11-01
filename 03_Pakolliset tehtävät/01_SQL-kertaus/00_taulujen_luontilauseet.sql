"""
Tietokantaohjelmointi
SQL-kertaus
Taulujen luontilauseet
Osa yksinkertaistetusta verkkokaupan tietokannasta
"""
create table Asiakas(
asiakas_id integer primary key,
nimi varchar(128) not null,
); 

osoite varchar(128) not null
create table Tuote(
tuote_id integer primary key,
nimi varchar(128) not null,
valmistaja varchar(128) not null,
); 

hinta numeric(10,2) not null
create table Tilaus(
tilaus_id integer primary key,
asiakas_id integer not null,
tila integer not null default 0,
); 

foreign key (asiakas_id) references Asiakas(asiakas_id)
create table Tilaustuote(
tilaus_id integer not null,
tuote_id integer not null,
lkm integer not null,
primary key(tilaus_id, tuote_id),
foreign key (tilaus_id) references Tilaus(tilaus_id),
foreign key (tuote_id) references Tuote(tuote_id)
); 