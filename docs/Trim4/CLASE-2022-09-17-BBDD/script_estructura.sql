-- MySQL Script generated by MySQL Workbench
-- Sat Sep 17 14:09:41 2022
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
-- Table `mydb`.`CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CLIENTES` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PEDIDOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PEDIDOS` (
  `id_cliente` INT NOT NULL,
  `cod_pedido` INT NOT NULL AUTO_INCREMENT,
  `fecha_pedido` DATE NOT NULL,
  `total_pedido` DECIMAL(20,2) NOT NULL,
  PRIMARY KEY (`cod_pedido`),
  INDEX `ind_pedido_cliente` (`id_cliente` ASC),
  CONSTRAINT `fk_pedido_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `mydb`.`CLIENTES` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CATEGORIAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CATEGORIAS` (
  `cod_categoria` INT NOT NULL AUTO_INCREMENT,
  `nombre_categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PRODUCTOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PRODUCTOS` (
  `cod_categoria` INT NOT NULL,
  `cod_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre_producto` VARCHAR(45) NOT NULL,
  `precio_producto_v` DECIMAL(10,2) NOT NULL,
  `stock` INT NOT NULL,
  PRIMARY KEY (`cod_producto`),
  INDEX `ind_producto_categoria` (`cod_categoria` ASC),
  CONSTRAINT `fk_producto_categoria`
    FOREIGN KEY (`cod_categoria`)
    REFERENCES `mydb`.`CATEGORIAS` (`cod_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LISTA_PROD_PED`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LISTA_PROD_PED` (
  `cod_pedido` INT NOT NULL,
  `cod_producto` INT NOT NULL,
  `cant_productos_v` INT NOT NULL,
  INDEX `ind_lista_prod_ped_pedidos` (`cod_pedido` ASC),
  INDEX `ind_lista_prod_ped_productos` (`cod_producto` ASC),
  CONSTRAINT `fk_lista_prod_ped_pedidos`
    FOREIGN KEY (`cod_pedido`)
    REFERENCES `mydb`.`PEDIDOS` (`cod_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lista_prod_ped_productos`
    FOREIGN KEY (`cod_producto`)
    REFERENCES `mydb`.`PRODUCTOS` (`cod_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`COMPRA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`COMPRA` (
  `cod_compra` VARCHAR(10) NOT NULL,
  `fecha_compra` DATE NOT NULL,
  `total_compra` DECIMAL(10,2) NOT NULL,
  `documeto` BLOB NOT NULL,
  PRIMARY KEY (`cod_compra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LISTA_PROD_COM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LISTA_PROD_COM` (
  `cod_compra` VARCHAR(10) NOT NULL,
  `cod_producto` INT NOT NULL,
  `precio_producto_c` DECIMAL(10,2) NOT NULL,
  `cant_productos_c` INT NOT NULL,
  INDEX `ind_lista_prod_com_productos` (`cod_producto` ASC),
  INDEX `ind_lista_prod_com_compra` (`cod_compra` ASC),
  CONSTRAINT `fk_lista_prod_com_productos`
    FOREIGN KEY (`cod_producto`)
    REFERENCES `mydb`.`PRODUCTOS` (`cod_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lista_prod_com_compra`
    FOREIGN KEY (`cod_compra`)
    REFERENCES `mydb`.`COMPRA` (`cod_compra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
