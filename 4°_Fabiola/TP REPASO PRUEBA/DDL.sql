drop database if exists ferreteria;
create database ferreteria;
use ferreteria;

create table Piezas(
    Codigo int(4) not null,
    Nombre nvarchar(100) not null,
    Primary key(Codigo)
);

create table Proveedores(
    ID char(4) not null,
    Nombre nvarchar(100) not null,
    Primary key(ID)
);

create table Suministra(
    CodigoPieza int(4) not null,
    IdProveedor char(4) not null,
    Precio int(10) not null,
    Primary key(CodigoPieza, IdProveedor),
    Foreign key(CodigoPieza) references Piezas(Codigo),
    Foreign key(IdProveedor) references Proveedores(ID)
);
