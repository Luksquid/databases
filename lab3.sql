1.2
INSERT INTO postac(nazwa, rodzaj, data_ur, wiek) VALUES
('Bjorn', 'wiking', '1032-10-11', 35),
('Drozd', 'ptak', '1066-04-17', 1),
('Tesciowa', 'kobieta', '1000-01-01', 67);

1.3
UPDATE postac SET wiek = 88 WHERE nazwa = 'Tesciowa';

2.1
CREATE TABLE walizka (id_walizki INT PRIMARY KEY AUTO_INCREMENT, pojemnosc INT UNSIGNED,
 kolor ENUM('rozowy', 'czerwony', 'teczowy', 'zolty'), id_wlasciciela INT,
FOREIGN KEY (id_wlasciciela) REFERENCES postac(id_postaci) ON DELETE CASCADE);

2.2
ALTER TABLE walizka ALTER COLUMN kolor SET DEFAULT 'rozowy';

2.3
INSERT INTO walizka(pojemnosc, kolor, id_wlasciciela) VALUES
(10, 'teczowy', 1),
(20, 'rozowy', 3);

3.1
CREATE TABLE izba (adres_budynku VARCHAR(30) NOT NULL, nazwa_izby VARCHAR(30) NOT NULL,
 metraz INT UNSIGNED, wlasciciel INT, PRIMARY KEY (adres_budynku, nazwa_izby),
 FOREIGN KEY (wlasciciel) REFERENCES postac(id_postaci) ON DELETE SET NULL);
 
3.2
ALTER TABLE izba ADD COLUMN kolor_izby ENUM('zielony', 'czerwony', 'czarny') DEFAULT 'czarny' AFTER metraz;

3.3
INSERT INTO izba VALUES ('Prinsgatan', 'Spizarnia', 10, 'zielony', 1);

4.1
CREATE TABLE przetwory(id_przetworu INT PRIMARY KEY AUTO_INCREMENT, rok_produkcji INT DEFAULT 1654, 
id_wykonawcy INT, zawartosc VARCHAR(30), dodatek VARCHAR(30) DEFAULT 'papryczka_chilli', id_konsumenta INT,
FOREIGN KEY (id_konsumenta) REFERENCES postac(id_postaci), 
FOREIGN KEY (id_wykonawcy) REFERENCES postac(id_postaci));

4.2
INSERT INTO przetwory(rok_produkcji, id_wykonawcy, zawartosc, id_konsumenta) VALUES (1060, 1, 'bigos', 3);

5.1
INSERT INTO postac(nazwa, rodzaj, data_ur, wiek) VALUES 
('Freya', 'wiking', '1045-10-15', 22),
('Arvid', 'wiking', '1037-05-02', 30),
('Gustav', 'wiking', '1017-12-25', 50),
('Lucas', 'wiking', '1046-05-01', 21),
('Oscar', 'wiking', '1030-08-19', 37);

5.2
CREATE TABLE statek(nazwa_statku VARCHAR(50) PRIMARY KEY NOT NULL, rodzaj_statku ENUM('sneka', 'skeida', 'drakar'), data_wodowania DATE, max_ladownosc INT UNSIGNED);

5.3
INSERT INTO statek VALUES
('Havets_kung', 'drakar', '1065-06-10', 30),
('Sommar', 'sneka', '1066-05-21', 10);

5.4
ALTER TABLE postac ADD COLUMN funkcja VARCHAR(30);

5.5
UPDATE postac SET funkcja = 'kapitan' WHERE nazwa = 'Bjorn';


5.6
ALTER TABLE postac ADD COLUMN statek VARCHAR(30),
ADD CONSTRAINT FOREIGN KEY (statek) REFERENCES statek(nazwa_statku);

5.7
UPDATE postac SET STATEK = 'Havets_kung' WHERE id_postaci < 3 OR id_postaci > 3 AND id_postaci < 6;

UPDATE postac SET STATEK = 'Sommar' WHERE id_postaci > 5;

5.8
DELETE FROM izba WHERE nazwa_izby = 'spizarnia';

5.9
DROP TABLE izba;


