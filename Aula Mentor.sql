Create DataBase AulaMentor
go
use AulaMentor
go

Create Table Administrador
(DNI_Adm char(9) PRIMARY KEY CHECK (DNI_Adm LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
nombre_adm varchar(50),
email varchar(50))
go


Create Table Aula
(cod_aula int PRIMARY KEY,
dir_aula char(9),
nom_aula varchar(50),
DNI_Adm char(9)NOT NULL,
CONSTRAINT fk_DNI_Adm FOREIGN KEY(DNI_Adm) REFERENCES Administrador(DNI_Adm))
go

Create Table Alumnos
(DNI char(9) PRIMARY KEY CHECK (DNI LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
nombre varchar(50) NOT NULL,
telefono char(9)CHECK (telefono LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
nacionalidad varchar(50)NOT NULL,
email varchar(50)NOT NULL,
dirección varchar(50) NOT NULL,
cod_aula int,
CONSTRAINT fk_aula FOREIGN KEY(cod_aula) REFERENCES Aula(cod_aula))
go

Create Table Cursos
(cod_curso int PRIMARY KEY,
libro varchar(50) NOT NULL,
web varchar(50))
go

Create Table Matricula
(cod_curso int,
DNI char(9),
CONSTRAINT fk_cu FOREIGN KEY (cod_curso) REFERENCES Cursos(cod_curso),
CONSTRAINT fk_DNI FOREIGN KEY (DNI) REFERENCES Alumnos(DNI),
CONSTRAINT pk_primaria PRIMARY KEY(cod_curso,DNI))
go

Create Table Tutores
(DNI_tutor char(9) PRIMARY KEY CHECK (DNI_tutor LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
nombre varchar(50),
email varchar(50),
cod_curso int,
CONSTRAINT f_curso FOREIGN KEY (cod_curso) REFERENCES Cursos(cod_curso))
go

Create Table Es_Tutor
(Coordinador varchar(50),
nombre varchar(50) NOT NULL,
DNI_tutor char(9) CHECK (DNI_tutor LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
CONSTRAINT fk_tutor FOREIGN KEY (DNI_tutor) REFERENCES Tutores(DNI_tutor),
cod_curso int,
CONSTRAINT fk_curso01 FOREIGN KEY (cod_curso) REFERENCES Cursos(cod_curso),
CONSTRAINT pk_primary PRIMARY KEY (DNI_tutor,nombre))
go
