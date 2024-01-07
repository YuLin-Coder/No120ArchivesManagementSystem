
CREATE TABLE `t_a_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `order_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_a_role` */

insert  into `t_a_role`(`id`,`name`,`order_no`) values (3,'管理员',1);

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
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK76cs7cu4h4y8vc1vd4qyw36rt` (`role_id`),
  CONSTRAINT `FK76cs7cu4h4y8vc1vd4qyw36rt` FOREIGN KEY (`role_id`) REFERENCES `t_a_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_a_user` */

insert  into `t_a_user`(`id`,`create_date_time`,`name`,`order_no`,`pwd`,`remark`,`true_name`,`role_id`) values (1,'2019-02-18 08:40:27','admin',1,'ba61ce8fa1e3725876e6363c76043c8d',NULL,'张无忌',3);

/*Table structure for table `t_config` */

DROP TABLE IF EXISTS `t_config`;

CREATE TABLE `t_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_config` */

insert  into `t_config`(`id`,`web_name`) values (1,'实验室系统');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`icon`,`name`,`p_id`,`state`,`type`,`url`,`order_no`) values (1,'','基本维护',-1,0,0,'',1),(2,'&#xe67a;','用户管理',1,1,0,'/houtai/user/manage',1),(5,'&#xe67a;','角色管理',1,1,0,'/houtai/role/manage',2),(10,'&#xe67a;','菜单管理',1,1,0,'/houtai/menu/manage?pId=-1',4);

/*Table structure for table `t_role_menu` */

DROP TABLE IF EXISTS `t_role_menu`;

CREATE TABLE `t_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhayg4ib6v7h1wyeyxhq6xlddq` (`menu_id`),
  KEY `FKsonb0rbt2u99hbrqqvv3r0wse` (`role_id`),
  CONSTRAINT `FKhayg4ib6v7h1wyeyxhq6xlddq` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`),
  CONSTRAINT `FKsonb0rbt2u99hbrqqvv3r0wse` FOREIGN KEY (`role_id`) REFERENCES `t_a_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

/*Data for the table `t_role_menu` */

insert  into `t_role_menu`(`id`,`menu_id`,`role_id`) values (171,1,3),(172,2,3),(173,5,3),(174,10,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
