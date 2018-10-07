Create view vista_compañia_categoria AS
SELECT compañia.nombre, categorias.nombre_cat
FROM Compañia,Categorias

Create view vista_telefono AS
SELECT compañia.telefono
FROM compañia

Create view vista_categorias AS
SELECT *
FROM Categorias



INSERT INTO Compañia(nombre,telefono,cod_emp) VALUES('Manolo',911111111,002)
INSERT INTO Compañia(nombre,telefono,cod_emp) VALUES('Angel Tomas', 922222222,003)
INSERT INTO Compañia(nombre,telefono,cod_emp) VALUES('Pablo', 933333333,004)

INSERT INTO Categorias(nombre_cat, descripcion_cat, id_cat) VALUES('categoria 1', 'primera categoria', 0001)
INSERT INTO Categorias(nombre_cat, descripcion_cat, id_cat) VALUES('categoria 2', 'segunda categoria', 0002)

INSERT INTO Empleados(nombre_emp, direccion, DNI_emp) VALUES ('Andres','c/arabial',null)
INSERT INTO Empleados(nombre_emp, direccion, DNI_emp) VALUES ('Jose', 'c/martinez campos', null)

INSERT INTO Clientes(NIF, nombre_cl, direccion, descuento) VALUES ('11111111', 'Manuel', 'Camino de Ronda', 15)
INSERT INTO Clientes(NIF, nombre_cl, direccion, descuento) VALUES ('22222222', 'Victor', 'Av. Dilar', 20)

INSERT INTO Pedidos(cod_ped, n_linea, fecha_entrega, fecha_pedido, DNI_emp) VALUES (100002, '200', 11-1-2001, 11-1-2001,null)
INSERT INTO Pedidos(cod_ped, n_linea, fecha_entrega, fecha_pedido, DNI_emp) VALUES (100003, '300', 22-2-2002, 22-2-2002,null)

