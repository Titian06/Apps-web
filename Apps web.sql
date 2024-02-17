Create database Supers;
use supers;

CREATE TABLE Personajes(
	
    id int NOT NULL AUTO_INCREMENT,
    nombre varchar(20),
    nombre_real varchar(40),
    genero varchar(10),
    id_universo int,
    
    primary key ( id ),
	foreign key ( id ) references Personajes (id)
);

CREATE TABLE Universos(
	
    id int,
    id_universo varchar(2),
    company varchar(5),
    edad varchar(10),
	
	primary key(id_universo),
	foreign key (id) REFERENCES Personajes (id)
);

INSERT INTO Personajes (id, nombre, nombre_real, genero, id_universo) VALUES
	('1', 'Spider-Man', 'Peter Parker', 'Hombre', '1',
		'2', 'Superman', 'Clark Kent', 'Hombre', '2',
		'3', 'Batman', 'Bruce Wayne', 'Hombre','3',
		'4', 'Iron Man', 'Tony Stark', 'Hombre','4',
		'5', 'Captain America', 'Steve Rogers', 'Hombre','5',
		'6', 'Black Widow', 'Natasha Romanoff', 'Mujer','1',
		'7', 'Thor', 'Thor Odinson', 'Hombre','2',
		'8', 'Hulk', 'Bruce Banner', 'Hombre','3',
		'9', 'Wolverine', 'Logan', 'Hombre','4',
		'10', 'Storm', 'Ororo Munroe', 'Mujer','5');
        
INSERT INTO Universos (id, id_universo, company, edad) VALUES
	( '1', 'U1', 'Marvel', 'silvery',
    '2', 'U2', 'DC', 'golden',
    '3', 'U3', 'DC', 'golden',
    '4', 'U4', 'Marvel', 'modern',
    '5', 'U5', 'Marvel', 'modern');

SELECT * from Personajes;