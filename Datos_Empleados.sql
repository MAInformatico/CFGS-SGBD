INSERT INTO Empleado(Cod_emp, DNI, Nombre, Direcci�n, Sueldo) VALUES (1,'75223344Z','Juan' , 'Buensuceso n�10', 2000)
INSERT INTO Empleado(Cod_emp, DNI, Nombre, Direcci�n, Sueldo) VALUES (2,'64554433F','Manuel', 'Arabial n�20', 3000)
INSERT INTO Empleado(Cod_emp, DNI, Nombre, Direcci�n, Sueldo) VALUES (3,'63564538F','Ana', 'Camino de Ronda n�15', 1000)
INSERT INTO Familiar(DNI_F, Nombre_F) VALUES ('62134578G', 'Jaime')
INSERT INTO Familiar(DNI_F, Nombre_F) VALUES ('11111111H', 'Andr�s')
INSERT INTO Proyecto(Cod_proy, Presupuesto) VALUES (1,3000)
INSERT INTO Proyecto(Cod_proy, Presupuesto) VALUES (2,1000)
INSERT INTO Proyecto(Cod_proy, Presupuesto) VALUES (3,2000)
INSERT INTO Proyecto(Cod_proy, Presupuesto) VALUES (4,5000)
INSERT INTO Proyecto(Cod_proy, Presupuesto) VALUES (5,1000)

--OPERACIONES CON UPDATE

UPDATE Proyecto SET Presupuesto=5000
go

Create view Presupuesto AS
Select Proyecto.presupuesto
From proyecto


