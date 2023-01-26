-- Active: 1672329880844@@127.0.0.1@3306@mnemosine_db
USE mnemosine_db;
DELIMITER $$
CREATE PROCEDURE crea_prodotto (IN name VARCHAR(255))
BEGIN
    DECLARE cnt INT;
    SELECT COUNT(*) INTO cnt FROM prodotto WHERE nome = name;
    IF cnt = 0 THEN
        INSERT INTO prodotto (nome) VALUES (name);
    ELSE
        SELECT 'Prodotto già esistente' AS message;
    END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_attributo (IN name VARCHAR(255))
BEGIN
    DECLARE cnt INT;
    SELECT COUNT(*) INTO cnt FROM attributo WHERE nome = name;
    IF cnt = 0 THEN
        INSERT INTO attributo (nome) VALUES (name);
    ELSE
        SELECT 'Attributo già esistente' AS message;
    END IF;
END $$
DELIMITER ;
--Per la tabella valore potresti fare la stessa cosa verificando se esiste già un valore con lo stesso nome o valore_prezzo o valore_int o valore_bool o valore_data.

DELIMITER $$
CREATE PROCEDURE insert_valore (IN valore_text VARCHAR(255), valore_prezzo DECIMAL(10,2), valore_int INT, valore_bool TINYINT(1), valore_data DATE)
BEGIN
    DECLARE cnt INT;
    SELECT COUNT(*) INTO cnt FROM valore WHERE valore_text = valore_text or valore_prezzo = valore_prezzo or valore_int = valore_int or valore_bool = valore_bool or valore_data = valore_data;
    IF cnt = 0 THEN
        INSERT INTO valore (valore_text, valore_prezzo, valore_int, valore_bool, valore_data) VALUES (valore_text, valore_prezzo, valore_int, valore_bool, valore_data);
    ELSE
        SELECT 'Valore già esistente' AS message;
    END IF;
END $$
DELIMITER ;
--Nota: potrebbe essere necessario modificare i nomi dei campi nella query SELECT per adattarsi alla tua tabella valore specifica.


--Associare un attributo ad un prodotto e un valore ad un attributo
--CONTROLLI VARI
--VISTA GET PRODOTTI CON LA LORO STRUTTURA

