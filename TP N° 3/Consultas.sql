1- select generos.nombre as "Nombre del genero", generos.Caracteristicas as "Caracteristicas", generos.Origenes as "Origenes", generos.Epoca as "Epoca" from generos; /*Corregir*/

2- select obrasfamosas_musicos.Nombre_Musicos as "Musicos", obrasfamosas.nombre as "Obra", obrasfamosas.creacion "Creacion", obrasfamosas.genero "Genero" from obrasfamosas_musicos inner join obrasfamosas on obrasfamosas.nombre = obrasfamosas_musicos.nombre_obrasfamosas; 

3- select nombre_generos as "Genero", nombre_instrumentos as "Instrumento" from generos_instrumentos;

4- select nombre from musicos where nombre like "%n";

5- select nombre, creacion from obrasfamosas where year(creacion) between 1950 and 1970;

6- select nombre, nacimiento, historia from musicos order by year(nacimiento) desc;

7- select nombre, nacimiento, historia from musicos order by year(nacimiento) asc;

8- select group_concat(nombre) as "Instrumentos", count(*) as "Cantidad" from Instrumentos where materiales like "%Madera%"; 

9- select epocas.nombre as "Epoca", group_concat(generos.nombre) as "Generos" from epocas inner join Generos on epocas.nombre = generos.epoca group by epocas.nombre; 

10- select * from generos where Origenes is not null;