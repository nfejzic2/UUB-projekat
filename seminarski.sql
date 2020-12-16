
/*                                    		Projektna Baza Apoteke
Radili: Azra Đonlagić
		Lejla Eminagić
		Nihad Fejzić
        Haris Drkić
*/

CREATE SCHEMA `apoteka` ;
USE `apoteka`;

-- TABELA APOTEKA --

CREATE TABLE IF NOT EXISTS `apoteka` (
  `apoteka_id` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(45)  NOT NULL,
  `grad` VARCHAR(45)  NOT NULL,
  `adresa` VARCHAR(45)  NOT NULL,
  `broj_telefona` VARCHAR(45)  NULL DEFAULT NULL,
  `email` VARCHAR(45)  NULL DEFAULT NULL,
  PRIMARY KEY (`apoteka_id`));

-- TABELA UPOSLENICI --

CREATE TABLE IF NOT EXISTS `uposlenici` (
  `uposlenik_id` INT NOT NULL AUTO_INCREMENT,
  `apoteka_id` INT NOT NULL,
  `ime_uposlenika` VARCHAR(45) NOT NULL,
  `prezime_uposlenika` VARCHAR(45) NOT NULL,
  `grad` VARCHAR(45) NOT NULL,
  `datum_zaposlenja` DATE NOT NULL,
  `broj_tel` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `titula_uposlenika` VARCHAR(45) NOT NULL,
  `plata_uposlenika_KM` float NOT NULL,
  `nadlezni` INT NULL DEFAULT NULL,
  PRIMARY KEY (`uposlenik_id`),
  INDEX `fk_apoteka_id_idx` (`apoteka_id` ASC) VISIBLE,
  CONSTRAINT `fk_apoteka_id`
    FOREIGN KEY (`apoteka_id`)
    REFERENCES `apoteka`.`apoteka` (`apoteka_id`),
  CONSTRAINT `fk_nadlezni`
    FOREIGN KEY (`nadlezni`)
    REFERENCES `apoteka`.`uposlenici` (`uposlenik_id`));

-- TABELA BOLNICA --

CREATE TABLE IF NOT EXISTS `bolnica` (
  `bolnica_id` INT NOT NULL AUTO_INCREMENT,
  `naziv_bolnice` VARCHAR(45)  NOT NULL,
  `kontakt_telefon` VARCHAR(45)  NOT NULL,
  `adresa` VARCHAR(45)  NOT NULL,
  `email` VARCHAR(45)  NOT NULL,
  PRIMARY KEY (`bolnica_id`));

-- TABELA LIJEK --

CREATE TABLE IF NOT EXISTS `lijek` (
  `lijek_id` INT NOT NULL AUTO_INCREMENT,
  `proizvodjaci` VARCHAR(45)  NOT NULL,
  `naziv_lijeka` VARCHAR(45)  NOT NULL,
  `cijena` INT NULL DEFAULT NULL,
  `datum_proizvodnje` DATE NOT NULL,
  `rok_trajanja` DATE NOT NULL,
  `opis_lijeka` VARCHAR(45)  NOT NULL,
  `nuspojave` VARCHAR(45)  NOT NULL,
  PRIMARY KEY (`lijek_id`));

-- TABELA RECEPT --

CREATE TABLE IF NOT EXISTS `recept` (
  `recept_id` INT NOT NULL AUTO_INCREMENT,
  `bolnica_id` INT NOT NULL,
  `lijek_id` INT NOT NULL,
  `količina` INT NOT NULL,
  `datum_izdavanja` DATE NULL DEFAULT NULL,
  `komentar` VARCHAR(45)  NULL DEFAULT NULL,
  `uposlenik_id` INT NOT NULL,
  PRIMARY KEY (`recept_id`),
  INDEX `fk_bolnica_id_idx` (`bolnica_id` ASC) VISIBLE,
  INDEX `fk_uposlenik_id_idx` (`uposlenik_id` ASC) VISIBLE,
  INDEX `fk_lijek_id_idx` (`lijek_id` ASC) VISIBLE,
  CONSTRAINT `fk_bolnica_id`
    FOREIGN KEY (`bolnica_id`)
    REFERENCES `apoteka`.`bolnica` (`bolnica_id`),
  CONSTRAINT `fk_uposlenik_id`
    FOREIGN KEY (`uposlenik_id`)
    REFERENCES `apoteka`.`uposlenici` (`uposlenik_id`),
  CONSTRAINT `fk_lijek_id`
    FOREIGN KEY (`lijek_id`)
    REFERENCES `apoteka`.`lijek` (`lijek_id`));


-- TABELA KUPAC --

CREATE TABLE IF NOT EXISTS `kupac` (
  `kupac_id` INT NOT NULL AUTO_INCREMENT,
  `ime_kupca` VARCHAR(45) NOT NULL,
  `prezime_kupca` VARCHAR(45) NOT NULL,
  `datum_rodjenja` DATE NOT NULL,
  `kontakt_telefon` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`kupac_id`));

-- TABELA RAČUN --

CREATE TABLE IF NOT EXISTS `racun` (
  `racun_id` INT NOT NULL AUTO_INCREMENT,
  `datum_izdavanja` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`racun_id`));

-- TABELA STAVKE RAČUNA --

CREATE TABLE IF NOT EXISTS `stavke_racuna` (
  `stavke_racuna_id` INT NOT NULL AUTO_INCREMENT,
  `racun_id` INT NOT NULL,
  `recept_id` INT NULL DEFAULT NULL,
  `kolicina` INT NOT NULL,
  `kupac_id` INT NOT NULL,
  `lijekovi_id` INT NOT NULL,
  PRIMARY KEY (`stavke_racuna_id`),
  INDEX `fk_racun_id_idx` (`racun_id` ASC) VISIBLE,
  INDEX `fk_recept_id_idx` (`recept_id` ASC) VISIBLE,
  INDEX `fk_kupac_id_idx` (`kupac_id` ASC) VISIBLE,
  INDEX `fk_kolicina_idx` (`kolicina` ASC) VISIBLE,
  CONSTRAINT `fk_racun_id`
    FOREIGN KEY (`racun_id`)
    REFERENCES `apoteka`.`racun` (`racun_id`),
  CONSTRAINT `fk_recept_id`
    FOREIGN KEY (`recept_id`)
    REFERENCES `apoteka`.`recept` (`recept_id`),
  CONSTRAINT `fk_kupac_id`
    FOREIGN KEY (`kupac_id`)
    REFERENCES `apoteka`.`kupac` (`kupac_id`),
  CONSTRAINT `fk_kolicina`
    FOREIGN KEY (`kolicina`)
    REFERENCES `apoteka`.`lijek` (`lijek_id`));





-- PODACI ZA APOTEKU --

INSERT INTO apoteka VALUES
(DEFAULT, 'Vita', 'Sarajevo', 'Marasala Tita 44', '033 787-664', 'centralna@apotekavita.com'),
(DEFAULT, 'Apoteka Sarajevo', 'Sarajevo', 'Trg Fra Grge Martica 2', '033 227-337', 'info@apoteke-sarajevo.ba'),
(DEFAULT, 'Apoteka Eurovita', 'Mostar', 'Husnije Repca bb', '033 776-556', 'info@eurovita.ba'),
(DEFAULT, 'Apoteka Mediflor', 'Tuzla', 'Univerzitetska 16', '033 345-543', 'info@mediflor.ba'),
(DEFAULT, 'Apoteka Prekounje', 'Bihac', 'Bihackih Branilaca 9', '033 445-123', 'info@prekunje.ba');

-- PODACI ZA UPOSLENIKE --

INSERT INTO uposlenici VALUES 
(DEFAULT, 1, 'Mak', 'Aminic','Sarajevo', '2010.10.10', '062 280-584', 'mak@gmail.com', 'menadzer', 1600, DEFAULT),
(DEFAULT, 1, 'Zeljko', 'Maric','Sarajevo', '2015.12.04', '061 033-433', 'zeljko@gmail.com', 'uposlenik', 1000, '1'),
(DEFAULT, 1, 'Nino', 'Amic','Sarajevo', '2015.12.04', '061 925-340', 'nini@gmail.com', 'pripravnik', 600, '1'),
(DEFAULT, 1, 'Hana', 'Amic','Mostar', '2014.05.13', '062 338-372', 'hana@gmail.com', 'uposlenik', 800, '1'),
(DEFAULT, 2, 'Azra', 'Janic','Mostar','2016.04.05', '061 038-984', 'azra@gmail.com', 'menadzer', 1400, DEFAULT),
(DEFAULT, 2, 'Dino', 'Saric','Mostar','2018.11.30', '062 117-345', 'dino@gmail.com', 'uposlenik', 750, '5'),
(DEFAULT, 2, 'Lejla', 'Amikic','Sarajevo', '2018.11.21', '061 234-567', 'lejla@gmail.com', 'uposlenik', 730, '5'),
(DEFAULT, 3, 'Semir', 'Daric','Mostar', '2017.06.21', '062 354-378', 'semir@gmail.com', 'menadzer', 1250, DEFAULT),
(DEFAULT, 3, 'Amina', 'Makic','Tuzla', '2020.03.12', '061 988-889', 'amina@gmail.com', 'uposlenik', 920, '8'),
(DEFAULT, 3, 'Marinko', 'Zeljic','Sarajevo', '2019.07.21', '062 009-990', 'marinko8@gmail.com', 'pripravnik', 600, '8'),
(DEFAULT, 3, 'Marinko', 'Ninic','Tuzla', '2019.04.21', '061 317-344', 'marinko5@gmail.com', 'uposlenik', 880, '8'),
(DEFAULT, 4, 'Amko', 'Hanic','Sarajevo', '2019.06.11', '062 227-377', 'amko@gmail.com', 'menadzer', 1110, DEFAULT),
(DEFAULT, 4, 'Jan', 'Aric','Visoko', '2017.05.21', '061 032-234', 'jan@gmail.com', 'uposlenik', 760, '12'),
(DEFAULT, 4, 'Sara', 'Dinic','Sarajevo', '2017.06.03', '062 221-134', 'sara@gmail.com', 'pripravnik', 600, '12'),
(DEFAULT, 4, 'Amko', 'Lelic','Bihac', '2017.06.21', '062 278-987', 'amko@gmail.com', 'uposlenik', 790, '12'),
(DEFAULT, 5, 'Darija', 'Semic','Bihac', '2018.06.14', '062 665-098', 'darija@gmail.com', 'menadzer', 1350, DEFAULT),
(DEFAULT, 5, 'Osman', 'Daric','Bihac', '2017.11.04', '061 667-890', 'osman@gmail.com', 'uposlenik', 990, '16');

-- PODACI ZA BOLNICE --

INSERT INTO bolnica VALUES
(DEFAULT, 'Univerzitski klinicki centar Sarajevo', '033 456-765', 'Bolnicka 25', 'info@kcus.ba'),
(DEFAULT, 'Bniverzitetski klinicki centar Tuzla', '033 433-334 ', 'Trnovac bb', 'info@kcutuzla'),
(DEFAULT, 'Opca bolnica Sanski Most', '033 476-689', 'Prijedorska 111', 'info@opcsansimost.ba'),
(DEFAULT, 'Univerzitetska bolnica Foca', '033 233-122', 'Studentska bb', 'bolnicaf@gmail.com'),
(DEFAULT, 'Opca bolnica Jajce', '033 544-566', 'Kraljice Jelene bb', 'opcabolnica@hotmail.com'),
(DEFAULT, 'Kantonalna bolnica zenica', '033 477-544', 'Crkvice 67', 'kantonalnatz@ktz.ba'),
(DEFAULT, 'Opca bolnica Konjic', '033 433-455', 'Bolnicka b.b', 'info@bolnicakonjic.com'),
(DEFAULT, 'Univerzitetska klinicka bolnica Mostar', '033 334-222', 'Ulica Kralja Tvrtka', 'ravnateljstvo@skbm.ba');

-- PODACI ZA LIJEK --

INSERT INTO lijek VALUES 
(DEFAULT, 'BAYER', 'aspirin', 10, '2015.12.05', '2023.05.07', 'tablete za bolove', 'srcani udar'),
(DEFAULT, 'BAYER', 'bepanthol', 5, '2019.02.20', '2028.08.03', 'losion za suhu kozu', 'svrabez'),
(DEFAULT, 'PLIVA', 'xarelto', 11, '2018.09.11', '2031.03.02', 'tablete za krvni pritisak', 'krvarenje iz nosa'),
(DEFAULT, 'BAYER', 'rupurut', 20, '2018.07.07', '2028.12.04', 'tablete za umanjenje zgaravice', 'unutrasnje krvarenje'),
(DEFAULT, 'GABBIANO', 'fero forte', 20, '2015.09.02', '2023.03.05', 'tablete za anemiju ', 'povracanje'),
(DEFAULT, 'PLIVA', 'andol pro', 36, '2016.02.05', '2024.09.03', 'tablete za prevenciju mozdanog udara', 'mucnina'),
(DEFAULT, 'GABBIANO', 'imunoalfa', 12, '2017.11.03', '2042.04.01', 'tablete za jacanje imuniteta', 'diareja'),
(DEFAULT, 'GABBIANO', 'hipper hama', 9, '2018.12.02', '2029.02.05', 'gel za iritaciju koze', 'crvrnilo koze'),
(DEFAULT, 'PLIVA', 'rinolag alerg', 6, '2019.09.03', '2024.10.01', 'tablete za ublazavanje simptoma alergije', 'crvenilo koze'),
(DEFAULT, 'HEMOFARM', 'ranitidin', 7, '2018.08.09', '2025.12.02', 'tablete za bolove u zeludcu', 'cir na zeludcu'),
(DEFAULT, 'HEMOFARM', 'indipamid', 19, '2017.03.06', '2024.11.11', 'tablete za sprijecavanje oticanja pluca', 'zatajenje bubrega'),
(DEFAULT, 'HEMOFARM', 'gastal', 20, '2018.04.02', '2024.12.23', 'tablete za kiselinu zeludca', 'diareja'),
(DEFAULT, 'PLIVA', 'betrion', 14, '2017.09.01', '2026.09.28', 'mast za lijecenje koznih bolesti', 'ljustenje koze'),
(DEFAULT, 'BOSNALIJEK', 'merot', 4, '2019.11.05', '2032.06.24', 'tablete za izmokravanje', 'infekcija'),
(DEFAULT, 'BOSNALIJEK', 'bospyrin', 8, '2014.02.05', '2023.06.21', 'tablete za sprjecavanje mozdanog udara', 'unutrasnje krvarenje'),
(DEFAULT, 'PHARMANOVA', 'gynkgobil', 22, '2016.04.04', '2035.04.18', 'tablete za regulaciju cirkulacije', 'epilepsija'),
(DEFAULT, 'PHARMANOVA', 'nem', 16, '2018.12.04', '2022.05.02', 'tablete za odrzanje zdravlja zglobova', 'diareja'),
(DEFAULT, 'PLIVA', 'magnezijum', 3, '2019.02.04', '2022.03.22', 'tablete za nadoknadu magnezijuma', 'iritacija koze'),
(DEFAULT, 'BAYER', 'nalgesin', 8, '2015.05.01', '2024.04.23', 'tablete za smirivanje bolova', 'diareja'),
(DEFAULT, 'BOSNALIJEK', 'c vitamin', 1, '20.12.02', '2031.03.09', 'tablete za nadoknadu c vitamina', 'ljustenje koze');

-- PODACI ZA RECEPT --

INSERT INTO recept VALUES 
(DEFAULT, 1, 1, 1, '2020.2.23', NULL,  2),
(DEFAULT, 2, 2, 4, '2020.5.25', 'uzimati tri puta na dan', 3),
(DEFAULT, 2, 3, 6, '2020.4.21', 'ne konzumirati uz alkohol', 7),
(DEFAULT, 3, 2, 1,'2020.8.12', 'uzimati uz dosta tekucine', 4),
(DEFAULT, 4, 1, 3, '2020.7.5', NULL, 6),
(DEFAULT, 5, 3, 5, '2020.12.4', 'ne konzumirati u nepropisanoj mjeri', 10),
(DEFAULT, 6, 2, 17, '2020.3.12', NULL, 13),
(DEFAULT, 6, 1, 6,'2020.11.22', NULL, 15),
(DEFAULT, 7, 2, 9, '2020.2.23', 'ne konzumirati uz alkohol', 17),
(DEFAULT, 8, 1, 12, '2020.9.11', NULL, 9);

-- PODACI ZA KUPCA --

INSERT INTO kupac VALUES 
(DEFAULT, 'Muamer', 'Sadikovic', '2001.05.01', '062 028-880', 'muamer@gmail.com'),
(DEFAULT, 'Samir', 'Ilijas', '2001.03.12', '061 611-234', 'samir@gmail.com'),
(DEFAULT, 'Ajdin', 'Kamenica', '1992.02.12', '062 377-777', 'ajdin@gmail.com'),
(DEFAULT, 'Dino', 'Sut', '1987.11.07', '061 028-280', 'dino@gmail.com'),
(DEFAULT, 'Samra', 'Krko', '1976.11.08', '060 345-556', 'samra@gmail.com'),
(DEFAULT, 'Lejla', 'Isanovic', '2001.11.03', '062 325-545', 'lejla@gmail.com'),
(DEFAULT, 'Azra', 'Lejlagic', '1999.03.04', '062 278-876', 'azra@gmail.com'),
(DEFAULT, 'Haris', 'Azragic', '1989.04.08', '062 276-887', 'haris@gmail.com'),
(DEFAULT, 'Nihad ', 'Hrkic', '1956.07.09', '061 111-111', 'nihad@gmail.com'),
(DEFAULT, 'Harun', 'Nizic', '1984.04.04', '061 222-334', 'harun@gmail.com'),
(DEFAULT, 'Suljo', 'Semiragic', '2004.06.07', '061 231-213', 'suljo@gmail.com'),
(DEFAULT, 'Asmir', 'Suljagic', '2003.02.07', '061 273-345', 'asmir@gmail.com'),
(DEFAULT, 'Fikreta', 'Asmiradic', '1987.09.08', '062 234-543', 'fikreta@gmail.com'),
(DEFAULT, 'Hajrija', 'Husovic', '1993.06.03', '061 117-744', 'hajrija@gmail.com'),
(DEFAULT, 'Fadil', 'Veletovac', '1965.09.09', '061 234-567', 'fadil@gmail.com');

-- PODACI ZA RAČUN --

INSERT INTO racun VALUES
(DEFAULT, '2020.07.11'),
(DEFAULT, '2020.02.11'),
(DEFAULT, '2020.08.11'),
(DEFAULT, '2020.12.08'),
(DEFAULT, '2020.11.23'),
(DEFAULT, '2020.10.03'),
(DEFAULT, '2020.05.02'),
(DEFAULT, '2020.12.29'),
(DEFAULT, '2020.01.01'),
(DEFAULT, '2020.07.16'),
(DEFAULT, '2020.09.02'),
(DEFAULT, '2020.11.01'),
(DEFAULT, '2020.10.28'),
(DEFAULT, '2020.04.25'),
(DEFAULT, '2020.12.24'),
(DEFAULT, '2020.05.09'),
(DEFAULT, '2020.02.02'),
(DEFAULT, '2020.04.09'),
(DEFAULT, '2020.12.23'),
(DEFAULT, '2020.12.23');

-- PODACI ZA STAVKE RAČUNA --

INSERT INTO stavke_racuna VALUES
(DEFAULT, 1, DEFAULT, 1, 1, 1),
(DEFAULT, 2, 2, 10, 3, 2),
(DEFAULT, 3, DEFAULT, 2, 5, 3),
(DEFAULT, 4, 3, 1, 2, 5),
(DEFAULT, 5, 3, 3, 4, 7),
(DEFAULT, 6, 4, 3, 6, 9),
(DEFAULT, 7, 4, 5, 8, 11),
(DEFAULT, 8, DEFAULT, 3, 7, 15),
(DEFAULT, 9, 5, 1, 9, 17),
(DEFAULT, 10, 6, 3, 11, 12),
(DEFAULT, 11, 6, 5, 10, 12),
(DEFAULT, 12, 7, 2, 12, 10),
(DEFAULT, 13, 7, 5, 12, 12),
(DEFAULT, 14, DEFAULT, 3, 15, 14),
(DEFAULT, 15, 8, 5, 14, 2),
(DEFAULT, 16, 9, 2, 13, 14),
(DEFAULT, 17, 9, 1, 12, 16),
(DEFAULT, 18, DEFAULT, 2, 14, 13),
(DEFAULT, 19, 10, 4, 5, 17),
(DEFAULT, 20, 1, 1, 2, 19);

-- KRAJ UNOSA --


