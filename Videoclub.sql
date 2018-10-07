Create DataBase Videoclub
go
use Videoclub
go

Create Table Director
(Nom_director varchar(50) PRIMARY KEY,
Nacional bit)
go

Create Table Pelicula
(Titulo varchar(50) PRIMARY KEY,
Nacional bit,
Productora varchar(50),
Fecha datetime,
nom_director varchar(50),
CONSTRAINT fk_director FOREIGN KEY (nom_director)REFERENCES Director(Nom_director))
go

Create Table Ejemplar
(Conservacion char(8),
num_ej int,
titulo varchar(50),
CONSTRAINT fk_titulo FOREIGN KEY (titulo) REFERENCES Pelicula(Titulo),
CONSTRAINT pk_ejemplar PRIMARY KEY (num_ej,titulo))
go

Create Table Socio
(DNI_socio char(9) CHECK (DNI_socio LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
CONSTRAINT pk_socio PRIMARY KEY(DNI_socio,avala), 
nombre_socio varchar(50) NOT NULL,
numsocio char(9) CHECK (numsocio LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
dirección varchar(50) NOT NULL,
teléfono int NOT NULL,
avala char(9) CHECK (avala LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
CONSTRAINT fk_aval FOREIGN KEY (numsocio) REFERENCES Socio(DNI_socio))
go

Create Table Alquilado
(DNI_socio char(9) CHECK (DNI_socio LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
CONSTRAINT pk_soc FOREIGN KEY(DNI_socio) REFERENCES Socio(DNI_socio),
numsocio char(9)CHECK (numsocio LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
fecha_c datetime,
fecha_f datetime,
num_ej int,
CONSTRAINT fk_ejemplar FOREIGN KEY(num_ej) REFERENCES Ejemplar(num_ej),
CONSTRAINT pk_num_ej_y_DNI_socio PRIMARY KEY(num_ej,DNI_socio))
go

Create Table Actor
(nom_actor varchar(50),
CONSTRAINT pk_nombre PRIMARY KEY(nom_actor),
nacional bit,
sexo char(1))
go

Create Table Participa
(tipo_participación varchar(50),
titulo varchar(50),
CONSTRAINT fk_tit FOREIGN KEY (titulo) REFERENCES Pelicula(Titulo),
nombre varchar(50),
CONSTRAINT fk_nom FOREIGN KEY (nombre) REFERENCES Actor(nom_actor),
CONSTRAINT pk_dos PRIMARY KEY (titulo,nombre))
go