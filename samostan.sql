drop database if exists samostan;

create database samostan;
use samostan;

create table samostan(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
red varchar(50) not null
);

create table svecenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
samostan int not null,
nadredjen varchar(50) not null
);

create table posao(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis varchar(126) not null
);

create table svec_posao(
sifra int not null primary key auto_increment,
posao int not null,
svecenik int not null
);

alter table svecenik add foreign key (samostan) references samostan(sifra);

alter table svec_posao add foreign key (svecenik) references svecenik(sifra);
alter table svec_posao add foreign key (posao) references posao(sifra);