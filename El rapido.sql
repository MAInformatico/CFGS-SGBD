use ElRapido
go

Create Table Compañia
(nombre varchar(50),
telefono int,
cod_emp int PRIMARY KEY)
go

Create Table Categorias
(nombre_cat varchar(50),
descripcion_cat varchar(200),
id_cat int PRIMARY KEY)
go


Create Table Empleados
(nombre_emp varchar(50) NOT NULL,
direccion varchar(50) NOT NULL,
DNI_emp char(9) PRIMARY KEY CHECK (DNI_emp LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]')
)
go

Create Table Clientes
(NIF char(9) PRIMARY KEY CHECK (NIF LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
nombre_cl varchar(50),
direccion varchar(50),
descuento int)
go

Create Table Pedidos
(cod int PRIMARY KEY,
n_linea varchar(50) NOT NULL,
fecha_entrega datetime NOT NULL,
fecha_pedido datetime NOT NULL,
DNI_emp char(9),
NIF char(9),
CONSTRAINT fk_dni FOREIGN KEY (DNI_emp) REFERENCES Empleados(DNI_emp),
CONSTRAINT fk_nif FOREIGN KEY (NIF) REFERENCES Clientes(NIF))
go

Create Table Proveedores
(CIF char(9) PRIMARY KEY,
nombre_proveedor varchar(50) NOT NULL,
cod_pro int NOT NULL,
telefono_pro int,
dirección varchar(50) NOT NULL
CONSTRAINT fk_producto FOREIGN KEY(cod_pro) REFERENCES Productos(cod_pro))
go

Create Table Productos
(cod_pro int PRIMARY KEY,
nombre_pro varchar(50) NOT NULL,
precios money NOT NULL,
descripción varchar(200))
go


Create Table L_Detalle
(cantidad int,
n_linea int PRIMARY KEY,
cod_pe int,
cod_pr int,
CONSTRAINT pedido FOREIGN KEY (cod_pe) REFERENCES Pedidos(cod),
CONSTRAINT fk_pr  FOREIGN KEY (cod_pr) REFERENCES Productos(cod_pro))
go

