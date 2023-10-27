select Nombre as "Piezas" from Piezas;

select ID as "ID del proveedor", Nombre as "Nombre del proveedor" from proveedores;

select avg(Precio) as "Precio medio" from Suministra;

select Nombre as "Piezas que terminan con 's'" from Piezas where Nombre like "%s";

select Nombre from Proveedores where Proveedores.ID in (select IdProveedor from Suministra where CodigoPieza = 1);

select Nombre from Piezas where Piezas.Codigo in (select CodigoPieza from Suministra where IdProveedor = 'HAL');