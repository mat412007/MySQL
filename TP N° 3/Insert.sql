insert into Epocas(Nombre, Comienzo, Final, Genero)
values('Renacimiento', '1400-01-01', '1600-01-01', 'Poesia'),
('Barroco', '1600-01-01', '1750-01-01', 'Escultura'),
('Clasicismo', '1750-01-01', '1820-01-01', 'Clasica'),
('Romanticismo', '1820-01-01', '1900-01-01', 'Teatro'),
('Periodo moderno', '1890-01-01', '1960-01-01', 'Jazz'),
('Periodo contemporaneo', '1960-01-01', '2023-12-01', 'Rock & Roll');

insert into Generos(Nombre, Epoca)
values('Poesia', 'Renacimiento'),
('Escultura', 'Barroco'),
('Clasica', 'Clasicismo'),
('Teatro', 'Romanticismo'),
('Jazz', 'Periodo moderno'),
('Rock & Roll', 'Periodo contemporaneo');

insert into Musicos(Nombre, Nacimiento, Muerte, Genero)
values('Francisco Guerrero', '1528-10-04', '1599-11-08', 'Poesia'),
('Henry Purcell', '1659-09-10', '1695-11-21', 'Escultura'),
('Luigi Cherubini', '1760-09-14', '1842-03-15', 'Clasica'),
('Richard Wagner', '1813-03-22', '1883-02-13', 'Teatro'),
('Paul Hindemith', '1895-11-16', '1963-12-28', 'Jazz'),
('Peter Ablinger', '1959-03-15', '1111-11-11', 'Rock & Roll');

insert into ObrasFamosas(Nombre, Creacion, Genero)
values('Pido la Paz y la Palabra', '1955-01-01', 'Poesia'),
('Estatua de la Libertad', '1886-01-01', 'Escultura'),
('El lago de los cisnes', '1875-01-01', 'Clasica'),
('Romeo y Julieta', '1597-01-01', 'Teatro'),
('What a Wonderful World', '1967-01-01', 'Jazz'),
('Ace of Spades', '1980-01-01', 'Rock & Roll');

insert into Instrumentos(Nombre, Lugar, Tipo)
values('Guitarra', 'Espana', 'Cuerda'),
('Maza', 'Desconocido', 'Percusion'),
('Piano', 'Italia', 'Viento'),
('Violin', 'Italia ', 'Cuerda'),
('Clarinete', 'Alemania', 'Viento'),
('Guitarra electrica', 'Estados Unidos', 'Cuerda');

insert into Generos_Instrumentos(Nombre_Generos, Nombre_Instrumentos)
values('Poesia', 'Guitarra'),
('Escultura', 'Maza'),
('Clasica', 'Piano'),
('Teatro', 'Violin'),
('Jazz', 'Clarinete'),
('Rock & Roll', 'Guitarra electrica');

insert into ObrasFamosas_Musicos(Nombre_ObrasFamosas, Nombre_Musicos)
values('Pido la Paz y la Palabra', 'Francisco Guerrero'),
('Estatua de la Libertad', 'Henry Purcell'),
('El lago de los cisnes', 'Luigi Cherubini'),
('Romeo y Julieta', 'Richard Wagner'),
('What a Wonderful World', 'Paul Hindemith'),
('Ace of Spades', 'Peter Ablinger');
