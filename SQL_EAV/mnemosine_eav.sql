-- Active: 1672329880844@@127.0.0.1@3306@mnemosine_db
DROP DATABASE mnemosine_db;
CREATE DATABASE mnemosine_db;
USE mnemosine_db;

CREATE TABLE prodotto (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE attributo (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tipo ENUM('stringa','numero','bool','data') NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE valore (
    id INT NOT NULL AUTO_INCREMENT,
    prodotto_id INT NOT NULL,
    attributo_id INT NOT NULL,
    valore VARCHAR(255),
    valore_numero DECIMAL(10,2),
    valore_bool TINYINT(1),
    valore_data DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (prodotto_id) REFERENCES prodotto(id),
    FOREIGN KEY (attributo_id) REFERENCES attributo(id)
);

--INSERT INTO attributo (nome, tipo) VALUES ('colore', 'stringa');
--INSERT INTO value (prodotto_id, attributo_id, valore) VALUES (1, 1, 'rosso');

