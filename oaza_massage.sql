drop database if exists oaza_massage;
create database oaza_massage;

use oaza_massage;

create table djelatnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(50) not null,
spol boolean not null,
slika varchar(100)
);

create table usluga(
sifra int not null primary key auto_increment,
naziv varchar(50),
opis varchar(100),
trajanje_min int not null,
cijena decimal(18,2) not null
);

create table korisnik (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(50) not null,
telefon varchar(50) not null
);

create table termin(
sifra int not null primary key auto_increment,
datum date not null,
vrijeme time not null,
korisnik int not null,
usluga int not null,
djelatnik int not null
);


alter table termin add foreign key (djelatnik) references djelatnik(sifra);
alter table termin add foreign key (usluga) references usluga(sifra);
alter table termin add foreign key (korisnik) references korisnik(sifra);

















