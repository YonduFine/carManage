/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 5.6.5-m8 : Database - car
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`car` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `car`;

/*Table structure for table `tb_car` */

DROP TABLE IF EXISTS `tb_car`;

CREATE TABLE `tb_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_pai` varchar(500) DEFAULT NULL COMMENT '车牌',
  `car_name` varchar(500) DEFAULT NULL COMMENT '品牌型号',
  `car_chexing` varchar(500) DEFAULT NULL COMMENT '车型',
  `car_cheng` varchar(500) DEFAULT NULL COMMENT '里程',
  `car_indate` varchar(500) DEFAULT NULL COMMENT '购买日期',
  `car_status` varchar(500) DEFAULT NULL COMMENT '状态:正常/故障',
  `car_user` varchar(500) DEFAULT NULL COMMENT '驾驶员',
  `car_phone` varchar(500) DEFAULT NULL COMMENT '联系方式',
  `car_text` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `tb_car` */

insert  into `tb_car`(`id`,`car_pai`,`car_name`,`car_chexing`,`car_cheng`,`car_indate`,`car_status`,`car_user`,`car_phone`,`car_text`) values 
(1,'京A9999','问界M5','轿车','400','2022-10-03','正常','张三','13588888888','华为纯电SUV'),
(2,'京B8888','极狐阿尔法S','轿车','300','2022-10-03','正常','Alice','13855555555','国内首台搭载毫米波雷达自动驾驶汽车'),
(3,'豫P00000','理想L8','SUV','500','2022-12-01','正常','Jerry','12599999999','增程式SUV');

/*Table structure for table `tb_notice` */

DROP TABLE IF EXISTS `tb_notice`;

CREATE TABLE `tb_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `notice_name` varchar(500) DEFAULT NULL COMMENT '标题',
  `notice_text` varchar(500) DEFAULT NULL COMMENT '内容',
  `notice_type` varchar(500) DEFAULT NULL COMMENT '类型',
  `create_date` varchar(500) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `tb_notice` */

insert  into `tb_notice`(`id`,`notice_name`,`notice_text`,`notice_type`,`create_date`) values 
(1,'系统发布了','系统平稳运行','资讯','2023-01-01 21:35:00');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(500) DEFAULT NULL COMMENT '用户名',
  `password` varchar(500) DEFAULT NULL COMMENT '密码',
  `real_name` varchar(500) DEFAULT NULL COMMENT '姓名',
  `user_sex` varchar(500) DEFAULT NULL COMMENT '性别:男/女',
  `user_phone` varchar(500) DEFAULT NULL COMMENT '手机',
  `user_text` varchar(500) DEFAULT NULL COMMENT '备注',
  `user_type` varchar(500) DEFAULT NULL COMMENT '类型:管理员/普通用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`password`,`real_name`,`user_sex`,`user_phone`,`user_text`,`user_type`) values 
(1,'admin','123456','Jane','女','13588888888','是一个好人','管理员'),
(3,'qwt','123456','齐文涛','男','12599999999','','管理员'),
(4,'tom','123456','汤姆','男','12222222222','一个普通人','普通用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
