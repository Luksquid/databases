DELIMITER $$
CREATE PROCEDURE srednieZarobki(IN tytul VARCHAR(45))
BEGIN
SELECT AVG(stawkaGodzinowa) FROM Nauczyciele WHERE stopienNaukowy = tytul;
END
$$
DELIMITER ;