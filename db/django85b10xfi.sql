-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `django`
--

/*!40000 DROP DATABASE IF EXISTS `django`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django85b10xfi` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django85b10xfi`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2025-01-30 13:19:53','关于考研数学 ','ABOUT US','<p>当你设想门外是寒冷可怕的世界时，你还应该开门出去看看，是否真的如此。如果你有信心，你对前途就不犹豫了。如果你有勇气，你就不怕前途是否有困难或危险了每个人心中都应有两盏灯，一盏是希望的灯，一盏是勇气的灯。有了这两盏灯，我们就不怕海上的黑暗和风涛的险恶了。人的一生很像是在雾中行走。远远望去，只是迷蒙一片，辨不出方向和吉凶。可是，当你鼓起勇气，放下恐惧和怀疑，一步一步向前走去的时候，你就会发现，每走一步，你都能把下一步路看得清楚一点。“往前走，别站在远远的地方观望！”你就可以找到你的方向。</p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410508532 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
INSERT INTO `discusskechengxinxi` VALUES (1712409829591,'2025-01-30 13:23:49',32,1712409813721,'upload/1712409802539.jpg','11','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(102, 102, 102);\">评论评论评论评论评论评论评论</span></p>',NULL),(1712410508531,'2025-01-30 13:35:08',1712410106814,0,'',NULL,'<p>111111111111</p>','<p>54564</p>');
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussziliaoxinxi`
--

DROP TABLE IF EXISTS `discussziliaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussziliaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资料信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussziliaoxinxi`
--

LOCK TABLES `discussziliaoxinxi` WRITE;
/*!40000 ALTER TABLE `discussziliaoxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussziliaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '数学试卷名称',
  `time` int(11) NOT NULL COMMENT '测试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '数学试卷状态',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410184748 DEFAULT CHARSET=utf8 COMMENT='数学试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2025-01-30 13:19:53','十万个为什么',60,1,NULL),(1712410184747,'2025-01-30 13:29:44','考研试题',120,1,'22');
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属数学试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '数学试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '题目名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '题目类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）4:主观题',
  `sequence` bigint(20) DEFAULT '100' COMMENT '题目排序，值越大排越前面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410228846 DEFAULT CHARSET=utf8 COMMENT='题目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2025-01-30 13:19:53',1,'十万个为什么','下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',0,1,NULL),(2,'2025-01-30 13:19:53',1,'十万个为什么','油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',2,2,NULL),(3,'2025-01-30 13:19:53',1,'十万个为什么','地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',3,3,NULL),(4,'2025-01-30 13:19:53',1,'十万个为什么','下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,4,NULL),(5,'2025-01-30 13:19:53',1,'十万个为什么','世界上为什么不存在完美的圆？','[]',30,'','目前没有证据表明现实中存在完美的圆',4,5,NULL),(1712410206597,'2025-01-30 13:30:06',1712410184747,'考研试题','112','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'B','223',2,1,'22'),(1712410228845,'2025-01-30 13:30:28',1712410184747,'考研试题','5666','[]',20,'21','分析',3,20,'22');
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestionbank`
--

DROP TABLE IF EXISTS `examquestionbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestionbank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `questionname` varchar(200) NOT NULL COMMENT '题目名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '题目类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空） 4:主观题',
  `sequence` bigint(20) DEFAULT '100' COMMENT '题目排序，值越大排越前面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='题目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestionbank`
--

LOCK TABLES `examquestionbank` WRITE;
/*!40000 ALTER TABLE `examquestionbank` DISABLE KEYS */;
INSERT INTO `examquestionbank` VALUES (1,'2025-01-30 13:19:53','下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',0,1,NULL),(2,'2025-01-30 13:19:53','油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',2,2,NULL),(3,'2025-01-30 13:19:53','地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',3,3,NULL),(4,'2025-01-30 13:19:53','下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,4,NULL),(5,'2025-01-30 13:19:53','世界上为什么不存在完美的圆？','[]',30,'','目前没有证据表明现实中存在完美的圆',4,5,NULL);
/*!40000 ALTER TABLE `examquestionbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '数学试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '数学试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '题目id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '题目名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `ismark` bigint(20) DEFAULT '0' COMMENT '是否批卷',
  `type` bigint(20) DEFAULT '0' COMMENT '题目类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空） 4:主观题',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '题目得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410312891 DEFAULT CHARSET=utf8 COMMENT='测试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1712409946875,'2025-01-30 13:25:46',1712409813721,'小小',1,'十万个为什么',5,'世界上为什么不存在完美的圆？','[]',30,'','目前没有证据表明现实中存在完美的圆',1,4,0,'11',NULL),(1712409946881,'2025-01-30 13:25:46',1712409813721,'小小',1,'十万个为什么',4,'下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,1,30,'A,B',NULL),(1712409946882,'2025-01-30 13:25:46',1712409813721,'小小',1,'十万个为什么',3,'地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',1,3,0,'仍',NULL),(1712409946885,'2025-01-30 13:25:46',1712409813721,'小小',1,'十万个为什么',1,'下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',1,0,20,'C',NULL),(1712409946890,'2025-01-30 13:25:46',1712409813721,'小小',1,'十万个为什么',2,'油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',1,2,20,'B',NULL),(1712410312890,'2025-01-30 13:31:52',1712409813721,'小小',1712410184747,'考研试题',1712410206597,'112','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'B','223',1,2,10,'B','22');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `istop` int(11) DEFAULT '0' COMMENT '是否置顶',
  `toptime` datetime DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712409926407 DEFAULT CHARSET=utf8 COMMENT='学习论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2025-01-30 13:19:53','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放',0,'2025-01-30 21:19:53'),(92,'2025-01-30 13:19:53','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放',0,'2025-01-30 21:19:53'),(93,'2025-01-30 13:19:53','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放',0,'2025-01-30 21:19:53'),(94,'2025-01-30 13:19:53','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放',0,'2025-01-30 21:19:53'),(95,'2025-01-30 13:19:53','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放',0,'2025-01-30 21:19:53'),(96,'2025-01-30 13:19:53','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放',0,'2025-01-30 21:19:53'),(97,'2025-01-30 13:19:53','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放',0,'2025-01-30 21:19:53'),(98,'2025-01-30 13:19:53','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放',0,'2025-01-30 21:19:53'),(1712409915550,'2025-01-30 13:25:15','学习论坛','<p><strong style=\"background-color: rgb(252, 250, 255); color: rgb(0, 0, 0);\">学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛学习论坛</strong></p>',0,1712409813721,'11',NULL,'开放',0,'2025-01-30 21:25:12'),(1712409926406,'2025-01-30 13:25:26',NULL,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(48, 49, 51);\">添加评论添加评论添加评论添加评论添加评论添加评论</span></p>',91,1712409813721,'11','upload/1712409802539.jpg',NULL,0,NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410073109 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (11,'2025-01-30 13:19:52','教师工号1','123456','教师姓名1','upload/jiaoshi_touxiang1.jpg','男','13823888881'),(12,'2025-01-30 13:19:52','教师工号2','123456','教师姓名2','upload/jiaoshi_touxiang2.jpg','男','13823888882'),(13,'2025-01-30 13:19:52','教师工号3','123456','教师姓名3','upload/jiaoshi_touxiang3.jpg','男','13823888883'),(14,'2025-01-30 13:19:52','教师工号4','123456','教师姓名4','upload/jiaoshi_touxiang4.jpg','男','13823888884'),(15,'2025-01-30 13:19:52','教师工号5','123456','教师姓名5','upload/jiaoshi_touxiang5.jpg','男','13823888885'),(16,'2025-01-30 13:19:52','教师工号6','123456','教师姓名6','upload/jiaoshi_touxiang6.jpg','男','13823888886'),(17,'2025-01-30 13:19:52','教师工号7','123456','教师姓名7','upload/jiaoshi_touxiang7.jpg','男','13823888887'),(18,'2025-01-30 13:19:52','教师工号8','123456','教师姓名8','upload/jiaoshi_touxiang8.jpg','男','13823888888'),(1712410073108,'2025-01-30 13:27:53','22','22','李四','upload/1712410066991.jpg','男','13823892222');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengleixing`
--

DROP TABLE IF EXISTS `kechengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `image` longtext COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengleixing` (`kechengleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengleixing`
--

LOCK TABLES `kechengleixing` WRITE;
/*!40000 ALTER TABLE `kechengleixing` DISABLE KEYS */;
INSERT INTO `kechengleixing` VALUES (41,'2025-01-30 13:19:52','课程类型1','upload/kechengleixing_image1.jpg,upload/kechengleixing_image2.jpg,upload/kechengleixing_image3.jpg'),(42,'2025-01-30 13:19:52','课程类型2','upload/kechengleixing_image2.jpg,upload/kechengleixing_image3.jpg,upload/kechengleixing_image4.jpg'),(43,'2025-01-30 13:19:52','课程类型3','upload/kechengleixing_image3.jpg,upload/kechengleixing_image4.jpg,upload/kechengleixing_image5.jpg'),(44,'2025-01-30 13:19:52','课程类型4','upload/kechengleixing_image4.jpg,upload/kechengleixing_image5.jpg,upload/kechengleixing_image6.jpg'),(45,'2025-01-30 13:19:52','课程类型5','upload/kechengleixing_image5.jpg,upload/kechengleixing_image6.jpg,upload/kechengleixing_image7.jpg'),(46,'2025-01-30 13:19:52','课程类型6','upload/kechengleixing_image6.jpg,upload/kechengleixing_image7.jpg,upload/kechengleixing_image8.jpg'),(47,'2025-01-30 13:19:52','课程类型7','upload/kechengleixing_image7.jpg,upload/kechengleixing_image8.jpg,upload/kechengleixing_image9.jpg'),(48,'2025-01-30 13:19:52','课程类型8','upload/kechengleixing_image8.jpg,upload/kechengleixing_image9.jpg,upload/kechengleixing_image10.jpg');
/*!40000 ALTER TABLE `kechengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `dagang` longtext COMMENT '大纲',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kechengfengmian` longtext COMMENT '课程封面',
  `jiaoxueshipin` longtext NOT NULL COMMENT '教学视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410106815 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (31,'2025-01-30 13:19:52','课程名称1','大纲1','课程类型1','upload/kechengxinxi_kechengfengmian1.jpg,upload/kechengxinxi_kechengfengmian2.jpg,upload/kechengxinxi_kechengfengmian3.jpg','','课程详情1','上课地点1','2025-01-30 21:19:52','教师工号1','教师姓名1','2025-01-30 21:19:52',1,0,1),(32,'2025-01-30 13:19:52','课程名称2','大纲2','课程类型2','upload/kechengxinxi_kechengfengmian2.jpg,upload/kechengxinxi_kechengfengmian3.jpg,upload/kechengxinxi_kechengfengmian4.jpg','','课程详情2','上课地点2','2025-01-30 21:19:52','教师工号2','教师姓名2','2025-01-30 21:23:41',3,1,3),(33,'2025-01-30 13:19:52','课程名称3','大纲3','课程类型3','upload/kechengxinxi_kechengfengmian3.jpg,upload/kechengxinxi_kechengfengmian4.jpg,upload/kechengxinxi_kechengfengmian5.jpg','','课程详情3','上课地点3','2025-01-30 21:19:52','教师工号3','教师姓名3','2025-01-30 21:24:52',4,0,4),(34,'2025-01-30 13:19:52','课程名称4','大纲4','课程类型4','upload/kechengxinxi_kechengfengmian4.jpg,upload/kechengxinxi_kechengfengmian5.jpg,upload/kechengxinxi_kechengfengmian6.jpg','','课程详情4','上课地点4','2025-01-30 21:19:52','教师工号4','教师姓名4','2025-01-30 21:19:52',4,0,4),(35,'2025-01-30 13:19:52','课程名称5','大纲5','课程类型5','upload/kechengxinxi_kechengfengmian5.jpg,upload/kechengxinxi_kechengfengmian6.jpg,upload/kechengxinxi_kechengfengmian7.jpg','','课程详情5','上课地点5','2025-01-30 21:19:52','教师工号5','教师姓名5','2025-01-30 21:19:52',5,0,5),(36,'2025-01-30 13:19:52','课程名称6','大纲6','课程类型6','upload/kechengxinxi_kechengfengmian6.jpg,upload/kechengxinxi_kechengfengmian7.jpg,upload/kechengxinxi_kechengfengmian8.jpg','','课程详情6','上课地点6','2025-01-30 21:19:52','教师工号6','教师姓名6','2025-01-30 21:19:52',6,0,6),(37,'2025-01-30 13:19:52','课程名称7','大纲7','课程类型7','upload/kechengxinxi_kechengfengmian7.jpg,upload/kechengxinxi_kechengfengmian8.jpg,upload/kechengxinxi_kechengfengmian9.jpg','','课程详情7','上课地点7','2025-01-30 21:19:52','教师工号7','教师姓名7','2025-01-30 21:34:51',8,0,8),(38,'2025-01-30 13:19:52','课程名称8','大纲8','课程类型8','upload/kechengxinxi_kechengfengmian8.jpg,upload/kechengxinxi_kechengfengmian9.jpg,upload/kechengxinxi_kechengfengmian10.jpg','','课程详情8','上课地点8','2025-01-30 21:19:52','教师工号8','教师姓名8','2025-01-30 21:19:52',8,0,8),(1712410106814,'2025-01-30 13:28:26','课程名称','大纲\n大纲\n','课程类型3','upload/1712410091203.jpg','upload/1712410099178.mp4','<p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p>课程详情</p><p><br></p>','上课地点','2025-01-30 21:27:59','22','李四','2025-01-30 21:34:56',1,1,0);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meiridaka`
--

DROP TABLE IF EXISTS `meiridaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meiridaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `dakaleixing` varchar(200) DEFAULT NULL COMMENT '打卡类型',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410038794 DEFAULT CHARSET=utf8 COMMENT='每日打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meiridaka`
--

LOCK TABLES `meiridaka` WRITE;
/*!40000 ALTER TABLE `meiridaka` DISABLE KEYS */;
INSERT INTO `meiridaka` VALUES (81,'2025-01-30 13:19:53','标题1','签到','2025-01-30 21:19:53','学号1','学生姓名1','upload/meiridaka_touxiang1.jpg,upload/meiridaka_touxiang2.jpg,upload/meiridaka_touxiang3.jpg','是',''),(82,'2025-01-30 13:19:53','标题2','签到','2025-01-30 21:19:53','学号2','学生姓名2','upload/meiridaka_touxiang2.jpg,upload/meiridaka_touxiang3.jpg,upload/meiridaka_touxiang4.jpg','是',''),(83,'2025-01-30 13:19:53','标题3','签到','2025-01-30 21:19:53','学号3','学生姓名3','upload/meiridaka_touxiang3.jpg,upload/meiridaka_touxiang4.jpg,upload/meiridaka_touxiang5.jpg','是',''),(84,'2025-01-30 13:19:53','标题4','签到','2025-01-30 21:19:53','学号4','学生姓名4','upload/meiridaka_touxiang4.jpg,upload/meiridaka_touxiang5.jpg,upload/meiridaka_touxiang6.jpg','是',''),(85,'2025-01-30 13:19:53','标题5','签到','2025-01-30 21:19:53','学号5','学生姓名5','upload/meiridaka_touxiang5.jpg,upload/meiridaka_touxiang6.jpg,upload/meiridaka_touxiang7.jpg','是',''),(86,'2025-01-30 13:19:53','标题6','签到','2025-01-30 21:19:53','学号6','学生姓名6','upload/meiridaka_touxiang6.jpg,upload/meiridaka_touxiang7.jpg,upload/meiridaka_touxiang8.jpg','是',''),(87,'2025-01-30 13:19:53','标题7','签到','2025-01-30 21:19:53','学号7','学生姓名7','upload/meiridaka_touxiang7.jpg,upload/meiridaka_touxiang8.jpg,upload/meiridaka_touxiang9.jpg','是',''),(88,'2025-01-30 13:19:53','标题8','签到','2025-01-30 21:19:53','学号8','学生姓名8','upload/meiridaka_touxiang8.jpg,upload/meiridaka_touxiang9.jpg,upload/meiridaka_touxiang10.jpg','是',''),(1712410038793,'2025-01-30 13:27:18','标题标题','签到','2025-01-30 21:27:09','11','小小','upload/1712409802539.jpg','是','通过通过');
/*!40000 ALTER TABLE `meiridaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `typename` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `name` varchar(200) DEFAULT NULL COMMENT '发布人',
  `headportrait` longtext COMMENT '头像',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (151,'2025-01-30 13:19:53','趁着年轻，输得起，看得开，去经历','我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤','分类名称1','发布人1','upload/news_headportrait1.jpg',1,'2025-01-30 21:19:53',1,1,1,'upload/news_picture1.jpg','<p>我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤。</p><p>  首先，我皈依了减肥。我可以整整一天滴水不进，然后第二天中午，一个小时之内连续去三个食堂吃午饭，每次都是两荤一素、一两米饭加一瓶大可乐，像是一个人孢子分裂出了三个暴食症患者。其次，因为要么饿得百爪挠心，要么撑得寝食难安，我变成了一个昼夜颠倒的人，再加上觉得自己邋遢难看，不愿见人，便逃掉了很多课。其三，逃课的空虚让我花了大量时间网购，击败了全国90%以上的电商消费者，和快递员结下了深厚的友谊。我买的大多数是衣服，衣服又穿不进，羞愤难当，继续皈依减肥。总之，那是我非常不快乐的几年。因为难以接受自己，所以蜷缩着，拒绝他人。</p><p>    我很久之后才知道，人用来自憎的大脑边缘系统，在童年时就已经形成。可是，用来开导自己、原谅自己、使自己变得强大的智慧，却往往在我们本该成熟的年纪依然不具备。每一世代的年轻人都是脆弱的、敏感的、容易受他人影响的。而对于正年轻的一代来说，这个挑战异乎寻常的艰难。</p><p> 电影《楚门的世界》中提出了一个假设以及相应的解答:当一个人活在所有人的窥探之下，他应该怎么办?答案是:他逃走，获得自由。然而，如果所有人活在所有人的窥探之下，那又该如何逃避?这不是假设，而是正在悄然发生的现实。我们无时无刻不在朋友圈、微博、贴吧、个人主页上展现自己的生活，同时，也在同样的平台上窥探他人的生活。我们无时无刻不在评估他人，同时，也在接受他人的评估。“个性张扬”只是狐假虎威的外衣，为的是掩饰自卑与自恋此起彼伏、相爱相杀的脆弱。我们羡慕嫉妒他人，也努力把自己的生活修饰得让他人羡慕嫉妒。我们对他人的意见过于敏感，无法忍受不被“点赞”的人生。</p><p>  社交网络的核心在于“社交”，社交的动力，是出于人们无法忍受孤独;人们之所以无法忍受孤独，是因为人们无法拷问自己。可是，总有一天，我们要站在镜子前，发现我们并不是自己创造出来的那个有趣、可爱、有吸引力、有能力的人。那么，你还喜欢镜子里的自己吗?或者，镜子里的你还喜欢自己吗?这个世界是否称赞你、羡慕你、爱你，在某种程度上是个不断膨胀的谎言。关键的问题在于，你是否对自己足够诚实，并且接受诚实之后的不完美。</p><p>   失去的痛苦、被拒绝的痛苦、被伤害的痛苦、分别的痛苦，它们如此显眼地横在前行的路上，让人想逃遁到那个充满着“赞”的虚幻世界里。然而，我们是人，走在一条从摇篮到坟墓的路上，年轻在途中，衰老在途中。必须和真实的世界发生联系，而不是兀自为尚未发生的事情恐惧;必须和真实的人发生各种关系，而不是如一座座只能遥远眺望的孤岛。</p><p>那些杀不死我们的，它们有时并不会让我们更加强大，而只是成为一段诗意或自嘲的记忆。趁着年轻，输得起，看得开，去经历。那些杀不死我们的，它们在混沌而无序的未来里，并不能成为我们手中的武器，却为我们的存活，增加了反抗脆弱与敏感的韧性。</p>'),(152,'2025-01-30 13:19:53','大学就该抓住青春，用汗水实现梦想','大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还','分类名称2','发布人2','upload/news_headportrait2.jpg',2,'2025-01-30 21:19:53',2,2,2,'upload/news_picture2.jpg','<p>  大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还。</p><p>  青春是属于我们的，是人生最最美好的时光。我们应该好好把握住现在象牙塔的点点滴滴。大学对于我们来说很重要，这里充满了好奇、机遇和挑战。当我懵懵懂懂的走过了两年才突然发现原来大学是这样的，每个人有不同的选择，有不同的理想，也有不同的人生。但是无论怎样都是一个博学的过程，学做人，学知识，学生活..…...春是疯狂的，是充满激情的，是奋斗的，最重要的是我们要坚定我们的梦想，为了梦想付出一切，为了梦想坚持到底，这才是真正的青春。青春的梦想就是黑夜里的灯塔在我们迷茫时给予我们方向，就是力量的源泉在我们身陷逆境时给予我们最大的动力，就是爱的港湾在我们屡次失败时给予我们受伤的心灵以安慰。因此无论何时何地，都不能忘却心里坚守的那份沉甸甸的梦想。</p><p>   青春的梦想很简单，可能是梦想成为学习的佼佼者让GPA无限趋于4.0，可能是梦想成为学生工作的杰出者当上主席为自己的从政事业奠定基础，也可能是梦想成为运动场上的超级明星拥有大量的球迷粉丝，也可能是梦想成为职场达人，面试无压力，就业有保障...….或许你觉得这些都算不上梦想，其实梦想并不分大小和轻重，不能说只有中国梦才算是梦想，梦想就是这样每个人有不同的定位，但都是值得去追逐的，去为之奋斗的。()拥有了梦想，就有了坚定的信念，海风再大海浪再大，也无法扼杀我们追逐胜利的信念。信念给我们坚持的勇气，勇气赐我们昂扬的斗志，斗志带我们摆脱厄运;拥有了梦想，就能化压力为动力，梦想会时刻在鞭策我们，鼓励我们，让我们审视自己，发现不足，奋力补救，让自己保持不懈的前进动力;拥有了梦想，我们就不会在迷茫的路上更加迷茫，我们就能在青春之歌复杂的五线谱中听到动人的旋律。</p><p>   我们是大学生，是祖国的未来，是民族复兴的脊梁，面对如此重任，怎么能不胸怀大志，坚定梦想，在青春的道路上奋斗。“恰同学少年，风华正茂，书生意气，挥斥方道。”青春是黄金时段，我们要以梦想为方向，扬帆起航，努力拼搏，给我们即将失去的青春以最好的结局。人因梦想而伟大，让我们一起奏响青春的梦想之歌，为各自的梦想努力进发吧!</p>'),(153,'2025-01-30 13:19:53','留退路就没有出路','公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了','分类名称3','发布人3','upload/news_headportrait3.jpg',3,'2025-01-30 21:19:53',3,3,3,'upload/news_picture3.jpg','<p>  公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了。</p><p>  很多人在处理重要问题的时候，总是喜欢把这些问题暂且搁置在一边，等以后再做。他们没有决定的勇气和魄力，总是在着手做事的时候想给自己留一条后路，以免没有出路。对于他们来说，退路就是出路。但是，事实证明，这样是不会有任何成就的。</p><p>背水一战、破釜沉舟的军队往往能获得胜利。同样，一个做事不留退路、一心向前的人，不管遇到什么困难和障碍，他都不会后退，因为他没有路可以退。而那些人在为自己准备退路的同时就是在后退，他们立志不坚，把精力和时间投入到退缩的准备上，这种人绝不会获得成功。</p><p>  一个人能否成功，关键在于他意志力的强弱。意志坚强的人不管遇到什么困难和障碍，都会百折不挠，想方设法地克服;意志薄弱的人一遇到麻烦，甚至在挫折还没有到来之前，他们就开始庸人自扰，彷徨失措，把精力都放在如何规避问题上，放在为自己铺设后路上。当困难一个接一个来时，他们就一步接一步后退，最后他们终将无路可退。</p><p>现实生活中，到处都充斥着这样的青年，他们富有上进心，希望有一番成就和作为，但是他们意志薄弱，没有必胜的决心，不敢破釜沉舟;他们始终左摇右摆，没有坚定的信念，一遇到挫折和困难，马上就缩回了进取的手和脚。这样的人，这样的心态，最后遭受失败也不足为奇。</p><p>   不给自己留后路，让自己没有回旋的余地，方能竭尽全力，锐意进取，就算遇到千万困难，也不会退缩，因为回头也没有路了，不如不顾一切地前进，还能找到一线希望。有了这样一种“拼命”和“豁出去”了的信念，才能彻彻底底地消除心中的恐惧、犹豫、胆怯。当一个人不给自己任何退路的时候，他就什么都不怕了，勇气、信心、热忱等从心底油然而生，到最后自然能“置之死地而后生”。</p><p>    面对严峻的问题和重要环节，周全而细致地考虑问题的各个方面也是应该的，但是过多地权衡，前怕狼后怕虎，一会儿这样一会儿那样，最终却还是原样，可以肯定地说，你不会有任何进展，甚至还会变得—塌糊涂。</p><p>出路和退路不是同义词，而是反义词，留退路就没有出路，因此，你应该只找出路，不留退路。大学生励志青春文章:培养积极的思维模式。</p>'),(154,'2025-01-30 13:19:53','在大学给自己定个目标','最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到','分类名称4','发布人4','upload/news_headportrait4.jpg',4,'2025-01-30 21:19:53',4,4,4,'upload/news_picture4.jpg','<p>  最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到。</p><p>   这让我想到前段时间蹿红网络的“悔过励志帖”——《同学，我大四了》，作者回首自己的大学4年，他感叹投入精力“充其量不过40%”︰每天上网时间少则4个小时，多则10个小时;考试永远是画画重点，在高呼“60分万岁”中与奖学金无缘。作者借自己求职受挫，写帖子以警醒后来人，不要等毕业时再后悔，就业难不仅仅是大学、社会的问题，也是自身的问题。</p><p>  也许，这样的大学生不是一个两个，而是一个群体。然而，我总是怀疑这样的励志帖，甚至教师在课堂上苦口婆心地劝说，能对现实中的大学和大学生起到多大的影响和作用，很多时候恐怕只有“三分钟热度”的效应。毕竟，现实的窘境不是一天积累起来的，从小学到高中，学生们的学习都是被动地接受应试，隐藏着功利性的目的，也许从没有为主动学习感到过快乐，而在高中时代，有的教师甚至打出这样的励志宣言:等你考上大学，你就可以想干什么干什么了..…..乎，高中时代的目标是很清晰的，就是为了考上大学，而在一些高中生的眼里，大学甚至就好比是天堂，进了大学的门就可以放轻松了。</p><p> 此前，有很多声音都认为大学越来越像培训机构，功利性学习正在整个大学蔓延，考证热、过早地职业化都是大学功利性学习最好的表现形式。在这种批判的声音中，“培训机构”总有被贬低的意味，难与大学之学术思想殿堂的高雅相媲美。但是，在这种批判的背后，还有一个现实问题被遮蔽，那就是很多大学生对自己的学习、对大学生活没有任何目标。</p><p>暨南大学舆情研究中心曾就“当代广州大学生生活与思想现状”作过详细的问卷调查，其中，接受调查的广州高校在读本科生共有191份有效样本，就“读大学的原因”、“大学第一印象”、“专业选择首要因素”等问题制作问卷调查并进行分析。结果显示，在未来规划方面，73.3%的同学表示只有粗略的想法，并无非常明确的目标。</p><p>  如果说功利化的学习毕竟还有一个前进的目标，至少能体现出一种为了目标而奋斗的精神和奔头，而没有任何目标，漫无目的地混日子则更可怕，它体现的是一种虚无、意义的缺失。说实话，没有引导学生树立明确的奋斗目标、进而指引学生为之努力的大学，学生很难找到努力的方向，也找不到努力的意义，这还不如“培训机构”来得实在、来得有效用，至少，培训机构的目标很清晰，它能够给学生们一个实实在在看得见的效果，而没有任何目标、浑浑噩噩的大学生活，也许只会给很多学生带来悔过。</p><p>无论如何，混日子的大学生活是不可取的。一方面，高校应该在新生入学的时候，作好目标和方向的引导，甚至贯穿大学4年的学习过程;另一方面，还在迷途的大学生，应尽早为自己找个前进的方向，作好自我规划，对自己的未来和前途负责。</p>'),(155,'2025-01-30 13:19:53','做个真正的学生','最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点','分类名称5','发布人5','upload/news_headportrait5.jpg',5,'2025-01-30 21:19:53',5,5,5,'upload/news_picture5.jpg','<p>  最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点。</p><p>曾经有人特地赶赴日本，向三宅一生服装设计大师请教如何设计出独具一格的服装款式。三宅一生大师提出两个很有意思的观点:一是，设计的衣服，其实都是没有全部完成的，其余的创作空间，则是留给穿衣服的人去完成的;二是，选择布料时，会请厂商提供纺织、印染失败的布料，从这些“残次”的作品中寻找泉涌般的创作灵感，设计出最具独创性的作品。</p><p>这样一来，顾客才能穿出自己的风格，并使得同一件衣服，在不同的人身上，能有不同的效果。而且，以这样的概念设计出来的衣服，也不容易失败。正是因为这两个观点，三宅一生所设计的服装总是独一无二地能够引领世界潮流。</p><p>  在艺术家的眼中，任何事物都是创作的最好材料，不管是枯木还是残破的布料，对他们而言，都是最具生命力的事物，在他们手中都能画腐朽为神奇。</p><p>朽木也能精雕，更何况我们自己。那些看起来弯曲、盘旋、似乎毫无用处的木料，往往最终能成为艺术品的原材料，因为这种不同，才特别珍贵。花点心思，身上的缺点也能变成独特的优点，就像艺术家们一般，顺着曲折的木头，创造出与众不同、完美无缺的惊世杰作。</p><p>励志文章3:一生学习，成就一生无知的人并不是没有学问的人，而是不明了自己的人。当一个有学问的人信赖书本、知识和权威，借着它们而了解自己，那么他便是愚蠢的。了解是由自我认识而来，而自我认识乃是一个人明白他自己的整个心理过程。因此，教育的真正意义是自我了解，因为整个生活是汇聚于我们每个人的身心的最高“机密”。</p><p>   目前我们所谓的教育，只是由书本聚集见闻、知识，这是任何懂得阅读的人都办得到的。这种教育提供了一条巧妙的逃避自我之途，如同其他所有的逃避方式一样，它无可避免地制造出有增无减的苦难。冲突和混乱是由于我们和他人、事物、概念之间差错的关系而产生，除非我们了解此项关系而改变它，否则，知识的学习和堆砌，各种技能的获取，都只会将我们导向更深的混乱和毁灭。</p><p> 我们将子女送入学校，学习一些技能，并希望借此来带动整个家庭的长久繁荣，至少在家长们年老的时候有养老保险，有稳定的照顾。我们对孩子最急切的渴望，就是将他塑造成一个能在一个领域中出类拔萃之人，希望给予他一个安全的经济地位。物质的获得有时候并不难，然而，技术的训练能使我们了解自己吗?</p><p>虽然，懂得念书写字、学习土木工程或其他某种职业，是必需的，然而技术能给予我们了解生活的能力吗?技术，无疑是次要的;如果技术是我们惟一奋力以求的东西，那么我们就摒弃了生活中最主要的东西了。</p><p>    生活，是痛苦、喜悦、美、丑、爱等多种感受的综合，一旦我们将它整体地加以了解，那么这项了解在各方面都会创出它应有的技术。不过，相反的说法就不是真的了∶技术永远无法产生创造性的了解。</p><p>如果过分强调技术，我们便毁灭了人。磨练技能和效率，然而对生活却不了解，对思想、欲望的行踪不能领悟，只会使我们变得日益残暴无情，以致于触发战争，危害了我们肉体上的安全。由于我们的教育过重于单单培养技术，已经制造出许多科学家、数学家、造桥工程师、征服太空的人，但这些人了解生活的整体过程吗?一个专家能把生活本身完整地体验感受表达出来吗?或者他真的体验到生活了吗?有时候，当他不是专家时，反而更能直指生活的本质。一颗能够给予人辉煌一生的企图心，首先应当是一颗敏感的善良的热情的心，让我们对周围的一切保持孩童一样旺盛的好奇心。我们应当渴望了解新奇的事物，渴望探索未知的领域。只有在这种理念的支配下，我们才能不断地、孜孜以求地、乐此不疲地提升自己的认知和理解能力，改善自我，从而更接近成功的巅峰。</p>'),(156,'2025-01-30 13:19:53','远大的目标是成功的磁石','上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标','分类名称6','发布人6','upload/news_headportrait6.jpg',6,'2025-01-30 21:19:53',6,6,6,'upload/news_picture6.jpg','<p>  上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标。</p><p>    有大目标的人，生活永远是积极的，他们会朝着自己的目标不断前进;没有大目标的老实人浑浑噩噩，不思进取，最后被生活淘汰。</p><p> 从前有个叫阿巴格的人生活在内蒙古草原上。有一次，年少的阿巴格和爸爸在草原上迷了路，阿巴格又累又怕，到最后快走不动了。爸爸就从兜里掏出五枚硬币，把一枚硬币埋在草地里，把其余四枚放在阿巴格的手上，说:“人生有五枚金币，童年、少年、青年、中年、老年各有一枚，你现在才用了一枚，就是埋在草地里的那一枚，你不能把五枚都扔在草原里，你要一点点地用，每一次都用出不同来，这样才不枉人生一世。今天我们一定要走出草原，你将来也一定要走出草原。世界很大，人活着，就要多走些地方，多看看，不要让你的金币没有用就扔掉。”在父亲的鼓励下，阿巴格走出了草原。长大后，阿巴格离开了家乡，成了一名十分优秀的船长。</p><p>  目标是与一个人的愿望相联系的，是对未来的一种设想，它往往和目前的行动不直接联系。但目标又不能脱离现实的生活，现实生活中的某些现象如果符合了个人的需要，与个人的世界观一致，这些现实的因素就会以个人目标的形式表现出来。目标总是对现实生活的重新加工，舍弃其中某些成分，又对某些因素给予强调的过程，但它必须以对客观规律的认识为基础，符合客观规律。</p><p> 能实现自己目标的老实人，对他个人而言，他是一个成功者，也是个幸福者。目标是成功的必要条件，虽然仅仅拥有目标，你不一定能取得成功;但是如果没有目标，成功对你而言就无从谈起。</p><p>远大的美好目标能吸引人努力为实现它而奋斗不止。</p>'),(157,'2025-01-30 13:19:53','做一个最好的自己','自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费','分类名称7','发布人7','upload/news_headportrait7.jpg',7,'2025-01-30 21:19:53',7,7,7,'upload/news_picture7.jpg','<p>自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费。</p><p>我们大家都知道的人大脑拥有140亿个脑细胞，但我们思维意识只利用了脑细胞的很少部分，如能将更多的脑细胞从睡眠中激活出来，人的思维意识将更加强大。如果我们都能充满自信，就能创造人间奇迹，亦能创造一个最好的自己。</p><p> 一个人相信自己是什么，就会是什么。一个人心里怎样想，就会成为怎样的人。这从心里学上讲是有一定的道理的。我们每一个人心里都有一幅心里蓝图，或是一幅自画像，有人称它为运作结果。如果你想象的是做最好的你，那么你就会在你内心的荧光屏上看到一个踌躇满志、不断进取、勇于开拓创新的自我。同时还会经常收到我做的很好，我以后还会做的更好之类的信息，这样你注定会成为一个最好的你。美国哲学家爱默生说:“人的一生正如他一天中所想的那样，你怎么想，怎么期待，就有怎样的人生。”美国有名的钢铁大王安德鲁·卡耐基就是一个充分发挥自己创造机会的楷模。他12岁时由英格兰移居美国，先是在一家纺织厂做工人，当时他的目标是“做全厂最出色的工人。”因为他经常这样想，以这样做，最终他实现了他的目标。后来命运有安排他当邮递员，他想的是怎样成为“全美最杰出的邮递员。”结果他的这一目标也实现了。他的一生总是根据自己所处的环境和地位塑造最佳的自己，他的座右铭就是“相信自己是最棒的。“</p><p>做一个最好的自己，不一定非要当什么“家”，也不一定非要出什么“名”，更不要与别人比高低、比大小。就像人的手指，有大有小，有长有短，他们各有所长，各有所短，你能说拇指比食指好吗?决定最好的你，既不是你拥有的物质财富的多少，也不是你身份的贵贱，关键是看你是否拥有实现自己理想的强烈愿望的程度，看你身上的潜力能否充分发挥。人们熟知的一些英雄模范，就是在平凡的工作岗位上充分发挥人的创新能力，做好自己身边的每一件小事，创造了做好的自己。</p><p>“塑造一个最好的自己”，这个目标人人都可以实现。你只意识到自己是大自然的一分子，坚信自己拥有“无限的能力”与“无限的可能”，这种坚定的信心能帮助你创造和谐的心理、生理韵律，建立起自己理想的自我形象，体现自己人格行为应该具有的魅力。</p>'),(158,'2025-01-30 13:19:53','考研公告','一段时间以前，一位在港的大陆学生，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐学生”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃','通知信息','发布人8','upload/news_headportrait8.jpg',10,'2025-01-30 21:35:50',9,8,9,'upload/news_picture8.jpg','<p>一段时间以前，一位在港的大陆学生，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐学生”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃。</p><p>“峣峣者易折，皎皎者易污。”能够从内地高校到香港读书的学子，都是一些很优秀的年轻人。不知道曾经高居象牙塔的书生，怎样狠下心，咬牙面对那一个天渊般的落差，以及旁人的目光和议论。</p><p>说到这里，很像一个《读者》式的励志故事。但是这种励志故事从来就不缺乏感动人的力量，因为虽然光明的尾巴不是人人都能够拥有，但是人人都有梦想，面对实现过程中的困难，其奋斗或者说挣扎，却常常和平凡如你我的人们相遇。</p><p>《当幸福来敲门/The Pursuit of Happyness》就是这样偶然被看到，又感动了我的电影。黑人克里斯是一名普普通通的医疗器械推销员，妻子忍受不了经济上的压力离开了他，留下5岁的儿子克里斯托夫和他相依为命。克里斯银行账户里只剩下21块钱，因为没钱付房租，他和儿子被撵出了公寓。费尽周折，克里斯赢得了在一家着名股票投资公司实习的机会，但是实习期间没有薪水，而且最终只有一人可以成功进入公司。</p><p>学妹曾经告诉我一个故事，让我每次想到都觉得莫名恐怖。她说，她硕士毕业去广东求职，一个中学要招几个老师，结果南来北往的硕士博士挤了快有一个礼堂。可想而知，竞争有多么残酷。看来，中外求职者都面临着同样的挑战。但是克里斯和许多“80后”的大学毕业生不同，他更加坚韧:为了节省时间，上班时候不喝水，以避免上厕所。以疯狂的速度给客户打电话，打完一个，直接按挂机键就拨下一个电话。白天，克里斯忍受着一次又一次被拒绝的失望，带着微笑在公司和客户之间穿梭。回家，则要带着儿子穿过污秽的街道，忍受房东的咆哮。</p><p>终于，交不起房租的父子俩流落街头。克里斯和儿子在午夜地铁里相对无言，儿子不能理解为什么不能回家住，爸爸却开始玩游戏:“我们通过时光机，到达古代了!”儿子立刻兴奋地配合起来，环顾左右。父子俩在“恐龙”的追杀下，逃到了一个“山洞”里，“山洞”是什么呢，其实是一间男厕所。克里斯搂着熟睡的儿子，坐靠在厕所的墙面。午夜的灯光很惨白，这个消瘦的、营养不良的父亲，默默地流下了泪水。</p><p>父子俩依旧为了幸福到来而努力。他们开始住收容所，面对有限的床位，这个奔跑起来像猎豹一样的人，有时候得把草原上的爆发力运用到打架上面来。儿子在简陋的收容所床上睡着了，父亲还在埋头修理推销的医疗器械，或者翻那本厚厚的笔试全书。</p><p>钱包磨损得厉害，而且，太瘪了，每张钱都很熟悉。老板要借5块钱，犹豫再三，摩挚着纸币，最终还是把钱送了出去。卖血。鲜血在塑料袋里面渗开，那是一个男人所能奉献的最后。拿着卖血的钱，克里斯仍然去买电子元件。一点点的希望，都要去坚持。</p><p>对于父母，最心酸的事儿是什么呢?就是子女的一点可怜的愿望得不到满足。克里斯托夫的惟一的玩偶“美国英雄”，在一次挤车的过程中掉到了地上。5岁的男孩悲伤欲绝，克里斯坚硬的表情下，读出的是面对困难的凶狠和惨痛。但是，无论多么深切的无望，都没有摧毁父子间的亲情与他们的信念，他们相信幸福总会落到自己的身上。“你是个好爸爸”，克里斯托夫跟着爸爸四处流浪，可是孩子的心灵，衡量的砝码和天使是—样的。</p><p>克里斯最终成为了投资公司的员工，看似冷漠的白人老板们，此时显出他们的些微温情。他忍住了泪水，颤抖着拿起自己的物品，走入了茫茫人海。在熙熙攘攘的人群中间，克里斯举起手，为自己鼓掌，那无声的，一下下重重的掌声，是在为自己喝彩。其实，克里斯托夫的“美国英雄”并没有失落。</p><p>这是一个非常典型的“美国梦”:一个人通过自己的努力，可以实现自己的梦想，幸福，会来敲门。很多人往往会关注对于梦想的树立，而往往忽略过程的艰辛。特别是，当面对一个看似无望的现实的时候，有多少人会坚持，多少人会放弃呢?生活总是在不断地修正，并且提醒我们，顺应大潮的人总是较有可能抵达成功的彼岸。可是，确实是有些人，愿意逆流而上。我相信，这是导演对于逆行者的一点鼓励。</p><p>那个香港的匿名毕业生后来博士毕业，找到了一份不错的工作，有了漂亮的妻子和可爱的孩子。这个强人在帖子里说，有什么坚持不下来的呢?只要有梦想</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newstype`
--

DROP TABLE IF EXISTS `newstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newstype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='公告信息分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newstype`
--

LOCK TABLES `newstype` WRITE;
/*!40000 ALTER TABLE `newstype` DISABLE KEYS */;
INSERT INTO `newstype` VALUES (141,'2025-01-30 13:19:53','分类名称1'),(142,'2025-01-30 13:19:53','分类名称2'),(143,'2025-01-30 13:19:53','分类名称3'),(144,'2025-01-30 13:19:53','分类名称4'),(145,'2025-01-30 13:19:53','分类名称5'),(146,'2025-01-30 13:19:53','分类名称6'),(147,'2025-01-30 13:19:53','分类名称7'),(148,'2025-01-30 13:19:53','通知信息');
/*!40000 ALTER TABLE `newstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410554731 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1712409822707,'2025-01-30 13:23:42',1712409813721,32,'kechengxinxi','课程名称2','upload/kechengxinxi_kechengfengmian2.jpg','1','课程类型2',NULL),(1712409893989,'2025-01-30 13:24:53',1712409813721,33,'kechengxinxi','课程名称3','upload/kechengxinxi_kechengfengmian3.jpg','1','课程类型3',NULL),(1712409903965,'2025-01-30 13:25:03',1712409813721,55,'ziliaoxinxi','资料名称5','upload/ziliaoxinxi_fengmian5.jpg','1',NULL,NULL),(1712409920340,'2025-01-30 13:25:20',1712409813721,91,'forum','帖子标题1','1','21',NULL,NULL),(1712410493307,'2025-01-30 13:34:53',1712409813721,37,'kechengxinxi','课程名称7','upload/kechengxinxi_kechengfengmian7.jpg','1','课程类型7',NULL),(1712410554304,'2025-01-30 13:35:54',1712409813721,158,'news','考研公告','upload/news_picture8.jpg','21',NULL,NULL),(1712410554730,'2025-01-30 13:35:54',1712409813721,158,'news','考研公告','upload/news_picture8.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统简介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2025-01-30 13:19:53','考研简介','SYSTEM INTRODUCTION','<p>在平静的海平面上，每个人都可以成为领航员。但如果只有阳光而没有阴影，只有欢乐而没有痛苦，那就不是完整的人生。就拿最幸福的人来说吧——他的幸福是一团纠结的纱线。痛苦和幸福轮番而至，让我们悲喜交集，甚至死亡都让人生更加可爱。人在生命的严肃时刻，在悲伤与丧亲的阴影下，才最接近真实的自我。在生活和事业的各个方面，才智的功能远不如性格，头脑的功能远不如心性，天分远不如自制力、毅力与教养。我始终认为内心开始过严肃生活的人，他外在的生活会开始变得更为俭朴。在一个奢侈浪费的年代，但愿我能让世人了解：人类真正的需求是多么的稀少。不重蹈覆辙才是真正的醒悟。比别人优秀并无任何高贵之处，真正的高贵在于超越从前的自我。</p>','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2025-01-30 13:19:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712409813722 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (21,'2025-01-30 13:19:52','学号1','123456','学生姓名1','upload/xuesheng_touxiang1.jpg','男','班级1','13823888881'),(22,'2025-01-30 13:19:52','学号2','123456','学生姓名2','upload/xuesheng_touxiang2.jpg','男','班级2','13823888882'),(23,'2025-01-30 13:19:52','学号3','123456','学生姓名3','upload/xuesheng_touxiang3.jpg','男','班级3','13823888883'),(24,'2025-01-30 13:19:52','学号4','123456','学生姓名4','upload/xuesheng_touxiang4.jpg','男','班级4','13823888884'),(25,'2025-01-30 13:19:52','学号5','123456','学生姓名5','upload/xuesheng_touxiang5.jpg','男','班级5','13823888885'),(26,'2025-01-30 13:19:52','学号6','123456','学生姓名6','upload/xuesheng_touxiang6.jpg','男','班级6','13823888886'),(27,'2025-01-30 13:19:52','学号7','123456','学生姓名7','upload/xuesheng_touxiang7.jpg','男','班级7','13823888887'),(28,'2025-01-30 13:19:52','学号8','123456','学生姓名8','upload/xuesheng_touxiang8.jpg','男','班级8','13823888888'),(1712409813721,'2025-01-30 13:23:33','11','11','小小','upload/1712409802539.jpg','女','205','13823811111');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexijihua`
--

DROP TABLE IF EXISTS `xuexijihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexijihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jihuabiaoti` varchar(200) DEFAULT NULL COMMENT '计划标题',
  `tupian` longtext COMMENT '图片',
  `jihuaneirong` longtext NOT NULL COMMENT '计划内容',
  `jihuamubiao` longtext NOT NULL COMMENT '计划目标',
  `jihuashijian` varchar(200) NOT NULL COMMENT '计划时间',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712409973223 DEFAULT CHARSET=utf8 COMMENT='学习计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexijihua`
--

LOCK TABLES `xuexijihua` WRITE;
/*!40000 ALTER TABLE `xuexijihua` DISABLE KEYS */;
INSERT INTO `xuexijihua` VALUES (71,'2025-01-30 13:19:53','计划标题1','upload/xuexijihua_tupian1.jpg,upload/xuexijihua_tupian2.jpg,upload/xuexijihua_tupian3.jpg','计划内容1','计划目标1','计划时间1','2025-01-30 21:19:53','学号1','学生姓名1','班级1'),(72,'2025-01-30 13:19:53','计划标题2','upload/xuexijihua_tupian2.jpg,upload/xuexijihua_tupian3.jpg,upload/xuexijihua_tupian4.jpg','计划内容2','计划目标2','计划时间2','2025-01-30 21:19:53','学号2','学生姓名2','班级2'),(73,'2025-01-30 13:19:53','计划标题3','upload/xuexijihua_tupian3.jpg,upload/xuexijihua_tupian4.jpg,upload/xuexijihua_tupian5.jpg','计划内容3','计划目标3','计划时间3','2025-01-30 21:19:53','学号3','学生姓名3','班级3'),(74,'2025-01-30 13:19:53','计划标题4','upload/xuexijihua_tupian4.jpg,upload/xuexijihua_tupian5.jpg,upload/xuexijihua_tupian6.jpg','计划内容4','计划目标4','计划时间4','2025-01-30 21:19:53','学号4','学生姓名4','班级4'),(75,'2025-01-30 13:19:53','计划标题5','upload/xuexijihua_tupian5.jpg,upload/xuexijihua_tupian6.jpg,upload/xuexijihua_tupian7.jpg','计划内容5','计划目标5','计划时间5','2025-01-30 21:19:53','学号5','学生姓名5','班级5'),(76,'2025-01-30 13:19:53','计划标题6','upload/xuexijihua_tupian6.jpg,upload/xuexijihua_tupian7.jpg,upload/xuexijihua_tupian8.jpg','计划内容6','计划目标6','计划时间6','2025-01-30 21:19:53','学号6','学生姓名6','班级6'),(77,'2025-01-30 13:19:53','计划标题7','upload/xuexijihua_tupian7.jpg,upload/xuexijihua_tupian8.jpg,upload/xuexijihua_tupian9.jpg','计划内容7','计划目标7','计划时间7','2025-01-30 21:19:53','学号7','学生姓名7','班级7'),(78,'2025-01-30 13:19:53','计划标题8','upload/xuexijihua_tupian8.jpg,upload/xuexijihua_tupian9.jpg,upload/xuexijihua_tupian10.jpg','计划内容8','计划目标8','计划时间8','2025-01-30 21:19:53','学号8','学生姓名8','班级8'),(1712409973222,'2025-01-30 13:26:13','计划标题计划标题','upload/1712410010323.jpg','<p>计划内容计划内容计划内容计划内容计划内容计划内容计划内容计划内容计划内容计划内容计划内容计划内容计划内容</p>','计划目标\n计划目标\n计划目标\n计划目标\n计划目标\n','计划时间','2025-01-30 21:25:53','11','小小','205');
/*!40000 ALTER TABLE `xuexijihua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziliaoleixing`
--

DROP TABLE IF EXISTS `ziliaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziliaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaoleixing` varchar(200) NOT NULL COMMENT '资料类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziliaoleixing` (`ziliaoleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='资料类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziliaoleixing`
--

LOCK TABLES `ziliaoleixing` WRITE;
/*!40000 ALTER TABLE `ziliaoleixing` DISABLE KEYS */;
INSERT INTO `ziliaoleixing` VALUES (61,'2025-01-30 13:19:53','资料类型1'),(62,'2025-01-30 13:19:53','资料类型2'),(63,'2025-01-30 13:19:53','资料类型3'),(64,'2025-01-30 13:19:53','资料类型4'),(65,'2025-01-30 13:19:53','资料类型5'),(66,'2025-01-30 13:19:53','资料类型6'),(67,'2025-01-30 13:19:53','资料类型7'),(68,'2025-01-30 13:19:53','资料类型8');
/*!40000 ALTER TABLE `ziliaoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziliaoxinxi`
--

DROP TABLE IF EXISTS `ziliaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziliaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `ziliaojianjie` longtext COMMENT '资料简介',
  `ziliaoleixing` varchar(200) DEFAULT NULL COMMENT '资料类型',
  `ziliaofujian` longtext COMMENT '资料附件',
  `fengmian` longtext COMMENT '封面',
  `ziliaoxiangqing` longtext COMMENT '资料详情',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712410136667 DEFAULT CHARSET=utf8 COMMENT='资料信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziliaoxinxi`
--

LOCK TABLES `ziliaoxinxi` WRITE;
/*!40000 ALTER TABLE `ziliaoxinxi` DISABLE KEYS */;
INSERT INTO `ziliaoxinxi` VALUES (51,'2025-01-30 13:19:52','资料名称1','资料简介1','资料类型1','','upload/ziliaoxinxi_fengmian1.jpg,upload/ziliaoxinxi_fengmian2.jpg,upload/ziliaoxinxi_fengmian3.jpg','资料详情1','教师工号1','教师姓名1','2025-01-30 21:19:52','2025-01-30 21:19:52',1,0,1),(52,'2025-01-30 13:19:52','资料名称2','资料简介2','资料类型2','','upload/ziliaoxinxi_fengmian2.jpg,upload/ziliaoxinxi_fengmian3.jpg,upload/ziliaoxinxi_fengmian4.jpg','资料详情2','教师工号2','教师姓名2','2025-01-30 21:19:52','2025-01-30 21:19:52',2,0,2),(53,'2025-01-30 13:19:52','资料名称3','资料简介3','资料类型3','','upload/ziliaoxinxi_fengmian3.jpg,upload/ziliaoxinxi_fengmian4.jpg,upload/ziliaoxinxi_fengmian5.jpg','资料详情3','教师工号3','教师姓名3','2025-01-30 21:19:52','2025-01-30 21:19:52',3,0,3),(54,'2025-01-30 13:19:52','资料名称4','资料简介4','资料类型4','','upload/ziliaoxinxi_fengmian4.jpg,upload/ziliaoxinxi_fengmian5.jpg,upload/ziliaoxinxi_fengmian6.jpg','资料详情4','教师工号4','教师姓名4','2025-01-30 21:19:52','2025-01-30 21:22:27',5,0,4),(55,'2025-01-30 13:19:53','资料名称5','资料简介5','资料类型5','','upload/ziliaoxinxi_fengmian5.jpg,upload/ziliaoxinxi_fengmian6.jpg,upload/ziliaoxinxi_fengmian7.jpg','资料详情5','教师工号5','教师姓名5','2025-01-30 21:19:53','2025-01-30 21:25:02',6,0,6),(56,'2025-01-30 13:19:53','资料名称6','资料简介6','资料类型6','','upload/ziliaoxinxi_fengmian6.jpg,upload/ziliaoxinxi_fengmian7.jpg,upload/ziliaoxinxi_fengmian8.jpg','资料详情6','教师工号6','教师姓名6','2025-01-30 21:19:53','2025-01-30 21:19:53',6,0,6),(57,'2025-01-30 13:19:53','资料名称7','资料简介7','资料类型7','','upload/ziliaoxinxi_fengmian7.jpg,upload/ziliaoxinxi_fengmian8.jpg,upload/ziliaoxinxi_fengmian9.jpg','资料详情7','教师工号7','教师姓名7','2025-01-30 21:19:53','2025-01-30 21:19:53',7,0,7),(58,'2025-01-30 13:19:53','资料名称8','资料简介8','资料类型8','','upload/ziliaoxinxi_fengmian8.jpg,upload/ziliaoxinxi_fengmian9.jpg,upload/ziliaoxinxi_fengmian10.jpg','资料详情8','教师工号8','教师姓名8','2025-01-30 21:19:53','2025-01-30 21:19:53',8,0,8),(1712410136666,'2025-01-30 13:28:56','资料名称资料名称资料名称','资料简介\n资料简介\n','资料类型3','upload/1712410130158.txt','upload/1712410126815.jpg','<p><span style=\"color: rgb(51, 51, 51);\">资料详情资料详情资料详情资料详情资料详情资料详情资料详情资料详情资料详情资料详情</span></p>','22','李四','2025-01-30 21:28:30','2025-01-30 21:35:16',1,0,0);
/*!40000 ALTER TABLE `ziliaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 20:12:34
