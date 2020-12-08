-- MySQL Script generated by MySQL Workbench
-- Tue Dec  8 18:20:46 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`racun`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`racun` (
  `racun_id` INT NOT NULL,
  `kupac_id` INT NOT NULL,
  `uposlenik_id` INT NOT NULL,
  `datum_izdavanja` DATE NOT NULL,
  PRIMARY KEY (`racun_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stavke_racuna`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stavke_racuna` (
  `stavke_racuna_id` INT NOT NULL,
  `racun_id` INT NOT NULL,
  `lijek_id` INT NOT NULL,
  `popust_id` INT NULL,
  `kolicina` INT NOT NULL,
  `cijena_bez_popusta` INT NOT NULL,
  PRIMARY KEY (`stavke_racuna_id`),
  INDEX `fk_kupac_id_idx` (`racun_id` ASC) VISIBLE,
  CONSTRAINT `fk_kupac_id`
    FOREIGN KEY (`racun_id`)
    REFERENCES `mydb`.`racun` (`racun_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`recept`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`recept` (
  `recept_id` INT NOT NULL,
  `apoteka_id` INT NOT NULL,
  `kupac_id` INT NOT NULL,
  `lijek_id` INT NOT NULL,
  `količina` INT NOT NULL,
  `datum_izdavanja` DATE NOT NULL,
  `komentar` VARCHAR(45) NULL,
  PRIMARY KEY (`recept_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
