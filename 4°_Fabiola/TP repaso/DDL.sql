drop DATABASE if EXISTS ventas_informaticos;
create database ventas_informaticos;
use ventas_informaticos;

create table Fabricantes (
    Codigo INT(5) NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (Codigo)
);

create table Articulos (
    Codigo INT(5) NOT NULL AUTO_INCREMENT,
    Nombre varchar(100) NOT NULL,
    Precio INT(10) NOT NULL,
    Fabricante INT(5) NOT NULL,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (Fabricante) REFERENCES Fabricantes(Codigo)
);

