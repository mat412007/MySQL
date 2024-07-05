3- select * from usuarios where APELLIDO like 'M%'; /*Chequear que alla apellidos que empiecen con M.*/  
   delete from usuarios where APELLIDO like 'M%'; /*% reemplaza la cadena de caracteres restantes según en donde esté.*/
5- select * from usuarios where NOMBRE like '%n' and TELEF like '%5531'; /*Me limita el rango de lo que quiero modificar, eliminar o actualizar.*/
   delete from usuarios where NOMBRE like '%n' and TELEF like '%5531';
7- select * from productos where Precio >= 30000 and Precio <= 100000; /*Esta y la abajo hacen lo mismo*/
   select * from productos where Precio between 30000 and 100000;
8- select * from usuarios order by ID_cliente desc;
9- select * from usuarios where year(fec_nac) >= 1974; /*Al poner una fecha hay que insertar año, mes y día, con guiones y 0 cuando haga falta*/
10- select * from productos where ID_productos in (22, 23, 24);
11- select NOMBRE, min(fec_nac) from usuarios;
12- select count(ID_cliente) from usuarios where Localidad = 'CABA';
13- select * from productos where precio = (select MAX(precio) from productos);
14- select * from productos where precio = (select MIN(precio) from productos);
15- select AVG(Precio) as "Promedio" from productos;
16- select SUM(Precio) as "Total" from productos;