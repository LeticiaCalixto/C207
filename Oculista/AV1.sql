drop database if exists AV1;
create database AV1;

use AV1;

create table oculos(
	id int,
    marca varchar(60),
    lente varchar(60),
    grauEsquerdo float,
    grauDireito float,
    doenca varchar(60),
    primary key(id)
    
);

# 1- Chave primária serve como identificador, pois recebe um valor que não será repetido

# 2- 
insert into oculos() values('1' , 'Calvin Klein' , 'vidro' , '3.5' , '2', 'astigmatismo');
insert into oculos() values('2' , 'Coca Cola' , 'policarbonato' , '1.25' , '0.75', 'miopia');
insert into oculos() values('3' , 'Vogue' , 'trivex' , '0.25' , '0.5', 'hipermetropia');
insert into oculos() values('4' , 'Coca Cola' , 'resina' , '2.75' , '1.75', 'hipermetropia');
insert into oculos() values('5' , 'Vogue' , 'trivex' , '1.5' , '3', 'miopia');
insert into oculos() values('6' , 'Carrera' , 'vidro' , '2.5' , '1', 'miopia');

# 3- c) update oculos set marca = "Ray-Ban" where id = 5;

# 4- 
delete from oculos where id = '5';

# 5- a)
select distinct doenca from oculos;

# b)
select avg(grauEsquerdo) from oculos where doenca like "miopia";

# c)
select * from oculos where doenca <> "miopia" and grauDireito > 1;

# d)
select marca, grauEsquerdo, grauDireito from oculos where marca like "c%a" and grauEsquerdo > 2;
