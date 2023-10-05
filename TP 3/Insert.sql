insert into Fabricantes(Nombre)
values('Samsung'),
('Dell'),
('Intel'),
('Lenovo'),
('Android');

insert into Articulos(Nombre, Fabricante)
values('Celular', 5),
('Laptop', 4),
('Laptop', 2),
('Computadora', 2),
('Television', 1),
('Procesador', 3);

insert into Articulos_2(Nombre, Precio, Fabricante)
values('Celular',200000, 5),
('Laptop',500000, 4),
('Laptop',300000, 2);

update articulos set Precio = 100000 where Codigo = 1;
update articulos set Precio = 400000 where Codigo = 3;
update articulos set Precio = 200000 where Codigo = 5;

update articulos set Precio = 300000 where Codigo = 2;
update articulos set Precio = 250000 where Codigo = 4;
update articulos set Precio = 500000 where Codigo = 6;