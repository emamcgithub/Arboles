DROP SCHEMA IF EXISTS practica;
DROP USER IF EXISTS 'usuario_practica'@'localhost';
CREATE SCHEMA practica;

CREATE USER 'usuario_practica'@'localhost' IDENTIFIED BY 'la_Clave';
GRANT ALL PRIVILEGES ON practica.* TO 'usuario_practica'@'localhost';
FLUSH PRIVILEGES;

-- Crea la tabla 'arbol' en el esquema 'practica'
CREATE TABLE practica.arbol (
  id_arbol INT NOT NULL AUTO_INCREMENT,
  ruta_imagen VARCHAR(1024),
  nombre_comun VARCHAR(255)NOT NULL,
  tipo_flor VARCHAR(255)NOT NULL,
  dureza_madera VARCHAR(255)NOT NULL,
  activo BOOLEAN,
  PRIMARY KEY (id_arbol)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Inserta registros en la tabla 'arbol'
INSERT INTO practica.arbol (id_arbol, nombre_comun, ruta_imagen, tipo_flor, dureza_madera, activo)
VALUES 
  (1, 'Pino', 'https://www.shutterstock.com/image-photo/bright-summer-landscape-alone-tender-260nw-788287519.jpg', 'PINUS PINEA', '7',true),
  (2, 'Cedro', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9nPViNs3uQLdwsHJjwvefELu1iQq-IuncXA&usqp=CAU', 'Cedro del Libano', '5',true),
  (3, 'Roble', 'https://mejorconsalud.as.com/wp-content/uploads/2022/03/arbol-roble-768x512.jpg', 'Quejico', '9',true),
  (4, 'Manzano', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR10LmHgvz6sXPHj9N1CcyT7zXZZvpK11VFQQ&usqp=CAU', 'REINETA', '4',true);

