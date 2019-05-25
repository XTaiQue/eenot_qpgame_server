/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.40 : Database - 8da2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`8da2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `8da2`;

/*Table structure for table `downcoinlog` */

DROP TABLE IF EXISTS `downcoinlog`;

CREATE TABLE `downcoinlog` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `MatchId` int(20) DEFAULT '0' COMMENT '场次ID',
  `downCoin` int(11) NOT NULL DEFAULT '0',
  `winCoin` int(11) NOT NULL DEFAULT '0',
  `open2` int(11) DEFAULT NULL,
  `open3` int(11) DEFAULT NULL,
  `open4` int(11) DEFAULT NULL,
  `tax` int(9) DEFAULT NULL,
  `isBanker` tinyint(1) NOT NULL DEFAULT '0',
  `serverId` int(3) NOT NULL DEFAULT '1',
  `tableid` int(3) NOT NULL DEFAULT '0',
  `Adddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1290 DEFAULT CHARSET=utf8;

/*Data for the table `downcoinlog` */

/*Table structure for table `matchlog` */

DROP TABLE IF EXISTS `matchlog`;

CREATE TABLE `matchlog` (
  `matchId` int(20) NOT NULL AUTO_INCREMENT,
  `open11` char(2) DEFAULT NULL,
  `open12` char(2) DEFAULT NULL,
  `open21` char(2) DEFAULT NULL,
  `open22` char(2) DEFAULT NULL,
  `open31` char(2) DEFAULT NULL,
  `open32` char(2) DEFAULT NULL,
  `open41` char(2) DEFAULT NULL,
  `open42` char(2) DEFAULT NULL,
  `open2winbet` int(2) DEFAULT NULL,
  `open3winbet` int(2) DEFAULT NULL,
  `open4winbet` int(2) DEFAULT NULL,
  `tableId` int(3) DEFAULT NULL,
  `serveId` int(3) DEFAULT NULL,
  `adddate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`matchId`)
) ENGINE=InnoDB AUTO_INCREMENT=39872 DEFAULT CHARSET=utf8;

/*Data for the table `matchlog` */

/* Procedure structure for procedure `addMatch` */

/*!50003 DROP PROCEDURE IF EXISTS  `addMatch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addMatch`(open1x VARCHAR(4),open2x VARCHAR(4),open3x VARCHAR(4),open4x VARCHAR(4),open2winbetx int(2),open3winbetx INT(2),open4winbetx INT(2),serveridx INT(3))
BEGIN
	INSERT INTO matchlog(open1,open2,open3,open4,open2winbet,open3winbet,open4winbet,serveId) VALUES(open1x,open2x,open3x,open4x,open2winbetx,open3winbetx,open4winbetx,serveridx);
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
