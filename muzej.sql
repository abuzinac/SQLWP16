drop database if exists muzej;
create database muzej character set utf8;

use muzej;

create table kustos (
  sifra int not null primary key auto_increment,
  ime varchar(50) not null,
  prezime varchar(50) not null,
  strucna_sprema varchar(50) not null
);

create table sponzor (
  sifra int not null primary key auto_increment,
  ime varchar(50) not null,
  kontakt varchar(50) not null
);

create table djelo (
  sifra int not null primary key auto_increment,
  naziv varchar(50) not null,
  autor varchar(50) not null,
  izlozba int not null
);

create table izlozba (
  sifra int not null primary key auto_increment,
  naziv varchar(50) not null,
  kustos int not null,
  sponzor int not null,
  datum_pocetka date not null,
  datum_zavrsetka date not null
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);

alter table djelo add foreign key (izlozba) references izlozba(sifra);


insert into kustos (ime,prezime,strucna_sprema) values
  ('Darko','Žlender','VSS'),
  ('Marko','Pivarič','SSS'),
  ('Anćica','Lagunđija','VSS');

insert into sponzor (ime,kontakt) values
  ('Coca Cola','cocacola@gmail.com'),
  ('Osječka pivovara','pivovara@osijek.hr'),
  ('Saponia Osijek','saponia@osijek.hr');

insert into izlozba (naziv,kustos,sponzor,datum_pocetka,datum_zavrsetka) values
  ('Renesansa',1,1,'2017-12-20','2017-12-30'),
  ('Picasso',2,2,'2018-1-2','2018-1-12');

insert into djelo (naziv,autor,izlozba) values
  ('Pas i mačka','Faust Vrančić',1),
  ('Mona Lisa','Leonardo da Vinci',1),
  ('Cvijet','Pablo Picasso',2),
  ('Šuma','Pablo Picasso',2),
  ('Žrvanj','Pablo Picasso',2),
  ('Poslijedna večera','Micheangello',1);
