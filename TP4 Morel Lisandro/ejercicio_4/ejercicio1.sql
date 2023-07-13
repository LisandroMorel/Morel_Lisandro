CREATE TABLE alumnos
(
  dni INT NOT NULL,
  fecha_nac INT NOT NULL,
  nombre INT NOT NULL,
  cod_matricula INT NOT NULL,
  PRIMARY KEY (dni),
  UNIQUE (cod_matricula)
);

CREATE TABLE cursos
(
  cod_curso INT NOT NULL,
  nombre INT NOT NULL,
  PRIMARY KEY (cod_curso)
);

CREATE TABLE Profesor
(
  profesor_id INT NOT NULL,
  nombre INT NOT NULL,
  especialidad INT NOT NULL,
  email INT NOT NULL,
  PRIMARY KEY (profesor_id),
  UNIQUE (email)
);

CREATE TABLE asiste
(
  dni INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (dni, cod_curso),
  FOREIGN KEY (dni) REFERENCES alumno(dni),
  FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso)
);

CREATE TABLE enseña_en
(
  cod_curso INT NOT NULL,
  profesor_id INT NOT NULL,
  PRIMARY KEY (cod_curso, profesor_id),
  FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso),
  FOREIGN KEY (profesor_id) REFERENCES profesor(profesor_id)
);