CREATE VIEW vista_empleado AS
SELECT *
FROM Empleado
go

Create View vista_Concede AS
SELECT Concede_Beca.Cuantia
FROM Concede_Beca
go

INSERT INTO Departamento(Nombre,Localización) VALUES ('Desarrollo','Barbate')
INSERT INTO Departamento(Nombre,Localización) VALUES ('Investigación','Utrera')

INSERT INTO Empleado(N_SS,Nombre,Salario) VALUES (11111111,'Angel Tomás',1000)
INSERT INTO Empleado(N_SS,Nombre,Salario) VALUES (22222222,'Aurelio',2000)

INSERT INTO Hijo(DNI,N_SS,Nombre,f_nac,estudios) VALUES ('11101111A',null,'Manuel','1971-1-1','Administrativo')
INSERT INTO Hijo(DNI,N_SS,Nombre,f_nac,estudios) VALUES ('22222222B',null,'Victor','1972-2-2','Economista')
INSERT INTO Hijo(DNI,N_SS,Nombre,f_nac,estudios) VALUES ('33333333C',null,'Juan','1973-3-3','Ingeniero de Caminos')

INSERT INTO Concede_Beca(Fecha,Cuantia,Nombre,DNI,N_SS) VALUES ('2007-1-1',3000,null,null,123456)
INSERT INTO Concede_Beca(Fecha,Cuantia,Nombre,DNI,N_SS) VALUES ('2007-2-2',4000,null,null,234567)

INSERT INTO Director(Nombre) VALUES ('Jose Manuel')
INSERT INTO Director(Nombre) VALUES ('Antonio')

INSERT INTO Ingeniero(Especialidad,N_SS,Nombre_ing) VALUES ('Ingeniero industrial',null,'Carlos')
INSERT INTO Ingeniero(Especialidad,N_SS,Nombre_ing) VALUES ('Ingeniero informático',null,'Jose')

INSERT INTO Proyecto(Nombre_proy,N_SS) VALUES ('Proyecto uno',456789)
INSERT INTO Proyecto(Nombre_proy,N_SS) VALUES ('Proyecto dos',567891)
INSERT INTO Proyecto(Nombre_proy,N_SS) VALUES ('Proyecto tres',789101)
INSERT INTO Proyecto(Nombre_proy,N_SS) VALUES ('Proyecto cuatro',000444)