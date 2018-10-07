Create DataBase Gimnasio
go
use Gimnasio
go

Create Table Monitor
(DniM char(9)CHECK (DniM LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
CONSTRAINT pk_Dni PRIMARY KEY(DniM))
go



Create Table Preparación
(Descripción varchar(200),
Dni_m char(9)UNIQUE CHECK (Dni_m LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
CONSTRAINT fk_Monitor FOREIGN KEY(Dni_m) REFERENCES Monitor(DniM))
go



Create Table Sala
(N_Sala int PRIMARY KEY,
ubicación varchar(50),
estado varchar(50))
go



Create Table Aparato
(Codigo int PRIMARY KEY,
N_Sala int,
CONSTRAINT fk_S FOREIGN KEY(N_Sala) REFERENCES Sala(N_Sala))
go


Create Table Clase
(Cod_clas int PRIMARY KEY,
DNI_m char(9) CHECK (DNI_m LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
CONSTRAINT fk_Dni FOREIGN KEY (DNI_m) REFERENCES Monitor(DniM),
N_Sala int,
CONSTRAINT fk_Sala FOREIGN KEY (N_Sala) REFERENCES Sala(N_Sala))
go


Create Table Socio
(N_socio int PRIMARY KEY,
nombre varchar(50) NOT NULL,
dirección varchar(50)NOT NULL,
telefono int NOT NULL,
profesión varchar(50))
go


Create Table Asiste
(Cod_clas int,
CONSTRAINT fk_clase FOREIGN KEY(Cod_clas) REFERENCES Clase(Cod_clas),
N_Socio int,
CONSTRAINT fk_N FOREIGN KEY(N_Socio) REFERENCES Socio(N_socio))
go

Create Table Squash
(N_Pista int PRIMARY KEY,
ubicación varchar(50),
estado char(9))
go



Create Table Reserva
(Hora datetime,
Fecha datetime,
N_Socio int,
CONSTRAINT fk_Socio FOREIGN KEY(N_Socio) REFERENCES Socio(N_Socio),
N_Pista int,
CONSTRAINT fk_Pista FOREIGN KEY(N_Pista) REFERENCES Squash(N_Pista),
CONSTRAINT pk_reserva PRIMARY KEY(N_Socio,N_Pista))
go