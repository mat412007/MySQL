1- select Articulos.Nombre from Articulos;

2- select Articulos.Nombre, Articulos.Precio from Articulos;

3- select Articulos.Nombre, Articulos.Precio from Articulos where Precio <= 20000;

4- select * from Articulos where Precio between 60000 and 120000;

5- select Articulos.Nombre, (Articulos.Precio / 700)as 'Precio en Dolares' from Articulos;

6- select avg(Precio) as "Promedio" from Articulo;

7- select avg(Precio) as "Promedio" from Articulos where Fabricante = 2;

8- select count(*) as "Precio mayor a 18000" from Articulos where Precio >= 18000;

9- select Articulos.Nombre, Articulos.Precio from Articulos where Precio >= 18000 order by Precio desc;
   select Articulos.Nombre, Articulos.Precio from Articulos where Precio >= 18000 order by Nombre asc;

10- select Articulos.Codigo as "Codigo del articulo", Articulos.Nombre as "Articulo", Articulos.Precio, Articulos.Fabricante as "Fabricante del articulo", Fabricantes.Codigo as "Codigo del Fabricante", Fabricantes.Nombre as "Nombre del Fabricante" from Articulos, Fabricantes where Articulos.Fabricante = Fabricantes.Codigo; 
    select * from Articulos inner join Fabricantes on Articulos.Fabricante = Fabricantes.Codigo;

11- select Articulos.Nombre as "Articulo", Articulos.Precio, Fabricantes.Nombre as "Fabricante" from Articulos , Fabricantes where Fabricantes.Codigo = Articulos.Fabricante;

12- select Articulos.Fabricante, avg(Articulos.Precio) as "Precio Promedio" from Articulos group by Articulos.Fabricante; 

13- select Fabricantes.Nombre, avg(Precio) as "Precio Promedio" from Fabricantes, Articulos where Fabricantes.Codigo = Articulos.Fabricante group by Fabricantes.Nombre;

14- select Fabricantes.Nombre, avg(Precio) as "Precio Promedio" from Fabricantes, Articulos where Fabricantes.Codigo = Articulos.Fabricante group by Fabricantes.Nombre having avg(Precio) >= 15000;

15- select Articulos.Nombre, Articulos.Precio from Articulos where Precio = (select min(Precio) from Articulos); 

17- update Articulos set Nombre = 'Impresora Laser' where Codigo = 8; 

18- update Articulos set Precio = Precio / 10 * 9 where Precio >= 120000;