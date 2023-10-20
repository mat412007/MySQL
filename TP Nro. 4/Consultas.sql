1- 
select paquetes_turisticos.codigo, paquetes_turisticos.destino, paquetes_turisticos.precio, agencias.nombre from paquetes_turisticos, agencias where agencias.codigo = paquetes_turisticos.agencia;

2- 
select clientes.DNI, clientes.nombre, clientes.domicilio from clientes, paquetes_turisticos where clientes.DNI = paquetes_turisticos.cliente;

3-

4-
select Formas_de_Pago.banco, clientes.nombre from Formas_de_Pago, clientes where clientes.Forma_de_pago = Formas_de_Pago.Tipo order by formas_de_pago.banco;

5- 
select clientes.nombre from clientes where nombre like 'P%';

6- 
select codigo, precio from paquetes_turisticos where precio > 400000 order by precio;

7- 
update Paquetes_Turisticos set Precio = (Precio * 0.7) where (select clientes.DNI from clientes) = (select paquetes_turisticos.cliente from paquetes_turisticos);
select clientes.DNI, paquetes_turisticos.precio from clientes, paquetes_turisticos where clientes.DNI = paquetes_turisticos.cliente;

8- 

9-

10- 
select nombre, ciudad from agencias where ciudad = 'CABA';