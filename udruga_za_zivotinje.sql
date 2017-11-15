drop database if exists udruga_za_zivotinje;

create database udruga_za_zivotinje;
use udruga_za_zivotinje;

create table udruga(
sifra int not null primary key auto_increment,
naziv varchar(40) not null
);

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(40) not null,
prezime varchar(40) not null,
udruga int not null
);

create table sticenik(
sifra int not null primary key auto_increment,
ime varchar(40) not null,
osoba int not null,
prostor int not null
);

create table prostor(
sifra int not null primary key auto_increment,
kapacitet int not null
);

alter table osoba add foreign key (udruga) references udruga(sifra);

alter table sticenik add foreign key (osoba) references osoba(sifra);
alter table sticenik add foreign key (prostor) references prostor(sifra);
