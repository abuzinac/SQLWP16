drop database if exists edunovapp16;
create database edunovapp16 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

use edunovapp16;

create table smjer ( 
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
cijena decimal(18,2) not null,
upisnina decimal(18,2) not null,
brojsati int not null
);

create table grupa (
sifra int not null primary key auto_increment,
smjer int not null,
naziv varchar(50) not null,
predavac int not null,
datumpocetka datetime
);

create table predavac (
sifra int not null primary key auto_increment,
osoba char(11) not null,
placa decimal(18,2)
);

create table polaznik (
sifra int not null primary key auto_increment,
osoba char(11) not null,
brojugovora varchar(20) not null
);

create table osoba (
oib char (11) not null primary key,
ime varchar(50) not null default 'Ana',
prezime varchar(50) not null,
email varchar(100),
spol boolean 
);

create table clan (
grupa int not null,
polaznik int not null
);


alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(oib);

alter table polaznik add foreign key (osoba) references osoba(oib);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

insert into smjer (sifra,naziv,cijena,upisnina,brojsati) values 
(null,'PHP programiranje',5000.99,500,130),
(null,'Java programiranje',3000.99,200,130),
(null,'Računalni operater',1000,500,100),
(null,'Serviser računala',2000,500,130);

insert into osoba (oib,ime,prezime,email,spol) values
('00000000000','Tomislav','Jakopec','tjakopec@gmail.com',1),
('00000000001','Josip','Abramović','jabramovic95@gmail.com',1),
('00000000002','Ana Maria','Anić','anicanamaria@gmail.com',0),
('00000000003','Vedran','Baričević','veco444@gmail.com',1),
('00000000004','Andi','Bašić','andi.basic10@gmail.com',1),
('00000000005','Ivan','Birovljević','ivanbirovljevic@yahoo.com',1),
('00000000006','Andrija','Buzinac','andrija.buzinac@gmail.com',1),
('00000000007','Miro','Čičerić','miro.ciceric@gmail.com',1),
('00000000008','Ivica','Džambo','jumbo.ivica@gmail.com',1),
('00000000009','Zvonimir','Grizelj','grizelj.zvonimir@gmail.com',1),
('00000000010','Matija','Kiš','matijaa.kis@gmail.com',1),
('00000000011','Damijan','Krešić','damjan1304@gmail.com',1),
('00000000012','Franko','Kulešević','franko.kule97@gmail.com',1),
('00000000013','Leon','Kurtović','kurtovicleon@gmail.com',1),
('00000000014','Ivana','Martinović','imartinovic97@gmail.com',0),
('00000000015','Davor','Posavčević','davor.posavcevic1991@gmail.com',1),
('00000000016','Siniša','Rajković','sinisaos@gmail.com',1),
('00000000017','Bojana','Sarka','bojana.sarka@gmail.com',0),
('00000000018','Chris','Župan','zupan.chris@gmail.com',1),
('00000000019','Matko','Pejić','pejicmatko@gmail.com',1),
('00000000020','Domagoj','Glavačević','glavacevic.d@gmail.com',1),
('00000000021','Davor','Ilišević','davor.ilisevic1@gmail.com',1);

insert into predavac (osoba,placa) values ('00000000000',5000);

insert into grupa(naziv,smjer,predavac,datumpocetka) values
('PP16',1,1,'2017-10-28'),
('J17',2,1,'2017-10-28');

insert into polaznik (osoba,brojugovora) values
('00000000001',''),
('00000000002',''),
('00000000003',''),
('00000000004',''),
('00000000005',''),
('00000000006',''),
('00000000007',''),
('00000000008',''),
('00000000009',''),
('00000000010',''),
('00000000011',''),
('00000000012',''),
('00000000013',''),
('00000000014',''),
('00000000015',''),
('00000000016',''),
('00000000017',''),
('00000000018',''),
('00000000019',''),
('00000000020',''),
('00000000021','');

insert into clan(grupa,polaznik) values 
(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7), (1,8), (1,9), (1,10), (1,11), (1,12), (1,13), (1,14), (1,15), (1,16), (1,17), (1,18), (1,19), (1,20),(1,11),(2,1),(2,21); 















