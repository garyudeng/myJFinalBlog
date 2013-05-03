/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.67-log : Database - jfinal_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jfinal_demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jfinal_demo`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `blog` */

insert  into `blog`(`id`,`title`,`content`) values (1,'test 1','test 1'),(2,'test 3','test 3'),(3,'test 4','test 4');

/*Table structure for table `cateroge` */

DROP TABLE IF EXISTS `cateroge`;

CREATE TABLE `cateroge` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cateroge` */

insert  into `cateroge`(`id`,`name`,`url`) values (1,'未分类','moren'),(2,'生活日志','day');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `fatherId` bigint(10) NOT NULL,
  `authorName` varchar(50) NOT NULL,
  `authorEmail` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`id`,`fatherId`,`authorName`,`authorEmail`,`content`,`time`) values (1,1,'1','2','3','2013-05-01 22:04:41'),(2,1,'2','3','4','2013-05-01 22:57:30'),(3,4,'3','3','4','2013-05-01 23:14:19'),(4,1,'1','2','3','2013-05-03 03:30:47'),(5,1,'2','3','4','2013-05-03 03:33:56'),(6,1,'评论测试','21936354@qq.com','测试','2013-05-03 10:28:14');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(55) NOT NULL,
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `commentCount` bigint(10) NOT NULL DEFAULT '0',
  `viewCount` bigint(10) NOT NULL DEFAULT '0',
  `caterogeId` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `post` */

insert  into `post`(`id`,`title`,`content`,`time`,`commentCount`,`viewCount`,`caterogeId`) values (1,'测试1','测试1','2013-05-04 01:01:58',1,18,1),(2,'测试2','测试2','2013-05-03 11:11:55',0,7,1),(3,'测试3','测试3','2013-05-03 11:11:43',0,2,1),(4,'测试4','测试4','2013-05-03 11:16:38',0,5,2),(5,'测试5','测试5','2013-05-03 11:11:42',0,1,2);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
