-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videoclub` DEFAULT CHARACTER SET utf8 ;
USE `videoclub` ;

-- -----------------------------------------------------
-- Table `videoclub`.`Peliculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`Peliculas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(200) NULL,
  `puntuacion` DOUBLE NULL,
  `anyo` YEAR NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `videoclub`.`Peliculas`
-- -----------------------------------------------------
START TRANSACTION;
USE `videoclub`;
INSERT INTO `videoclub`.`Peliculas` (`id`, `titulo`, `puntuacion`, `anyo`) VALUES (DEFAULT, 'Cadena perpetua', 9.2, 1994);
INSERT INTO `videoclub`.`Peliculas` (`id`, `titulo`, `puntuacion`, `anyo`) VALUES (DEFAULT, 'El padrino', 9.2, 1972);
INSERT INTO `videoclub`.`Peliculas` (`id`, `titulo`, `puntuacion`, `anyo`) VALUES (DEFAULT, 'El padrino: Parte II', 9.0, 1974);
INSERT INTO `videoclub`.`Peliculas` (`id`, `titulo`, `puntuacion`, `anyo`) VALUES (DEFAULT, 'El caballero oscuro', 9.0, 2008);
INSERT INTO `videoclub`.`Peliculas` (`id`, `titulo`, `puntuacion`, `anyo`) VALUES (DEFAULT, '12 hombres sin piedad', 8.9, 1957);

COMMIT;

