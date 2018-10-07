Create DataBase Propietarios
go
use Propietarios
go

Create Table Piso
(DNI char(9) UNIQUE CHECK (DNI LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][A-Z]'),
nombre varchar(20),
apellidos varchar(50),
direccion varchar(50),
CP char(5) CHECK (CP LIKE '[0-9][0-9][0-9][0-9][0-9]'),
localidad varchar(50),
provincia varchar(50),
telefono char(9) CHECK (telefono LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
puerta char(2) PRIMARY KEY)
go

Create Table cargo
(cod_cargo int PRIMARY KEY,
nombre varchar(50),
funciones varchar(50))
go

Create Table ostenta
(f_posesion datetime,
puerta char(2),
CONSTRAINT fk_puerta FOREIGN KEY(puerta) REFERENCES Piso(puerta),
cod_cargo int,
CONSTRAINT fk_cargo FOREIGN KEY(cod_cargo) REFERENCES Cargo(cod_cargo),
CONSTRAINT pk_ostenta PRIMARY KEY(puerta,cod_cargo))
go

Create Table anotacion
(codigo int PRIMARY KEY,
nombre varchar(50),
funciones varchar(50))
go

Create Table ingreso_recibo
(mes int,
pagado bit,
puerta char(2),
CONSTRAINT fk_puertecilla FOREIGN KEY(puerta) REFERENCES piso(puerta),
fecha datetime,
importe money,
cod_anotacion int PRIMARY KEY,
CONSTRAINT ca_anotacion FOREIGN KEY(cod_anotacion) REFERENCES anotacion(codigo))
go

Create Table ingreso_extra
(concepto varchar(50),
fecha datetime,
importe money,
cod_anotacion int PRIMARY KEY,
CONSTRAINT fk_anotacion FOREIGN KEY(cod_anotacion) REFERENCES anotacion(codigo))
go

Create Table gasto_variable
(f_factura datetime,
concepto varchar(50),
n_factura int,
importe money,
cod_anotacion int PRIMARY KEY,
CONSTRAINT anotacion FOREIGN KEY (cod_anotacion) REFERENCES anotacion(codigo))
go



Create Table gasto_fijo
(f_inicio datetime,
f_fin datetime,
consumo int,
importe money,
cod_tipo_gasto datetime,
CONSTRAINT fk_gasto FOREIGN KEY (cod_tipo_gasto) REFERENCES tipo_gasto_fijo(cod_tipo_gasto),
cod_anotacion int,
CONSTRAINT fk_anota FOREIGN KEY (cod_anotacion)REFERENCES anotacion(codigo),
CONSTRAINT pk_gastofijo PRIMARY KEY(cod_tipo_gasto,cod_anotacion))
go
Create Table ingreso_recibo
(mes int,
pagado bit,
puerta char(2),
CONSTRAINT fk_puertecilla FOREIGN KEY(puerta) REFERENCES piso(puerta),
fecha datetime,
importe money,
cod_anotacion int PRIMARY KEY,
CONSTRAINT ca_anotacion FOREIGN KEY(cod_anotacion) REFERENCES anotacion(codigo))
go

Create Table ingreso_extra
(concepto varchar(50),
fecha datetime,
importe money,
cod_anotacion int PRIMARY KEY,
CONSTRAINT fk_anotacion FOREIGN KEY(cod_anotacion) REFERENCES anotacion(codigo))
go

Create Table gasto_variable
(f_factura datetime,
concepto varchar(50),
n_factura int,
importe money,
cod_anotacion int PRIMARY KEY,
CONSTRAINT anotacion FOREIGN KEY (cod_anotacion) REFERENCES anotacion(codigo))
go



Create Table gasto_fijo
(f_inicio datetime,
f_fin datetime,
consumo int,
importe money,
cod_tipo_gasto datetime,
CONSTRAINT fk_gasto FOREIGN KEY (cod_tipo_gasto) REFERENCES tipo_gasto_fijo(cod_tipo_gasto),
cod_anotacion int,
CONSTRAINT fk_anota FOREIGN KEY (cod_anotacion)REFERENCES anotacion(codigo),
CONSTRAINT pk_gastofijo PRIMARY KEY(cod_tipo_gasto,cod_anotacion))
go




Create Table detalle_recibo
(num_linea int PRIMARY KEY,
concepto varchar(50),
importe money)
go

Create Table tipo_gasto_fijo
(cod_tipo_gasto int,
nombre varchar(50),
descripcion varchar(200))
go