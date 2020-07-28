CREATE TABLE lector(
IdLector SERIAL PRIMARY KEY,
NombreLector VARCHAR,
);

CREATE TABLE autor(
IdAutor SERIAL PRIMARY KEY,
NombreAutor VARCHAR,
);

CREATE TABLE editorial(
IdEditorial SERIAL PRIMARY KEY,
NombreEditorial VARCHAR,
);

CREATE TABLE libros (
IdLibros SERIAL PRIMARY KEY,
NombreLibro VARCHAR,	
IdAutor INT,	
IdEditorial INT,	
IdLector INT,
FOREIGN KEY (IdLector) REFERENCES lector(IdLector),
FOREIGN KEY (IdAutor) REFERENCES autor(IdAutor)
FOREIGN KEY (IdEditorial) REFERENCES editorial(IdEditorial)

);


CREATE TABLE devoluciones(
IdDevol SERIAL PRIMARY KEY,
IdLibro INT,
Fecha as DATE
FOREIGN KEY (IdLibro) REFERENCES libros(IdLibro)
);
