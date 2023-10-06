1- select generos.nombre as "Nombre del genero", generos.Caracteristicas as "Caracteristicas", generos.Origenes as "Origenes", generos.Epoca as "Epoca" from generos;

2- select Nombre, Creacion, Autores, Genero from obrasfamosas; /*Corregir*/

3- select nombre_generos as "Genero", nombre_instrumentos as "Instrumento" from generos_instrumentos;

4- select nombre from musicos where nombre like "%n";

5- select nombre, creacion from obrasfamosas where year(creacion) between 1950 and 1970;

6- select nombre, nacimiento, historia from musicos order by year(nacimiento) desc;

7- select nombre, nacimiento, historia from musicos order by year(nacimiento) asc;

8- 

9- 

10-