insert into Piezas(Codigo, Nombre)
values(1254, 'Madera'),
(6532, 'Metal'),
(1478, 'Sierra'),
(1, 'Clavos'),
(9685, 'Machete'),
(5483, 'Destornillador'),
(1286, 'Hacha'),
(4685, 'Pico'),
(3542, 'Pinza'),
(7542, 'Tornillos'),
(11, 'Tuercas');

insert into Proveedores(ID, Nombre)
values('HAL', 'Juan'),
('4685', 'Raul'),
('RBT', 'Maximo'),
('9752', 'Andres'),
('1826', 'Leon'),
('2486', 'Tomas'),
('TNBC', 'Federico'),
('6428', 'Felipe'),
('3167', 'Ciro'),
('7946', 'Alejandro');

insert into Suministra(CodigoPieza, IdProveedor, Precio)
values(1254, 'HAL', 500),
(6532, '4685', 600),
(1478, 'RBT', 1500),
(1, 'RBT', 50),
(9685, '1826', 300),
(5483, '2486', 400),
(1286, 'TNBC', 800),
(4685, '6428', 700),
(3542, '3167', 200),
(7542, '7946', 100);
