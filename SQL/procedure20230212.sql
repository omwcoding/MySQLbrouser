-- Active: 1676405941074@@db4free.net@3306@budb01
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
CREATE PROCEDURE insert_valore (IN valore_attributo VARCHAR(255), IN tipo VARCHAR(121))
BEGIN
    DECLARE valore_esistente VARCHAR(255);

    SELECT valore_char INTO valore_esistente
    FROM valore
    WHERE valore_char = valore_attributo;

    IF (valore_esistente IS NULL) THEN
        INSERT INTO valore (valore_char, tipo_valore) VALUES (valore_attributo, tipo);
    ELSE
        SELECT 'Valore già esistente' AS message;
    END IF;
END$$
DELIMITER ;

-- Nota: potrebbe essere necessario modificare i nomi dei campi nella query SELECT per adattarsi alla tua tabella valore specifica.


-- Associare un attributo ad un prodotto e un valore ad un attributo
-- CONTROLLI VARI
-- VISTA GET PRODOTTI CON LA LORO STRUTTURA

