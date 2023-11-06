drop database if EXISTS agencia_de_viajes;
create database agencia_de_viajes;
use agencia_de_viajes;

create table Agencias (
Codigo int(5) not null,
Fecha_Inicial date,
Ciudad varchar(100) not null,
Primary key(Codigo)
);

create table Clientes(
DNI int(8) not null,
Domicilio nvarchar(70) not null,
Nombre varchar(100) not null,
Apellido varchar(100) not null,
Primary key(DNI)
);

create table Paquetes(
Codigo int(5) not null,
Destino varchar(100) not null,
Precio int(10) not null,
Agencia int(5) not null,
Primary key(Codigo),
Foreign key (Agencia) references Agencias(Codigo)
);

create table Paquetes_Clientes(
Codigo_Paquete int(5) not null,
DNI_Cliente int(8) not null,
Primary key (Codigo_Paquete, DNI_Cliente),
Foreign key (Codigo_Paquete) references Paquetes(Codigo),
Foreign key (DNI_Cliente) references Clientes(DNI)
);

create table Formas_Pago(
Tipo varchar(55) not null,
Monto int(10) not null,
Fecha_Validez date,
Cliente_DNI int(8) not null,
PRIMARY KEY (Tipo),  
FOREIGN key (Cliente_DNI) REFERENCES Clientes(DNI)
);

