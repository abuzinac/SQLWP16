select * from kustos;

update kustos set strucna_sprema='VSS' where sifra=2;

select * from izlozba;

insert into izlozba (naziv,kustos,sponzor,datum_pocetka,datum_zavrsetka) values ('Hrvatska umjetnost',3,3,'2018-1-13','2018-1-20');

select * from djelo;

update djelo set izlozba=3 where sifra=1;
insert into djelo (naziv,autor,izlozba) values ('Ratnik','MP Thompson',3), ('Kalašnjikov','MP Thompson',3),('Pauk','Loki',3);

delete from djelo where sifra=12;


