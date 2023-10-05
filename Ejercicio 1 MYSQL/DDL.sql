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