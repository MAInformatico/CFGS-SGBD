Create DataBase Empleados
go
use Empleados
go

Create Table Departamento
(Cod_dep int PRIMARY KEY,
Nombre_dep varchar(50) NOT NULL,
localidad varchar,
responsable int NOT NULL,
CONSTRAINT fk_responsable FOREIGN KEY(responsable) REFERENCES Empleado(Cod_emp))
go

Create Table Empleado
(Cod_emp int PRIMARY KEY,
DNI char(9) NOT NULL UNIQUE CHECK (DNI LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
Nombre varchar(50) NOT NULL,
Dirección varchar(50) NOT NULL,
Sueldo money NOT NULL,
Cod_dep int,
Jefe int,
CONSTRAINT fk_dep FOREIGN KEY (Cod_dep) REFERENCES Departamentos(Cod_dep),
CONSTRAINT fk_jefe FOREIGN KEY (Jefe) REFERENCES Empleado(Cod_emp))
go

Create Table Familiar
(DNI_F char(9) PRIMARY KEY CHECK (DNI_F LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
Nombre_F varchar(50) NOT NULL)
go


Create Table trabaja
(Función varchar(50) NOT NULL,
cod_emp int,
cod_proy int,
CONSTRAINT fk_emp FOREIGN KEY (cod_emp) REFERENCES Empleado(cod_emp),
CONSTRAINT fk_proy FOREIGN KEY(cod_proy) REFERENCES Proyecto(cod_proy))
go

Create Table Proyecto
(Cod_proy int PRIMARY KEY,
Presupuesto money NOT NULL)
go



