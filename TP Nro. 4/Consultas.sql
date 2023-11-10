1- 
select destino, codigo, precio, agencia from paquetes;

2- 
select dni, nombre, Apellido from clientes, Paquetes_Clientes, paquetes where clientes.DNI = Paquetes_Clientes.DNI_Cliente and paquetes.Codigo = Paquetes_Clientes.Codigo_Paquete;

3-
select nombre, monto, tipo from clientes, Formas_Pago where clientes.DNI in(select DNI_Cliente from Paquetes_Clientes) and Formas_Pago.Cliente_DNI = clientes.DNI;

4-
select banco,Cliente_DNI from Formas_Pago, clientes where clientes.DNI = Formas_Pago.Cliente_DNI;

5- 
select clientes.nombre from clientes where nombre like 'P%';

6- 
select codigo, precio from paquetes where precio > 400000 order by precio;

7- 
update Paquetes set Paquetes.Precio = (Precio * 0.9) where paquetes.codigo in(select Codigo_Paquete from Paquetes_Clientes);

8- 
update Paquetes set Precio = (Precio * 1.3) where paquetes.codigo in(select Codigo_Paquete from Paquetes_Clientes);

9-
select Fecha_Validez, banco, tipo from Formas_Pago;

10- 
select * from agencias where ciudad = 'CABA';