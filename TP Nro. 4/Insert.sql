insert into Agencias(Codigo, Nombre, Ciudad)
values('A111111111', 'Agencia 1', 'Vegas'),
('A222222222', 'Agencia 2', 'Madrid'),
('A333333333', 'Agencia 3', 'Paris'),
('A444444444', 'Agencia 4', 'CABA'),
('A555555555', 'Agencia 5', 'New York'),
('A666666666', 'Agencia 6', 'Roma'),
('A777777777', 'Agencia 7', 'Tokyo'),
('A888888888', 'Agencia 8', 'Caribe'),
('A999999999', 'Agencia 9', 'Barcelona');

insert into Bancos(Nombre, Sucursal)
values('Banco 1', 'Banco-9'),
('Banco 2', 'Banco-8'),
('Banco 3', 'Banco-7'),
('Banco 4', 'Banco-6'),
('Banco 5', 'Banco-5'),
('Banco 6', 'Banco-4'),
('Banco 7', 'Banco-3'),
('Banco 8', 'Banco-2'),
('Banco 9', 'Banco-1');

insert into Formas_de_Pago(Tipo, Pago, Fecha, Banco)
values('Credito' ,10000, '2016-01-01', 'Banco 6'),
('Efectivo' ,5000, '2019-01-01', 'Banco 5'),
('Debito' ,30000, '2013-01-01', 'Banco 4');

insert into Clientes(DNI, Nombre, Domicilio, Forma_de_pago)
values('47969111', 'Bruno','Domicilio-1', 'Efectivo'),
('47969222', 'Maximo','Domicilio-2', 'Debito'),
('47969333', 'Pablo','Domicilio-3', 'Credito'),
('47969444', 'Lorenzo','Domicilio-4', 'Credito'),
('47969555', 'Felipe','Domicilio-5', 'Debito'),
('47969666', 'Lucas','Domicilio-6', 'Efectivo'),
('47969777', 'Diego','Domicilio-7', 'Efectivo'),
('47969888', 'Ezequiel','Domicilio-8', 'Credito'),
('47969999', 'Ciro','Domicilio-9', 'Debito');

insert into Paquetes_Turisticos(Codigo, Precio, Destino, Agencia, Cliente)
values('P111111111', 10000, 'La ciudad', 'A111111111', '47969111'),
('PP11111111', 30000, 'La ciudad', 'A111111111', '47969111'),
('P333333333', 100000, 'El bosque', 'A333333333', '47969333'),
('P444444444', 200000, 'La selva', 'A444444444', '47969444'),
('P555555555', 300000, 'Bajo el puente', 'A555555555', '47969555'),
('P666666666', 400000, 'Pasando la via', 'A666666666', '47969666'),
('PP66666666', 450000, 'Pasando la via', 'A666666666', '47969666'),
('P777777777', 500000, 'La otra avenida', 'A777777777', '47969777'),
('P888888888', 600000, 'Alaska', 'A888888888', '47969888'),
('PP88888888', 650000, 'Alaska', 'A888888888', '47969888');
