drop database if EXISTS agencia_de_viajes;
create database agencia_de_viajes;
use agencia_de_viajes;

create table Agencias (
    Codigo varchar(10) NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Ciudad varchar(50) NOT NULL,
    PRIMARY KEY (Codigo)
);

create table Bancos (
    Nombre varchar(100) not null,
    Sucursal varchar(300) not null,
    Primary key(Nombre)
);

create table Formas_de_Pago (
    Tipo varchar(200) not null,
    Pago INT(20) not null,
    Fecha date not null,
    Banco varchar(100) not null,
    Primary key(Tipo),
    Foreign key(Banco) references Bancos(Nombre)
);

create table Clientes (
    DNI INT(15) NOT NULL,
    Nombre varchar(100) not null,
    Domicilio varchar(200) not null,
    Forma_de_pago varchar(200) not null,
    Primary key (DNI),
    Foreign key(Forma_de_pago) references Formas_de_Pago(Tipo)
);

create table Paquetes_Turisticos (
    Codigo varchar(10) Not NULL,
    Precio INT(20) NOT NULL,
    Destino varchar(300) NOT NULL,
    Agencia varchar(10) NOT NULL,
    Cliente INT(15) NOT NULL,
    PRIMARY key (Codigo),
    Foreign key (Agencia) references Agencias(Codigo),
    Foreign key (Cliente) references Clientes(DNI)
);

