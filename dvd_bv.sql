drop database if exists dvd_bv;
create database dvd_bv character set utf8;

use dvd_bv;

create table korisnik (
  sifra int not null primary key auto_increment,
  ime varchar(50) not null,
  prezime varchar(50) not null,
  email varchar(50) not null,
  datum_rodjenja date not null,
  spol boolean not null
);

create table prijavnica (
  sifra int not null primary key auto_increment,
  korisnik int not null
);

create table kontakt_obrazac (
  sifra int not null primary key auto_increment,
  korisnik int not null,
  naslov varchar(50),
  poruka text not null
);

create table clan (
  sifra int not null primary key auto_increment,
  korisnicko_ime varchar(50) not null,
  lozinka varchar(50) not null,
  korisnik int not null
);

create table galerija (
  sifra int not null primary key auto_increment,
  naziv varchar(50) not null,
  datum date not null,
  clan int not null
);

create table slika (
  sifra int not null primary key auto_increment,
  naziv varchar(50) not null,
  galerija int not null
);

alter table clan add foreign key (korisnik) references korisnik(sifra);

alter table galerija add foreign key (clan) references clan(sifra);

alter table slika add foreign key (galerija) references galerija(sifra);

alter table prijavnica add foreign key (korisnik) references korisnik(sifra);

alter table kontakt_obrazac add foreign key (korisnik) references korisnik(sifra);


insert into korisnik (ime,prezime,email,datum_rodjenja,spol) values
  ('Andrija','Buzinac','abuzinac@gmail.com',1987-6-4,1);
