a- select Nombre as "Piezas" from Piezas;

b- select ID as "ID del proveedor", Nombre as "Nombre del proveedor" from proveedores;

c- select avg(Precio) as "Precio medio" from Suministra;

d- select Nombre as "Piezas que terminan con 's'" from Piezas where Nombre like "%s";

e- select Nombre from Proveedores where Proveedores.ID in (select IdProveedor from Suministra where CodigoPieza = 1);
   select Nombre from Proveedores inner join Suministra on Proveedores.ID = Suministra.IdProveedor where CodigoPieza = 1;

f- select Nombre from Piezas where Piezas.Codigo in (select CodigoPieza from Suministra where IdProveedor = 'HAL');
   select Nombre from Piezas inner join Suministra 

g- select Piezas.Nombre, Suministra.Precio from Piezas, Suministra where Piezas.Codigo = Suministra.CodigoPieza and Suministra.Precio in (select max(Precio) from Suministra);

h- insert into Suministra(CodigoPieza, IdProveedor, Precio)
   values(11, 'TNBC', 10);

i- update Suministra set Precio = Precio + 100;

j- delete from Suministra where IdProveedor = "RBT";

k- delete from Suministra where IdProveedor = "RBT" and CodigoPieza in (select Codigo from Piezas where Nombre = "Clavos");