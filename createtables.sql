drop database if exists lab2;
create database lab2 CHARACTER SET utf8 COLLATE utf8_general_ci;
use lab2

drop table if exists filmy;
create table filmy (
       id int not null auto_increment,
       tytul varchar(50) not null,
       rok int(4) not null,
       czas_trwania int not null,
       budzet int null,
       gatunek varchar(50) not null,
       primary key(id)
);
drop table if exists aktorzy;
create table aktorzy
(
	id int not null auto_increment,
	imie varchar(50) not null,
	nazwisko varchar(50) not null,
	data_ur DATE not null,
	narodowosc varchar(50) not null,
	wzrost int null,
	biografia varchar(100) null,	
	primary key(id)
);
drop table if exists role;
create table role
(
	film_id int not null,
	aktor_id int not null,
	imie varchar(50) null,
	nazwisko varchar(50) null,
	pseudonim varchar(50) null,
	primary key(film_id,aktor_id)
);
drop table if exists cytaty;
create table cytaty (
       id int not null auto_increment,
       rola_id int not null,
       tresc varchar(100) not null,
       primary key(id)
);

drop table if exists ciekawostki;
create table ciekawostki (
       id int not null auto_increment,
       film_id int not null,
       tresc varchar(100) not null,
       primary key(id)
);
