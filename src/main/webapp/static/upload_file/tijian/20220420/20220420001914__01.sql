/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.17-log : Database - db_shop_ershou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_shop_ershou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_shop_ershou`;

/*Table structure for table `t_a_member` */

DROP TABLE IF EXISTS `t_a_member`;

CREATE TABLE `t_a_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nick_name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `introduction` varchar(100) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_a_member` */

insert  into `t_a_member`(`id`,`create_date_time`,`name`,`nick_name`,`phone`,`pwd`,`sex`,`introduction`,`image_url`,`balance`,`integral`) values (5,'2022-03-01 23:20:53','Dennis','君皇','18817523936','RDZ12345',1,'','/static/upload_image/member/20191212/20191212234520.jpg','1.00',0),(6,'2022-03-01 23:20:53','123456','小胆','12345678955','123456',1,'111111111111','/static/upload_image/member/20200313/20200313224034.jpg','55.00',10),(7,'2022-03-01 23:20:53','5566','小飞','12345678955','123456',1,'11111111','/image/base/default_head_img.jpg','44806.00',2),(8,'2022-03-01 23:20:53','8899','在在','18337537525','123456',1,NULL,'/image/base/default_head_img.jpg','0.00',0),(9,'2022-03-26 19:44:11','88999','123456','12341567891','123456',1,'321312','/image/base/default_head_img.jpg','0.00',0),(10,'2022-04-05 10:18:52','doudou ','豆豆','17388888888','123456',1,NULL,'/image/base/default_head_img.jpg','0.00',0);

/*Table structure for table `t_a_role` */

DROP TABLE IF EXISTS `t_a_role`;

CREATE TABLE `t_a_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `order_no` int(11) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_a_role` */

insert  into `t_a_role`(`id`,`create_date_time`,`name`,`order_no`,`remark`,`update_date_time`) values (3,'2022-03-01 23:20:53','管理员',1,NULL,'2022-03-01 23:20:53'),(4,'2019-07-04 23:52:50','普通角色',2,'','2022-03-01 23:20:53');

/*Table structure for table `t_a_user` */

DROP TABLE IF EXISTS `t_a_user`;

CREATE TABLE `t_a_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `order_no` int(11) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `true_name` varchar(200) NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK76cs7cu4h4y8vc1vd4qyw36rt` (`role_id`) USING BTREE,
  CONSTRAINT `FK76cs7cu4h4y8vc1vd4qyw36rt` FOREIGN KEY (`role_id`) REFERENCES `t_a_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_a_user` */

insert  into `t_a_user`(`id`,`create_date_time`,`name`,`order_no`,`pwd`,`remark`,`true_name`,`update_date_time`,`role_id`,`image_url`) values (1,'2019-02-18 08:40:27','admin',1,'ba61ce8fa1e3725876e6363c76043c8d',NULL,'管理员','2019-07-04 23:53:30',3,'/static/upload_image/user_cover/20190608/20190608170739.jpg');

/*Table structure for table `t_a_venue_type` */

DROP TABLE IF EXISTS `t_a_venue_type`;

CREATE TABLE `t_a_venue_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `use_it` int(11) DEFAULT NULL,
  `image_url` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_a_venue_type` */

insert  into `t_a_venue_type`(`id`,`create_date_time`,`name`,`sort`,`update_date_time`,`use_it`,`image_url`) values (1,'2022-03-01 23:20:53','无人机',2,'2022-03-18 10:36:14',1,'/static/upload_image/venue_cover/20220318/20220318103612.jpg'),(2,'2022-03-01 23:20:53','相机',3,'2022-03-18 10:36:06',1,'/static/upload_image/venue_cover/20220318/20220318103605.jpg'),(3,'2022-03-01 23:20:53','手机',1,'2022-03-18 10:34:54',1,'/static/upload_image/venue_cover/20220318/20220318103452.jpg'),(4,'2022-03-01 23:20:53','图书类',4,'2022-03-18 10:36:47',1,'/static/upload_image/venue_cover/20220318/20220318103646.jpg'),(5,'2022-03-01 23:20:53','衣服',5,'2022-03-18 10:38:10',1,'/static/upload_image/venue_cover/20220318/20220318103809.jpg'),(6,'2022-03-01 23:20:53','饰品',6,'2022-03-18 10:38:17',1,'/static/upload_image/venue_cover/20220318/20220318103816.jpg');

/*Table structure for table `t_b_venue` */

DROP TABLE IF EXISTS `t_b_venue`;

CREATE TABLE `t_b_venue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `click_hit` int(11) DEFAULT NULL,
  `content` longtext,
  `create_date_time` datetime DEFAULT NULL,
  `image_url` varchar(150) DEFAULT NULL,
  `reply_hit` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `video_desc` varchar(200) DEFAULT NULL,
  `venue_type_id` int(11) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK9uqa6vljg7cgpxbb0s8j0g2j6` (`venue_type_id`) USING BTREE,
  KEY `FK838g4etaxyus7pc355rdt0sw6` (`member_id`),
  CONSTRAINT `FK838g4etaxyus7pc355rdt0sw6` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`),
  CONSTRAINT `FK9uqa6vljg7cgpxbb0s8j0g2j6` FOREIGN KEY (`venue_type_id`) REFERENCES `t_a_venue_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_b_venue` */

insert  into `t_b_venue`(`id`,`click_hit`,`content`,`create_date_time`,`image_url`,`reply_hit`,`state`,`title`,`video_desc`,`venue_type_id`,`top`,`sort`,`hot`,`price`,`member_id`) values (2,5,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051027_18415_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051028_02956_image.png\" title=\"image.png\" alt=\"image.png\"/><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051028_45479_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051028_55306_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>','2022-04-05 10:29:48','/static/upload_image/venue_cover/20220405/20220405102938.jpg',0,1,'小米4 二手95新   用了3年后因换手机忍痛割爱便宜出售','运行内存6G  内存128G  前置摄像头1200像素 后置摄像头2000像素',3,0,NULL,0,'500.00',10),(3,1,'<p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051043_38221_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051044_13840_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051047_02761_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051047_35040_image.png\" title=\"image.png\" alt=\"image.png\"/></p>','2022-04-05 10:48:09','/static/upload_image/venue_cover/20220405/20220405104807.jpg',0,2,'顺丰速发5G新品送碎屏宝Huawei/华为nova 8 Pro手机官方旗舰店正品曲面屏新款nove8直降9官网nova8系列pro',NULL,3,0,NULL,0,'2000.00',10),(7,0,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051106_01648_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051104_49494_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051106_28458_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p>','2022-04-05 11:07:56','/static/upload_image/venue_cover/20220405/20220405111556.jpg',0,1,'Apple/苹果 iPhone 11 苹果11promax国行正品全网通双卡手机现货',NULL,3,0,NULL,0,'2000.00',10),(8,0,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051110_37947_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051110_53437_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051111_13580_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051111_37849_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p>','2022-04-05 11:12:06','/static/upload_image/venue_cover/20220405/20220405111831.jpg',0,1,'充值超市卡更优惠】红米Note10 Pro手机redmi 10天玑1100旗舰','',3,0,NULL,0,'2000.00',10),(9,0,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051134_02542_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051135_02385_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051135_28970_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p>','2022-04-05 11:36:45','/static/upload_image/venue_cover/20220405/20220405115803.jpg',0,1,'高端f7黑科技f11三轴云台drone航拍兽3智能避障长续航gps无人机航拍器高清专业 成人遥控飞机入门级自动返航','',1,0,NULL,0,'3000.00',10),(10,0,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051144_32185_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051145_01970_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051148_20866_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p>','2022-04-05 11:48:33','/static/upload_image/venue_cover/20220405/20220405124036.jpg',0,1,'避障无人机航拍高清专业飞行器航模学生遥控直升飞机小型儿童玩具','',1,0,NULL,0,'3000.00',10),(11,16,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051151_12175_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051151_32233_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051151_48238_image.png\" title=\"image.png\" alt=\"image.png\"/></p>','2022-04-05 11:52:04','/static/upload_image/venue_cover/20220405/20220405123948.jpg',0,3,'DJI 大疆御3 大疆Mavic3无人机 哈苏镜头 大型无人机航拍器 遥控飞机无人机高清专业航拍大疆无人机专卖店',NULL,1,0,NULL,0,'5000.00',10),(12,0,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051155_38127_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051156_50934_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051157_15040_image.png\" title=\"image.png\" alt=\"image.png\"/></p>','2022-04-05 11:57:34','/static/upload_image/venue_cover/20220405/20220405123809.jpg',0,1,'GPS无人机航拍8k高清专业飞行器长续航5000米小学生儿童遥控飞机',NULL,1,0,NULL,0,'9354.00',10),(13,0,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051204_23525_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051203_50020_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051205_03809_image.png\" title=\"image.png\" alt=\"image.png\"/></p>','2022-04-05 12:06:47','/static/upload_image/venue_cover/20220405/20220405120645.jpg',0,1,'全新佳能EOS700D 750D 800D 100D入门级单反相机学生旅游高清数码','',2,0,NULL,0,'6000.00',10),(14,0,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051209_46733_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051210_13335_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051215_14006_image.png\" title=\"image.png\" alt=\"image.png\"/></p>','2022-04-05 12:15:27','/static/upload_image/venue_cover/20220405/20220405123605.jpg',0,1,'【直营】佳能（Canon）g7x2数码相机学生高清旅游入门级vlog相机','',2,1,NULL,0,'4000.00',10),(15,3,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051217_24989_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051218_00991_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051218_39404_image.png\" title=\"image.png\" alt=\"image.png\"/></p>','2022-04-05 12:18:50','/static/upload_image/venue_cover/20220405/20220405123451.jpg',0,1,'Canon/佳能 EOS 200D2ii二代蚂蚁摄影单反相机入门级佳能200d二代',NULL,2,1,NULL,1,'6000.00',10),(16,2,'<p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051220_11328_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051220_29863_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><img src=\"/static/ueditor_upload/uploadimage/2022-04-05/202204051220_55824_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p>','2022-04-05 12:21:07','/static/upload_image/venue_cover/20220405/20220405123343.jpg',0,1,'佳能EOS M50二代学生入门级mark2 M200数码高清旅游微单反相机M6','567',2,1,NULL,1,'8663.00',10);

/*Table structure for table `t_chat` */

DROP TABLE IF EXISTS `t_chat`;

CREATE TABLE `t_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(150) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKre6mlyn6wad9qtccxpfmjava0` (`member_id`) USING BTREE,
  KEY `FKhxt907fsvuyg1nsryiplkled8` (`venue_id`) USING BTREE,
  CONSTRAINT `FKhxt907fsvuyg1nsryiplkled8` FOREIGN KEY (`venue_id`) REFERENCES `t_b_venue` (`id`),
  CONSTRAINT `FKre6mlyn6wad9qtccxpfmjava0` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_chat` */

insert  into `t_chat`(`id`,`content`,`create_date_time`,`member_id`,`venue_id`) values (1,'423432','2022-04-09 00:02:39',7,11),(2,'4324','2022-04-09 00:02:40',7,11),(3,'4324','2022-04-09 00:02:42',7,11);

/*Table structure for table `t_collection` */

DROP TABLE IF EXISTS `t_collection`;

CREATE TABLE `t_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKgh039sbuwdkqltjckvgb97hid` (`member_id`) USING BTREE,
  KEY `FKcqyqbp4dgwto1m0on57n5tev1` (`venue_id`) USING BTREE,
  CONSTRAINT `FKcqyqbp4dgwto1m0on57n5tev1` FOREIGN KEY (`venue_id`) REFERENCES `t_b_venue` (`id`),
  CONSTRAINT `FKgh039sbuwdkqltjckvgb97hid` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_collection` */

/*Table structure for table `t_config` */

DROP TABLE IF EXISTS `t_config`;

CREATE TABLE `t_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_config` */

insert  into `t_config`(`id`,`web_name`) values (1,'易物”校园数码产品换购网站');

/*Table structure for table `t_coupon` */

DROP TABLE IF EXISTS `t_coupon`;

CREATE TABLE `t_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jine` decimal(10,2) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_coupon` */

insert  into `t_coupon`(`id`,`jine`,`name`,`sort`,`num`) values (2,'25.00','25元优惠券',2,8),(3,'30.00','30元优惠券',3,2),(4,'10.00','10元优惠券',1,9),(5,'11.00','111',1,0);

/*Table structure for table `t_exchange` */

DROP TABLE IF EXISTS `t_exchange`;

CREATE TABLE `t_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(5) DEFAULT NULL COMMENT '换购状态，换购中0  1成功  2取消',
  `member_id` int(10) DEFAULT NULL COMMENT '换购用户',
  `venue_id` int(10) DEFAULT NULL COMMENT '对应的闲置',
  PRIMARY KEY (`id`),
  KEY `FKk1p5nfavibrokoihanq8wg3k9` (`member_id`),
  KEY `FKt2gqsb02kxet94yrbc6ycdqb6` (`venue_id`),
  CONSTRAINT `FKk1p5nfavibrokoihanq8wg3k9` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`),
  CONSTRAINT `FKt2gqsb02kxet94yrbc6ycdqb6` FOREIGN KEY (`venue_id`) REFERENCES `t_b_venue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_exchange` */

insert  into `t_exchange`(`id`,`state`,`member_id`,`venue_id`) values (1,2,7,15),(2,0,7,3),(3,1,10,11);

/*Table structure for table `t_hot_word` */

DROP TABLE IF EXISTS `t_hot_word`;

CREATE TABLE `t_hot_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_hot_word` */

insert  into `t_hot_word`(`id`,`name`,`sort`) values (1,'2021款手机',1),(2,'曲面屏手机',2),(3,'数码产品',4),(4,'单反相机',3),(5,'二手实惠手机',5);

/*Table structure for table `t_link` */

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `order_no` int(11) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `use_it` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_link` */

insert  into `t_link`(`id`,`create_date_time`,`name`,`order_no`,`remark`,`update_date_time`,`url`,`use_it`) values (8,'2022-03-01 23:20:53','友情链接1',1,'','2022-04-05 10:11:48','#',1),(9,'2022-03-01 23:20:53','友情链接2',234,'24','2022-04-05 10:11:53','4234',1),(10,'2022-04-05 10:12:00','友情链接3',3,'2','2022-04-05 10:12:01','#',1);

/*Table structure for table `t_lunbo` */

DROP TABLE IF EXISTS `t_lunbo`;

CREATE TABLE `t_lunbo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `order_no` int(11) NOT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `use_it` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_lunbo` */

insert  into `t_lunbo`(`id`,`create_date_time`,`image_url`,`name`,`order_no`,`update_date_time`,`url`,`use_it`) values (1,'2022-03-01 23:20:53','/static/upload_image/lunbo_cover/20220412/20220412124901.jpg','11',1,'2022-04-12 12:49:30','/venue/2',1),(2,'2022-03-01 23:20:53','/static/upload_image/lunbo_cover/20220412/20220412124906.jpg','2',2,'2022-04-12 12:49:19','/venue/16',1);

/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `order_no` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`icon`,`name`,`p_id`,`state`,`type`,`url`,`order_no`) values (1,'','基本维护',-1,0,0,'',1),(2,'&#xe67a;','用户管理',1,1,0,'/houtai/user/manage',1),(3,'','功能',-1,0,0,'',2),(4,'&#xe67a;','商品类型',3,1,0,'/houtai/venue/type/manage',1),(5,'&#xe67a;','角色管理',1,1,0,'/houtai/role/manage',2),(6,'&#xe67a;','菜单管理',1,1,0,'/houtai/menu/manage?pId=-1',3),(7,'&#xe67a;','商品管理',3,1,0,'/houtai/venue/manage',2),(9,'&#xe67a;','友情链接',3,1,0,'/houtai/link/manage',4),(11,'&#xe67a;','热搜词管理',3,1,0,'/houtai/hot/word/manage',5),(12,'&#xe67a;','会员管理',3,1,0,'/houtai/member/manage',7),(13,'&#xe67a;','评论管理',3,0,0,'/houtai/reply/manage',8),(14,'&#xe67a;','聊天内容管理',3,1,0,'/houtai/chat/manage',9),(15,'&#xe67a;','订单管理',3,1,0,'/houtai/order/manage',12),(16,'&#xe67a;','轮播图片',3,1,0,'/houtai/lunbo/manage',5),(17,'&#xe67a;','优惠券管理',3,1,0,'/houtai/coupon/manage',6),(18,'&#xe67a;','用户优惠券查询',3,1,0,'/houtai/my/coupon/manage',10),(21,'','图表',-1,0,0,'',5),(22,'&#xe67a;','点击量',21,1,0,'/houtai/chart/click',3);

/*Table structure for table `t_my_coupon` */

DROP TABLE IF EXISTS `t_my_coupon`;

CREATE TABLE `t_my_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `jine` decimal(10,2) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `use_date_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKim4lafgl43aayt2hg6fhig4l1` (`member_id`),
  CONSTRAINT `FKim4lafgl43aayt2hg6fhig4l1` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `t_my_coupon` */

insert  into `t_my_coupon`(`id`,`create_date_time`,`jine`,`name`,`state`,`use_date_time`,`member_id`) values (5,'2022-03-01 23:20:53','10.00','10元优惠券',1,'2022-03-01 23:20:53',6),(6,'2022-03-01 23:20:53','10.00','10元优惠券',0,'2022-03-01 23:20:53',6),(7,'2022-03-01 23:20:53','10.00','10元优惠券',0,'2022-03-01 23:20:53',6),(8,'2022-04-08 22:07:29','11.00','111',1,'2022-04-08 22:43:41',10);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `num` varchar(100) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `my_coupon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm5vx5w91jqr9imluee5p6l83n` (`member_id`),
  KEY `FK6yh7ie1vesxwmbriatvy2vfc7` (`venue_id`),
  KEY `FKd7dh1a9ba0ncgq0wymamhk17r` (`my_coupon_id`),
  CONSTRAINT `FK6yh7ie1vesxwmbriatvy2vfc7` FOREIGN KEY (`venue_id`) REFERENCES `t_b_venue` (`id`),
  CONSTRAINT `FKd7dh1a9ba0ncgq0wymamhk17r` FOREIGN KEY (`my_coupon_id`) REFERENCES `t_my_coupon` (`id`),
  CONSTRAINT `FKm5vx5w91jqr9imluee5p6l83n` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`id`,`amount`,`create_date_time`,`num`,`member_id`,`venue_id`,`state`,`my_coupon_id`) values (4,'489.00','2022-04-08 22:43:41','20220408224341072',10,2,0,8);

/*Table structure for table `t_reply` */

DROP TABLE IF EXISTS `t_reply`;

CREATE TABLE `t_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKe5xdeunmxdl517rm4c1mbws6n` (`member_id`) USING BTREE,
  KEY `FKqegmyqew5ymrv0sldpom6ecg` (`venue_id`) USING BTREE,
  CONSTRAINT `FKe5xdeunmxdl517rm4c1mbws6n` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`),
  CONSTRAINT `FKqegmyqew5ymrv0sldpom6ecg` FOREIGN KEY (`venue_id`) REFERENCES `t_b_venue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_reply` */

/*Table structure for table `t_role_menu` */

DROP TABLE IF EXISTS `t_role_menu`;

CREATE TABLE `t_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKhayg4ib6v7h1wyeyxhq6xlddq` (`menu_id`) USING BTREE,
  KEY `FKsonb0rbt2u99hbrqqvv3r0wse` (`role_id`) USING BTREE,
  CONSTRAINT `FKhayg4ib6v7h1wyeyxhq6xlddq` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`),
  CONSTRAINT `FKsonb0rbt2u99hbrqqvv3r0wse` FOREIGN KEY (`role_id`) REFERENCES `t_a_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_role_menu` */

insert  into `t_role_menu`(`id`,`menu_id`,`role_id`) values (74,1,4),(75,2,4),(76,5,4),(77,6,4),(285,1,3),(286,2,3),(287,5,3),(288,6,3),(289,3,3),(290,4,3),(291,7,3),(292,9,3),(293,11,3),(294,16,3),(295,17,3),(296,12,3),(297,13,3),(298,14,3),(299,18,3),(300,15,3),(301,21,3),(302,22,3);

/*Table structure for table `t_sign_in` */

DROP TABLE IF EXISTS `t_sign_in`;

CREATE TABLE `t_sign_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK70wvaun07swp9xhgrqaxj6vyn` (`member_id`),
  CONSTRAINT `FK70wvaun07swp9xhgrqaxj6vyn` FOREIGN KEY (`member_id`) REFERENCES `t_a_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_sign_in` */

insert  into `t_sign_in`(`id`,`create_date`,`member_id`) values (1,'2022-03-25',7),(2,'2022-03-26',7),(3,'2022-03-26',9),(4,'2022-03-28',7),(5,'2022-04-09',7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
