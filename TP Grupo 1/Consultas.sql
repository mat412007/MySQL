select codigo_oficina, ciudad from oficina;

select telefono, ciudad from oficina where pais like "Esp%";

select email, nombre, apellido1, apellido2 from empleado where codigo_jefe = 7;

select puesto, nombre, apellido1, apellido2, email from empleado where codigo_jefe is NULL;

select nombre, apellido1, apellido2, puesto from empleado where puesto != 'Representante Ventas';

select nombre from empleado inner join oficina on empleado.codigo_oficina = oficina.codigo_oficina where pais like 'Espa%';

select distinct estado from pedido;

select cliente.codigo_cliente from cliente inner join pago on cliente.codigo_cliente = pago.codigo_cliente where year(pago.fecha_pago) = 2008;





select * from pedido where estado = 'Rechazado' and year(fecha_entrega) = 2009;

select * from pedido where month(fecha_entrega) = 01 and estado = 'Entregado';

select * from pago where year(fecha_pago) = 2008 and forma_pago = 'Paypal' order by fecha_pago desc;

select distinct forma_pago from pago;

select gama, cantidad_en_stock, precio_venta from producto where gama = 'Ornamentales' and cantidad_en_stock > 100 order by precio_venta desc;

select codigo_empleado_rep_ventas from cliente where ciudad = 'Madrid' and codigo_empleado_rep_ventas between 11 and 30;

select nombre_cliente, nombre, apellido1, apellido2 from cliente, empleado where cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado;

select pedido.codigo_pedido ,cliente.nombre_cliente, pedido.estado, empleado.nombre, empleado.apellido1,empleado.apellido2 from cliente, pedido, empleado where cliente.codigo_cliente = pedido.codigo_cliente and pedido.estado = 'Entregado' and cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado order by codigo_pedido;

select pedido.codigo_pedido ,cliente.nombre_cliente, pedido.estado, empleado.nombre, empleado.apellido1,empleado.apellido2 from cliente, pedido, empleado where cliente.codigo_cliente = pedido.codigo_cliente and pedido.estado != 'Entregado' and cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado order by codigo_pedido;

select pedido.codigo_pedido ,cliente.nombre_cliente, pedido.estado, empleado.nombre, empleado.apellido1,empleado.apellido2 from cliente, pedido, empleado where cliente.codigo_cliente = pedido.codigo_cliente and pedido.estado = 'Entregado' and cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado order by codigo_pedido;
