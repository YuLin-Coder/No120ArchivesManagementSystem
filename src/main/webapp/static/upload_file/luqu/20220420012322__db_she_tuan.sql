CREATE TABLE `t_a_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `true_name` varchar(200) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `t_a_user` */

insert  into `t_a_user`(`id`,`create_date_time`,`name`,`pwd`,`remark`,`true_name`,`state`,`sex`,`phone`) values (3,'2020-03-09 14:03:20','002','002','备注002','张社长002002',2,1,'002002002'),(4,'2020-03-09 14:34:49','001','001','非常能干001','张社长0011',2,1,'001001001'),(6,'2020-03-09 19:56:57','123456','123456','33','小陈1',3,1,'1231111'),(7,'2020-03-10 10:36:21','admin','123456','','张无忌1111',1,1,'121`23`13123'),(8,'2020-03-11 13:19:01','003','003','比较爱笑。','张社长003',2,1,'21313145');



CREATE TABLE `t_a_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `name` varchar(30) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi5yn2wp1p3gd19yqg88nygcr9` (`user_id`),
  CONSTRAINT `FKi5yn2wp1p3gd19yqg88nygcr9` FOREIGN KEY (`user_id`) REFERENCES `t_a_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_a_association` */

insert  into `t_a_association`(`id`,`content`,`name`,`user_id`,`create_date_time`) values (4,'<p>333111</p>','第1团',4,'2020-03-09 17:22:31'),(5,'<p>8888888<br/></p>','第2团',3,'2020-03-10 14:09:19'),(6,'<p>框架塔顶</p><p>&nbsp;fsd革asd 塔顶</p><p>&nbsp;模压432</p><p>423</p><p>423</p><p>4234</p><p>23423</p><p>423</p><p>4423</p><p>4234</p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2020-03-11/202003111321_53357_未标题-1.jpg\" title=\"未标题-1.jpg\" alt=\"未标题-1.jpg\"/></p><p><br/></p><p><br/></p><p><img src=\"/static/ueditor_upload/uploadimage/2020-03-11/202003111322_15146_image.png\" title=\"image.png\" alt=\"image.png\"/></p><p>朝秦暮楚ffdasf</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>','003社团  xxxxx',8,'2020-03-11 13:22:43');

/*Table structure for table `t_a_user` */

DROP TABLE IF EXISTS `t_a_user`;


/*Table structure for table `t_activity` */

DROP TABLE IF EXISTS `t_activity`;

CREATE TABLE `t_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `create_date_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `association_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKel0mrykej9y5i4718oypi3akx` (`association_id`),
  KEY `FKpv30uitxlp45pkf60k5078l0h` (`user_id`),
  CONSTRAINT `FKel0mrykej9y5i4718oypi3akx` FOREIGN KEY (`association_id`) REFERENCES `t_a_association` (`id`),
  CONSTRAINT `FKpv30uitxlp45pkf60k5078l0h` FOREIGN KEY (`user_id`) REFERENCES `t_a_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_activity` */

insert  into `t_activity`(`id`,`content`,`create_date_time`,`state`,`title`,`association_id`,`user_id`) values (4,'<p>明天活动</p><p>明天活动</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p>','2020-03-11 00:25:08',3,'社团001  明天活动',4,4),(5,'<p>夺dsa&nbsp;</p><p>在a</p><p><img src=\"/static/ueditor_upload/uploadimage/2020-03-11/202003111127_59995_image.png\" title=\"image.png\" alt=\"image.png\"/></p>','2020-03-11 11:28:01',2,'社团2 的活动。。',5,3),(6,'<p><br/></p><p>dfasdfsdff asfd苛朝秦暮楚</p><p>&nbsp;</p><p><br/></p><p>魂牵梦萦fasd地asd地</p><p><br/></p><p><br/></p><p>需要a魂牵梦萦&nbsp;</p><p>魂牵梦萦 fsd工</p><p><br/></p><p><br/></p><p>夺s</p><p><img src=\"/static/ueditor_upload/uploadimage/2020-03-11/202003111328_17025_003.png\" title=\"003.png\" alt=\"003.png\" width=\"792\" height=\"306\"/></p><p><br/></p><p><br/></p>','2020-03-11 13:28:34',1,'申请 明天 下午去北京 的活动。',6,8);

/*Table structure for table `t_apply` */

DROP TABLE IF EXISTS `t_apply`;

CREATE TABLE `t_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `association_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2407gbh3d4mq6fbma9fnsq669` (`association_id`),
  KEY `FKjca8q2a41ocfrhsti7gbsqpww` (`user_id`),
  CONSTRAINT `FK2407gbh3d4mq6fbma9fnsq669` FOREIGN KEY (`association_id`) REFERENCES `t_a_association` (`id`),
  CONSTRAINT `FKjca8q2a41ocfrhsti7gbsqpww` FOREIGN KEY (`user_id`) REFERENCES `t_a_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `t_apply` */

insert  into `t_apply`(`id`,`create_date_time`,`remark`,`state`,`type`,`association_id`,`user_id`) values (7,'2020-03-11 10:09:37','夺械要 ',3,2,4,6),(8,'2020-03-11 11:18:12','11111111111',2,2,4,6),(9,'2020-03-11 11:26:24','我要加啊。',2,1,5,6),(10,'2020-03-11 11:26:39','我要加啊。`111',2,1,4,6),(11,'2020-03-11 13:29:37','我想加入。！！！',2,1,6,6),(12,'2020-03-11 13:30:49','加错了。',2,2,6,6);

/*Table structure for table `t_config` */

DROP TABLE IF EXISTS `t_config`;

CREATE TABLE `t_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_image` varchar(200) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `web_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_config` */

insert  into `t_config`(`id`,`index_image`,`url`,`web_name`) values (1,NULL,NULL,'贺州学院学生社团管理系统');

/*Table structure for table `t_message` */

DROP TABLE IF EXISTS `t_message`;

CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(30) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3yjuhv145pdex0ulemn497jqw` (`user_id`),
  CONSTRAINT `FK3yjuhv145pdex0ulemn497jqw` FOREIGN KEY (`user_id`) REFERENCES `t_a_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_message` */

insert  into `t_message`(`id`,`content`,`create_date_time`,`user_id`) values (1,'321','2020-03-11 17:12:22',6),(3,'4324','2020-03-11 17:15:09',6);

/*Table structure for table `t_news` */

DROP TABLE IF EXISTS `t_news`;

CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `create_date_time` datetime DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK692r9w7b52k6fqsf1bibce0qx` (`user_id`),
  CONSTRAINT `FK692r9w7b52k6fqsf1bibce0qx` FOREIGN KEY (`user_id`) REFERENCES `t_a_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_news` */

insert  into `t_news`(`id`,`content`,`create_date_time`,`title`,`user_id`) values (4,'<p>在有生的瞬间能摸到篮筐，竟花光你所有的运气</p><ul class=\"WB_media_a WB_media_a_mn WB_media_a_m6 clearfix list-paddingleft-2\" style=\"list-style-type: none;\"><li><p><img src=\"/static/ueditor_upload/catchimage/2020-03-10/104233237.jpg\"/></p></li><li><p><img src=\"/static/ueditor_upload/catchimage/2020-03-10/104233573.jpg\"/></p></li><li><p><img src=\"/static/ueditor_upload/catchimage/2020-03-10/104233702.jpg\"/></p></li><li><p><img src=\"/static/ueditor_upload/catchimage/2020-03-10/104233720.jpg\"/></p></li><li><p><img src=\"/static/ueditor_upload/catchimage/2020-03-10/104233847.jpg\"/></p></li><li><p><img src=\"/static/ueditor_upload/catchimage/2020-03-10/104233995.jpg\"/></p></li></ul><p><br/></p>','2020-03-10 10:42:35','今天感觉是在过夏天，',NULL),(5,'<p>省教育厅下发文件规范学校开学后出入管理 实行分批错峰开学、上学和放学】记者3月9日获悉，省教育厅新冠肺炎疫情防控工作领导小组日前下发文件，就我省疫情防控期间学校开学后出入管理提出要求，明确实行分批、错峰开学、上学、放学等举措。<a title=\"网页链接\" href=\"http://t.cn/A6zZC2iz\" target=\"_blank\" style=\"color: rgb(235, 115, 80); text-decoration-line: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><span class=\"W_ficon ficon_cd_link\" style=\"display: inline-block; -webkit-font-smoothing: antialiased; margin: 0px 2px 0px 4px; font-family: wbficonregular !important;\">O</span>网页链接</a>&nbsp;</p><ul class=\"WB_media_a  WB_media_a_m1 clearfix list-paddingleft-2\" style=\"list-style-type: none;\"><li><p><img src=\"/static/ueditor_upload/catchimage/2020-03-10/104302223.jpg\"/></p></li></ul><p><br/></p>','2020-03-10 10:43:04','其实也没那么差 我还挺爱看中超的。 哈哈大连人必胜',NULL),(6,'<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">11111111近日，作为医疗器械三巨头之一，GE医疗举行了一场特殊的线上发布会，正式推出针对新冠肺炎的CT影像智能分析平台技术——“智赢新冠LK 2.0”。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">智赢新冠LK 2.0平台是一个以呼吸系统疾病为中心，基于影像基因组学原理，结合AI技术和图像处理、图像识别方法，提供新冠肺炎CT影像智能化分析的软件平台。<span class=\"bjh-strong\" style=\"font-size: 18px; font-weight: 700;\">值得一提的是，该平台主要用于科研目的，不能用于临床诊断。</span></span></p><p><img class=\"large\" src=\"/static/ueditor_upload/catchimage/2020-03-11/132416381.jpg\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">会后，多位医生及GE医疗的高管接受了雷锋网在内的采访，详解了LK2.0平台的初衷与未来前景。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-h3\" style=\"font-size: 18px; font-weight: 700; color: rgb(0, 0, 0); position: relative; padding-left: 9px;\">LK2.0解决什么问题</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">影像科成为这次战“疫”前线的重要力量。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">不管是新冠肺炎还是其他类型的肺部疾病，在影像科的工作流程中，医生首先要做的就是对病灶进行定位。吉林大学白求恩第一医院放射线科主任张惠茅表示，“看过大量片子之后，医生都很疲惫。很多医生都要在半夜值班，如果AI可以找出病变部位，告诉我们是否有病变，这是一个很有吸引力的功能点。”</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">其次，找出病灶后，需要把病灶勾勒出来，便于对病灶特征进行分析。然后，相比于肿瘤，新型冠状病毒肺炎的边界并不明确。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">此前，在接受雷锋网采访时，依图医疗的副总裁石磊表示，“人眼难以精确分析CT图像2000个单位下的灰阶变化，对视觉不明显的病变，AI可以提供帮助，这方面AI要优于人类，但是否被医生采纳，还取决于医生对AI提供信息的判断和AI提供信息的维度。”</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\"><span class=\"bjh-strong\" style=\"font-size: 18px; font-weight: 700;\">张惠茅主任对LK2.0平台印象最深的点是“组学特征的可视化展现”：</span>“除了新冠肺炎，患者并不是不存在其他病变，例如甲流、乙流、常规的早期肺癌。我们都需要结合临床数据作出诊断。如果AI可以帮助我们从更高维度分析所有的数据，会有很好的使用场景。”</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">所以，根据这些需求，GE医疗在LK2.0重点做了几件事情：</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\"><span class=\"bjh-strong\" style=\"font-size: 18px; font-weight: 700;\">对于早期无症状病患和不易发现的新冠病灶</span>，GE医疗将AI分析范围拓展到了气管、支气管部分，帮助肺部无明显形态学改变的病例，进行早期病灶识别。GE医疗中国精准医学院副院长赵周社解释说，就目前的指南而言，对气管</span></p><p><br/></p>','2020-03-11 13:24:24','GE医疗发布新影像AI平台：只科研、不诊断12111',NULL);

/*Table structure for table `t_user_association` */

DROP TABLE IF EXISTS `t_user_association`;

CREATE TABLE `t_user_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime DEFAULT NULL,
  `association_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn3kayk46c4m6d8safv7ts52wp` (`association_id`),
  KEY `FKi6syjirgg3q1kycn9yx4qwpi2` (`user_id`),
  CONSTRAINT `FKi6syjirgg3q1kycn9yx4qwpi2` FOREIGN KEY (`user_id`) REFERENCES `t_a_user` (`id`),
  CONSTRAINT `FKn3kayk46c4m6d8safv7ts52wp` FOREIGN KEY (`association_id`) REFERENCES `t_a_association` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_association` */

insert  into `t_user_association`(`id`,`create_date_time`,`association_id`,`user_id`) values (2,'2020-03-11 11:26:59',4,6),(3,'2020-03-11 11:28:25',5,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
