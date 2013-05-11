SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ders` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`ders` (
  `ders_id` INT NOT NULL ,
  `ders_adi` VARCHAR(11) NOT NULL ,
  PRIMARY KEY (`ders_id`) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`calisan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`calisan` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`calisan` (
  `calisan_id` INT NOT NULL ,
  `calisan_adi` VARCHAR(11) NOT NULL ,
  `calisanc_soyadi` VARCHAR(11) NOT NULL ,
  `tc` INT NOT NULL ,
  `SSN` INT NOT NULL ,
  `cinsiyet` CHAR NOT NULL ,
  `maas` INT NOT NULL ,
  `telefon` INT NOT NULL ,
  `calisan_ders_id` INT NOT NULL ,
  PRIMARY KEY (`calisan_id`) ,
  INDEX `ders_id` (`calisan_ders_id` ASC) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`kursiyer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`kursiyer` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`kursiyer` (
  `kursiyer_id` INT NOT NULL ,
  `kursiyer_ad` VARCHAR(11) NOT NULL ,
  `kursiyer_soyad` VARCHAR(11) NOT NULL ,
  `kayit_tarihi` VARCHAR(15) NOT NULL ,
  `tc` INT NOT NULL ,
  `d_tarihi` VARCHAR(15) NOT NULL ,
  `cinsiyet` VARCHAR(11) NOT NULL ,
  `telefon` INT NOT NULL ,
  `e_sinifi` VARCHAR(15) NULL ,
  PRIMARY KEY (`kursiyer_id`) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`direksiyonsinavi`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`direksiyonsinavi` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`direksiyonsinavi` (
  `direksiyonsinav_id` INT NOT NULL ,
  `direksiyonsinav_sonuc` INT NOT NULL ,
  `calisan_id` INT NOT NULL ,
  `kursiyer_kursiyer_id` INT NOT NULL ,
  PRIMARY KEY (`direksiyonsinav_id`) ,
  INDEX `fk_direksiyon sÄ±navÄ±_calisan1` (`calisan_id` ASC) ,
  INDEX `fk_direksiyonsinavi_kursiyer1` (`kursiyer_kursiyer_id` ASC) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`direksiyoneÄŸitimi`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`direksiyoneÄŸitimi` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`direksiyoneÄŸitimi` (
  `direksiyon_eÄŸitimi_id` INT NOT NULL ,
  `arac_no` INT NOT NULL ,
  `egitim_calisan_id` INT NOT NULL ,
  `kursiyer_kursiyer_id` INT NOT NULL ,
  INDEX `calisan_id` (`egitim_calisan_id` ASC) ,
  PRIMARY KEY (`direksiyon_eÄŸitimi_id`) ,
  INDEX `fk_direksiyoneÄŸitimi_kursiyer1` (`kursiyer_kursiyer_id` ASC) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`sinav`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`sinav` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`sinav` (
  `sinav_id` INT NOT NULL ,
  `kursiyer_sinav_id` INT NOT NULL ,
  `sinav_calisan_id` INT NOT NULL ,
  `tarih` VARCHAR(15) NOT NULL ,
  `sinav_ders_id` INT NOT NULL ,
  PRIMARY KEY (`sinav_id`) ,
  INDEX `fk_sinav_kursiyer1` (`kursiyer_sinav_id` ASC) ,
  INDEX `fk_sinav_calisan1` (`sinav_calisan_id` ASC) ,
  INDEX `fk_sinav_ders1` (`sinav_ders_id` ASC) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`sonuc`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`sonuc` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`sonuc` (
  `sinav_id` INT NOT NULL ,
  `sonuc` INT NOT NULL ,
  PRIMARY KEY (`sinav_id`) ,
  INDEX `fk_sonuc_sinav1` (`sinav_id` ASC) )
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`derssecimi`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`derssecimi` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`derssecimi` (
  `ders_secimi_id` INT NOT NULL ,
  `kursiyer_kursiyer_id` INT NOT NULL ,
  `calisan_calisan_id` INT NOT NULL ,
  `ders_ders_id` INT NOT NULL ,
  PRIMARY KEY (`ders_secimi_id`) ,
  INDEX `fk_ders secimi_kursiyer1` (`kursiyer_kursiyer_id` ASC) ,
  INDEX `fk_ders secimi_calisan1` (`calisan_calisan_id` ASC) ,
  INDEX `fk_ders secimi_ders1` (`ders_ders_id` ASC) )
ENGINE = MyISAM;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
