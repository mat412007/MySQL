select paquetes_turisticos.codigo, paquetes_turisticos.destino, paquetes_turisticos.precio, agencias.nombre from paquetes_turisticos, agencias where agencias.codigo = paquetes_turisticos.agencia;

select clientes.DNI, clientes.nombre, clientes.domicilio from clientes, paquetes_turisticos where clientes.DNI = paquetes_turisticos.cliente;

select clientes.nombre from clientes where nombre like 'P%';

select codigo, precio from paquetes_turisticos where precio > 400000 order by precio;

select nombre, ciudad from agencias where ciudad = 'CABA';