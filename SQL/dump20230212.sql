-- Active: 1676405941074@@db4free.net@3306@budb01

DROP DATABASE budb01;
CREATE DATABASE budb01;
USE budb01;

CREATE TABLE prodotto (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE attributo (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tipo ENUM('stringa','numero','bool','data', 'decimal') NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE valore (
    id INT NOT NULL AUTO_INCREMENT,
    valore_char VARCHAR(255),
    tipo_valore VARCHAR(121),

 
    PRIMARY KEY (id)
);

CREATE TABLE prodotto_attributo (
    prodotto_id INT NOT NULL,
    attributo_id INT NOT NULL,

    PRIMARY KEY (prodotto_id, attributo_id),
    FOREIGN KEY (prodotto_id) REFERENCES prodotto(id),
    FOREIGN KEY (attributo_id) REFERENCES attributo(id)
);

CREATE TABLE attributo_valore (
    attributo_id INT NOT NULL,
    valore_id INT NOT NULL,

    PRIMARY KEY (attributo_id, valore_id),
    FOREIGN KEY (attributo_id) REFERENCES attributo(id),
    FOREIGN KEY (valore_id) REFERENCES valore(id)
);