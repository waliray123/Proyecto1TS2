-- MySQL Script generated by MySQL Workbench
-- mié 13 abr 2022 14:55:28
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mayaweb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mayaweb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mayaweb` ;
USE `mayaweb` ;

-- -----------------------------------------------------
-- Table `mayaweb`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Usuario` (
  `nombre_usuario` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(150) NULL,
  `apellido` VARCHAR(150) NULL,
  `password` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`nombre_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Juego`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Juego` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Juego` (
  `nombre_juego` VARCHAR(150) NOT NULL,
  `descripcion` VARCHAR(250) NULL,
  `reglas` VARCHAR(1000) NULL,
  PRIMARY KEY (`nombre_juego`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Usuario_Juego`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Usuario_Juego` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Usuario_Juego` (
  `Usuario_nombre_usuario` VARCHAR(100) NOT NULL,
  `Juego_nombre_juego` VARCHAR(150) NOT NULL,
  `puntuacion` INT NULL,
  PRIMARY KEY (`Usuario_nombre_usuario`, `Juego_nombre_juego`),
  INDEX `fk_Usuario_has_Juego_Juego1_idx` (`Juego_nombre_juego` ASC),
  INDEX `fk_Usuario_has_Juego_Usuario_idx` (`Usuario_nombre_usuario` ASC),
  CONSTRAINT `fk_Usuario_has_Juego_Usuario`
    FOREIGN KEY (`Usuario_nombre_usuario`)
    REFERENCES `mayaweb`.`Usuario` (`nombre_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_has_Juego_Juego1`
    FOREIGN KEY (`Juego_nombre_juego`)
    REFERENCES `mayaweb`.`Juego` (`nombre_juego`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Calendario_rueda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Calendario_rueda` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Calendario_rueda` (
  `nombre_calendario_rueda` VARCHAR(150) NOT NULL,
  `informacion` VARCHAR(2000) NULL,
  PRIMARY KEY (`nombre_calendario_rueda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Elemento_calendario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Elemento_calendario` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Elemento_calendario` (
  `nombre_elemento_calendario` VARCHAR(150) NOT NULL,
  `informacion` VARCHAR(1000) NULL,
  `nombre_calendario_rueda` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`nombre_elemento_calendario`),
  INDEX `fk_Elemento_calendario_Calendario_rueda1_idx` (`nombre_calendario_rueda` ASC),
  CONSTRAINT `fk_Elemento_calendario_Calendario_rueda1`
    FOREIGN KEY (`nombre_calendario_rueda`)
    REFERENCES `mayaweb`.`Calendario_rueda` (`nombre_calendario_rueda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Elemento_Nahual`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Elemento_Nahual` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Elemento_Nahual` (
  `nombre_elemento_nahual` VARCHAR(100) NOT NULL,
  `significado` VARCHAR(1000) NULL,
  `simbolo` VARCHAR(100) NULL,
  `nombre_elemento_calendario` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`nombre_elemento_nahual`),
  INDEX `fk_Elemento_Nahual_Elemento_calendario1_idx` (`nombre_elemento_calendario` ASC),
  CONSTRAINT `fk_Elemento_Nahual_Elemento_calendario1`
    FOREIGN KEY (`nombre_elemento_calendario`)
    REFERENCES `mayaweb`.`Elemento_calendario` (`nombre_elemento_calendario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Funciones_espirituales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Funciones_espirituales` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Funciones_espirituales` (
  `id_funciones_espirituales` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(1000) NULL,
  `nombre_elemento_nahual` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_funciones_espirituales`),
  INDEX `fk_Funciones_espirituales_Elemento_Nahual1_idx` (`nombre_elemento_nahual` ASC),
  CONSTRAINT `fk_Funciones_espirituales_Elemento_Nahual1`
    FOREIGN KEY (`nombre_elemento_nahual`)
    REFERENCES `mayaweb`.`Elemento_Nahual` (`nombre_elemento_nahual`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Fortalezas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Fortalezas` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Fortalezas` (
  `id_fortalezas` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(500) NULL,
  `nombre_elemento_nahual` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_fortalezas`),
  INDEX `fk_Fortalezas_Elemento_Nahual1_idx` (`nombre_elemento_nahual` ASC),
  CONSTRAINT `fk_Fortalezas_Elemento_Nahual1`
    FOREIGN KEY (`nombre_elemento_nahual`)
    REFERENCES `mayaweb`.`Elemento_Nahual` (`nombre_elemento_nahual`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Debilidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Debilidades` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Debilidades` (
  `id_debilidades` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(500) NULL,
  `nombre_elemento_nahual` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_debilidades`),
  INDEX `fk_Debilidades_Elemento_Nahual1_idx` (`nombre_elemento_nahual` ASC),
  CONSTRAINT `fk_Debilidades_Elemento_Nahual1`
    FOREIGN KEY (`nombre_elemento_nahual`)
    REFERENCES `mayaweb`.`Elemento_Nahual` (`nombre_elemento_nahual`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mayaweb`.`Extras_Calendario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mayaweb`.`Extras_Calendario` ;

CREATE TABLE IF NOT EXISTS `mayaweb`.`Extras_Calendario` (
  `id_extras_Calendario` INT NOT NULL AUTO_INCREMENT,
  `nombre_extra` VARCHAR(100) NULL,
  `descripcion` VARCHAR(1000) NULL,
  `nombre_calendario_rueda` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id_extras_Calendario`),
  INDEX `fk_Extras_Calendario_Calendario_rueda1_idx` (`nombre_calendario_rueda` ASC),
  CONSTRAINT `fk_Extras_Calendario_Calendario_rueda1`
    FOREIGN KEY (`nombre_calendario_rueda`)
    REFERENCES `mayaweb`.`Calendario_rueda` (`nombre_calendario_rueda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;