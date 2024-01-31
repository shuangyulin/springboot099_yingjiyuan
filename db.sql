/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootwk338
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootwk338` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootwk338`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootwk338/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootwk338/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootwk338/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `duiyingyuan` */

DROP TABLE IF EXISTS `duiyingyuan`;

CREATE TABLE `duiyingyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanmingcheng` varchar(200) DEFAULT NULL COMMENT '预案名称',
  `shouzaileixing` varchar(200) DEFAULT NULL COMMENT '受灾类型',
  `shouzaifanwei` longtext COMMENT '受灾范围',
  `shouzaishijian` varchar(200) DEFAULT NULL COMMENT '受灾时间',
  `shouzairenyuanshumu` int(11) DEFAULT NULL COMMENT '受灾人员数目',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='对应预案';

/*Data for the table `duiyingyuan` */

insert  into `duiyingyuan`(`id`,`addtime`,`yuanmingcheng`,`shouzaileixing`,`shouzaifanwei`,`shouzaishijian`,`shouzairenyuanshumu`,`dengjishijian`) values (71,'2021-05-07 09:01:04','预案名称1','受灾类型1','受灾范围1','受灾时间1',1,'2021-05-07');
insert  into `duiyingyuan`(`id`,`addtime`,`yuanmingcheng`,`shouzaileixing`,`shouzaifanwei`,`shouzaishijian`,`shouzairenyuanshumu`,`dengjishijian`) values (72,'2021-05-07 09:01:04','预案名称2','受灾类型2','受灾范围2','受灾时间2',2,'2021-05-07');
insert  into `duiyingyuan`(`id`,`addtime`,`yuanmingcheng`,`shouzaileixing`,`shouzaifanwei`,`shouzaishijian`,`shouzairenyuanshumu`,`dengjishijian`) values (73,'2021-05-07 09:01:04','预案名称3','受灾类型3','受灾范围3','受灾时间3',3,'2021-05-07');
insert  into `duiyingyuan`(`id`,`addtime`,`yuanmingcheng`,`shouzaileixing`,`shouzaifanwei`,`shouzaishijian`,`shouzairenyuanshumu`,`dengjishijian`) values (74,'2021-05-07 09:01:04','预案名称4','受灾类型4','受灾范围4','受灾时间4',4,'2021-05-07');
insert  into `duiyingyuan`(`id`,`addtime`,`yuanmingcheng`,`shouzaileixing`,`shouzaifanwei`,`shouzaishijian`,`shouzairenyuanshumu`,`dengjishijian`) values (75,'2021-05-07 09:01:04','预案名称5','受灾类型5','受灾范围5','受灾时间5',5,'2021-05-07');
insert  into `duiyingyuan`(`id`,`addtime`,`yuanmingcheng`,`shouzaileixing`,`shouzaifanwei`,`shouzaishijian`,`shouzairenyuanshumu`,`dengjishijian`) values (76,'2021-05-07 09:01:04','预案名称6','受灾类型6','受灾范围6','受灾时间6',6,'2021-05-07');

/*Table structure for table `shijianleixing` */

DROP TABLE IF EXISTS `shijianleixing`;

CREATE TABLE `shijianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianleixing` varchar(200) DEFAULT NULL COMMENT '事件类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='事件类型';

/*Data for the table `shijianleixing` */

insert  into `shijianleixing`(`id`,`addtime`,`shijianleixing`) values (41,'2021-05-07 09:01:04','事件类型1');
insert  into `shijianleixing`(`id`,`addtime`,`shijianleixing`) values (42,'2021-05-07 09:01:04','事件类型2');
insert  into `shijianleixing`(`id`,`addtime`,`shijianleixing`) values (43,'2021-05-07 09:01:04','事件类型3');
insert  into `shijianleixing`(`id`,`addtime`,`shijianleixing`) values (44,'2021-05-07 09:01:04','事件类型4');
insert  into `shijianleixing`(`id`,`addtime`,`shijianleixing`) values (45,'2021-05-07 09:01:04','事件类型5');
insert  into `shijianleixing`(`id`,`addtime`,`shijianleixing`) values (46,'2021-05-07 09:01:04','事件类型6');

/*Table structure for table `shijianleixingtongji` */

DROP TABLE IF EXISTS `shijianleixingtongji`;

CREATE TABLE `shijianleixingtongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `shijianleixing` varchar(200) DEFAULT NULL COMMENT '事件类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='事件类型统计';

/*Data for the table `shijianleixingtongji` */

insert  into `shijianleixingtongji`(`id`,`addtime`,`tongjibianhao`,`shijianleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (61,'2021-05-07 09:01:04','统计编号1','事件类型1',1,'2021-05-07','备注1');
insert  into `shijianleixingtongji`(`id`,`addtime`,`tongjibianhao`,`shijianleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (62,'2021-05-07 09:01:04','统计编号2','事件类型2',2,'2021-05-07','备注2');
insert  into `shijianleixingtongji`(`id`,`addtime`,`tongjibianhao`,`shijianleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (63,'2021-05-07 09:01:04','统计编号3','事件类型3',3,'2021-05-07','备注3');
insert  into `shijianleixingtongji`(`id`,`addtime`,`tongjibianhao`,`shijianleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (64,'2021-05-07 09:01:04','统计编号4','事件类型4',4,'2021-05-07','备注4');
insert  into `shijianleixingtongji`(`id`,`addtime`,`tongjibianhao`,`shijianleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (65,'2021-05-07 09:01:04','统计编号5','事件类型5',5,'2021-05-07','备注5');
insert  into `shijianleixingtongji`(`id`,`addtime`,`tongjibianhao`,`shijianleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (66,'2021-05-07 09:01:04','统计编号6','事件类型6',6,'2021-05-07','备注6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','pj9swv5e1wkdqluuu28io47ujvep7xmv','2021-05-07 09:02:11','2021-05-16 13:37:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-07 09:01:04');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`nianling`,`lianxidianhua`,`tupian`) values (11,'2021-05-07 09:01:04','员工1','123456','员工姓名1','男','年龄1','13823888881','http://localhost:8080/springbootwk338/upload/yuangong_tupian1.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`nianling`,`lianxidianhua`,`tupian`) values (12,'2021-05-07 09:01:04','员工2','123456','员工姓名2','男','年龄2','13823888882','http://localhost:8080/springbootwk338/upload/yuangong_tupian2.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`nianling`,`lianxidianhua`,`tupian`) values (13,'2021-05-07 09:01:04','员工3','123456','员工姓名3','男','年龄3','13823888883','http://localhost:8080/springbootwk338/upload/yuangong_tupian3.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`nianling`,`lianxidianhua`,`tupian`) values (14,'2021-05-07 09:01:04','员工4','123456','员工姓名4','男','年龄4','13823888884','http://localhost:8080/springbootwk338/upload/yuangong_tupian4.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`nianling`,`lianxidianhua`,`tupian`) values (15,'2021-05-07 09:01:04','员工5','123456','员工姓名5','男','年龄5','13823888885','http://localhost:8080/springbootwk338/upload/yuangong_tupian5.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`nianling`,`lianxidianhua`,`tupian`) values (16,'2021-05-07 09:01:04','员工6','123456','员工姓名6','男','年龄6','13823888886','http://localhost:8080/springbootwk338/upload/yuangong_tupian6.jpg');

/*Table structure for table `yuanleixing` */

DROP TABLE IF EXISTS `yuanleixing`;

CREATE TABLE `yuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanleixing` varchar(200) DEFAULT NULL COMMENT '预案类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='预案类型';

/*Data for the table `yuanleixing` */

insert  into `yuanleixing`(`id`,`addtime`,`yuanleixing`) values (31,'2021-05-07 09:01:04','预案类型1');
insert  into `yuanleixing`(`id`,`addtime`,`yuanleixing`) values (32,'2021-05-07 09:01:04','预案类型2');
insert  into `yuanleixing`(`id`,`addtime`,`yuanleixing`) values (33,'2021-05-07 09:01:04','预案类型3');
insert  into `yuanleixing`(`id`,`addtime`,`yuanleixing`) values (34,'2021-05-07 09:01:04','预案类型4');
insert  into `yuanleixing`(`id`,`addtime`,`yuanleixing`) values (35,'2021-05-07 09:01:04','预案类型5');
insert  into `yuanleixing`(`id`,`addtime`,`yuanleixing`) values (36,'2021-05-07 09:01:04','预案类型6');

/*Table structure for table `yuanleixingtongji` */

DROP TABLE IF EXISTS `yuanleixingtongji`;

CREATE TABLE `yuanleixingtongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `yuanleixing` varchar(200) DEFAULT NULL COMMENT '预案类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='预案类型统计';

/*Data for the table `yuanleixingtongji` */

insert  into `yuanleixingtongji`(`id`,`addtime`,`tongjibianhao`,`yuanleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (51,'2021-05-07 09:01:04','统计编号1','预案类型1',1,'2021-05-07','备注1');
insert  into `yuanleixingtongji`(`id`,`addtime`,`tongjibianhao`,`yuanleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (52,'2021-05-07 09:01:04','统计编号2','预案类型2',2,'2021-05-07','备注2');
insert  into `yuanleixingtongji`(`id`,`addtime`,`tongjibianhao`,`yuanleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (53,'2021-05-07 09:01:04','统计编号3','预案类型3',3,'2021-05-07','备注3');
insert  into `yuanleixingtongji`(`id`,`addtime`,`tongjibianhao`,`yuanleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (54,'2021-05-07 09:01:04','统计编号4','预案类型4',4,'2021-05-07','备注4');
insert  into `yuanleixingtongji`(`id`,`addtime`,`tongjibianhao`,`yuanleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (55,'2021-05-07 09:01:04','统计编号5','预案类型5',5,'2021-05-07','备注5');
insert  into `yuanleixingtongji`(`id`,`addtime`,`tongjibianhao`,`yuanleixing`,`shuliang`,`dengjiriqi`,`beizhu`) values (56,'2021-05-07 09:01:04','统计编号6','预案类型6',6,'2021-05-07','备注6');

/*Table structure for table `yuanxinxi` */

DROP TABLE IF EXISTS `yuanxinxi`;

CREATE TABLE `yuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanmingcheng` varchar(200) DEFAULT NULL COMMENT '预案名称',
  `yuanleixing` varchar(200) DEFAULT NULL COMMENT '预案类型',
  `shijianleixing` varchar(200) DEFAULT NULL COMMENT '事件类型',
  `chulibumen` varchar(200) DEFAULT NULL COMMENT '处理部门',
  `yuanwenben` longtext COMMENT '预案文本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanmingcheng` (`yuanmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='预案信息';

/*Data for the table `yuanxinxi` */

insert  into `yuanxinxi`(`id`,`addtime`,`yuanmingcheng`,`yuanleixing`,`shijianleixing`,`chulibumen`,`yuanwenben`) values (21,'2021-05-07 09:01:04','预案名称1','预案类型1','事件类型1','处理部门1','预案文本1');
insert  into `yuanxinxi`(`id`,`addtime`,`yuanmingcheng`,`yuanleixing`,`shijianleixing`,`chulibumen`,`yuanwenben`) values (22,'2021-05-07 09:01:04','预案名称2','预案类型2','事件类型2','处理部门2','预案文本2');
insert  into `yuanxinxi`(`id`,`addtime`,`yuanmingcheng`,`yuanleixing`,`shijianleixing`,`chulibumen`,`yuanwenben`) values (23,'2021-05-07 09:01:04','预案名称3','预案类型3','事件类型3','处理部门3','预案文本3');
insert  into `yuanxinxi`(`id`,`addtime`,`yuanmingcheng`,`yuanleixing`,`shijianleixing`,`chulibumen`,`yuanwenben`) values (24,'2021-05-07 09:01:04','预案名称4','预案类型4','事件类型4','处理部门4','预案文本4');
insert  into `yuanxinxi`(`id`,`addtime`,`yuanmingcheng`,`yuanleixing`,`shijianleixing`,`chulibumen`,`yuanwenben`) values (25,'2021-05-07 09:01:04','预案名称5','预案类型5','事件类型5','处理部门5','预案文本5');
insert  into `yuanxinxi`(`id`,`addtime`,`yuanmingcheng`,`yuanleixing`,`shijianleixing`,`chulibumen`,`yuanwenben`) values (26,'2021-05-07 09:01:04','预案名称6','预案类型6','事件类型6','处理部门6','预案文本6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
