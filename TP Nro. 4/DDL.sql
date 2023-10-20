drop database if EXISTS agencia_de_viajes;
create database agencia_de_viajes;
use agencia_de_viajes;

create table Agencias (
    Codigo INT(10) NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Ciudad varchar(50) not NULL,
    PRIMARY KEY (Codigo)
);

create table Paquetes_Turisticos (
    Codigo INT(10) Not NULL,
    Precio INT(20) NOT NULL,
    Destino varchar(300) NOT NULL,
    Agencia INT(10) NOT NULL,
    PRIMARY key (Codigo),
    Foreign key (Agencia) references Agencias(Codigo)
);

create table Clientes (
    DNI INT(15) not null,
    Nombre varchar(100) not null,
    Domicilio varchar(200) not null,
    Primary key (DNI)
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
    Cliente INT(15) not null,
    Banco varchar(100) not null,
    Primary key(Tipo),
    Foreign key(Cliente) references Clientes(DNI),
    Foreign key(Banco) references Bancos(Nombre)
);

create table PaquetesTuristicos_Clientes(
    Codigo_Paquetes INT(10) Not NUll,
    DNI_Clientes INT(15) not null,
    Primary key(Codigo_Paquetes, DNI_Clientes),
    Foreign key(Codigo_Paquetes) references Paquetes_Turisticos(Codigo),
    Foreign key(DNI_Clientes) references Clientes(DNI)
);