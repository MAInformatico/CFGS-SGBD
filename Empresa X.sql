Create DataBase EmpresaX
go
use EmpresaX
go

Create Table Departamento
(Nombre varchar(50) PRIMARY KEY,
Localización varchar(50) NOT NULL)
go

Create Table Empleado
(N_SS int PRIMARY KEY,
Nombre varchar(50),
Salario money)
go

Create Table Hijo
(DNI char(9) CHECK (DNI LIKE ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]')),
N_SS int,
CONSTRAINT fk_NSS FOREIGN KEY(N_SS) REFERENCES Empleado(N_SS),
CONSTRAINT pk_Hijo PRIMARY KEY(DNI,N_SS),
Nombre varchar(50) NOT NULL,
f_nac datetime,
estudios varchar(100))
go


Create Table Concede_Beca
(Fecha datetime,
Cuantia money,
Nombre varchar(50),
CONSTRAINT fk_nombre FOREIGN KEY(Nombre) REFERENCES Departamento(Nombre),
DNI char,
CONSTRAINT fk_DNI FOREIGN KEY(DNI) REFERENCES Hijo(DNI),
N_SS int NOT NULL,
CONSTRAINT fk_SS FOREIGN KEY(N_SS) REFERENCES Empleado(N_SS),
CONSTRAINT pk_Beca PRIMARY KEY(DNI,Nombre))
go

Create Table Director
(Nombre varchar(50)PRIMARY KEY)
go

Create Table No_Director
(N_SS int,
CONSTRAINT fk_Numero_SS FOREIGN KEY(N_SS) REFERENCES Empleado(N_SS),
Nombre varchar(50),
CONSTRAINT fk_Nom_Dep FOREIGN KEY(Nombre) REFERENCES Departamento(Nombre))
go

Create Table Ingeniero
(Especialidad varchar(200),
N_SS int PRIMARY KEY,
CONSTRAINT fk_Numero_Seg_Social FOREIGN KEY(N_SS) REFERENCES Empleado(N_SS),
Nombre_ing varchar(50))
go

Create Table Proyecto
(Nombre_proy varchar(50)PRIMARY KEY,
Nombre varchar(50),
CONSTRAINT fk_n FOREIGN KEY(Nombre) REFERENCES Departamento(Nombre))
go

Create Table Se_Asigna
(Nombre_proy varchar(50),
CONSTRAINT fk_proy FOREIGN KEY(Nombre_proy) REFERENCES Proyecto(Nombre_proy),
N_SS int,
CONSTRAINT fk_N_SSocial FOREIGN KEY(N_SS) REFERENCES Ingeniero(N_SS))
go