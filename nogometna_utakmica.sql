drop database if exists nogometna_utakmica;
create database nogometna_utakmica;

use nogometna_utakmica;

create table utakmica(
sifra int not null primary key auto_increment,
datum datetime not null,
lokacija varchar(50) not null,
vrijeme varchar(50) not null
); 

create table momcad(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table susret(
sifra int not null primary key auto_increment,
momcad int not null,
utakmica int not null
);

create table igrac(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
momcad int not null,
starost int not null,
broj varchar(10) not null,
pozicija varchar(20) not null
);

create table pogodak(
sifra int not null primary key auto_increment,
minuta int not null,
utakmica int not null,
igrac int not null
);

alter table susret add foreign key (utakmica) references utakmica(sifra);
alter table susret add foreign key (momcad) references momcad(sifra);

alter table pogodak add foreign key (utakmica) references utakmica(sifra);

alter table igrac add foreign key (momcad) references momcad(sifra);