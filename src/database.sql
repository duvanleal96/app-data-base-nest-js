CREATE TABLE IF NOT EXISTS `facturacion`.`tbl_factura` (
  `fac_idfactura` INT(11) NOT NULL AUTO_INCREMENT,
  `fac_cliente_nombre` VARCHAR(45) NOT NULL,
  `fac_cliente_correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`fac_idfactura`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `facturacion`.`tbl_detalle_factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `facturacion`.`tbl_detalle_factura` (
  `idl_detalle_factura` INT(11) NOT NULL AUTO_INCREMENT,
  `fac_id` INT(11) NOT NULL,
  `producto` VARCHAR(450) NOT NULL,
  `cantidad` INT(11) NOT NULL DEFAULT 0,
  `precio` INT(11) NOT NULL DEFAULT 0,
  `total` INT(11) NOT NULL,
  PRIMARY KEY (`idl_detalle_factura`),
    FOREIGN KEY (fac_id)
    REFERENCES tbl_factura (`fac_idfactura`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;