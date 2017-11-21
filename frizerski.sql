drop database if exists frizerski_salon;
create database frizerski_salon character set utf8 collate utf8_croatian_ci;

use frizerski_salon;

create table salon(
sifra int not null primary key auto_increment,
naziv varchar(40) not null
);

create table djelatnica(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime varchar(20) not null,
salon int not null
);

create table posjeta(
sifra int not null primary key auto_increment,
datum varchar(30) not null,
djelatnica int not null,
korisnik int not null,
usluga int not null
);

create table usluga(
sifra int not null primary key auto_increment,
cijena decimal(18,2) not null
);

create table korisnik(
sifra int not null primary key auto_increment,
spol boolean
);
 
 alter table djelatnica add foreign key (salon) references salon(sifra);
 
 alter table posjeta add foreign key (djelatnica) references djelatnica(sifra);
 alter table posjeta add foreign key (korisnik) references korisnik(sifra);
 alter table posjeta add foreign key (usluga) references usluga(sifra);
 
 insert into salon (sifra,naziv) value
 (null,'Lotus'),
 (null,'Cvrcak'),
 (null,'Žirafa');
 
 insert into djelatnica (sifra,ime,prezime,salon) value
 (null,'Marija','Maras',2),
 (null,'Kristina','Ljubic',1),
 (null,'Ana','Lovric',2);