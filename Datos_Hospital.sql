INSERT INTO Hospital(dirección,fax,nombre_h) VALUES ('Alcampo',111-111-111,'Traumatología')
INSERT INTO Hospital(dirección,fax,nombre_h) VALUES ('Zaidin',222-222-222,'Ambulatorio Zaidin')
INSERT INTO Hospital(dirección,fax,nombre_h) VALUES ('Almanjayar',333-333-333,'Consultorio Zona Norte')
INSERT INTO Hospital(dirección,fax,nombre_h) VALUES ('Universitario',444-444-444,'Virgen de las Nieves')

INSERT INTO Personal(nombre,dirección,telefono,DNI,nombre_h,tipo)
VALUES('Jose','c/Arabial',911-123-456,'12345678A',null,administrativo)
INSERT INTO Personal(nombre,dirección,telefono,DNI,nombre_h,tipo)
VALUES('Antonio','Avd.Dilar',945-678-910,'23456789B',null,sanitario)
INSERT INTO Personal(nombre,dirección,telefono,DNI,nombre_h,tipo)
VALUES('Bartolo','c/Recogidas',956-789-123,'34567890C',null,sanitario)

INSERT INTO Telefono(telefono,nombre_h) VALUES (999-999-999,null)
INSERT INTO Telefono(telefono,nombre_h) VALUES (888-888-888,null)
INSERT INTO Telefono(telefono,nombre_h) VALUES (777-777-777,null)

INSERT INTO Medicos(especialidad,DNI) VALUES ('Oncólogo',null)
INSERT INTO Medicos(especialidad,DNI) VALUES ('Endocrino',null)
INSERT INTO Medicos(especialidad,DNI) VALUES ('Medico Deportivo',null)

INSERT INTO Paciente(numero_p,num_ape,dirección,telefono,num_ss)VALUES (2501,01,'c/Martinez Campos',911-222-333,123456)
INSERT INTO Paciente(numero_p,num_ape,dirección,telefono,num_ss)VALUES (2502,02,'c/Arabial',933-333-333,456789)
INSERT INTO Paciente(numero_p,num_ape,dirección,telefono,num_ss)VALUES (2503,03,'c/Recogidas',944-444-444,67890)
INSERT INTO Paciente(numero_p,num_ape,dirección,telefono,num_ss)VALUES (2504,04,'Camino de Ronda',955-555-555,78901)

INSERT INTO Sala(nombre_h,num_sala) VALUES (null,001)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,002)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,003)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,004)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,101)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,102)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,103)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,104)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,201)
INSERT INTO Sala(nombre_h,num_sala) VALUES (null,202)

INSERT INTO Admisión(fecha,num_adm,numero_p,num_sala) VALUES(11-01-2007,001,null,null)
INSERT INTO Admisión(fecha,num_adm,numero_p,num_sala) VALUES(12-01-2007,002,null,null)
INSERT INTO Admisión(fecha,num_adm,numero_p,num_sala) VALUES(13-01-2007,003,null,null)
INSERT INTO Admisión(fecha,num_adm,numero_p,num_sala) VALUES(13-01-2007,004,null,null)

INSERT INTO Tratamiento(DNI, nombre_tratamiento, num_adm) VALUES('95784215A','tratamiento01',null)
INSERT INTO Tratamiento(DNI, nombre_tratamiento, num_adm) VALUES('95784216B','tratamiento02',null)
INSERT INTO Tratamiento(DNI, nombre_tratamiento, num_adm) VALUES('95784225C','tratamiento03',null)
INSERT INTO Tratamiento(DNI, nombre_tratamiento, num_adm) VALUES('95784285K','tratamiento04',null)

INSERT INTO Resultado(fecha,hora,nom_tra)VALUES (12-2-2002,11:30,null,null)
INSERT INTO Resultado(fecha,hora,nom_tra)VALUES (12-2-2002,11:35,null,null)
INSERT INTO Resultado(fecha,hora,nom_tra)VALUES (12-2-2002,11:40,null,null)
INSERT INTO Resultado(fecha,hora,nom_tra)VALUES (12-2-2002,12:30,null,null)


