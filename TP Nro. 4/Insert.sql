insert into Agencias(Codigo, Fecha_Inicial, Ciudad)
values(11111, '2000-12-24', 'Madrid'),
(22222, '1980-05-15', 'Paris'),
(33333, '2010-04-09', 'Nueva York'),
(44444, '2005-08-02', 'Roma'),
(55555, '2020-01-01', 'Londres'),
(66666, '1950-10-28', 'Barcelona'),
(77777, '2015-01-30', 'Washington'),
(88888, '1990-07-20', 'CABA'),
(99999, '1970-06-02', 'Tokyo');

insert into Clientes(DNI, Domicilio, Nombre, Apellido)
values(47589631, 'Nogoya 2343', 'Juan', 'Lopez'),
(12463589, 'Argerich 3562', 'Max', 'Bayers'),
(16478532, 'Nazca 1645', 'Tomas', 'Guevara'),
(46214695, 'Arregui 2846', 'Francisco', 'Donia'),
(16794652, 'Av. Lope de Vega 1298', 'Pedro', 'Longo'),
(34899665, 'Av. San Martin 2467', 'Eduardo', 'Grin'),
(24683157, 'Santo Tome 3758', 'Bauti', 'Mambrin'),
(31648289, 'Argerich 3850', 'Marco', 'Sanzchez');

insert into Paquetes(Codigo, Destino, Precio, Agencia)
values(4682, 'Londres', 400000, 77777),
(1348, 'Barcelona', 900000, 66666),
(4762, 'Washington', 30000, 33333),
(3486, 'CABA', 600000, 44444),
(8246, 'Tokyo', 500000, 99999),
(7987, 'Paris', 700000, 55555),
(6482, 'Nueva York', 450000, 88888),
(1642, 'Roma', 800000, 11111),
(3152, 'Real Madrid', 250000, 22222),
(9762, 'Madrid', 650000, 99999);

insert into Paquetes_Clientes(Codigo_Paquete, DNI_Cliente)
values(6482, 31648289),
(9762, 47589631),
(1642, 46214695),
(1348, 16794652),
(4762, 24683157),
(4682, 12463589),
(8246, 16478532),
(3486, 34899665);

insert into Formas_Pago(Tipo, Monto, Banco, Fecha_Validez, Cliente_DNI)
values('Tarjeta', 500000, 'Buenos Aires', '2020-12-30', 34899665),
('Efectivo', 250000, 'Citibank', '2023-10-05', 12463589),
('ftg', 400000, 'Supervielle', '2010-09-02', 16478532),
('dtb', 300000, 'Patagonia', '2018-11-22', 46214695),
('xdgh', 600000, 'Hipotecado', '2015-04-15', 16794652),
('deg', 200000, 'Municipal', '2021-07-08', 34899665),
('fh', 550000, 'Santander', '2020-04-28', 24683157),
('da', 100000, 'Corrientes', '2022-09-13', 31648289),
('dv', 300000, 'Brubank', '2012-02-28', 47589631),
('ser', 400000, 'Bibank', '2023-12-01', 24683157),
('Ef', 600000, 'Mariva', '2019-05-23', 16478532);
