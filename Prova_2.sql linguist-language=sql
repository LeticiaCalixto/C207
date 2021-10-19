drop database if exists DBLinguagens;
create database DBLinguagens;

use DBLinguagens;

DROP TABLE IF EXISTS Linguagem;
CREATE TABLE Linguagem (
	idLing INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	ano INT NOT NULL,
    idealizador VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS Area;
CREATE TABLE Area (
	idArea INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS Empresa;
CREATE TABLE Empresa (
	idEmp INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
    idLing_Linguagem INT NOT NULL,
    valorAcao INT NOT NULL,
    constraint fk1
		foreign key(idLing_Linguagem)
		references Linguagem(idLing)
        on update cascade
        on delete cascade
);

DROP TABLE IF EXISTS Usada;
CREATE TABLE Usada (
	idLA INT AUTO_INCREMENT PRIMARY KEY,
    idLing_Linguagem INT NOT NULL,
    idArea_Area INT NOT NULL,
    constraint fk2
		foreign key(idLing_Linguagem)
		references Linguagem(idLing),
	constraint fk3
        foreign key(idArea_Area)
		references Area(idArea)
        on update cascade
        on delete cascade
);

INSERT INTO Linguagem (nome, ano, idealizador) 
VALUES ('Ruby','1995','Yukihiro Matsumoto'),
('Javascript','1995','Brendan Eich'),
('Java','1995','James Gosling'),
('Python','1990','Guido Van Rossum'),
('C#','2000','Microsoft');

INSERT INTO Area (nome)
VALUES ('Web Front-end'),
('Web Back-end'),
('Mobile'),
('Desktop');

INSERT INTO Empresa (nome,idLing_Linguagem,valorAcao)
VALUES ('Netflix',2,2147),
('Amazon','4','6544'),
('Microsoft','5','973'),
('Uber','3','175'),
('AirBnB','1','95'),
('eBay','3','121'),
('Instagram','4','450');

INSERT INTO Usada (idLing_Linguagem,idArea_Area) 
VALUES ('1','2'),
('2','1'),
('2','3'),
('3','2'),
('3','3'),
('2','2'),
('3','4'),
('4','2'),
('5','2'),
('5','3'),
('2','4'),
('5','4');

ALTER TABLE Empresa ADD tipoEmpresa VARCHAR(40);

UPDATE Empresa SET tipoEmpresa = 'privada';

SELECT * FROM Linguagem WHERE ano < 2000 and nome like 'J%';

SELECT DISTINCT ano FROM Linguagem ORDER BY ano DESC;

SELECT emp.nome, lin.nome FROM Empresa AS emp, Linguagem AS lin WHERE idLing_Linguagem = idLing;

SELECT nome, valorAcao, (valorAcao - valorAcao * 0.17) FROM Empresa WHERE idLing_Linguagem = 1; 

SELECT MIN(valorAcao), MAX(valorAcao) FROM Empresa WHERE valorAcao < 1000;

SELECT lin.nome, ar.nome FROM Linguagem AS lin, Area AS ar WHERE idLing = idArea;

SELECT idealizador FROM Linguagem WHERE idArea = idLing = 3;

INSERT INTO Linguagem(nome, ano, idealizador) VALUES ('Kotlin','2011','JetBrains');
