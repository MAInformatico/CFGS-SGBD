CREATE view vista_N_sala AS
SELECT N_Sala
FROM Sala

CREATE view vista_Socio AS
SELECT N_Socio
FROM Socio

CREATE view vista_Monitor AS
SELECT DNI_M
FROM Monitor

INSERT INTO Sala(N_Sala, ubicación, estado) VALUES (1,'sala a', 'bien')
INSERT INTO Sala(N_Sala, ubicación, estado) VALUES (2,'sala b', 'regular')
INSERT INTO Sala(N_Sala, ubicación, estado) VALUES (3,'sala c', 'bien')
INSERT INTO Aparato(Codigo, N_Sala) VALUES (002, null)
INSERT INTO Aparato(Codigo, N_Sala) VALUES (003, null)
INSERT INTO Aparato(Codigo, N_Sala) VALUES (004, null)
INSERT INTO Clase(Cod_clas, DNI_m, N_Sala) VALUES(01,null,null)
INSERT INTO Clase(Cod_clas, DNI_m, N_Sala) VALUES(02,null,null)
INSERT INTO Clase(Cod_clas, DNI_m, N_Sala) VALUES(03,null,null)
INSERT INTO Socio(N_Socio, nombre, dirección, telefono, profesión) VALUES (91000, 'Angel', 'c/Arabial',958-111-111, 'estudiante')
INSERT INTO Socio(N_Socio, nombre, dirección, telefono, profesión) VALUES (78000, 'Antonio', 'Av.Jaen', 958-222-222, 'albañil')
INSERT INTO Socio(N_Socio, nombre, dirección, telefono, profesión) VALUES (11000, 'Ivan', 'c/Paz', 958-333-333, 'ingeniero')
INSERT INTO Squash(N_Pista, ubicación, estado) VALUES (1,'central', 'bien')
INSERT INTO Preparación(Descripción, DNI_m) VALUES ('3er Dan Kick-Boxing', null)
INSERT INTO Preparación(Descripción, DNI_m) VALUES ('Monitor de fitness', null)
INSERT INTO Preparación(Descripción, DNI_m) VALUES ('Monitor de Aerobic', null)
INSERT INTO Monitor(DniM) VALUES ('75489922D')
INSERT INTO Monitor(DniM) VALUES ('12345678R')
INSERT INTO Monitor(DniM) VALUES ('23456789S')