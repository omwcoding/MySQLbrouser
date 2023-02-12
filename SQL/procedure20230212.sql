-- Active: 1672329880844@@127.0.0.1@3306@budb01
USE budb01;
DELIMITER $$
DROP PROCEDURE IF EXISTS crea_prodotto;
DROP PROCEDURE IF EXISTS insert_attributo;
DROP PROCEDURE IF EXISTS insert_valore;
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
-- Per la tabella valore potresti fare la stessa cosa verificando se esiste già un valore con lo stesso nome o valore_prezzo o valore_int o valore_bool o valore_data.

DELIMITER $$
CREATE PROCEDURE insert_valore (IN val_text 		VARCHAR(255),
								   val_prezzo 		DECIMAL(10,2),
								   val_int 			INT,
								   val_bool 		TINYINT(1),
								   val_data 		DATE)
BEGIN
    DECLARE cnt INT;
    SELECT COUNT(*) INTO cnt FROM valore 
		WHERE valore_text = val_text 
			or valore_prezzo = val_prezzo 
			or valore_int = val_int 
			or valore_bool = val_bool 
			or valore_data = val_data;
    IF cnt = 0 THEN
        INSERT INTO valore (valore_text,
							valore_prezzo,
							valore_int,
							valore_bool,
							valore_data) 
        VALUES (val_text,
				val_prezzo,
                val_int,
                val_bool,
                val_data);
    ELSE
        SELECT 'Valore già esistente' AS message;
    END IF;
END $$
DELIMITER ;
-- Nota: potrebbe essere necessario modificare i nomi dei campi nella query SELECT per adattarsi alla tua tabella valore specifica.


-- Associare un attributo ad un prodotto e un valore ad un attributo
-- CONTROLLI VARI
-- VISTA GET PRODOTTI CON LA LORO STRUTTURA
