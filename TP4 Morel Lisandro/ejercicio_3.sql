CREATE TABLE cliente
(
  codigo_cliente INT NOT NULL,
  dni INT NOT NULL,
  nombre INT NOT NULL,
  direccion INT NOT NULL,
  _telefono INT NOT NULL,
  PRIMARY KEY (codigo_cliente),
  UNIQUE (dni)
);

CREATE TABLE vehiculo
(
  precio_x_hora INT NOT NULL,
  modelo INT NOT NULL,
  matricula INT NOT NULL,
  color_ INT NOT NULL,
  PRIMARY KEY (matricula)
);

CREATE TABLE reserva
(
  fecha_inicio INT NOT NULL,
  finaldereserva INT NOT NULL,
  numero_reserva INT NOT NULL,
  precio_total_ INT NOT NULL,
  codigo_cliente INT NOT NULL,
  PRIMARY KEY (numero_reserva),
  FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo_cliente)
);

CREATE TABLE de
(
  litros_gasolina INT NOT NULL,
  numero_reserva INT NOT NULL,
  matricula INT NOT NULL,
  PRIMARY KEY (numero_reserva, matricula),
  FOREIGN KEY (numero_reserva) REFERENCES reserva(numero_reserva),
  FOREIGN KEY (matricula) REFERENCES vehiculo(matricula)
);