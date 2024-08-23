/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t385`;
CREATE DATABASE IF NOT EXISTS `t385` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t385`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `danwei`;
CREATE TABLE IF NOT EXISTS `danwei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `danwei_name` varchar(200) DEFAULT NULL COMMENT '单位名称  Search111 ',
  `danwei_uuid_number` varchar(200) DEFAULT NULL COMMENT '单位编号',
  `danwei_photo` varchar(200) DEFAULT NULL COMMENT '单位照片',
  `danwei_address` varchar(200) DEFAULT NULL COMMENT '单位位置',
  `danwei_types` int DEFAULT NULL COMMENT '单位类型 Search111',
  `danwei_content` text COMMENT '单位介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='单位';

DELETE FROM `danwei`;
INSERT INTO `danwei` (`id`, `danwei_name`, `danwei_uuid_number`, `danwei_photo`, `danwei_address`, `danwei_types`, `danwei_content`, `create_time`) VALUES
	(1, '单位名称1', '1678351944393', 'upload/danwei1.jpg', '单位位置1', 1, '单位介绍1', '2023-03-09 08:52:24'),
	(2, '单位名称2', '1678351944395', 'upload/danwei2.jpg', '单位位置2', 4, '单位介绍2', '2023-03-09 08:52:24'),
	(3, '单位名称3', '1678351944377', 'upload/danwei3.jpg', '单位位置3', 3, '单位介绍3', '2023-03-09 08:52:24'),
	(4, '单位名称4', '1678351944430', 'upload/danwei4.jpg', '单位位置4', 2, '单位介绍4', '2023-03-09 08:52:24'),
	(5, '单位名称5', '1678351944439', 'upload/danwei5.jpg', '单位位置5', 4, '单位介绍5', '2023-03-09 08:52:24'),
	(6, '单位名称6', '1678351944395', 'upload/danwei6.jpg', '单位位置6', 1, '单位介绍6', '2023-03-09 08:52:24'),
	(7, '单位名称7', '1678351944381', 'upload/danwei7.jpg', '单位位置7', 3, '单位介绍7', '2023-03-09 08:52:24'),
	(8, '单位名称8', '1678351944431', 'upload/danwei8.jpg', '单位位置8', 4, '单位介绍8', '2023-03-09 08:52:24'),
	(9, '单位名称9', '1678351944403', 'upload/danwei9.jpg', '单位位置9', 3, '单位介绍9', '2023-03-09 08:52:24'),
	(10, '单位名称10', '1678351944403', 'upload/danwei10.jpg', '单位位置10', 3, '单位介绍10', '2023-03-09 08:52:24'),
	(11, '单位名称11', '1678351944357', 'upload/danwei11.jpg', '单位位置11', 3, '单位介绍11', '2023-03-09 08:52:24'),
	(12, '单位名称12', '1678351944425', 'upload/danwei12.jpg', '单位位置12', 4, '单位介绍12', '2023-03-09 08:52:24'),
	(13, '单位名称13', '1678351944416', 'upload/danwei13.jpg', '单位位置13', 3, '单位介绍13', '2023-03-09 08:52:24'),
	(14, '单位名称14', '1678351944422', 'upload/danwei14.jpg', '单位位置14', 4, '单位介绍14', '2023-03-09 08:52:24');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-09 08:51:20'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-09 08:51:20'),
	(3, 'renkouzhuangtai_types', '人口状态', 1, '常住人口', NULL, NULL, '2023-03-09 08:51:20'),
	(4, 'renkouzhuangtai_types', '人口状态', 2, '流动人口', NULL, NULL, '2023-03-09 08:51:20'),
	(5, 'xiaoqu_types', '小区', 1, '小区1', NULL, NULL, '2023-03-09 08:51:20'),
	(6, 'xiaoqu_types', '小区', 2, '小区2', NULL, NULL, '2023-03-09 08:51:20'),
	(9, 'shenti_types', '人口状况', 1, '正常人', NULL, NULL, '2023-03-09 08:51:21'),
	(10, 'shenti_types', '人口状况', 2, '残疾人', NULL, NULL, '2023-03-09 08:51:21'),
	(11, 'shenti_types', '人口状况', 3, '老年人', NULL, NULL, '2023-03-09 08:51:21'),
	(12, 'shenti_types', '人口状况', 4, '低保人员', NULL, NULL, '2023-03-09 08:51:21'),
	(13, 'shenti_types', '人口状况', 5, '其他', NULL, NULL, '2023-03-09 08:51:21'),
	(14, 'danweileixing_types', '单位', 1, '企事业单位', NULL, NULL, '2023-03-09 08:51:21'),
	(15, 'danweileixing_types', '单位', 2, '医院', NULL, NULL, '2023-03-09 08:51:21'),
	(16, 'danweileixing_types', '单位', 3, '学校', NULL, NULL, '2023-03-09 08:51:21'),
	(17, 'danweileixing_types', '单位', 4, '无业人员', NULL, NULL, '2023-03-09 08:51:21'),
	(18, 'danweileixing_types', '单位', 5, '其他', NULL, NULL, '2023-03-09 08:51:21'),
	(19, 'shangyemendian_types', '商业门店类型', 1, '商业门店类型1', NULL, NULL, '2023-03-09 08:51:21'),
	(20, 'shangyemendian_types', '商业门店类型', 2, '商业门店类型2', NULL, NULL, '2023-03-09 08:51:21'),
	(21, 'shangyemendian_types', '商业门店类型', 3, '商业门店类型3', NULL, NULL, '2023-03-09 08:51:21'),
	(22, 'shangyemendian_types', '商业门店类型', 4, '商业门店类型4', NULL, NULL, '2023-03-09 08:51:21'),
	(23, 'danwei_types', '单位类型', 1, '单位类型1', NULL, NULL, '2023-03-09 08:51:21'),
	(24, 'danwei_types', '单位类型', 2, '单位类型2', NULL, NULL, '2023-03-09 08:51:21'),
	(25, 'danwei_types', '单位类型', 3, '单位类型3', NULL, NULL, '2023-03-09 08:51:21'),
	(26, 'danwei_types', '单位类型', 4, '单位类型4', NULL, NULL, '2023-03-09 08:51:21'),
	(27, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-09 08:51:21'),
	(28, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-09 08:51:21'),
	(29, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2023-03-09 08:51:21'),
	(30, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2023-03-09 08:51:21'),
	(31, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2023-03-09 08:51:21'),
	(32, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-09 08:51:21'),
	(33, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-09 08:51:21'),
	(34, 'zujuan_types', '组卷方式', 1, '自动组卷', NULL, NULL, '2023-03-09 08:51:21'),
	(35, 'zujuan_types', '组卷方式', 2, '手动组卷', NULL, NULL, '2023-03-09 08:51:21'),
	(36, 'kemu_types', '科目', 1, '语文', NULL, NULL, '2023-03-09 08:51:21'),
	(37, 'kemu_types', '科目', 2, '数学', NULL, NULL, '2023-03-09 08:51:21'),
	(38, 'exampaper_types', '试卷状态', 1, '启用', NULL, NULL, '2023-03-09 08:51:21'),
	(39, 'exampaper_types', '试卷状态', 2, '禁用', NULL, NULL, '2023-03-09 08:51:21'),
	(40, 'examquestion_types', '试题类型', 1, '单选题', NULL, NULL, '2023-03-09 08:51:22'),
	(41, 'examquestion_types', '试题类型', 2, '多选题', NULL, NULL, '2023-03-09 08:51:22'),
	(43, 'examquestion_types', '试题类型', 4, '填空题', NULL, NULL, '2023-03-09 08:51:22'),
	(44, 'xiaoqu_types', '小区', 3, '小区3', NULL, '', '2023-03-09 09:19:42');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='试卷';

DELETE FROM `exampaper`;
INSERT INTO `exampaper` (`id`, `exampaper_name`, `exampaper_date`, `exampaper_myscore`, `kemu_types`, `exampaper_types`, `zujuan_types`, `exampaper_delete`, `create_time`) VALUES
	(3, '标日11', 100, 0, 2, 1, 2, 1, '2023-03-09 09:05:55'),
	(4, '试卷11', 88, 0, 2, 1, 2, 1, '2023-03-09 09:20:55'),
	(5, '试卷333', 99, 8, 2, 1, 1, 1, '2023-03-09 09:21:22');

DROP TABLE IF EXISTS `exampapertopic`;
CREATE TABLE IF NOT EXISTS `exampapertopic` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int NOT NULL COMMENT '试卷',
  `examquestion_id` int NOT NULL COMMENT '试题',
  `exampapertopic_number` int NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COMMENT='试卷选题';

DELETE FROM `exampapertopic`;
INSERT INTO `exampapertopic` (`id`, `exampaper_id`, `examquestion_id`, `exampapertopic_number`, `create_time`) VALUES
	(35, 3, 12, 0, '2023-03-09 09:06:49'),
	(36, 3, 11, 0, '2023-03-09 09:06:50'),
	(37, 3, 10, 0, '2023-03-09 09:06:50'),
	(38, 3, 8, 0, '2023-03-09 09:06:51'),
	(39, 4, 11, 0, '2023-03-09 09:21:01'),
	(40, 4, 10, 0, '2023-03-09 09:21:01'),
	(41, 4, 8, 0, '2023-03-09 09:21:01'),
	(42, 4, 7, 0, '2023-03-09 09:21:02'),
	(43, 4, 5, 0, '2023-03-09 09:21:02'),
	(44, 4, 4, 0, '2023-03-09 09:21:04'),
	(45, 5, 11, 3, '2023-03-09 09:24:42'),
	(46, 5, 7, 1, '2023-03-09 09:24:42'),
	(47, 5, 8, 2, '2023-03-09 09:24:42'),
	(48, 5, 4, 2, '2023-03-09 09:24:42');

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `kemu_types` int DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;
INSERT INTO `examquestion` (`id`, `examquestion_name`, `kemu_types`, `examquestion_options`, `examquestion_answer`, `examquestion_analysis`, `examquestion_types`, `examquestion_sequence`, `create_time`) VALUES
	(2, '1+1=？', 2, '[{"text":"1","code":"A"},{"text":"2","code":"B"},{"text":"3","code":"C"},{"text":"4","code":"D"}]', 'B', '1+1=2', 1, 2, '2023-03-09 08:51:22'),
	(3, '1+1-1=?', 2, '[]', '1', '1+1-1=1', 4, 3, '2023-03-09 08:51:22'),
	(4, '2+2=?', 2, '[]', '4', '2+2=4', 4, 4, '2023-03-09 08:51:22'),
	(5, '1-1-1+6=?', 2, '[{"text":"4","code":"A"},{"text":"5","code":"B"},{"text":"6","code":"C"},{"text":"3","code":"D"}]', 'B', '1-1-1+6=5', 1, 5, '2023-03-09 08:51:22'),
	(7, '试题名称1', 2, '[{"text":"内容1","code":"A"},{"text":"内容2","code":"B"},{"text":"内容3","code":"C"},{"text":"内容4","code":"D"}]', 'A,B,C', '答案解析1', 2, 7, '2023-03-09 08:51:22'),
	(8, '试题名称2', 2, '[]', '正确答案2', '答案解析2', 4, 8, '2023-03-09 08:51:22'),
	(10, '试题名称4', 2, '[]', '正确答案4', '答案解析4', 4, 10, '2023-03-09 08:51:22'),
	(11, '试题名称5', 2, '[{"text":"内容1","code":"A"},{"text":"内容2","code":"B"},{"text":"内容3","code":"C"},{"text":"内容4","code":"D"}]', 'B', '答案解析5', 1, 11, '2023-03-09 08:51:22'),
	(12, '试题名称6', 2, '[{"text":"内容1","code":"A"},{"text":"内容2","code":"B"},{"text":"内容3","code":"C"},{"text":"内容4","code":"D"}]', 'A', '答案解析6', 1, 12, '2023-03-09 08:51:22'),
	(13, '单选', 2, '[{"text":"A","code":"A"},{"text":"B","code":"B"},{"text":"C","code":"C"},{"text":"D","code":"D"}]', 'B', '个房东说根深蒂固', 1, 100, '2023-03-09 09:25:29');

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int NOT NULL COMMENT '考试用户',
  `exampaper_id` int NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='考试记录表';

DELETE FROM `examrecord`;
INSERT INTO `examrecord` (`id`, `examrecord_uuid_number`, `yonghu_id`, `exampaper_id`, `total_score`, `insert_time`, `create_time`) VALUES
	(1, '1678352826597', 1, 3, 0, '2023-03-09 09:07:07', '2023-03-09 09:07:07'),
	(2, '1678353520610', 4, 3, 0, '2023-03-09 09:18:41', '2023-03-09 09:18:41');

DROP TABLE IF EXISTS `examredetails`;
CREATE TABLE IF NOT EXISTS `examredetails` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='答题详情表';

DELETE FROM `examredetails`;
INSERT INTO `examredetails` (`id`, `examredetails_uuid_number`, `yonghu_id`, `examquestion_id`, `examredetails_myanswer`, `examredetails_myscore`, `create_time`) VALUES
	(1, '1678352826597', 1, 8, '广东省归属感', 0, '2023-03-09 09:07:07'),
	(2, '1678352826597', 1, 10, '和发的好地方', 0, '2023-03-09 09:07:07'),
	(3, '1678352826597', 1, 11, 'B', 0, '2023-03-09 09:07:07'),
	(4, '1678352826597', 1, 12, 'A', 0, '2023-03-09 09:07:07'),
	(5, '1678353520610', 4, 8, '个第三个第三个', 0, '2023-03-09 09:18:41'),
	(6, '1678353520610', 4, 10, '挂号费挂号费都很好发的回访电话', 0, '2023-03-09 09:18:41'),
	(7, '1678353520610', 4, 11, 'A', 0, '2023-03-09 09:18:41'),
	(8, '1678353520610', 4, 12, 'A', 0, '2023-03-09 09:18:41');

DROP TABLE IF EXISTS `examrewrongquestion`;
CREATE TABLE IF NOT EXISTS `examrewrongquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `exampaper_id` int NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='错题表';

DELETE FROM `examrewrongquestion`;
INSERT INTO `examrewrongquestion` (`id`, `yonghu_id`, `exampaper_id`, `examquestion_id`, `examredetails_myanswer`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 8, '广东省归属感', '2023-03-09 09:07:07', '2023-03-09 09:07:07'),
	(2, 1, 3, 10, '和发的好地方', '2023-03-09 09:07:07', '2023-03-09 09:07:07'),
	(3, 4, 3, 8, '个第三个第三个', '2023-03-09 09:18:41', '2023-03-09 09:18:41'),
	(4, 4, 3, 10, '挂号费挂号费都很好发的回访电话', '2023-03-09 09:18:41', '2023-03-09 09:18:41'),
	(5, 4, 3, 11, 'A', '2023-03-09 09:18:41', '2023-03-09 09:18:41');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, '发布内容1', 252, 1, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(2, '帖子标题2', 1, NULL, '发布内容2', 83, 3, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(3, '帖子标题3', 2, NULL, '发布内容3', 452, 1, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(4, '帖子标题4', 1, NULL, '发布内容4', 21, 3, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(5, '帖子标题5', 3, NULL, '发布内容5', 141, 2, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(6, '帖子标题6', 1, NULL, '发布内容6', 501, 2, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(7, '帖子标题7', 2, NULL, '发布内容7', 170, 3, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(8, '帖子标题8', 2, NULL, '发布内容8', 357, 2, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(9, '帖子标题9', 1, NULL, '发布内容9', 469, 1, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(10, '帖子标题10', 3, NULL, '发布内容10', 254, 3, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(11, '帖子标题11', 2, NULL, '发布内容11', 276, 3, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(12, '帖子标题12', 3, NULL, '发布内容12', 427, 2, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(13, '帖子标题13', 2, NULL, '发布内容13', 205, 2, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(14, '帖子标题14', 1, NULL, '发布内容14', 452, 2, 1, '2023-03-09 08:52:24', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(15, NULL, 4, NULL, '骨灰盒', 14, NULL, 2, '2023-03-09 09:18:47', NULL, '2023-03-09 09:18:47'),
	(16, NULL, NULL, 1, '个很符合', 14, NULL, 2, '2023-03-09 09:20:10', NULL, '2023-03-09 09:20:10'),
	(17, NULL, 1, NULL, '111', 14, NULL, 2, '2024-08-13 06:31:48', NULL, '2024-08-13 06:31:48');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-03-09 08:52:24', '公告详情1', '2023-03-09 08:52:24'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-09 08:52:24', '公告详情2', '2023-03-09 08:52:24'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-03-09 08:52:24', '公告详情3', '2023-03-09 08:52:24'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-03-09 08:52:24', '公告详情4', '2023-03-09 08:52:24'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-09 08:52:24', '公告详情5', '2023-03-09 08:52:24'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-03-09 08:52:24', '公告详情6', '2023-03-09 08:52:24'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-09 08:52:24', '公告详情7', '2023-03-09 08:52:24'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-03-09 08:52:24', '公告详情8', '2023-03-09 08:52:24'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-03-09 08:52:24', '公告详情9', '2023-03-09 08:52:24'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-03-09 08:52:24', '公告详情10', '2023-03-09 08:52:24'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-03-09 08:52:24', '公告详情11', '2023-03-09 08:52:24'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-03-09 08:52:24', '公告详情12', '2023-03-09 08:52:24'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-03-09 08:52:24', '公告详情13', '2023-03-09 08:52:24'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-03-09 08:52:24', '公告详情14', '2023-03-09 08:52:24');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='意见征集';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 2, '留言标题1', '留言内容1', '2023-03-09 08:52:24', '回复信息1', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(2, 1, '留言标题2', '留言内容2', '2023-03-09 08:52:24', '回复信息2', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(3, 3, '留言标题3', '留言内容3', '2023-03-09 08:52:24', '回复信息3', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(4, 1, '留言标题4', '留言内容4', '2023-03-09 08:52:24', '回复信息4', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(5, 1, '留言标题5', '留言内容5', '2023-03-09 08:52:24', '回复信息5', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(6, 3, '留言标题6', '留言内容6', '2023-03-09 08:52:24', '回复信息6', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(7, 2, '留言标题7', '留言内容7', '2023-03-09 08:52:24', '回复信息7', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(8, 3, '留言标题8', '留言内容8', '2023-03-09 08:52:24', '回复信息8', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(9, 1, '留言标题9', '留言内容9', '2023-03-09 08:52:24', '回复信息9', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(10, 2, '留言标题10', '留言内容10', '2023-03-09 08:52:24', '回复信息10', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(11, 3, '留言标题11', '留言内容11', '2023-03-09 08:52:24', '回复信息11', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(12, 1, '留言标题12', '留言内容12', '2023-03-09 08:52:24', '回复信息12', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(13, 3, '留言标题13', '留言内容13', '2023-03-09 08:52:24', '回复信息13', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(14, 3, '留言标题14', '留言内容14', '2023-03-09 08:52:24', '回复信息14', '2023-03-09 08:52:24', '2023-03-09 08:52:24'),
	(15, 4, '标题1', '2442国风的撒发达是', '2023-03-09 09:19:00', '好久好久', '2023-03-09 09:20:19', '2023-03-09 09:19:00'),
	(16, 1, '666', '666', '2024-08-13 06:31:59', NULL, NULL, '2024-08-13 06:31:59');

DROP TABLE IF EXISTS `shangyemendian`;
CREATE TABLE IF NOT EXISTS `shangyemendian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangyemendian_name` varchar(200) DEFAULT NULL COMMENT '商业门店名称  Search111 ',
  `shangyemendian_uuid_number` varchar(200) DEFAULT NULL COMMENT '商业门店编号',
  `shangyemendian_photo` varchar(200) DEFAULT NULL COMMENT '商业门店照片',
  `shangyemendian_address` varchar(200) DEFAULT NULL COMMENT '具体位置',
  `shangyemendian_types` int DEFAULT NULL COMMENT '商业门店类型 Search111',
  `shangyemendian_content` text COMMENT '商业门店介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='商业门店';

DELETE FROM `shangyemendian`;
INSERT INTO `shangyemendian` (`id`, `shangyemendian_name`, `shangyemendian_uuid_number`, `shangyemendian_photo`, `shangyemendian_address`, `shangyemendian_types`, `shangyemendian_content`, `create_time`) VALUES
	(1, '商业门店名称1', '1678351944451', 'upload/shangyemendian1.jpg', '具体位置1', 4, '商业门店介绍1', '2023-03-09 08:52:24'),
	(2, '商业门店名称2', '1678351944390', 'upload/shangyemendian2.jpg', '具体位置2', 2, '商业门店介绍2', '2023-03-09 08:52:24'),
	(3, '商业门店名称3', '1678351944391', 'upload/shangyemendian3.jpg', '具体位置3', 4, '商业门店介绍3', '2023-03-09 08:52:24'),
	(4, '商业门店名称4', '1678351944375', 'upload/shangyemendian4.jpg', '具体位置4', 1, '商业门店介绍4', '2023-03-09 08:52:24'),
	(5, '商业门店名称5', '1678351944459', 'upload/shangyemendian5.jpg', '具体位置5', 2, '商业门店介绍5', '2023-03-09 08:52:24'),
	(6, '商业门店名称6', '1678351944458', 'upload/shangyemendian6.jpg', '具体位置6', 2, '商业门店介绍6', '2023-03-09 08:52:24'),
	(7, '商业门店名称7', '1678351944376', 'upload/shangyemendian7.jpg', '具体位置7', 3, '商业门店介绍7', '2023-03-09 08:52:24'),
	(8, '商业门店名称8', '1678351944463', 'upload/shangyemendian8.jpg', '具体位置8', 3, '商业门店介绍8', '2023-03-09 08:52:24'),
	(9, '商业门店名称9', '1678351944426', 'upload/shangyemendian9.jpg', '具体位置9', 4, '商业门店介绍9', '2023-03-09 08:52:24'),
	(10, '商业门店名称10', '1678351944374', 'upload/shangyemendian10.jpg', '具体位置10', 1, '商业门店介绍10', '2023-03-09 08:52:24'),
	(11, '商业门店名称11', '1678351944397', 'upload/shangyemendian11.jpg', '具体位置11', 3, '商业门店介绍11', '2023-03-09 08:52:24'),
	(12, '商业门店名称12', '1678351944435', 'upload/shangyemendian12.jpg', '具体位置12', 1, '商业门店介绍12', '2023-03-09 08:52:24'),
	(13, '商业门店名称13', '1678351944443', 'upload/shangyemendian13.jpg', '具体位置13', 1, '商业门店介绍13', '2023-03-09 08:52:24'),
	(14, '商业门店名称14', '1678351944406', 'upload/shangyemendian14.jpg', '具体位置14', 2, '商业门店介绍14', '2023-03-09 08:52:24');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '2gt10mx0hv2h7pa97c1sp70uirt3l30v', '2023-03-09 08:55:43', '2024-08-13 07:31:21'),
	(2, 1, 'admin', 'users', '管理员', '87o1ysfsvwkdvn09n8e6dyfuk2xa1uiz', '2023-03-09 08:58:29', '2024-08-13 07:30:10'),
	(3, 4, 'a5', 'yonghu', '用户', 'il9zk7km50tk9oln6vbqrc2g81ebp8az', '2023-03-09 09:17:01', '2023-03-09 10:17:02');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-09 08:51:20');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `age` int DEFAULT NULL COMMENT '年龄',
  `renkouzhuangtai_types` int DEFAULT NULL COMMENT '人口状态 Search111 ',
  `xiaoqu_types` int DEFAULT NULL COMMENT '小区 Search111 ',
  `shenti_types` int DEFAULT NULL COMMENT '身体状况 Search111 ',
  `danweileixing_types` int DEFAULT NULL COMMENT '单位',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `age`, `renkouzhuangtai_types`, `xiaoqu_types`, `shenti_types`, `danweileixing_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, 18, 1, 2, 5, 4, '1@qq.com', '2023-03-09 08:52:24'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, 17, 2, 1, 3, 3, '2@qq.com', '2023-03-09 08:52:24'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, 17, 2, 1, 4, 2, '3@qq.com', '2023-03-09 08:52:24'),
	(4, '用户4', '123456', '张5', '17703786905', '144112199666666220', 'upload/1678353556454.jpg', 1, 18, 2, 2, 2, 3, '5@qq.com', '2023-03-09 09:16:57');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
