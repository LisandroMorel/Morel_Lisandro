CREATE TABLE pais
(
  pais_id INT NOT NULL,
  nombre_pais INT NOT NULL,
  PRIMARY KEY (pais_id)
);

CREATE TABLE provincia
(
  provincia_id INT NOT NULL,
  pais_id INT NOT NULL,
  PRIMARY KEY (provincia_id),
  FOREIGN KEY (pais_id) REFERENCES pais(pais_id)
);

CREATE TABLE localidad_
(
  codigo_localidad INT NOT NULL,
  codigo_postal INT NOT NULL,
  provincia_id INT NOT NULL,
  PRIMARY KEY (codigo_localidad),
  FOREIGN KEY (provincia_id) REFERENCES provincia(provincia_id)
);

CREATE TABLE empleado
(
  empleado_id INT NOT NULL,
  dni INT NOT NULL,
  nombre INT NOT NULL,
  email INT NOT NULL,
  fecha_alta INT NOT NULL,
  codigo_localidad INT NOT NULL,
  PRIMARY KEY (empleado_id),
  FOREIGN KEY (codigo_localidad) REFERENCES localidad_(codigo_localidad),
  UNIQUE (dni)
);

CREATE TABLE provincia_nombre_provincia
(
  nombre_provincia INT NOT NULL,
  provincia_id INT NOT NULL,
  PRIMARY KEY (nombre_provincia, provincia_id),
  FOREIGN KEY (provincia_id) REFERENCES provincia(provincia_id)
);

CREATE TABLE localidad__nombre
(
  nombre INT NOT NULL,
  codigo_localidad INT NOT NULL,
  PRIMARY KEY (nombre, codigo_localidad),
  FOREIGN KEY (codigo_localidad) REFERENCES localidad_(codigo_localidad)
);

CREATE TABLE empleado_telefono
(
  telefono INT NOT NULL,
  empleado_id INT NOT NULL,
  PRIMARY KEY (telefono, empleado_id),
  FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);

