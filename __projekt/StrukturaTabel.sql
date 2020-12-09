CREATE TABLE Nauczyciele(pesel VARCHAR(11) PRIMARY KEY NOT NULL, imię VARCHAR(45), nazwisko VARCHAR(45), stopieńNaukowy VARCHAR(45), stawkaGodzinowa INT DEFAULT 25, CHECK (stawkaGodzinowa>=17));
CREATE TABLE Lekcje(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, język VARCHAR(45), data DATETIME, stopień ENUM('A1', 'A2', 'B1', 'B2', 'C1', 'C2'), podręcznik VARCHAR(11));
CREATE TABLE LekcjeNauczycieli(pesel VARCHAR(11), idLekcji INT, PRIMARY KEY(pesel, idLekcji), FOREIGN KEY (pesel) REFERENCES Nauczyciele(pesel), FOREIGN KEY (idLekcji) REFERENCES Lekcje(id));
CREATE TABLE Uczniowie(pesel VARCHAR(11) PRIMARY KEY NOT NULL, imię VARCHAR(45), nazwisko VARCHAR(45));
CREATE TABLE LekcjeUczniów(idLekcji INT, pesel VARCHAR(11), PRIMARY KEY(idLekcji, pesel), FOREIGN KEY (idLekcji) REFERENCES Lekcje(id) ON DELETE CASCADE, FOREIGN KEY (pesel) REFERENCES Uczniowie(pesel) ON DELETE CASCADE);
CREATE TABLE Płatności(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, pesel VARCHAR(11), semestr VARCHAR(11), język VARCHAR(11), FOREIGN KEY (pesel) REFERENCES Uczniowie(pesel));
CREATE TABLE Egzaminy(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nazwa VARCHAR(45), data DATETIME, język VARCHAR(11));
CREATE TABLE EgzaminyUczniów(idEgzaminu INT, pesel VARCHAR(11), PRIMARY KEY(idEgzaminu, pesel), FOREIGN KEY (pesel) REFERENCES Uczniowie(pesel), FOREIGN KEY (idEgzaminu) REFERENCES Egzaminy(id));