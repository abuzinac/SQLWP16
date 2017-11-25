select * from korisnik;

insert into korisnik (ime,prezime,email,datum_rodjenja,spol) values
('Ljubica','Mažar','ljmazar@gmail.com','1984-2-19',0),
('Karlo','Glavaš','kglavas@gmail.com','2009-3-3',1),
('Tihomir','Buzinac','tbuzinac@gmail.com','1964-7-10',1),
('Marko','Miličević','miličević@gmail.com','1968-12-22',1),
('Mirjana','Buzinac','mbuzinac@gmail.com','1964-9-17',0);

update korisnik set datum_rodjenja='1987-6-4' where sifra=1;

delete from korisnik where sifra=6;
delete from korisnik where sifra=7;
delete from korisnik where sifra=8;
delete from korisnik where sifra=10;

select * from clan;