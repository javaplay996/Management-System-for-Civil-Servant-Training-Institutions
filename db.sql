/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongwuyuanpeixun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongwuyuanpeixun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongwuyuanpeixun`;

/*Table structure for table `beikaokecheng` */

DROP TABLE IF EXISTS `beikaokecheng`;

CREATE TABLE `beikaokecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `beikaokecheng_name` varchar(255) DEFAULT NULL COMMENT '课程名称 Search111',
  `beikaokecheng_video` varchar(255) DEFAULT NULL COMMENT '预览视频',
  `beikaokecheng_photo` varchar(255) DEFAULT NULL COMMENT '课程图片',
  `beikaokecheng_money` decimal(10,2) DEFAULT NULL COMMENT '课程价格',
  `jiangshi_id` int(11) DEFAULT NULL COMMENT '讲师',
  `beikaokecheng_content` varchar(200) DEFAULT NULL COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='备考课程';

/*Data for the table `beikaokecheng` */

insert  into `beikaokecheng`(`id`,`beikaokecheng_name`,`beikaokecheng_video`,`beikaokecheng_photo`,`beikaokecheng_money`,`jiangshi_id`,`beikaokecheng_content`,`create_time`) values (2,'课程名称111','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617779720827.mp4','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617779723645.jpg','100.00',2,'课程详情2\r\n','2021-04-07 15:15:29'),(3,'课程名称2','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617784927412.mp4','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617784958397.jpg','1000.00',3,'课程详情2\r\n','2021-04-07 16:42:43');

/*Table structure for table `beikaokecheng_order` */

DROP TABLE IF EXISTS `beikaokecheng_order`;

CREATE TABLE `beikaokecheng_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '预定人',
  `beikaokecheng_id` int(11) DEFAULT NULL COMMENT '预定课程',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='备考课程预定';

/*Data for the table `beikaokecheng_order` */

insert  into `beikaokecheng_order`(`id`,`yonghu_id`,`beikaokecheng_id`,`insert_time`,`create_time`) values (6,1,3,'2021-04-07 17:32:43','2021-04-07 17:32:43');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongwuyuanpeixun/upload/1617774036101.jpg'),(2,'picture2','http://localhost:8080/gongwuyuanpeixun/upload/1617774041315.jpg'),(3,'picture3','http://localhost:8080/gongwuyuanpeixun/upload/1617774050823.jpg'),(6,'homepage','http://localhost:8080/gongwuyuanpeixun/upload/1617774061209.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-07 11:48:49'),(2,'sex_types','性别',2,'女',NULL,'2021-04-07 11:48:49'),(3,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-07 11:48:49'),(4,'news_types','公告类型名称',2,'紧急公告',NULL,'2021-04-07 11:48:49'),(5,'zaizhikecheng_types','课程类型名称',1,'法院课程',NULL,'2021-04-07 11:48:49'),(6,'zaizhikecheng_types','课程类型名称',2,'人社局课程',NULL,'2021-04-07 11:48:49'),(7,'gongwuyuan_types','单位名称',1,'人社局',NULL,'2021-04-07 11:48:49'),(8,'gongwuyuan_types','单位名称',2,'法院',NULL,'2021-04-07 11:48:49');

/*Table structure for table `gongwuyuan` */

DROP TABLE IF EXISTS `gongwuyuan`;

CREATE TABLE `gongwuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongwuyuan_name` varchar(200) DEFAULT NULL COMMENT '公务员姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gongwuyuan_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `gongwuyuan_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `gongwuyuan_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `gongwuyuan_types` int(200) DEFAULT NULL COMMENT '单位 Search111',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='在职公务员';

/*Data for the table `gongwuyuan` */

insert  into `gongwuyuan`(`id`,`username`,`password`,`gongwuyuan_name`,`sex_types`,`gongwuyuan_id_number`,`gongwuyuan_phone`,`gongwuyuan_photo`,`gongwuyuan_types`,`new_money`,`create_time`) values (1,'333','333','公务员1',1,'410882200011111111','17777777777','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617779613708.jpg',2,'444.00','2021-04-07 14:56:58'),(2,'444','444','公务员2',2,'740882199912121211','17789966454','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617784777052.jpg',1,'0.00','2021-04-07 16:39:39');

/*Table structure for table `jiangshi` */

DROP TABLE IF EXISTS `jiangshi`;

CREATE TABLE `jiangshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiangshi_name` varchar(255) DEFAULT NULL COMMENT '讲师名称 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '讲师性别 Search111',
  `jiangshi_photo` varchar(255) DEFAULT NULL COMMENT '讲师头像',
  `jiangshi_phone` varchar(255) DEFAULT NULL COMMENT '讲师联系方式',
  `jiangshi_money` decimal(10,2) DEFAULT NULL COMMENT '讲师薪资',
  `jiangshi_content` varchar(255) DEFAULT NULL COMMENT '讲师详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='讲师';

/*Data for the table `jiangshi` */

insert  into `jiangshi`(`id`,`jiangshi_name`,`sex_types`,`jiangshi_photo`,`jiangshi_phone`,`jiangshi_money`,`jiangshi_content`,`create_time`) values (2,'讲师名称1',2,'http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617779634941.jpg','17786644544','1000.00','讲师详情1\r\n','2021-04-07 15:14:03'),(3,'讲师名称2',2,'http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617784891660.jpg','13846644544','2000.00','讲师详情2\r\n','2021-04-07 16:41:51');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告1',1,'http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617780569006.jpg','2021-04-07 15:29:32','公告详情1\r\n','2021-04-07 15:29:32'),(2,'公告2',1,'http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617780580481.jpg','2021-04-07 15:29:43','公告详情2\r\n','2021-04-07 15:29:43');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','jxdpcpzv0ck6n941imy9uuf7prdqgwrl','2021-04-07 11:53:28','2021-04-07 18:43:33'),(3,1,'111','yonghu','考生','kudr5gulgbg886qdjc51h0tc0qabx91w','2021-04-07 15:27:07','2021-04-07 18:38:32'),(4,1,'333','gongwuyuan','公务员','v3amsl8mh7k084op0u50dyqy8szbchs1','2021-04-07 16:22:56','2021-04-10 16:22:19');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '考生姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `yonghu_zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`yonghu_xuexiao`,`yonghu_zhuanye`,`new_money`,`create_time`) values (1,'111','111','小张',2,'123123123123123123','12312312312','http://localhost:8080/gongwuyuanpeixun/upload/1617774458476.JPG','学校1','专业1','200.00','2021-04-14 14:32:29'),(2,'222','222','张2',1,'410882199912121212','17785566454','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617784863043.jpg','学校2','专业2','0.00','2021-04-07 16:41:13');

/*Table structure for table `zaizhikecheng` */

DROP TABLE IF EXISTS `zaizhikecheng`;

CREATE TABLE `zaizhikecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaizhikecheng_name` varchar(255) DEFAULT NULL COMMENT '课程名称 Search111',
  `zaizhikecheng_video` varchar(255) DEFAULT NULL COMMENT '预览视频',
  `zaizhikecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `zaizhikecheng_photo` varchar(255) DEFAULT NULL COMMENT '课程图片',
  `zaizhikecheng_money` decimal(10,2) DEFAULT NULL COMMENT '课程价格',
  `jiangshi_id` int(11) DEFAULT NULL COMMENT '讲师',
  `zaizhikecheng_content` varchar(200) DEFAULT NULL COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='在职培训课程';

/*Data for the table `zaizhikecheng` */

insert  into `zaizhikecheng`(`id`,`zaizhikecheng_name`,`zaizhikecheng_video`,`zaizhikecheng_types`,`zaizhikecheng_photo`,`zaizhikecheng_money`,`jiangshi_id`,`zaizhikecheng_content`,`create_time`) values (1,'课程名称1','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617779835509.mp4',1,'http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617779839966.jpg','200.00',2,'课程详情1\r\n','2021-04-07 15:17:24'),(2,'课程名称2','http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617785123972.mp4',1,'http://localhost:8080/gongwuyuanpeixun/file/download?fileName=1617785130808.jpg','123.00',2,'课程详情1\r\n','2021-04-07 16:45:35');

/*Table structure for table `zaizhikecheng_order` */

DROP TABLE IF EXISTS `zaizhikecheng_order`;

CREATE TABLE `zaizhikecheng_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '预定人',
  `zaizhikecheng_id` int(11) DEFAULT NULL COMMENT '预定课程',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='在职培训课程预定';

/*Data for the table `zaizhikecheng_order` */

insert  into `zaizhikecheng_order`(`id`,`yonghu_id`,`zaizhikecheng_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-07 17:33:18','2021-04-07 17:33:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
