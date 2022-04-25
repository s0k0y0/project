-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
Drop database IF EXISTS db10;
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db10` DEFAULT CHARACTER SET utf8 ;
USE `db10` ;

-- -----------------------------------------------------
-- Table `mydb`.`member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db10`.`member` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `profile` BLOB(1000) NULL,
  `post` VARCHAR(5) NULL,
  `address` VARCHAR(100) NULL,
  `detailAddress` VARCHAR(200) NULL,
  `email` VARCHAR(45) NOT NULL,
  `id` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `rdate`  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`no`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`board`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db10`.`board` (
  `no` INT NOT NULL AUTO_INCREMENT,
   `writerName` VARCHAR(100) NULL,
  `title` VARCHAR(1000) NULL,
  `contents` VARCHAR(5000) NULL,
  `regdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `member_no` INT NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_board_member_idx` (`member_no` ASC) VISIBLE,
  CONSTRAINT `fk_board_member`
    FOREIGN KEY (`member_no`)
    REFERENCES `db10`.`member` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;