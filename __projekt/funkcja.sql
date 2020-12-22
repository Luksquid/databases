DELIMITER $$
CREATE FUNCTION zdawalnosc()
RETURNS DOUBLE
BEGIN
DECLARE licznik INT;
DECLARE mianownik INT;
DECLARE wynik DOUBLE;
SELECT COUNT(zaliczenie) INTO licznik FROM EgzaminyUczniow WHERE zaliczenie = '1';
SELECT COUNT(zaliczenie) INTO mianownik FROM EgzaminyUczniow;
SET wynik = licznik / mianownik;
RETURN wynik;
END 
$$
DELIMETER ;