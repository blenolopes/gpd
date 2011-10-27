# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         mysql.esparta.bin
# Database:                     gpd
# Server version:               5.0.51a-24+lenny1
# Server OS:                    debian-linux-gnu
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2009-09-08 20:49:51
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'gpd'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "gpd" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "gpd";


#
# Table structure for table 'administrador'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "administrador" (
  "adm_id" tinyint(3) unsigned NOT NULL auto_increment,
  "adm_nome" varchar(45) NOT NULL,
  "adm_email" varchar(45) NOT NULL,
  "adm_usuario" varchar(45) NOT NULL,
  "adm_senha" varchar(45) NOT NULL,
  PRIMARY KEY  ("adm_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'administrador'
#

LOCK TABLES "administrador" WRITE;
/*!40000 ALTER TABLE "administrador" DISABLE KEYS;*/
REPLACE INTO "administrador" ("adm_id", "adm_nome", "adm_email", "adm_usuario", "adm_senha") VALUES
	(1,'Bleno Vinicius','blenolopes@gmail.com','bleno','1234');
REPLACE INTO "administrador" ("adm_id", "adm_nome", "adm_email", "adm_usuario", "adm_senha") VALUES
	(2,'Alex Silva','alex_guitarrista18@hotmai.com','alex','123456');
/*!40000 ALTER TABLE "administrador" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
