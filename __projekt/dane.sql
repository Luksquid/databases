INSERT INTO Nauczyciele VALUES  ('76012763615', 'Janusz', 'Bosak', 'inzynier', '25'),
('91052713136', 'Andrzej', 'Pomorski', 'magister', '30'), 
('90040829471', 'Marian', 'Koronowicz', 'inzynier', '27'), 
('88072547748', 'Jadwiga', 'Himel', 'magister', '32'), 
('71061966965', 'Angelika', 'Engel', 'doktor', '40'), 
('74101378164', 'Monika', 'Jorgenson', 'magister', '33'), 
('80091644268', 'Hermenegilda', 'Mikke', 'doktor_habilitowany', '45');

INSERT INTO Lekcje(jezyk, data, stopien, podrecznik) VALUES
('Szwedzki', '2020-12-16 15:30:00', 'A1', 'Troll_1'), 
('Szwedzki', '2020-12-17 15:30:00','C2', 'Min_Sverige'),
('Szwedzki', '2020-12-18 15:30:00', 'A1', 'Troll_1'),
('Angielski','2020-12-16 13:30:00', 'B2', 'Do_you_speak?'), 
('Angielski', '2020-12-17 19:00:00', 'B1', 'Do_you_speak?'),
('NIemiecki', '2020-12-16 09:30:00', 'A1', 'Sprachreichtum'),
('NIemiecki', '2020-12-17 12:00:00', 'C2', 'Sprachreichtum'),
('Serbski', '2020-12-22 11:00:00', 'A2', 'Izvinite'), 
('Serbski', '2020-12-21 08:30:00', 'C1', 'Izvinite');

INSERT INTO LekcjeNauczycieli(idLekcji, pesel) VALUES
('1','91052713136'),
('2','91052713136'),
('3','90040829471'),
('4','90040829471'),
('5','88072547748'),
('6','71061966965'),
('7','74101378164'),
('8','74101378164'),
('9','80091644268');

INSERT INTO Uczniowie VALUES
('99053019534', 'Janusz','Kostek'),
('78110685554', 'Marek','Lucjusz'),
('80082655253', 'Tomasz','Kuchcik'),
('91120748439', 'Gustaw','Larsson'),
('99080415312', 'Adam','Englert'),
('84032081716', 'Franciszek','Dlugokost'),
('05321854475', 'Antoni','Fajerhaus'),
('05221056836', 'Feliks','Obelix'),
('94093052354', 'Andrzej','Tuja'),
('86010854314', 'Miroslaw','Dlugosz'),
('80022068879', 'Gosciwuj','Radomirski'),
('91122139648', 'Mscigniewa', 'Emska'),
('98032467148', 'Malena', 'Ernman'),
('80022312749', 'Gerta', 'Grebnuth'),
('92110352533', 'Zofia', 'Walczewska'),
('92092187345', 'Maria', 'Freiheit'),
('86042988865', 'Emma', 'Nostaw'),
('84030611887', 'Fryderyk', 'Nordi'),
('78052016186', 'Lukas', 'Kujawski');

INSERT INTO LekcjeUczniow VALUES
(1, '99053019534'),
(1, '80082655253'),
(2, '78110685554'),
(2, '94093052354'),
(2, '84032081716'),
(2, '99080415312'),
(2, '05221056836'),
(3, '86010854314'),
(3, '91120748439'),
(4, '80022068879'),
(4, '92092187345'),
(4, '86042988865'),
(4, '05321854475'),
(5, '92092187345'),
(5, '84030611887'),
(6, '78052016186'),
(7, '91122139648'),
(7, '92110352533'),
(8, '98032467148'),
(9, '80022312749');

INSERT INTO Platnosci(pesel, semestr, kwota, jezyk) VALUES
('05221056836', '2', 2500, 'Szwedzki'),
('05321854475', '1', 2000, 'Anglielski'),
('78052016186', '1', 500, 'Niemiecki'),
('78110685554', '3', 2500, 'Szwedzki'),
('80022068879', '3', 2000, 'Anglielski'),
('80022312749', '2', 2500, 'Serbski'),
('80082655253', '1', 500, 'Szwedzki'),
('84030611887', '2', 1500, 'Angielski'),
('84032081716', '4', 2500, 'Szwedzki'),
('86010854314', '1', 500, 'Szwedzki'),
('86042988865', '2', 2000, 'Angielski'),
('91120748439', '3', 500, 'Szwedzki'),
('91122139648', '1', 1000, 'Niemiecki'),
('92092187345', '5', 2000, 'Angielski'),
('92092187345', '1', 1500, 'Angielski'),
('92110352533', '2', 1000, 'Niemiecki'),
('94093052354', '1', 2500, 'Szwedzki'),
('98032467148', '3', 1000, 'Serbski'),
('99053019534', '1', 500, 'Szwedzki'),
('99080415312', '2', 2500, 'Szwedzki');

INSERT INTO Egzaminy(nazwa, data, jezyk) VALUES
('Deutsches_Sprachdiplom', '2020-12-25 12:00:00', 'Niemiecki'),
('Swedex', '2020-12-26 12:00:00', 'Szwedzki'),
('C1', '2020-12-27 13:00:00', 'Serbski'),
('B2', '2020-12-28 13:00:00', 'Angielski');

INSERT INTO EgzaminyUczniow VALUES
(1, '91122139648','0'),
(1, '92110352533','1'),
(2, '05221056836', '1'),
(2, '78110685554', '1'),
(2, '84032081716', '1'),
(2, '94093052354', '1'),
(2, '99080415312', '1'),
(3, '80022312749', '1'),
(4, '05321854475', '1'),
(4, '80022068879', '1'),
(4, '86042988865', '0'),
(4, '92092187345', '1');