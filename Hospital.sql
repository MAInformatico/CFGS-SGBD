Create DataBase Hospital
go
use Hospital
go

Create Table Hospital
(dirección varchar(50)NOT NULL,
fax int NOT NULL,
nombre_h varchar(50) PRIMARY KEY)
go

Create Table Personal
(nombre varchar(50) NOT NULL,
dirección varchar(50) NOT NULL,
telefono int,
DNI char(9) PRIMARY KEY
CHECK (DNI LIKE ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]')),
nombre_h varchar(50),
CONSTRAINT fk_hospital FOREIGN KEY(nombre_h) REFERENCES Hospital(nombre_h),
tipo char(12) NOT NULL)
go

Create Table Telefono
(telefono int NOT NULL,
nombre_h varchar(50),
CONSTRAINT fk_nombre_hospital FOREIGN KEY(nombre_h)REFERENCES Hospital(nombre_h))
go

Create Table Medicos
(especialidad varchar(50) NOT NULL,
DNI char(9) UNIQUE CHECK (DNI LIKE ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]')),
CONSTRAINT fk_DNI FOREIGN KEY (DNI) REFERENCES Personal(DNI),
)
go

Create Table Paciente
(numero_p int PRIMARY KEY,
num_ape int NOT NULL,
dirección varchar(50) NOT NULL,
telefono int NOT NULL,
num_ss int NOT NULL)
go

Create Table Sala
(nombre_h varchar(50),
CONSTRAINT fk_nom_h FOREIGN KEY (nombre_h) REFERENCES Hospital(nombre_h),
num_sala int PRIMARY KEY)
go

Create Table Admisión
(fecha smalldatetime,
num_adm int PRIMARY KEY,
numero_p int,
CONSTRAINT fk_paciente FOREIGN KEY (numero_p) REFERENCES Paciente(numero_p),
num_sala int,
CONSTRAINT fk_sala FOREIGN KEY (num_sala) REFERENCES Sala(num_sala))
go

Create Table Tratamiento
(DNI char(9) UNIQUE CHECK
(DNI LIKE ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]')),
nombre_tratamiento varchar(50) PRIMARY KEY,
num_adm int UNIQUE NOT NULL,
CONSTRAINT fk_admision FOREIGN KEY(num_adm) REFERENCES Admisión(num_adm))
go

Create Table Resultado
(fecha smalldatetime PRIMARY KEY,
hora smalldatetime,
nom_tra varchar(50),
CONSTRAINT fk_nombre_tratamiento
FOREIGN KEY (nom_tra) REFERENCES Tratamiento(nombre_tratamiento))
go