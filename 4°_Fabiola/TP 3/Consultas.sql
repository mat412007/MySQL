select * from Articulos where Precio is NULL;

select * from Articulos where Precio is Not NULL;

select distinct nombre from articulos;

select * from articulos where precio in (100000, 400000);

select * from articulos where precio not in (100000, 400000);

select * from articulos where Precio = any (
    select Precio
    from articulos 
    where Precio <= 200000
);

select * from Articulos where Precio < all (
    select Precio
    from Articulos
    where Fabricante = 2
);

select * from Articulos_2 left join Articulos on Articulos.Precio = Articulos_2.Precio;

select * from articulos right join Articulos_2 on Articulos.Precio = Articulos_2.Precio;