drop database if exists musica;
create database musica; 
use musica;

create table Epocas (
    Nombre varchar(100) not null,
    Caracteristicas varchar(400),
    Comienzo date not null,
    Final date not null,
    Genero varchar(100) not null,
    Primary key(Nombre)
);

create table Generos (
    Nombre varchar(100) not null,
    Caracteristicas varchar(400),
    Origenes varchar(300),
    Epoca varchar(100) not null,
    Primary Key(Nombre),
    Foreign key(Epoca) references Epocas(Nombre)
);

create table Musicos (
    Nombre varchar(100) not null,
    Nacimiento date not null,
    Muerte date not null,
    Historia varchar(400),
    Genero varchar(100) not null,
    Primary key(Nombre),
    Foreign key(Genero) references Generos(Nombre) 
);

create table ObrasFamosas (
    Nombre varchar(100) not null,
    Creacion date not null,
    Autores varchar(200),
    Partitura varchar(300),
    Genero varchar(100) not null,
    Primary key(Nombre),
    Foreign key(Genero) references Generos(Nombre) 
);

create table Instrumentos (
    Nombre varchar(100) not null,
    Foto varchar(50),
    Lugar varchar(70) not null,
    Creador varchar(50),
    Tipo varchar(40) not null,
    Materiales varchar(300),
    Primary key(Nombre)
);

create table Generos_Instrumentos (
    Nombre_Generos varchar(100) not null,
    Nombre_Instrumentos varchar(100) not null,
    Primary key(Nombre_Generos, Nombre_Instrumentos),
    Foreign key(Nombre_Generos) references Generos(Nombre),
    Foreign key(Nombre_Instrumentos) references Instrumentos(Nombre) 
);

create table ObrasFamosas_Musicos (
    Nombre_ObrasFamosas varchar(100) not null,
    Nombre_Musicos varchar(100) not null,
    Primary key(Nombre_ObrasFamosas, Nombre_Musicos),
    Foreign key(Nombre_ObrasFamosas) references ObrasFamosas(Nombre),
    Foreign key(Nombre_Musicos) references Musicos(Nombre)
);
