/*XAMPP*/
drop DATABASE if EXISTS ventas; /*Esto se usa para borrar toda la tabla*/
show tables; /*En el Shell esto muestra las tablas de ventas*/
describe productos; /*En el Shell esto muestra la tabla especificada*/
create database ventas; /*Esto crea la base de datos*/
use ventas; /*Esto se usa en el Shell*/
/*Todo esto crea las 3 tablas de clientes, productos y pedidos*/
create table clientes (
    ID_cliente INT(10) NOT NULL AUTO_INCREMENT, 
    NOMBRE VARCHAR(50) NOT NULL,
    APELLIDO VARCHAR(60) NOT NULL,
    F_NAC DATE,
    TELEF INT(10),
    PRIMARY KEY (ID_cliente)
);
create table productos (
    ID_productos INT(20) NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(10) NOT NULL,
    Precio INT(13) NOT NULL,
    PRIMARY KEY (ID_productos)
);
create table pedidos (
    ID_Pedido INT(4) NOT NULL AUTO_INCREMENT,
    Fecha DATE,
    Cantidad INT(3),
    ID_cliente INT(3),
    ID_productos INT(4),
    PRIMARY KEY(ID_Pedido),
    FOREIGN KEY(ID_cliente) REFERENCES clientes (ID_cliente),
    FOREIGN KEY(ID_productos) REFERENCES productos (ID_productos)
);

0- create table usuarios like cliente; /*Copia la tabla clientes con el nombre de usuarios*/
1- alter table usuarios change TELEF CELU INT(11);
2- alter table usuarios add column DNI INT(8);
4- alter table usuarios drop column F_NAC; 
6- alter table clientes add column Domicilio VARCHAR(6);  
   update clientes set Domicilio = 'Lope de Vega 2130' where ID_cliente = 1; /*Este numero puede cambiar según el ID del cliente*/
   alter table usuarios add column fec_nac date;