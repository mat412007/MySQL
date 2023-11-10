1- 
select codigo as "Codigo de paquete", destino as "Destino", precio as "Precio", agencia as "Agencia" from paquetes;

2- 
select dni as "DNI", nombre as "Nombre", Apellido as "Apellido" from clientes, Paquetes_Clientes, paquetes where clientes.DNI = Paquetes_Clientes.DNI_Cliente and paquetes.Codigo = Paquetes_Clientes.Codigo_Paquete;

3-
select nombre as "Nombre del cliente", monto "Envio de pago", tipo as "Metodo" from clientes, Formas_Pago where clientes.DNI in(select DNI_Cliente from Paquetes_Clientes) and Formas_Pago.Cliente_DNI = clientes.DNI;

4-
select banco as "Banco", Nombre as "Cliente" from Formas_Pago, clientes where clientes.DNI = Formas_Pago.Cliente_DNI;

5- 
select nombre as "Nombre del cliente" from clientes where nombre like 'P%';

6- 
select codigo as "Codigo de paquete", precio as "Precio" from paquetes where precio > 400000 order by precio;

7- 
update Paquetes set Paquetes.Precio = (Precio * 0.9) where paquetes.codigo in(select Codigo_Paquete from Paquetes_Clientes);

8- 
update Paquetes set Paquetes.Precio = (Precio * 1.3) where paquetes.codigo in(select Codigo_Paquete from Paquetes_Clientes);

9-
select Fecha_Validez, banco, tipo from Formas_Pago;

10- 
select * from agencias where ciudad = 'CABA';