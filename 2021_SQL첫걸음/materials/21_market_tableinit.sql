-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `market` DEFAULT CHARACTER SET utf8 ;
USE `market` ;

-- -----------------------------------------------------
-- Table `market`.`item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `market`.`item`;
CREATE TABLE IF NOT EXISTS `market`.`item` (
                                                 `id` INT NOT NULL AUTO_INCREMENT,
                                                 `title` VARCHAR(45) NOT NULL,
                                                 `description` VARCHAR(200) NOT NULL,
                                                 `price` INT NOT NULL,
                                                 `badges` VARCHAR(45) NULL,
                                                 `delivery` VARCHAR(200) NULL,
                                                 `category` VARCHAR(45) NOT NULL,
                                                 `image_url` VARCHAR(200) NULL,
                                                 PRIMARY KEY (`id`))
                                                 ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
