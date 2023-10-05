insert into Epocas(Nombre, Comienzo, Final, Genero)
values('Renacimiento', '1400-01-01', '1600-01-01', 'Poesía'),
values('Barroco', '1600-01-01', '1750-01-01', 'Escultura'),
values('Clasicismo', '1750-01-01', '1820-01-01', 'Clásica'),
values('Romanticismo', '1820-01-01', '1900-01-01', 'Teatro'),
values('Periodo moderno', '1890-01-01', '1960-01-01', 'Jazz'),
values('Periodo contemporáneo', '1960-01-01', '2023-12-01', 'Rock & Roll');

insert into Generos(Nombre, Instrumentos, Epoca)
values('Poesía', 'Voz', 'Renacimiento'),
values('Escultura', 'Maza y puntero', 'Barroco'),
values('Clásica', 'Piano, Violín, Viola, Trompeta, Trombón y Percusión', 'Clasicismo'),
values('Teatro', 'Voz', 'Romanticismo'),
values('Jazz', 'Piano clásico, Guitarra clásica, Violín, Viola, Violoncello, Contrabajo, Flauta traversa, Clarinete', 'Periodo moderno');
values('Rock & Roll', 'Guitarra, guitarra eléctrica, percusión y teclado', 'Periodo contemporáneo'),

insert into Musicos(Nombre, Nacimiento, Muerte, Genero)
values('Francisco Guerrero', '1528-10-04', '1599-11-08', 'Poesía'),
values('Henry Purcell', '1659-09-10', '1695-11-21', 'Escultura'),
values('Luigi Cherubini', '1760-09-14', '1842-03-15', 'Clásica'),
values('Richard Wagner', '1813-03-22', '1883-02-13', 'Teatro'),
values('Paul Hindemith', '1895-11-16', '1963-12-28', 'Jazz'),
values('Peter Ablinger', '1959-03-15', '0000-00-00', 'Rock & Roll');

insert into ObrasFamosas(Nombre, Creacion, Genero)
values('Pido la Paz y la Palabra', '1955-01-01', 'Poesía'),
values('Estatua de la Libertad', '1886-01-01', 'Escultura'),
values('El lago de los cisnes', '1875-01-01', 'Clásica'),
values('Romeo y Julieta', '1597-01-01', 'Teatro'),
values('What a Wonderful World', '1967-01-01', 'Jazz'),
values('Ace of Spades', '1980-01-01', 'Rock & Roll');