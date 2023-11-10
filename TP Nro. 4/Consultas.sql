1- 
select destino, codigo, precio, agencia from paquetes;

2- 
select dni, nombre, Apellido from clientes, Paquetes_Clientes, paquetes where clientes.DNI = Paquetes_Clientes.DNI_Cliente and paquetes.Codigo = Paquetes_Clientes.Codigo_Paquete;

3-

4-
select Formas_de_Pago.banco, clientes.nombre from Formas_de_Pago, clientes where clientes.Forma_de_pago = Formas_de_Pago.Tipo order by formas_de_pago.banco;

5- 
select clientes.nombre from clientes where nombre like 'P%';

6- 
select codigo, precio from paquetes where precio > 400000 order by precio;

7- 
update Paquetes set Precio = (Precio * 0.7) where (select clientes.DNI from clientes) = (select Paquetes_Clientes.DNI_Cliente from Paquetes_Clientes);
select clientes.DNI, paquetes.precio from clientes, paquetes, Paquetes_Clientes where clientes.DNI = Paquetes_Clientes.DNI_Cliente order by clientes.dni;

8- 

9-

10- 
select * from agencias where ciudad = 'CABA';