/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootawwm9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootawwm9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootawwm9`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootawwm9/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootawwm9/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootawwm9/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) NOT NULL COMMENT '教师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshizhanghao` (`jiaoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221420317 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhicheng`,`xingbie`,`shouji`,`zhaopian`) values (21,'2021-05-17 11:04:11','教师1','123456','教师姓名1',1,'职称1','男','13823888881','http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhicheng`,`xingbie`,`shouji`,`zhaopian`) values (22,'2021-05-17 11:04:11','教师2','123456','教师姓名2',2,'职称2','男','13823888882','http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhicheng`,`xingbie`,`shouji`,`zhaopian`) values (23,'2021-05-17 11:04:11','教师3','123456','教师姓名3',3,'职称3','男','13823888883','http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhicheng`,`xingbie`,`shouji`,`zhaopian`) values (24,'2021-05-17 11:04:11','教师4','123456','教师姓名4',4,'职称4','男','13823888884','http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhicheng`,`xingbie`,`shouji`,`zhaopian`) values (25,'2021-05-17 11:04:11','教师5','123456','教师姓名5',5,'职称5','男','13823888885','http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhicheng`,`xingbie`,`shouji`,`zhaopian`) values (26,'2021-05-17 11:04:11','教师6','123456','教师姓名6',6,'职称6','男','13823888886','http://localhost:8080/springbootawwm9/upload/jiaoshi_zhaopian6.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`zhicheng`,`xingbie`,`shouji`,`zhaopian`) values (1621221420316,'2021-05-17 11:17:00','22','22','发给',22,'的想法','男','11122233333','http://localhost:8080/springbootawwm9/upload/1621221452007.jpg');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kaikeshijian` datetime DEFAULT NULL COMMENT '开课时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `kechengxuefen` float DEFAULT NULL COMMENT '课程学分',
  `kechengneirong` longtext COMMENT '课程内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221628578 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengxuefen`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (41,'2021-05-17 11:04:11','课程名称1','课程分类1','2021-05-17 11:04:11','2021-05-17 11:04:11',1,'课程内容1','http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian1.jpg','教师账号1','教师姓名1','2021-05-17 11:04:11',1);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengxuefen`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (42,'2021-05-17 11:04:11','课程名称2','课程分类2','2021-05-17 11:04:11','2021-05-17 11:04:11',2,'课程内容2','http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian2.jpg','教师账号2','教师姓名2','2021-05-17 11:04:11',2);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengxuefen`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (43,'2021-05-17 11:04:11','课程名称3','课程分类3','2021-05-17 11:04:11','2021-05-17 11:04:11',3,'课程内容3','http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian3.jpg','教师账号3','教师姓名3','2021-05-17 11:04:11',3);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengxuefen`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (44,'2021-05-17 11:04:11','课程名称4','课程分类4','2021-05-17 11:04:11','2021-05-17 11:04:11',4,'课程内容4','http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian4.jpg','教师账号4','教师姓名4','2021-05-17 11:04:11',4);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengxuefen`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (45,'2021-05-17 11:04:11','课程名称5','课程分类5','2021-05-17 11:04:11','2021-05-17 11:04:11',5,'课程内容5','http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian5.jpg','教师账号5','教师姓名5','2021-05-17 11:04:11',5);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengxuefen`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (46,'2021-05-17 11:04:11','课程名称6','课程分类6','2021-05-17 11:04:11','2021-05-17 11:04:11',6,'课程内容6','http://localhost:8080/springbootawwm9/upload/kechengxinxi_fengmian6.jpg','教师账号6','教师姓名6','2021-05-17 11:04:11',6);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`kechengxuefen`,`kechengneirong`,`fengmian`,`jiaoshizhanghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (1621221628577,'2021-05-17 11:20:28','第三方收到fs','士大夫都是','2021-05-17 11:17:51','2021-05-17 13:17:51',5,'<p>电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的电饭锅地方给对方给对方刚发的</p><p><br></p><p><img src=\"http://localhost:8080/springbootawwm9/upload/1621221626441.png\"></p><p><br></p>','http://localhost:8080/springbootawwm9/upload/1621221599450.jpg','22','发给','2021-05-17 11:22:33',4);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','2v398rwdxxlugi8p3hooshyz7ytanmgw','2021-05-17 11:10:54','2021-05-17 12:22:23');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1621221410042,'11','xuesheng','学生','g4t99bxz5jsmd449m33swvmwb241kiav','2021-05-17 11:17:04','2021-05-17 12:22:06');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1621221420316,'22','jiaoshi','教师','z4imssksd8y43xql3vlfw401ekrwcvnr','2021-05-17 11:17:27','2021-05-17 12:21:23');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1621221505746,'3333','xuesheng','学生','4jzcpto6ot222a2iighn1vagknkgq5di','2021-05-17 11:18:32','2021-05-17 12:18:32');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 11:04:11');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221505747 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-05-17 11:04:11','学生1','123456','姓名1',1,'化学专业','男','13823888881','http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (12,'2021-05-17 11:04:11','学生2','123456','姓名2',2,'专业2','男','13823888882','http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (13,'2021-05-17 11:04:11','学生3','123456','姓名3',3,'专业3','男','13823888883','http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (14,'2021-05-17 11:04:11','学生4','123456','姓名4',4,'专业4','男','13823888884','http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (15,'2021-05-17 11:04:11','学生5','123456','姓名5',5,'专业5','男','13823888885','http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (16,'2021-05-17 11:04:11','学生6','123456','姓名6',6,'专业6','男','13823888886','http://localhost:8080/springbootawwm9/upload/xuesheng_zhaopian6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (1621221410042,'2021-05-17 11:16:50','11','11','惹的事',11,'专业名称3','男','11122211111','http://localhost:8080/springbootawwm9/upload/1621221437324.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`zhuanye`,`xingbie`,`shouji`,`zhaopian`) values (1621221505746,'2021-05-17 11:18:25','3333','3333','电饭锅发给',33,'专业名称1','女','11122233322','http://localhost:8080/springbootawwm9/upload/1621221497897.png');

/*Table structure for table `xueshengchengji` */

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chengji` int(11) DEFAULT NULL COMMENT '成绩',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `pingyu` longtext COMMENT '评语',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221717172 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `xueshengchengji` */

insert  into `xueshengchengji`(`id`,`addtime`,`kechengmingcheng`,`xuehao`,`xingming`,`chengji`,`shifouhege`,`pingyu`,`jiaoshizhanghao`,`jiaoshixingming`) values (61,'2021-05-17 11:04:11','课程名称1','学号1','姓名1',1,'是','评语1','教师账号1','教师姓名1');
insert  into `xueshengchengji`(`id`,`addtime`,`kechengmingcheng`,`xuehao`,`xingming`,`chengji`,`shifouhege`,`pingyu`,`jiaoshizhanghao`,`jiaoshixingming`) values (62,'2021-05-17 11:04:11','课程名称2','学号2','姓名2',2,'是','评语2','教师账号2','教师姓名2');
insert  into `xueshengchengji`(`id`,`addtime`,`kechengmingcheng`,`xuehao`,`xingming`,`chengji`,`shifouhege`,`pingyu`,`jiaoshizhanghao`,`jiaoshixingming`) values (63,'2021-05-17 11:04:11','课程名称3','学号3','姓名3',3,'是','评语3','教师账号3','教师姓名3');
insert  into `xueshengchengji`(`id`,`addtime`,`kechengmingcheng`,`xuehao`,`xingming`,`chengji`,`shifouhege`,`pingyu`,`jiaoshizhanghao`,`jiaoshixingming`) values (64,'2021-05-17 11:04:11','课程名称4','学号4','姓名4',4,'是','评语4','教师账号4','教师姓名4');
insert  into `xueshengchengji`(`id`,`addtime`,`kechengmingcheng`,`xuehao`,`xingming`,`chengji`,`shifouhege`,`pingyu`,`jiaoshizhanghao`,`jiaoshixingming`) values (65,'2021-05-17 11:04:11','课程名称5','学号5','姓名5',5,'是','评语5','教师账号5','教师姓名5');
insert  into `xueshengchengji`(`id`,`addtime`,`kechengmingcheng`,`xuehao`,`xingming`,`chengji`,`shifouhege`,`pingyu`,`jiaoshizhanghao`,`jiaoshixingming`) values (66,'2021-05-17 11:04:11','课程名称6','学号6','姓名6',6,'是','评语6','教师账号6','教师姓名6');
insert  into `xueshengchengji`(`id`,`addtime`,`kechengmingcheng`,`xuehao`,`xingming`,`chengji`,`shifouhege`,`pingyu`,`jiaoshizhanghao`,`jiaoshixingming`) values (1621221717171,'2021-05-17 11:21:56','第三方收到fs','11','惹的事',55,'是','发给房东刚发的给对方给对方发给房东刚发的给对方给对方发给房东刚发的给对方给对方发给房东刚发的给对方给对方发给房东刚发的给对方给对方','22','发给');

/*Table structure for table `xueshengxuanke` */

DROP TABLE IF EXISTS `xueshengxuanke`;

CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `shifouxuanze` varchar(200) DEFAULT NULL COMMENT '是否选择',
  `xuanzeshijian` datetime DEFAULT NULL COMMENT '选择时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221675739 DEFAULT CHARSET=utf8 COMMENT='学生选课';

/*Data for the table `xueshengxuanke` */

insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (51,'2021-05-17 11:04:11','课程名称1','是','2021-05-17 11:04:11','教师账号1','教师姓名1','学号1','姓名1','是','');
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (52,'2021-05-17 11:04:11','课程名称2','是','2021-05-17 11:04:11','教师账号2','教师姓名2','学号2','姓名2','是','');
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (53,'2021-05-17 11:04:11','课程名称3','是','2021-05-17 11:04:11','教师账号3','教师姓名3','学号3','姓名3','是','');
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (54,'2021-05-17 11:04:11','课程名称4','是','2021-05-17 11:04:11','教师账号4','教师姓名4','学号4','姓名4','是','');
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (55,'2021-05-17 11:04:11','课程名称5','是','2021-05-17 11:04:11','教师账号5','教师姓名5','学号5','姓名5','是','');
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (56,'2021-05-17 11:04:11','课程名称6','是','2021-05-17 11:04:11','教师账号6','教师姓名6','学号6','姓名6','是','');
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`shifouxuanze`,`xuanzeshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (1621221675738,'2021-05-17 11:21:15','第三方收到fs','是','2021-05-17 11:19:15','22','发给','11','惹的事','是','同意');

/*Table structure for table `zhuanyexinxi` */

DROP TABLE IF EXISTS `zhuanyexinxi`;

CREATE TABLE `zhuanyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621221573658 DEFAULT CHARSET=utf8 COMMENT='专业信息';

/*Data for the table `zhuanyexinxi` */

insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (31,'2021-05-17 11:04:11','专业名称1');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (32,'2021-05-17 11:04:11','专业名称2');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (33,'2021-05-17 11:04:11','专业名称3');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (34,'2021-05-17 11:04:11','专业名称4');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (35,'2021-05-17 11:04:11','专业名称5');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (36,'2021-05-17 11:04:11','专业名称6');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (1621221573657,'2021-05-17 11:19:33','化学专业');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
