drop database if exists AV1L1;
create database AV1L1;

use AV1L1;

create table oculos(
	id int,
    marca varchar(50),
    lente varchar(50),
    grauEsquerdo float,
    grauDireito float,
    doenca varchar(50),
    primary key(id)
);