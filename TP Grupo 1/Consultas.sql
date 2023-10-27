select codigo_oficina, ciudad from oficina;

select telefono, ciudad from oficina where pais like "Esp%";

select email, nombre, apellido1, apellido2 from empleado where codigo_jefe = 7;

select puesto, nombre, apellido1, apellido2, email from empleado where codigo_jefe is NULL;

select nombre, apellido1, apellido2, puesto from empleado where puesto != 'Representante Ventas';

