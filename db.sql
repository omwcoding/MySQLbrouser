-- Active: 1672329880844@@127.0.0.1@3306@mnemosine_db
DROP DATABASE mnemosine_db;
CREATE DATABASE mnemosine_db;
USE mnemosine_db;

CREATE TABLE ATTRIBUTO(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descrizione TEXT,
    
    PRIMARY KEY (id)
);

CREATE TABLE prodotto (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2),
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
