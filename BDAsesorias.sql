/*Creamos la base de datos*/
CREATE SCHEMA asesoriaspr_db DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
/*Creamos la tabla capacitacion*/
CREATE TABLE bd_aplicacion.capacitacion (
  idCap INT NOT NULL AUTO_INCREMENT,
  rut INT NULL,
  dia VARCHAR(20) NULL,
  hora VARCHAR(6) NULL,
  lugar VARCHAR(50) NULL,
  duracion VARCHAR(70) NULL,
  cantAsistentes INT NULL,
  PRIMARY KEY (idCap));
 /*Insertamos datos en la tabla capacitacion*/ 
INSERT INTO asesoriaspr_db.capacitacion (rut, dia, hora, lugar, duracion, cantAsistentes) VALUES ('11111111', 'Martes', '12:30', 'Santiago', '50 minutos', '60');
INSERT INTO asesoriaspr_db.capacitacion (rut, dia, hora, lugar, duracion, cantAsistentes) VALUES ('22222222', 'Miercoles', '15:00', 'San Antonio', '30 minutos', '20');
INSERT INTO asesoriaspr_db.capacitacion (rut, dia, hora, lugar, duracion, cantAsistentes) VALUES ('33333333', 'Jueves', '16:00', 'Valparaiso', '40 minutos', '15');
/*Creamos la tabla usuario*/
CREATE TABLE asesoriaspr_db.usuario (
  run INT NOT NULL,
  usuario VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  nombre VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  fechaNacimiento DATE NULL,
  tipo INT NOT NULL,
  PRIMARY KEY (run));
/*Insertamos datos en la tabla tabla usuario*/
INSERT INTO asesoriaspr_db.usuario (run, usuario, password, nombre, apellido, fechaNacimiento, tipo) VALUES ('11111111', 'HomeroS', '1234', 'Homero', 'Simpson', '1970-05-05', '1');
INSERT INTO asesoriaspr_db.usuario (run, usuario, password, nombre, apellido, fechaNacimiento, tipo) VALUES ('22222222', 'MarchS', '1234', 'March', 'Simpson', '1975-11-31', '2');
INSERT INTO asesoriaspr_db.usuario (run, usuario, password, nombre, apellido, fechaNacimiento, tipo) VALUES ('33333333', 'LisaS', '1234', 'Lisa', 'Simpson', '1998-10-15', '3');
INSERT INTO asesoriaspr_db.usuario (run, usuario, password, nombre, apellido, fechaNacimiento, tipo) VALUES ('44444444', 'BartS', '1234', 'Bart', 'Simpson', '1994-03-14', '3');
/*Creamos la tabla cliente*/
CREATE TABLE asesoriaspr_db.cliente (
  idcliente INT NOT NULL AUTO_INCREMENT,
  telefono VARCHAR(45) NULL,
  AFP VARCHAR(45) NULL,
  SistSalud INT NULL,
  direccion VARCHAR(45) NULL,
  comuna VARCHAR(45) NULL,
  edad INT NULL,
  runCliente INT NULL,
  PRIMARY KEY (idcliente),
  INDEX runCliente_idx (runCliente ASC) VISIBLE,
  CONSTRAINT runCliente
    FOREIGN KEY (runCliente)
    REFERENCES asesoriaspr_db.usuario (run));
 /*Creamos la tabla administrativo*/   
CREATE TABLE asesoriaspr_db.administrativo (
  idAdministrativo INT NOT NULL AUTO_INCREMENT,
  area VARCHAR(100) NULL,
  Experiencia VARCHAR(200) NULL,
  rutAdmin INT NULL,
  PRIMARY KEY (idAdministrativo),
  INDEX runAdmin_idx (rutAdmin ASC) VISIBLE,
  CONSTRAINT runAdmin
    FOREIGN KEY (rutAdmin)
    REFERENCES asesoriaspr_db.usuario (run));
  /*Creamos la tabla profesional*/  
CREATE TABLE asesoriaspr_db.profesional(
  idprofesional INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NULL,
  fechaIngreso DATE NULL,
  runProf INT NULL,
  PRIMARY KEY (idprofesional),
  INDEX runProf_id (runProf ASC) VISIBLE,
  CONSTRAINT runProf
    FOREIGN KEY (runProf)
    REFERENCES asesoriaspr_db.usuario (run));

