-- -----------------------------------------------------
-- Schema decodemtl_addressbook
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `decodemtl_addressbook` ;

-- -----------------------------------------------------
-- Schema decodemtl_addressbook
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `decodemtl_addressbook` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `decodemtl_addressbook` ;

-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`Account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`Account` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`Account` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `email` VARCHAR(255) NOT NULL COMMENT '',
  `password` VARCHAR(40) NOT NULL COMMENT '',
  `createdOn` DATETIME NOT NULL COMMENT '',
  `modifiedOn` DATETIME NULL COMMENT '',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`AddressBook`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`AddressBook` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`AddressBook` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `accountId` INT NOT NULL COMMENT '',
  `name` VARCHAR(255) NOT NULL COMMENT '',
  `createdOn` DATETIME NOT NULL COMMENT '',
  `modifiedOn` DATETIME NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`Entry`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`Entry` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`Entry` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `addressBookId` INT NOT NULL COMMENT '',
  `firstName` VARCHAR(255) NOT NULL COMMENT '',
  `lastName` VARCHAR(255) NULL COMMENT '',
  `birthday` DATETIME NULL COMMENT '',
  `type` ENUM('phone', 'address', 'electronic-mail') NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`Address` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`Address` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `entryId` INT NOT NULL COMMENT '',
  `type` ENUM('home', 'work', 'other') NOT NULL COMMENT '',
  `addressLine1` VARCHAR(255) NOT NULL COMMENT '',
  `addressLine2` VARCHAR(255) NULL COMMENT '',
  `city` VARCHAR(255) NOT NULL COMMENT '',
  `province` VARCHAR(128) NOT NULL COMMENT '',
  `country` VARCHAR(128) NOT NULL COMMENT '',
  `postalCode` VARCHAR(10) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`Phone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`Phone` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`Phone` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `entryId` INT NOT NULL COMMENT '',
  `type` ENUM('home', 'work', 'other') NOT NULL COMMENT '',
  `subtype` ENUM('landline', 'cellular', 'fax') NOT NULL COMMENT '',
  `content` VARCHAR(255) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`ElectronicMail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`ElectronicMail` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`ElectronicMail` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `entryId` INT NOT NULL COMMENT '',
  `type` ENUM('home', 'work', 'other') NOT NULL COMMENT '',
  `content` VARCHAR(255) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;