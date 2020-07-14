-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema daGymDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `daGymDB` ;
CREATE SCHEMA IF NOT EXISTS `daGymDB` ;

-- -----------------------------------------------------
-- Data base for Da Gym
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `daGymDB` ;
CREATE DATABASE `daGymDB` ;
USE `daGymDB` ;

-- -----------------------------------------------------
-- Table `daGymDB`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `daGymDB`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `birth_day` DATE NOT NULL,
  `genre` VARCHAR(10) NOT NULL,
  `start_date` TIMESTAMP NOT NULL,
  `role` INT(1) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` CHAR(25) NOT NULL,
  `mobile_number` VARCHAR(50) NOT NULL,
  `avatar_url` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `daGymDB`.`activities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `daGymDB`.`activities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT(300) NOT NULL,
  `monthly_price` INT NOT NULL,
  `img` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `daGymDB`.`branches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `daGymDB`.`branches` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `telephone` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `daGymDB`.`lessons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `daGymDB`.`lessons` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_activity` INT NOT NULL,
  `id_branch` INT NOT NULL,
  `days` VARCHAR(20) NOT NULL,
  `time` TIME NOT NULL,
  `max_capacity` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_lessons_activities1`
    FOREIGN KEY (`id_activity`)
    REFERENCES `daGymDB`.`activities` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lessons_branches1`
    FOREIGN KEY (`id_branch`)
    REFERENCES `daGymDB`.`branches` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `daGymDB`.`users_lessons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `daGymDB`.`user_lesson` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `lesson_id` INT NOT NULL,
  `expire_date` DATE NULL,
  PRIMARY KEY (`id`, `user_id`, `lesson_id`),
  CONSTRAINT `fk_users_has_lessons2_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `daGymDB`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_lessons2_lessons1`
    FOREIGN KEY (`lesson_id`)
    REFERENCES `daGymDB`.`lesson` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
