-- Active: 1672329880844@@127.0.0.1@3306@mnemosine_db
DROP DATABASE mnemosine_db;
CREATE DATABASE mnemosine_db;
USE mnemosine_db;

CREATE TABLE attributo (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descrizione TEXT,
    valore_stringa VARCHAR(255),
    valore_numero DECIMAL(10,2),
    valore_bool TINYINT(1),
    valore_data DATE,
    tipo_attributo ENUM('stringa','numero','bool','data') NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE prodotto (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descrizione TEXT,
    prezzo_finale DECIMAL(10,2),
    attributo_id INT,

    PRIMARY KEY (id),
    FOREIGN KEY (attributo_id) REFERENCES attributo(id)
);

CREATE TABLE prodotto_attributo (
    prodotto_id INT,
    attributo_id INT,
    
    PRIMARY KEY (prodotto_id, attributo_id),
    FOREIGN KEY (prodotto_id) REFERENCES prodotto(id),
    FOREIGN KEY (attributo_id) REFERENCES attributo(id)
);
