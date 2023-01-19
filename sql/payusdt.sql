/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : payusdt

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 19/01/2023 16:46:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `user_id` int(11) DEFAULT '0' COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
BEGIN;
INSERT INTO `fa_admin` VALUES (1, 'admin', 'Admin', 'b6232d28e00f5af7bea4632a53ffdde0', '3f724d', 'http://local.gxzjp.com/assets/img/avatar.png', 'admin@admin.com', '', 0, 1674116063, '127.0.0.1', 1491635035, 1674116063, '49316f24-2509-4598-9285-863c6a9c6864', 'normal', 0);
INSERT INTO `fa_admin` VALUES (2, '10161822848', '10161822848@qq.com', 'ef638d1b5ceb68616744c771b89ad58d', 'bdXtWP', '/assets/img/avatar.png', '10161822848@qq.com', '', 0, 1672321484, '127.0.0.1', 1672283080, 1672321484, '4018ce58-5b7f-4b2e-b03e-b2bcbfcc8408', 'normal', 5);
INSERT INTO `fa_admin` VALUES (3, 'kimarifreelan', 'Ari', 'e0cf3b2c40924ee9679a45d5304f9914', '4HPEef', '/assets/img/avatar.png', 'kimarifreelance@gmail.com', '', 0, 1673188196, '127.0.0.1', 1673188134, 1673188484, '', 'normal', 4);
COMMIT;

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '日志标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'User-Agent',
  `createtime` bigint(16) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `fa_admin_log` VALUES (1, 1, 'admin', '/EIzjFDGxCM.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"jqxw\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669213615);
INSERT INTO `fa_admin_log` VALUES (2, 1, 'admin', '/EIzjFDGxCM.php/addon/install', '插件管理', '{\"name\":\"summernote\",\"force\":\"0\",\"uid\":\"35670\",\"token\":\"***\",\"version\":\"1.0.5\",\"faversion\":\"1.3.4.20220530\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669259569);
INSERT INTO `fa_admin_log` VALUES (3, 1, 'admin', '/EIzjFDGxCM.php/addon/state', '插件管理 / 禁用启用', '{\"name\":\"summernote\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669259569);
INSERT INTO `fa_admin_log` VALUES (4, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"categorytype\":\"{&quot;default&quot;:&quot;默认&quot;,&quot;page&quot;:&quot;单页&quot;,&quot;article&quot;:&quot;文章&quot;,&quot;test&quot;:&quot;Test&quot;}\",\"configgroup\":\"{&quot;basic&quot;:&quot;基础配置&quot;,&quot;dictionary&quot;:&quot;字典配置&quot;}\",\"attachmentcategory\":\"{&quot;category1&quot;:&quot;分类一&quot;,&quot;category2&quot;:&quot;分类二&quot;,&quot;custom&quot;:&quot;自定义&quot;}\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260065);
INSERT INTO `fa_admin_log` VALUES (5, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"categorytype\":\"{&quot;default&quot;:&quot;默认&quot;,&quot;page&quot;:&quot;单页&quot;,&quot;article&quot;:&quot;文章&quot;,&quot;test&quot;:&quot;Test&quot;}\",\"configgroup\":\"{&quot;basic&quot;:&quot;基础配置&quot;,&quot;dictionary&quot;:&quot;字典配置&quot;,&quot;qiniu&quot;:&quot;七牛云&quot;}\",\"attachmentcategory\":\"{&quot;category1&quot;:&quot;分类一&quot;,&quot;category2&quot;:&quot;分类二&quot;,&quot;custom&quot;:&quot;自定义&quot;}\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260090);
INSERT INTO `fa_admin_log` VALUES (6, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"accessKey\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260864);
INSERT INTO `fa_admin_log` VALUES (7, 1, 'admin', '/EIzjFDGxCM.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"qiniu\",\"type\":\"string\",\"name\":\"accessKey\",\"title\":\"accessKey\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"required\",\"visible\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260870);
INSERT INTO `fa_admin_log` VALUES (8, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"secretKey\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260883);
INSERT INTO `fa_admin_log` VALUES (9, 1, 'admin', '/EIzjFDGxCM.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"qiniu\",\"type\":\"string\",\"name\":\"secretKey\",\"title\":\"secretKey\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"required\",\"visible\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260886);
INSERT INTO `fa_admin_log` VALUES (10, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"bucket\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260894);
INSERT INTO `fa_admin_log` VALUES (11, 1, 'admin', '/EIzjFDGxCM.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"qiniu\",\"type\":\"string\",\"name\":\"bucket\",\"title\":\"bucket\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"required\",\"visible\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260896);
INSERT INTO `fa_admin_log` VALUES (12, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"gMKi-2hF-Yf2ouw7X6n4Q9okGk3KKIa5mYoAloUz\",\"secretKey\":\"siGSntV-hP8oM4T5ZC3627k0euocNImF6FVVp5I8\",\"bucket\":\"gstxzb\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260970);
INSERT INTO `fa_admin_log` VALUES (13, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"空间域名\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669260988);
INSERT INTO `fa_admin_log` VALUES (14, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"domain\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669261000);
INSERT INTO `fa_admin_log` VALUES (15, 1, 'admin', '/EIzjFDGxCM.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"qiniu\",\"type\":\"string\",\"name\":\"domain\",\"title\":\"空间域名\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"required\",\"visible\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669261000);
INSERT INTO `fa_admin_log` VALUES (16, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"gMKi-2hF-Yf2ouw7X6n4Q9okGk3KKIa5mYoAloUz\",\"secretKey\":\"siGSntV-hP8oM4T5ZC3627k0euocNImF6FVVp5I8\",\"bucket\":\"gstxzb\",\"domain\":\"http:\\/\\/img.gszbapp.cn\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669261005);
INSERT INTO `fa_admin_log` VALUES (17, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263072);
INSERT INTO `fa_admin_log` VALUES (18, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263114);
INSERT INTO `fa_admin_log` VALUES (19, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"gMKi-2hF-Yf2ouw7X6n4Q9okGk3KKIa5mYoAloUz\",\"secretKey\":\"siGSntV-hP8oM4T5ZC3627k0euocNImF6FVVp5I8\",\"bucket\":\"gstxzb\",\"domain\":\"http:\\/\\/img.gszbapp.cn\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263126);
INSERT INTO `fa_admin_log` VALUES (20, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"gMKi-2hF-Yf2ouw7X6n4Q9okGk3KKIa5mYoAloUz\",\"secretKey\":\"siGSntV-hP8oM4T5ZC3627k0euocNImF6FVVp5I8\",\"bucket\":\"gstxzb\",\"domain\":\"http:\\/\\/img.gszbapp.cn\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263128);
INSERT INTO `fa_admin_log` VALUES (21, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263137);
INSERT INTO `fa_admin_log` VALUES (22, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"73\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263228);
INSERT INTO `fa_admin_log` VALUES (23, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"79\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263229);
INSERT INTO `fa_admin_log` VALUES (24, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/2?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"general\",\"title\":\"系统设置\",\"url\":\"\",\"icon\":\"fa fa-cogs\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"137\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263306);
INSERT INTO `fa_admin_log` VALUES (25, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/6?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"2\",\"name\":\"general\\/config\",\"title\":\"基础配置\",\"url\":\"\",\"icon\":\"fa fa-cog\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"可以在此增改系统的变量和分组,也可以自定义分组和变量\",\"weigh\":\"60\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669263326);
INSERT INTO `fa_admin_log` VALUES (26, 1, 'admin', '/EIzjFDGxCM.php/general/app/add?dialog=1', '系统设置 / APP版本 / 添加', '{\"dialog\":\"1\",\"row\":{\"version\":\"100\",\"info\":\"首次上线\",\"platform\":\"android\",\"addtime\":\"2022-11-24 15:12:01\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669273934);
INSERT INTO `fa_admin_log` VALUES (27, 1, 'admin', '/EIzjFDGxCM.php/general/app/edit/ids/0?dialog=1', '系统设置 / APP版本 / 编辑', '{\"dialog\":\"1\",\"row\":{\"version\":\"100\",\"info\":\"首次上线\",\"platform\":\"android\",\"addtime\":\"2022-11-24 15:12:01\"},\"ids\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669274014);
INSERT INTO `fa_admin_log` VALUES (28, 1, 'admin', '/EIzjFDGxCM.php/general/home/add?dialog=1', '系统设置 / 首页板块 / 添加', '{\"dialog\":\"1\",\"row\":{\"lang\":\"fr\",\"name\":\"休闲\",\"pic\":\"1\",\"info\":\"2221212\",\"sort\":\"1\",\"page\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284189);
INSERT INTO `fa_admin_log` VALUES (29, 1, 'admin', '/EIzjFDGxCM.php/general/home/add?dialog=1', '系统设置 / 首页板块 / 添加', '{\"dialog\":\"1\",\"row\":{\"lang\":\"fr\",\"name\":\"休闲\",\"pic\":\"1\",\"info\":\"2221212\",\"sort\":\"1\",\"page\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284191);
INSERT INTO `fa_admin_log` VALUES (30, 1, 'admin', '/EIzjFDGxCM.php/general/home/add?dialog=1', '系统设置 / 首页板块 / 添加', '{\"dialog\":\"1\",\"row\":{\"lang\":\"fr\",\"name\":\"休闲\",\"pic\":\"1\",\"info\":\"2221212\",\"sort\":\"1\",\"page\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284191);
INSERT INTO `fa_admin_log` VALUES (31, 1, 'admin', '/EIzjFDGxCM.php/general/home/add?dialog=1', '系统设置 / 首页板块 / 添加', '{\"dialog\":\"1\",\"row\":{\"lang\":\"fr\",\"name\":\"休闲\",\"pic\":\"1\",\"info\":\"2221212\",\"sort\":\"1\",\"page\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284192);
INSERT INTO `fa_admin_log` VALUES (32, 1, 'admin', '/EIzjFDGxCM.php/general/home/add?dialog=1', '系统设置 / 首页板块 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"ar\",\"name\":\"\",\"pic\":\"\",\"info\":\"\",\"sort\":\"1\",\"page\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284244);
INSERT INTO `fa_admin_log` VALUES (33, 1, 'admin', '/EIzjFDGxCM.php/general/home/edit/ids/1?dialog=1', '系统设置 / 首页板块 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"es\",\"name\":\"\",\"pic\":\"\",\"info\":\"\",\"sort\":\"1\",\"page\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284254);
INSERT INTO `fa_admin_log` VALUES (34, 1, 'admin', '/EIzjFDGxCM.php/general/home/edit/ids/1?dialog=1', '系统设置 / 首页板块 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"fr\",\"name\":\"\",\"pic\":\"\",\"info\":\"\",\"sort\":\"1\",\"page\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284258);
INSERT INTO `fa_admin_log` VALUES (35, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284397);
INSERT INTO `fa_admin_log` VALUES (36, 1, 'admin', '/EIzjFDGxCM.php/general/home/edit/ids/1?dialog=1', '系统设置 / 首页板块 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"fr\",\"name\":\"\",\"pic\":\"http:\\/\\/img.gszbapp.cn\\/niuniu\\/20221124\\/e66b2ea1d7b7269c23f33a2812742698.png\",\"info\":\"如果在自动侦测语言的时候，希望设置允许的语言列表，不在列表范围的语言则仍然使用默认语言，可以使用：\",\"sort\":\"1\",\"page\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284426);
INSERT INTO `fa_admin_log` VALUES (37, 1, 'admin', '/EIzjFDGxCM.php/general/home/edit/ids/1?dialog=1', '系统设置 / 首页板块 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"fr\",\"name\":\"dd\",\"pic\":\"http:\\/\\/img.gszbapp.cn\\/niuniu\\/20221124\\/e66b2ea1d7b7269c23f33a2812742698.png\",\"info\":\"如果在自动侦测语言的时候，希望设置允许的语言列表，不在列表范围的语言则仍然使用默认语言，可以使用：\",\"sort\":\"1\",\"page\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669284897);
INSERT INTO `fa_admin_log` VALUES (38, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669293845);
INSERT INTO `fa_admin_log` VALUES (39, 1, 'admin', '/EIzjFDGxCM.php/general/article/add?dialog=1', '系统设置 / 内容管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"测试功能\",\"content\":\"这是一篇公告\",\"addtime\":\"2022-11-24 20:43:50\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669293869);
INSERT INTO `fa_admin_log` VALUES (40, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/109?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"yunyin\",\"title\":\"运营设置\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"109\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669303019);
INSERT INTO `fa_admin_log` VALUES (41, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/add?dialog=1', '运营设置 / 产品管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"cn_name\":\"雨伞\",\"en_name\":\"Umbrella\",\"ar_name\":\"Umbrella\",\"es_name\":\"Umbrella\",\"fr_name\":\"Parapluie\",\"pic\":\"\",\"photos\":\"\",\"cn_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"en_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"ar_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"es_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"fr_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"price\":\"2\",\"maxbuy\":\"5\",\"profit\":\"2\",\"recycler\":\"10\",\"status\":\"1\",\"addtime\":\"2022-11-24 23:42:18\",\"uptime\":\"2022-11-24 23:42:18\",\"del\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669304627);
INSERT INTO `fa_admin_log` VALUES (42, 1, 'admin', '/EIzjFDGxCM.php/yunyin/coupons/add?dialog=1', '运营设置 / 优惠券设置 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"新人注册\",\"amount\":\"1\",\"starttime\":\"2022-11-24 23:48:04\",\"endtime\":\"2022-12-10 23:48:04\",\"status\":\"0\",\"type\":\"1\",\"product_id\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669304908);
INSERT INTO `fa_admin_log` VALUES (43, 1, 'admin', '/EIzjFDGxCM.php/yunyin/coupons/add?dialog=1', '运营设置 / 优惠券设置 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"新人注册\",\"amount\":\"1\",\"starttime\":\"2022-11-24 23:48:04\",\"endtime\":\"2022-12-10 23:48:04\",\"status\":\"0\",\"type\":\"1\",\"product_id\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669304925);
INSERT INTO `fa_admin_log` VALUES (44, 1, 'admin', '/EIzjFDGxCM.php/yunyin/coupons/add?dialog=1', '运营设置 / 优惠券设置 / 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"充电宝代金券\",\"amount\":\"23\",\"starttime\":\"2022-11-25 12:13:55\",\"endtime\":\"2022-12-10 12:13:55\",\"status\":\"1\",\"type\":\"3\",\"product_id\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669349658);
INSERT INTO `fa_admin_log` VALUES (45, 1, 'admin', '/EIzjFDGxCM.php/yunyin/coupons/edit/ids/2?dialog=1', '运营设置 / 优惠券设置 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"充电宝代金券\",\"amount\":\"2\",\"starttime\":\"2022-11-25 12:13:55\",\"endtime\":\"2022-12-10 12:13:55\",\"status\":\"1\",\"type\":\"2\",\"product_id\":\"1\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669349753);
INSERT INTO `fa_admin_log` VALUES (46, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"绑定usdt地址说明\",\"es_title\":\"绑定usdt地址说明\",\"fr_title\":\"绑定usdt地址说明\",\"ar_title\":\"绑定usdt地址说明\",\"en_content\":\"绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明\",\"es_content\":\"绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明\",\"fr_content\":\"绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明\",\"ar_content\":\"绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明绑定usdt地址说明\",\"addtime\":\"2022-11-25 12:26:23\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669350409);
INSERT INTO `fa_admin_log` VALUES (47, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"109\",\"name\":\"general\\/bons\",\"title\":\"奖励制度\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669384589);
INSERT INTO `fa_admin_log` VALUES (48, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/152?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"109\",\"name\":\"general\\/config\\/bons\",\"title\":\"奖励制度\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"152\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669384620);
INSERT INTO `fa_admin_log` VALUES (49, 1, 'admin', '/EIzjFDGxCM.php/auth/group/roletree', '权限管理 / 角色组', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669384814);
INSERT INTO `fa_admin_log` VALUES (50, 1, 'admin', '/EIzjFDGxCM.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"3\",\"pid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669384838);
INSERT INTO `fa_admin_log` VALUES (51, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 奖励制度', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669387373);
INSERT INTO `fa_admin_log` VALUES (52, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 奖励制度', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669387892);
INSERT INTO `fa_admin_log` VALUES (53, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 奖励制度', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"38\",\"agent3\":\"4\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669387897);
INSERT INTO `fa_admin_log` VALUES (54, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 奖励制度', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669387903);
INSERT INTO `fa_admin_log` VALUES (55, 1, 'admin', '/EIzjFDGxCM.php/general/article/add?dialog=1', '系统设置 / 内容管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669388497);
INSERT INTO `fa_admin_log` VALUES (56, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669388560);
INSERT INTO `fa_admin_log` VALUES (57, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669388691);
INSERT INTO `fa_admin_log` VALUES (58, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389022);
INSERT INTO `fa_admin_log` VALUES (59, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389025);
INSERT INTO `fa_admin_log` VALUES (60, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389147);
INSERT INTO `fa_admin_log` VALUES (61, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389161);
INSERT INTO `fa_admin_log` VALUES (62, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"2022-11-25 23:12:47\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389168);
INSERT INTO `fa_admin_log` VALUES (63, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"2022-11-25 23:12:47\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389172);
INSERT INTO `fa_admin_log` VALUES (64, 1, 'admin', '/EIzjFDGxCM.php/general/article/edit/ids/2?dialog=1', '系统设置 / 内容管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"2022-11-25 23:12:47\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389211);
INSERT INTO `fa_admin_log` VALUES (65, 1, 'admin', '/EIzjFDGxCM.php/general/article/add?dialog=1', '系统设置 / 内容管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"\",\"content\":\"\",\"alertendtime\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669389239);
INSERT INTO `fa_admin_log` VALUES (66, 1, 'admin', '/EIzjFDGxCM.php/user/user/edit/ids/2?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"2\",\"group_id\":\"1\",\"username\":\"1061822848@qq.com\",\"nickname\":\"1061822848@qq.com\",\"password\":\"***\",\"email\":\"1061822848@qq.com\",\"mobile\":\"\",\"avatar\":\"\",\"level\":\"1\",\"gender\":\"0\",\"birthday\":\"\",\"bio\":\"\",\"successions\":\"1\",\"maxsuccessions\":\"1\",\"prevtime\":\"2022-11-24 16:09:26\",\"logintime\":\"2022-11-24 16:09:26\",\"loginip\":\"127.0.0.1\",\"loginfailure\":\"0\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2022-11-24 16:09:26\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669391070);
INSERT INTO `fa_admin_log` VALUES (67, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/add?dialog=1', '运营设置 / 产品管理 / 添加', '{\"dialog\":\"1\",\"row\":{\"cn_name\":\"自行车\",\"en_name\":\"自行车\",\"ar_name\":\"自行车\",\"es_name\":\"自行车\",\"fr_name\":\"自行车\",\"pic\":\"upload\\/20220107\\/8fd914945ec0ecf25bf75ecf93cabba6.jpeg\",\"photos\":\"\",\"cn_content\":\"自行车\",\"en_content\":\"自行车\",\"ar_content\":\"自行车\",\"es_content\":\"自行车\",\"fr_content\":\"自行车\",\"price\":\"10\",\"maxbuy\":\"6\",\"profit\":\"2\",\"recycler\":\"5.00\",\"status\":\"0\",\"addtime\":\"2022-11-26 10:21:39\",\"uptime\":\"2022-11-26 10:21:39\",\"del\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669429339);
INSERT INTO `fa_admin_log` VALUES (68, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669429719);
INSERT INTO `fa_admin_log` VALUES (69, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/edit/ids/2?dialog=1', '运营设置 / 产品管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"cn_name\":\"自行车\",\"en_name\":\"自行车\",\"ar_name\":\"自行车\",\"es_name\":\"自行车\",\"fr_name\":\"自行车\",\"pic\":\"http:\\/\\/img.gszbapp.cn\\/niuniu\\/20221126\\/3eee7401b6267a41efa617fd875c92da.png\",\"cn_content\":\"自行车\",\"en_content\":\"自行车\",\"ar_content\":\"自行车\",\"es_content\":\"自行车\",\"fr_content\":\"自行车\",\"price\":\"10.0\",\"maxbuy\":\"6\",\"profit\":\"2.00\",\"recycler\":\"5.00\",\"status\":\"0\",\"addtime\":\"2022-11-26 10:21:39\",\"uptime\":\"2022-11-26 10:21:39\",\"del\":\"0\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669429721);
INSERT INTO `fa_admin_log` VALUES (70, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669429731);
INSERT INTO `fa_admin_log` VALUES (71, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/edit/ids/1?dialog=1', '运营设置 / 产品管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"cn_name\":\"雨伞\",\"en_name\":\"Umbrella\",\"ar_name\":\"Umbrella\",\"es_name\":\"Umbrella\",\"fr_name\":\"Parapluie\",\"pic\":\"http:\\/\\/img.gszbapp.cn\\/niuniu\\/20221126\\/d64f55faa2bf1eded1d2ba7045ddebb1.png\",\"cn_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"en_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"ar_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"es_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"fr_content\":\"UmbrellaUmbrellaUmbrellaUmbrella\",\"price\":\"2.0\",\"maxbuy\":\"5\",\"profit\":\"2.00\",\"recycler\":\"10.00\",\"status\":\"1\",\"addtime\":\"2022-11-24 23:42:18\",\"uptime\":\"2022-11-24 23:42:18\",\"del\":\"0\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669429732);
INSERT INTO `fa_admin_log` VALUES (72, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/152?dialog=1', 'Auth / Rule / Edit', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"109\",\"name\":\"general\\/config\\/bons\",\"title\":\"参数设置\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"152\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669443043);
INSERT INTO `fa_admin_log` VALUES (73, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"提现页面规则说明\",\"es_title\":\"提现页面规则说明\",\"fr_title\":\"提现页面规则说明\",\"ar_title\":\"提现页面规则说明\",\"en_content\":\"提现页面规则说明\",\"es_content\":\"提现页面规则说明\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-11-26 14:58:12\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669445906);
INSERT INTO `fa_admin_log` VALUES (74, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"42\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669447973);
INSERT INTO `fa_admin_log` VALUES (75, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669447978);
INSERT INTO `fa_admin_log` VALUES (76, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawfee\":\"10\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669448257);
INSERT INTO `fa_admin_log` VALUES (77, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"134\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669449815);
INSERT INTO `fa_admin_log` VALUES (78, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/del', '运营设置 / 产品管理 / 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669451582);
INSERT INTO `fa_admin_log` VALUES (79, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawefee\":\"10\",\"recharge_usdt_giveecoin\":\"100\",\"recharge_usdt_giveecoin_re\":\"50\",\"usdt_to_ecoin\":\"500\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669475205);
INSERT INTO `fa_admin_log` VALUES (80, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawefee\":\"10\",\"recharge_usdt_giveecoin\":\"100\",\"recharge_usdt_giveecoin_re\":\"50\",\"usdt_to_ecoin\":\"500\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669475449);
INSERT INTO `fa_admin_log` VALUES (81, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"ecoin充值规则\",\"es_title\":\"ecoin充值规则\",\"fr_title\":\"ecoin充值规则\",\"ar_title\":\"ecoin充值规则\",\"en_content\":\"ecoin充值规则\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-11-26 23:14:05\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669475654);
INSERT INTO `fa_admin_log` VALUES (82, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"ecoin转增规则\",\"es_title\":\"ecoin转增规则\",\"fr_title\":\"ecoin转增规则\",\"ar_title\":\"ecoin转增规则\",\"en_content\":\"ecoin转增规则，转给好友\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-11-26 23:28:29\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669476524);
INSERT INTO `fa_admin_log` VALUES (83, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawefee\":\"10\",\"usdt_recharge_endtime\":\"24343\",\"recharge_usdt_giveecoin\":\"100\",\"recharge_usdt_giveecoin_re\":\"50\",\"usdt_to_ecoin\":\"500\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669522247);
INSERT INTO `fa_admin_log` VALUES (84, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawefee\":\"10\",\"usdt_recharge_endtime\":\"60\",\"recharge_usdt_giveecoin\":\"100\",\"recharge_usdt_giveecoin_re\":\"50\",\"usdt_to_ecoin\":\"500\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669522252);
INSERT INTO `fa_admin_log` VALUES (85, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"usdt充值规则\",\"es_title\":\"usdt充值规则\",\"fr_title\":\"usdt充值规则\",\"ar_title\":\"usdt充值规则\",\"en_content\":\"usdt充值规则usdt充值规则usdt充值规则usdt充值规则\",\"es_content\":\"usdt充值规则\",\"fr_content\":\"usdt充值规则\",\"ar_content\":\"\",\"addtime\":\"2022-11-27 12:11:56\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669522327);
INSERT INTO `fa_admin_log` VALUES (86, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawefee\":\"10\",\"usdt_recharge_endtime\":\"60\",\"usdt_company_addr\":\"TAMgv6cwFgtURCqvFB9FFvkYL6fQG4o3bD\",\"recharge_usdt_giveecoin\":\"100\",\"recharge_usdt_giveecoin_re\":\"50\",\"usdt_to_ecoin\":\"500\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669558266);
INSERT INTO `fa_admin_log` VALUES (87, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/multi', '运营设置 / 产品管理 / 批量更新', '{\"action\":\"\",\"ids\":\"2\",\"params\":\"status=1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669607484);
INSERT INTO `fa_admin_log` VALUES (88, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/multi', '运营设置 / 产品管理 / 批量更新', '{\"action\":\"\",\"ids\":\"1\",\"params\":\"status=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669607492);
INSERT INTO `fa_admin_log` VALUES (89, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/159?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"order\",\"title\":\"订单中心\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"159\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669609064);
INSERT INTO `fa_admin_log` VALUES (90, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"66\",\"name\":\"user\\/user\\/bonuslog\",\"title\":\"资金明细\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669620711);
INSERT INTO `fa_admin_log` VALUES (91, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"我的团队\",\"es_title\":\"我的团队\",\"fr_title\":\"我的团队\",\"ar_title\":\"我的团队\",\"en_content\":\"我的团队收益说明\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-11-28 22:54:38\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669647294);
INSERT INTO `fa_admin_log` VALUES (92, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '系统设置 / 基础配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"WZ7KXntCgogw0K8zLZavMbMErvWso1KwuIsNlg4r\",\"secretKey\":\"DvuzyH3R7_2ZSHX7ZTso60X3miz4U3L5YFDMaPU-\",\"bucket\":\"esharei\",\"domain\":\"http:\\/\\/img.gszbapp.cn\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669648291);
INSERT INTO `fa_admin_log` VALUES (93, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '系统设置 / 基础配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"WZ7KXntCgogw0K8zLZavMbMErvWso1KwuIsNlg4r\",\"secretKey\":\"DvuzyH3R7_2ZSHX7ZTso60X3miz4U3L5YFDMaPU-\",\"bucket\":\"esharei\",\"domain\":\"https:\\/\\/img.esharecenter.com\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669734882);
INSERT INTO `fa_admin_log` VALUES (94, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669734935);
INSERT INTO `fa_admin_log` VALUES (95, 1, 'admin', '/EIzjFDGxCM.php/general/home/edit/ids/4?dialog=1', '系统设置 / 首页板块 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"en\",\"name\":\"钱包\",\"pic\":\"https:\\/\\/img.esharecenter.comniuniu\\/20221129\\/3ac088eb2e5734247c5141108dd7a93e.png\",\"info\":\"Wallet management, convenient cash withdrawal\",\"sort\":\"4\",\"page\":\"1\",\"dftag\":\"0\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669734941);
INSERT INTO `fa_admin_log` VALUES (96, 1, 'admin', '/EIzjFDGxCM.php/general/home/edit/ids/4?dialog=1', '系统设置 / 首页板块 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"en\",\"name\":\"钱包\",\"pic\":\"https:\\/\\/img.esharecenter.com\\/niuniu\\/20221129\\/3ac088eb2e5734247c5141108dd7a93e.png\",\"info\":\"Wallet management, convenient cash withdrawal\",\"sort\":\"4\",\"page\":\"1\",\"dftag\":\"0\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669734963);
INSERT INTO `fa_admin_log` VALUES (97, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '系统设置 / 基础配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"WZ7KXntCgogw0K8zLZavMbMErvWso1KwuIsNlg4r\",\"secretKey\":\"DvuzyH3R7_2ZSHX7ZTso60X3miz4U3L5YFDMaPU-\",\"bucket\":\"esharei\",\"domain\":\"https:\\/\\/img.esharecenter.com\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669734970);
INSERT INTO `fa_admin_log` VALUES (98, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '系统设置 / 基础配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"WZ7KXntCgogw0K8zLZavMbMErvWso1KwuIsNlg4r\",\"secretKey\":\"DvuzyH3R7_2ZSHX7ZTso60X3miz4U3L5YFDMaPU-\",\"bucket\":\"esharei\",\"domain\":\"https:\\/\\/img.esharecenter.com\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669734972);
INSERT INTO `fa_admin_log` VALUES (99, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '系统设置 / 基础配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"accessKey\":\"WZ7KXntCgogw0K8zLZavMbMErvWso1KwuIsNlg4r\",\"secretKey\":\"DvuzyH3R7_2ZSHX7ZTso60X3miz4U3L5YFDMaPU-\",\"bucket\":\"esharei\",\"domain\":\"https:\\/\\/img.esharecenter.com\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669734973);
INSERT INTO `fa_admin_log` VALUES (100, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/edit/ids/2?dialog=1', '会员管理 / 提现管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"0\",\"trx\":\"\",\"pic\":\"\",\"reamrk\":\"\",\"tousermark\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669783621);
INSERT INTO `fa_admin_log` VALUES (101, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/edit/ids/4?dialog=1', '会员管理 / 提现管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"2\",\"trx\":\"\",\"pic\":\"\",\"reamrk\":\"\",\"tousermark\":\"\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669787678);
INSERT INTO `fa_admin_log` VALUES (102, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/edit/ids/4?dialog=1', '会员管理 / 提现管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"2\",\"trx\":\"2332\",\"pic\":\"\",\"reamrk\":\"\",\"tousermark\":\"\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669787681);
INSERT INTO `fa_admin_log` VALUES (103, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/edit/ids/4?dialog=1', '会员管理 / 提现管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"2\",\"trx\":\"2332\",\"pic\":\"3434\",\"reamrk\":\"\",\"tousermark\":\"\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669787684);
INSERT INTO `fa_admin_log` VALUES (104, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669952929);
INSERT INTO `fa_admin_log` VALUES (105, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"公司介绍\",\"es_title\":\"公司介绍\",\"fr_title\":\"公司介绍\",\"ar_title\":\"公司介绍\",\"video\":\"https:\\/\\/img.esharecenter.com\\/niuniu\\/20221202\\/4bd389a24495f5660fe0308472bd41e7.mp4\",\"en_content\":\"杜兰特在参加篮网球迷见面会上，有球迷问杜兰特，你在勇士球队哪几年，你认为你是老大还是库里是老大？杜兰特大笑到：这个问题无聊，但是，真的，我相信大家也明白，我在勇士这几个赛季，我联系拿到了2个总冠军及2个FMVP，历史上能做到这点的，肯定只有球队的核心才能做到。太年轻了。杜兰特很强这是事实，但是不去勇士就没有戒指，何来的fmvp，当年如果不走或者不去勇士，依然是被勇士吊打。73胜那年，骑士怎么翻盘没看直播地去看回放吧。联盟不把詹姆斯捧上天怎么搞钱，总决赛大翻盘战胜73胜的勇士，这是神话里才有，既然现实里没有我们就创造一个神迹出来吧。那两年没有库里吸引火力，杜兰特也不可能打得这么舒服。杜兰特确实牛，单打无解的存在。什么叫老大，就是这支球队是否以库里为核心开始搭建并且最终夺冠，这叫老大，勇士明显是以库里为核心搭建的，杜兰特说白了就是一个拼图，简单地说，就是核武器跟主力集团军的关系…无论核武器再强大，核心作战序列依然是集团军，不会有人围绕核武器去作战。在雷霆时期，阿杜说自己的老大没人会有异议吧？你怎么不在雷霆拿FMVP？也就库里脾气好，愿意让出全权。你换成现在的欧文，看你还能不能飘得起来。库里是能为球队担风险的，见证过低谷，培养了球队的新人，不是那种见势不好拔腿就跑的，给队友创造机会，跟在他身边能打出优秀数据。客观说杜兰特单打能力绝对历史级别的厉害，但拿总冠军和FMVP这两次系列赛，只能说杜兰特打的很好，对手的策略就是防库里，防杜兰特，所以不能说拿到FMVP你就说球队看大，卢指导看的最明白了，放杜兰特投不死我。我们有机会拿下比赛，但如果放库里，那就是直接爆掉比赛了，最重要的是库里的得分对对手心里的摧跨！所以如果这支球队没有库里，那就没有这两次总冠军和FMVP（参考杜兰特在雷霆时期的总决赛败北），反过来如果这支球队没有杜兰特，球队依然有可能获得总冠军！老大铁定是库里，要说个人实力，肯定也是杜兰特强一点。但勇士即使没招募到杜兰特，用给他的工资也随便找到一个顶级前锋，一样是总冠军最大热门最有力的争夺者。只是可能不会有联盟大结局的感觉。本文属于作者原创，如有抄袭必究！\",\"es_content\":\"杜兰特在参加篮网球迷见面会上，有球迷问杜兰特，你在勇士球队哪几年，你认为你是老大还是库里是老大？杜兰特大笑到：这个问题无聊，但是，真的，我相信大家也明白，我在勇士这几个赛季，我联系拿到了2个总冠军及2个FMVP，历史上能做到这点的，肯定只有球队的核心才能做到。太年轻了。杜兰特很强这是事实，但是不去勇士就没有戒指，何来的fmvp，当年如果不走或者不去勇士，依然是被勇士吊打。73胜那年，骑士怎么翻盘没看直播地去看回放吧。联盟不把詹姆斯捧上天怎么搞钱，总决赛大翻盘战胜73胜的勇士，这是神话里才有，既然现实里没有我们就创造一个神迹出来吧。那两年没有库里吸引火力，杜兰特也不可能打得这么舒服。杜兰特确实牛，单打无解的存在。什么叫老大，就是这支球队是否以库里为核心开始搭建并且最终夺冠，这叫老大，勇士明显是以库里为核心搭建的，杜兰特说白了就是一个拼图，简单地说，就是核武器跟主力集团军的关系…无论核武器再强大，核心作战序列依然是集团军，不会有人围绕核武器去作战。在雷霆时期，阿杜说自己的老大没人会有异议吧？你怎么不在雷霆拿FMVP？也就库里脾气好，愿意让出全权。你换成现在的欧文，看你还能不能飘得起来。库里是能为球队担风险的，见证过低谷，培养了球队的新人，不是那种见势不好拔腿就跑的，给队友创造机会，跟在他身边能打出优秀数据。客观说杜兰特单打能力绝对历史级别的厉害，但拿总冠军和FMVP这两次系列赛，只能说杜兰特打的很好，对手的策略就是防库里，防杜兰特，所以不能说拿到FMVP你就说球队看大，卢指导看的最明白了，放杜兰特投不死我。我们有机会拿下比赛，但如果放库里，那就是直接爆掉比赛了，最重要的是库里的得分对对手心里的摧跨！所以如果这支球队没有库里，那就没有这两次总冠军和FMVP（参考杜兰特在雷霆时期的总决赛败北），反过来如果这支球队没有杜兰特，球队依然有可能获得总冠军！老大铁定是库里，要说个人实力，肯定也是杜兰特强一点。但勇士即使没招募到杜兰特，用给他的工资也随便找到一个顶级前锋，一样是总冠军最大热门最有力的争夺者。只是可能不会有联盟大结局的感觉。本文属于作者原创，如有抄袭必究！\",\"fr_content\":\"杜兰特在参加篮网球迷见面会上，有球迷问杜兰特，你在勇士球队哪几年，你认为你是老大还是库里是老大？杜兰特大笑到：这个问题无聊，但是，真的，我相信大家也明白，我在勇士这几个赛季，我联系拿到了2个总冠军及2个FMVP，历史上能做到这点的，肯定只有球队的核心才能做到。太年轻了。杜兰特很强这是事实，但是不去勇士就没有戒指，何来的fmvp，当年如果不走或者不去勇士，依然是被勇士吊打。73胜那年，骑士怎么翻盘没看直播地去看回放吧。联盟不把詹姆斯捧上天怎么搞钱，总决赛大翻盘战胜73胜的勇士，这是神话里才有，既然现实里没有我们就创造一个神迹出来吧。那两年没有库里吸引火力，杜兰特也不可能打得这么舒服。杜兰特确实牛，单打无解的存在。什么叫老大，就是这支球队是否以库里为核心开始搭建并且最终夺冠，这叫老大，勇士明显是以库里为核心搭建的，杜兰特说白了就是一个拼图，简单地说，就是核武器跟主力集团军的关系…无论核武器再强大，核心作战序列依然是集团军，不会有人围绕核武器去作战。在雷霆时期，阿杜说自己的老大没人会有异议吧？你怎么不在雷霆拿FMVP？也就库里脾气好，愿意让出全权。你换成现在的欧文，看你还能不能飘得起来。库里是能为球队担风险的，见证过低谷，培养了球队的新人，不是那种见势不好拔腿就跑的，给队友创造机会，跟在他身边能打出优秀数据。客观说杜兰特单打能力绝对历史级别的厉害，但拿总冠军和FMVP这两次系列赛，只能说杜兰特打的很好，对手的策略就是防库里，防杜兰特，所以不能说拿到FMVP你就说球队看大，卢指导看的最明白了，放杜兰特投不死我。我们有机会拿下比赛，但如果放库里，那就是直接爆掉比赛了，最重要的是库里的得分对对手心里的摧跨！所以如果这支球队没有库里，那就没有这两次总冠军和FMVP（参考杜兰特在雷霆时期的总决赛败北），反过来如果这支球队没有杜兰特，球队依然有可能获得总冠军！老大铁定是库里，要说个人实力，肯定也是杜兰特强一点。但勇士即使没招募到杜兰特，用给他的工资也随便找到一个顶级前锋，一样是总冠军最大热门最有力的争夺者。只是可能不会有联盟大结局的感觉。本文属于作者原创，如有抄袭必究！\",\"ar_content\":\"\",\"addtime\":\"2022-12-02 11:44:11\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669952977);
INSERT INTO `fa_admin_log` VALUES (106, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"注册隐私协议\",\"es_title\":\"注册隐私协议\",\"fr_title\":\"注册隐私协议\",\"ar_title\":\"注册隐私协议\",\"video\":\"\",\"en_content\":\"要说到NBA里最有钱的老板是谁，那必定是快船老板鲍尔默了。而且这个人是出了名的热爱NBA，在很多比赛中都能看到他的身影，你很少能看到一支球队的老板常常在场边观战，即使是花了25亿买下篮网的蔡崇信也没有做到这一点。但快船本赛季却遭遇了很严重伤病。特别是当家球星伦纳德深受球迷的担心。在他复出的5场比赛中场均仅仅10分，确实不太让人满意。特别是他对于篮球的职业态度更是深受质疑。不论是在当年的马刺还是现在的快船，他的职业态度一直都被人们所诟病。本赛季伦纳德在复出5场以后，继续高挂免战牌，这也很让球员担心。据《Los Angeles Times》的Dan Woike报道称：“快船队的主教练与伦纳德在球队赛后录像分析会上发生了争吵，目前双方已经停止了任何的交流。”\",\"es_content\":\"要说到NBA里最有钱的老板是谁，那必定是快船老板鲍尔默了。而且这个人是出了名的热爱NBA，在很多比赛中都能看到他的身影，你很少能看到一支球队的老板常常在场边观战，即使是花了25亿买下篮网的蔡崇信也没有做到这一点。但快船本赛季却遭遇了很严重伤病。特别是当家球星伦纳德深受球迷的担心。在他复出的5场比赛中场均仅仅10分，确实不太让人满意。特别是他对于篮球的职业态度更是深受质疑。不论是在当年的马刺还是现在的快船，他的职业态度一直都被人们所诟病。本赛季伦纳德在复出5场以后，继续高挂免战牌，这也很让球员担心。据《Los Angeles Times》的Dan Woike报道称：“快船队的主教练与伦纳德在球队赛后录像分析会上发生了争吵，目前双方已经停止了任何的交流。”\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-12-02 11:49:42\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669953023);
INSERT INTO `fa_admin_log` VALUES (107, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"订单回收规则\",\"es_title\":\"订单回收规则\",\"fr_title\":\"订单回收规则\",\"ar_title\":\"订单回收规则\",\"video\":\"\",\"en_content\":\"我有一个需求需要fastadmin后台上传视频到阿里云或者七牛云oss,参考文档&amp;nbsp;data-mimetype&amp;nbsp;image\\/gif,image\\/jpeg,image\\/png,image\\/jpg,image\\/bmp 用于过滤允许上传的文件类型，支持mimetype或文件后缀名 不知道如何上传视频类？\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-12-02 15:41:42\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669966923);
INSERT INTO `fa_admin_log` VALUES (108, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"转盘规则\",\"es_title\":\"转盘规则\",\"fr_title\":\"转盘规则\",\"ar_title\":\"转盘规则\",\"video\":\"\",\"en_content\":\"转盘规则\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-12-02 15:49:08\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669967361);
INSERT INTO `fa_admin_log` VALUES (109, 1, 'admin', '/EIzjFDGxCM.php/user/user/recharge/ids/1?dialog=1', '会员管理 / 会员管理', '{\"dialog\":\"1\",\"id\":\"1\",\"currency\":\"usdt\",\"type\":\"add\",\"amount\":\"1\",\"remark\":\"2\",\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669991310);
INSERT INTO `fa_admin_log` VALUES (110, 1, 'admin', '/EIzjFDGxCM.php/user/user/recharge/ids/1?dialog=1', '会员管理 / 会员管理', '{\"dialog\":\"1\",\"id\":\"1\",\"currency\":\"ecoin\",\"type\":\"reduce\",\"amount\":\"2\",\"remark\":\"2\",\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669991320);
INSERT INTO `fa_admin_log` VALUES (111, 1, 'admin', '/EIzjFDGxCM.php/user/user/recharge/ids/1?dialog=1', '会员管理 / 会员管理', '{\"dialog\":\"1\",\"id\":\"1\",\"currency\":\"ecoin\",\"type\":\"add\",\"amount\":\"222\",\"remark\":\"2\",\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669991329);
INSERT INTO `fa_admin_log` VALUES (112, 1, 'admin', '/EIzjFDGxCM.php/user/user/recharge/ids/1?dialog=1', '会员管理 / 会员管理', '{\"dialog\":\"1\",\"id\":\"1\",\"currency\":\"ecoin\",\"type\":\"reduce\",\"amount\":\"23\",\"remark\":\"23\",\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1669991334);
INSERT INTO `fa_admin_log` VALUES (113, 1, 'admin', '/EIzjFDGxCM.php/general/page/add?dialog=1', '系统设置 / 静态页面 / 添加', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"ecoin提现到u\",\"es_title\":\"ecoin提现到u\",\"fr_title\":\"ecoin提现到u\",\"ar_title\":\"ecoin提现到u\",\"video\":\"\",\"en_content\":\"ecoin提现到u\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-12-03 23:16:54\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 1670080627);
INSERT INTO `fa_admin_log` VALUES (114, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '系统设置 / 基础配置', '{\"row\":{\"name\":\"客服TG\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670162092);
INSERT INTO `fa_admin_log` VALUES (115, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '系统设置 / 基础配置', '{\"row\":{\"name\":\"service_tg\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670162100);
INSERT INTO `fa_admin_log` VALUES (116, 1, 'admin', '/EIzjFDGxCM.php/general.config/add', '系统设置 / 基础配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"basic\",\"type\":\"string\",\"name\":\"service_tg\",\"title\":\"客服TG\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670162100);
INSERT INTO `fa_admin_log` VALUES (117, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '系统设置 / 基础配置', '{\"row\":{\"name\":\"service_whatsapp\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670162111);
INSERT INTO `fa_admin_log` VALUES (118, 1, 'admin', '/EIzjFDGxCM.php/general.config/add', '系统设置 / 基础配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"basic\",\"type\":\"string\",\"name\":\"service_whatsapp\",\"title\":\"客服Whatsapp\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670162119);
INSERT INTO `fa_admin_log` VALUES (119, 1, 'admin', '/EIzjFDGxCM.php/general/page/edit/ids/11?dialog=1', '系统设置 / 静态页面 / 编辑', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"其他\",\"es_title\":\"其他\",\"fr_title\":\"其他\",\"ar_title\":\"其他\",\"video\":\"\",\"en_content\":\"ecoin提现到u\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-12-03 23:16:54\"},\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670339076);
INSERT INTO `fa_admin_log` VALUES (120, 1, 'admin', '/EIzjFDGxCM.php/general/page/edit/ids/3?dialog=1', '系统设置 / 静态页面 / 编辑', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"usdt&amp;ecoin兑换\",\"es_title\":\"usdt&amp;ecoin兑换\",\"fr_title\":\"usdt&amp;ecoin兑换\",\"ar_title\":\"usdt&amp;ecoin兑换\",\"video\":\"\",\"en_content\":\"ecoin充值规则usdt&amp;amp;ecoin兑换\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"addtime\":\"2022-11-26 23:14:05\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670339093);
INSERT INTO `fa_admin_log` VALUES (121, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '系统设置 / 基础配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"name\":\"我的网站\",\"beian\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"invite_url\":\"https:\\/\\/test.esharecenter.com\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670894589);
INSERT INTO `fa_admin_log` VALUES (122, 1, 'admin', '/EIzjFDGxCM.php/general/config/check', '系统设置 / 基础配置', '{\"row\":{\"name\":\"tg_channel\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670894608);
INSERT INTO `fa_admin_log` VALUES (123, 1, 'admin', '/EIzjFDGxCM.php/general.config/add', '系统设置 / 基础配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"kefu\",\"type\":\"string\",\"name\":\"tg_channel\",\"title\":\"TG频道链接\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1670894624);
INSERT INTO `fa_admin_log` VALUES (124, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"custom\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671032087);
INSERT INTO `fa_admin_log` VALUES (125, 1, 'admin', '/EIzjFDGxCM.php/general/smscode/edit/ids/6?dialog=1', '系统设置 / 验证码管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"mail\":\"10161822848@qq.com\",\"code\":\"6727\",\"status\":\"1\",\"addtime\":\"2022-12-15 15:18:16\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671088948);
INSERT INTO `fa_admin_log` VALUES (126, 1, 'admin', '/EIzjFDGxCM.php/general/smscode/edit/ids/6?dialog=1', '系统设置 / 验证码管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"mail\":\"10161822848@qq.com\",\"code\":\"6727\",\"status\":\"0\",\"addtime\":\"2022-12-15 15:18:16\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671088958);
INSERT INTO `fa_admin_log` VALUES (127, 1, 'admin', '/EIzjFDGxCM.php/general/smscode/edit/ids/6?dialog=1', '系统设置 / 验证码管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"mail\":\"10161822848@qq.com\",\"code\":\"6727\",\"status\":\"1\",\"addtime\":\"2022-12-15 15:18:16\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671088974);
INSERT INTO `fa_admin_log` VALUES (128, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdt/guiji/ids/1', '运营设置 / 充值地址', '{\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671257518);
INSERT INTO `fa_admin_log` VALUES (129, 1, 'admin', '/EIzjFDGxCM.php/yunyin/udun/multi', '运营设置 / udun应用 / 批量更新', '{\"action\":\"\",\"ids\":\"1\",\"params\":\"status=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671508496);
INSERT INTO `fa_admin_log` VALUES (130, 1, 'admin', '/EIzjFDGxCM.php/yunyin/udun/multi', '运营设置 / udun应用 / 批量更新', '{\"action\":\"\",\"ids\":\"1\",\"params\":\"status=1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671508497);
INSERT INTO `fa_admin_log` VALUES (131, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/edit/ids/3?dialog=1', '会员管理 / 提现管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"2\",\"trx\":\"\",\"pic\":\"\",\"reamrk\":\"\",\"tousermark\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671524103);
INSERT INTO `fa_admin_log` VALUES (132, 0, 'Unknown', '/EIzjFDGxCM.php/index/logout', '', '{\"__token__\":\"***\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671607198);
INSERT INTO `fa_admin_log` VALUES (133, 1, 'admin', '/EIzjFDGxCM.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ykvg\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671607209);
INSERT INTO `fa_admin_log` VALUES (134, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawefee\":\"10\",\"usdt_recharge_endtime\":\"300\",\"recharge_usdt_giveecoin\":\"100\",\"recharge_usdt_giveecoin_re\":\"50\",\"usdt_to_ecoin\":\"500\",\"ecion_out_email\":\"1\",\"luck_decute_ecoin\":\"10\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671675763);
INSERT INTO `fa_admin_log` VALUES (135, 1, 'admin', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fdashboard%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/EIzjFDGxCM.php\\/dashboard?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"pbkq\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671808828);
INSERT INTO `fa_admin_log` VALUES (136, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/edit/ids/1?dialog=1', 'User / 提现管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"2\",\"trx\":\"\",\"pic\":\"\",\"reamrk\":\"\",\"tousermark\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671848545);
INSERT INTO `fa_admin_log` VALUES (137, 1, 'admin', '/EIzjFDGxCM.php/user/user/multi', 'User / User / Multi', '{\"ids\":\"5\",\"params\":\"status=normal\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671849422);
INSERT INTO `fa_admin_log` VALUES (138, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/batchudun', 'User / 提现管理', '{\"action\":\"del\",\"ids\":\"4,3,2,1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671851318);
INSERT INTO `fa_admin_log` VALUES (139, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/batchudun', 'User / 提现管理', '{\"action\":\"del\",\"ids\":\"4,3,2,1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671851345);
INSERT INTO `fa_admin_log` VALUES (140, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/batchbohui', 'User / 提现管理', '{\"action\":\"del\",\"ids\":\"4,2,1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671851697);
INSERT INTO `fa_admin_log` VALUES (141, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/batchsuc', 'User / 提现管理', '{\"action\":\"del\",\"ids\":\"4,2,1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671851786);
INSERT INTO `fa_admin_log` VALUES (142, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/batchsuc', 'User / 提现管理', '{\"action\":\"del\",\"ids\":\"4,3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671851811);
INSERT INTO `fa_admin_log` VALUES (143, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/batchbohui', 'User / 提现管理', '{\"action\":\"del\",\"ids\":\"2,1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671851854);
INSERT INTO `fa_admin_log` VALUES (144, 1, 'admin', '/EIzjFDGxCM.php/user/withdraw/batchudun', 'User / 提现管理', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671851877);
INSERT INTO `fa_admin_log` VALUES (145, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/add?dialog=1', 'Auth / Rule / Add', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"67\",\"name\":\"user\\/user\\/tree\",\"title\":\"推荐关系\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671952188);
INSERT INTO `fa_admin_log` VALUES (146, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/179?dialog=1', 'Auth / Rule / Edit', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"66\",\"name\":\"user\\/user\\/tree\",\"title\":\"推荐关系\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"179\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671952209);
INSERT INTO `fa_admin_log` VALUES (147, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954598);
INSERT INTO `fa_admin_log` VALUES (148, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954622);
INSERT INTO `fa_admin_log` VALUES (149, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954657);
INSERT INTO `fa_admin_log` VALUES (150, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"1\",\"parent\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954658);
INSERT INTO `fa_admin_log` VALUES (151, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954659);
INSERT INTO `fa_admin_log` VALUES (152, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954660);
INSERT INTO `fa_admin_log` VALUES (153, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954661);
INSERT INTO `fa_admin_log` VALUES (154, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954661);
INSERT INTO `fa_admin_log` VALUES (155, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954662);
INSERT INTO `fa_admin_log` VALUES (156, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954662);
INSERT INTO `fa_admin_log` VALUES (157, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954663);
INSERT INTO `fa_admin_log` VALUES (158, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954663);
INSERT INTO `fa_admin_log` VALUES (159, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954663);
INSERT INTO `fa_admin_log` VALUES (160, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954663);
INSERT INTO `fa_admin_log` VALUES (161, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954664);
INSERT INTO `fa_admin_log` VALUES (162, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954664);
INSERT INTO `fa_admin_log` VALUES (163, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954665);
INSERT INTO `fa_admin_log` VALUES (164, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954667);
INSERT INTO `fa_admin_log` VALUES (165, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954668);
INSERT INTO `fa_admin_log` VALUES (166, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954668);
INSERT INTO `fa_admin_log` VALUES (167, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954669);
INSERT INTO `fa_admin_log` VALUES (168, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954670);
INSERT INTO `fa_admin_log` VALUES (169, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954670);
INSERT INTO `fa_admin_log` VALUES (170, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954735);
INSERT INTO `fa_admin_log` VALUES (171, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"1\",\"parent\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954736);
INSERT INTO `fa_admin_log` VALUES (172, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954737);
INSERT INTO `fa_admin_log` VALUES (173, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954738);
INSERT INTO `fa_admin_log` VALUES (174, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954738);
INSERT INTO `fa_admin_log` VALUES (175, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954739);
INSERT INTO `fa_admin_log` VALUES (176, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954817);
INSERT INTO `fa_admin_log` VALUES (177, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954846);
INSERT INTO `fa_admin_log` VALUES (178, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954848);
INSERT INTO `fa_admin_log` VALUES (179, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954849);
INSERT INTO `fa_admin_log` VALUES (180, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954856);
INSERT INTO `fa_admin_log` VALUES (181, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954859);
INSERT INTO `fa_admin_log` VALUES (182, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954928);
INSERT INTO `fa_admin_log` VALUES (183, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954953);
INSERT INTO `fa_admin_log` VALUES (184, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671954973);
INSERT INTO `fa_admin_log` VALUES (185, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955084);
INSERT INTO `fa_admin_log` VALUES (186, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955128);
INSERT INTO `fa_admin_log` VALUES (187, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955378);
INSERT INTO `fa_admin_log` VALUES (188, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955402);
INSERT INTO `fa_admin_log` VALUES (189, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955558);
INSERT INTO `fa_admin_log` VALUES (190, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"1\",\"parent\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955561);
INSERT INTO `fa_admin_log` VALUES (191, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955653);
INSERT INTO `fa_admin_log` VALUES (192, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955655);
INSERT INTO `fa_admin_log` VALUES (193, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955656);
INSERT INTO `fa_admin_log` VALUES (194, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"1\",\"parent\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955658);
INSERT INTO `fa_admin_log` VALUES (195, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955690);
INSERT INTO `fa_admin_log` VALUES (196, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955690);
INSERT INTO `fa_admin_log` VALUES (197, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955701);
INSERT INTO `fa_admin_log` VALUES (198, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955702);
INSERT INTO `fa_admin_log` VALUES (199, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955703);
INSERT INTO `fa_admin_log` VALUES (200, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955705);
INSERT INTO `fa_admin_log` VALUES (201, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"1\",\"parent\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955708);
INSERT INTO `fa_admin_log` VALUES (202, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"1\",\"parent\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955709);
INSERT INTO `fa_admin_log` VALUES (203, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1671955709);
INSERT INTO `fa_admin_log` VALUES (204, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"4\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672022250);
INSERT INTO `fa_admin_log` VALUES (205, 1, 'admin', '/EIzjFDGxCM.php/general/app/edit/ids/1?dialog=1', '系统设置 / APP版本 / 编辑', '{\"dialog\":\"1\",\"row\":{\"version\":\"100\",\"info\":\"首次上线\",\"platform\":\"android\",\"url\":\"https:\\/\\/www.baidu.com\\/\",\"addtime\":\"2022-11-24 08:12:01\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672151954);
INSERT INTO `fa_admin_log` VALUES (206, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672236390);
INSERT INTO `fa_admin_log` VALUES (207, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672236392);
INSERT INTO `fa_admin_log` VALUES (208, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', 'User / User / 推荐关系', '{\"uid\":\"3\",\"parent\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672236392);
INSERT INTO `fa_admin_log` VALUES (209, 1, 'admin', '/EIzjFDGxCM.php/auth/admin/agent/ids/5?dialog=1', '权限管理 / 管理员设置', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"user_id\":\"5\",\"username\":\"10161822848\",\"email\":\"10161822848@qq.com\",\"mobile\":\"\",\"nickname\":\"10161822848@qq.com\",\"password\":\"***\",\"status\":\"normal\"},\"group\":[\"2\"],\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672283080);
INSERT INTO `fa_admin_log` VALUES (210, 0, 'Unknown', '/EIzjFDGxCM.php/index/logout', '', '{\"__token__\":\"***\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672285768);
INSERT INTO `fa_admin_log` VALUES (211, 1, 'admin', '/EIzjFDGxCM.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"wnxy\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672285775);
INSERT INTO `fa_admin_log` VALUES (212, 2, '10161822848', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fuser%2Fuser%3Fref%3Daddtabs', 'Login', '{\"url\":\"\\/EIzjFDGxCM.php\\/user\\/user?ref=addtabs\",\"__token__\":\"***\",\"username\":\"10161822848\",\"password\":\"***\",\"captcha\":\"rc56\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672285928);
INSERT INTO `fa_admin_log` VALUES (213, 1, 'admin', '/EIzjFDGxCM.php/auth/admin/edit/ids/2?dialog=1', '权限管理 / 管理员设置 / Edit', '{\"dialog\":\"1\",\"__token__\":\"***\",\"group\":[\"1\"],\"row\":{\"username\":\"10161822848\",\"email\":\"10161822848@qq.com\",\"mobile\":\"\",\"nickname\":\"10161822848@qq.com\",\"password\":\"***\",\"loginfailure\":\"0\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672285988);
INSERT INTO `fa_admin_log` VALUES (214, 1, 'admin', '/EIzjFDGxCM.php/user/user/recharge/ids/6?dialog=1', '用户中心 / 用户列表', '{\"dialog\":\"1\",\"id\":\"6\",\"currency\":\"usdt\",\"type\":\"add\",\"amount\":\"1\",\"remark\":\"1\",\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672286091);
INSERT INTO `fa_admin_log` VALUES (215, 1, 'admin', '/EIzjFDGxCM.php/user/user/recharge/ids/6?dialog=1', '用户中心 / 用户列表', '{\"dialog\":\"1\",\"id\":\"6\",\"currency\":\"usdt\",\"type\":\"add\",\"amount\":\"333\",\"remark\":\"3\",\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672286234);
INSERT INTO `fa_admin_log` VALUES (216, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672287063);
INSERT INTO `fa_admin_log` VALUES (217, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672289646);
INSERT INTO `fa_admin_log` VALUES (218, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672289745);
INSERT INTO `fa_admin_log` VALUES (219, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289748);
INSERT INTO `fa_admin_log` VALUES (220, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289760);
INSERT INTO `fa_admin_log` VALUES (221, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289780);
INSERT INTO `fa_admin_log` VALUES (222, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672289791);
INSERT INTO `fa_admin_log` VALUES (223, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289793);
INSERT INTO `fa_admin_log` VALUES (224, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289797);
INSERT INTO `fa_admin_log` VALUES (225, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289845);
INSERT INTO `fa_admin_log` VALUES (226, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672289929);
INSERT INTO `fa_admin_log` VALUES (227, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"5\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289933);
INSERT INTO `fa_admin_log` VALUES (228, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289934);
INSERT INTO `fa_admin_log` VALUES (229, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289935);
INSERT INTO `fa_admin_log` VALUES (230, 2, '10161822848', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672289936);
INSERT INTO `fa_admin_log` VALUES (231, 0, 'Unknown', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fyunyin%2Frechargeusdtlog%3Fref%3Daddtabs', 'Login', '{\"url\":\"\\/EIzjFDGxCM.php\\/yunyin\\/rechargeusdtlog?ref=addtabs\",\"__token__\":\"***\",\"username\":\"1061822848\",\"password\":\"***\",\"captcha\":\"vwrk\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672321466);
INSERT INTO `fa_admin_log` VALUES (232, 2, '10161822848', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fyunyin%2Frechargeusdtlog%3Fref%3Daddtabs', 'Login', '{\"url\":\"\\/EIzjFDGxCM.php\\/yunyin\\/rechargeusdtlog?ref=addtabs\",\"__token__\":\"***\",\"username\":\"10161822848\",\"password\":\"***\",\"captcha\":\"8v5w\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1672321484);
INSERT INTO `fa_admin_log` VALUES (233, 1, 'admin', '/EIzjFDGxCM.php/yunyin/udun/del', '运营设置 / udun应用 / 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672322265);
INSERT INTO `fa_admin_log` VALUES (234, 1, 'admin', '/EIzjFDGxCM.php/yunyin/udun/del', '运营设置 / udun应用 / 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672322267);
INSERT INTO `fa_admin_log` VALUES (235, 1, 'admin', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fyunyin%2Flucky%3Fref%3Daddtabs', 'Login', '{\"url\":\"\\/EIzjFDGxCM.php\\/yunyin\\/lucky?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"aj7w\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672370573);
INSERT INTO `fa_admin_log` VALUES (236, 1, 'admin', '/EIzjFDGxCM.php/yunyin/lucky/edit/ids/1?dialog=1', '运营设置 / 幸运之轮 / 修改', '{\"dialog\":\"1\",\"row\":{\"rewardtype\":\"1\",\"rate\":\"101\",\"reward_val\":\"10.00\",\"status\":\"1\",\"sort\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672370581);
INSERT INTO `fa_admin_log` VALUES (237, 1, 'admin', '/EIzjFDGxCM.php/yunyin/lucky/edit/ids/2?dialog=1', '运营设置 / 幸运之轮 / 修改', '{\"dialog\":\"1\",\"row\":{\"rewardtype\":\"2\",\"rate\":\"521\",\"reward_val\":\"5.00\",\"status\":\"1\",\"sort\":\"3\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672370586);
INSERT INTO `fa_admin_log` VALUES (238, 1, 'admin', '/EIzjFDGxCM.php/yunyin/lucky/edit/ids/2?dialog=1', '运营设置 / 幸运之轮 / 修改', '{\"dialog\":\"1\",\"row\":{\"rewardtype\":\"2\",\"rate\":\"80\",\"reward_val\":\"5.00\",\"status\":\"1\",\"sort\":\"3\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672370614);
INSERT INTO `fa_admin_log` VALUES (239, 1, 'admin', '/EIzjFDGxCM.php/user/user/recharge/ids/5?dialog=1', '用户中心 / 用户列表', '{\"dialog\":\"1\",\"id\":\"5\",\"currency\":\"ecoin\",\"type\":\"add\",\"amount\":\"2121212\",\"remark\":\"\",\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672373049);
INSERT INTO `fa_admin_log` VALUES (240, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503326);
INSERT INTO `fa_admin_log` VALUES (241, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503329);
INSERT INTO `fa_admin_log` VALUES (242, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503342);
INSERT INTO `fa_admin_log` VALUES (243, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"2\",\"parent\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503343);
INSERT INTO `fa_admin_log` VALUES (244, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503352);
INSERT INTO `fa_admin_log` VALUES (245, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503353);
INSERT INTO `fa_admin_log` VALUES (246, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"5\",\"parent\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503611);
INSERT INTO `fa_admin_log` VALUES (247, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503612);
INSERT INTO `fa_admin_log` VALUES (248, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"7\",\"parent\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503657);
INSERT INTO `fa_admin_log` VALUES (249, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"8\",\"parent\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503659);
INSERT INTO `fa_admin_log` VALUES (250, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"6\",\"parent\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503660);
INSERT INTO `fa_admin_log` VALUES (251, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"7\",\"parent\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503661);
INSERT INTO `fa_admin_log` VALUES (252, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"8\",\"parent\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672503662);
INSERT INTO `fa_admin_log` VALUES (253, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672751563);
INSERT INTO `fa_admin_log` VALUES (254, 1, 'admin', '/EIzjFDGxCM.php/user/user/edit/ids/8?dialog=1', '用户中心 / 用户列表 / Edit', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"8\",\"group_id\":\"1\",\"username\":\"13900000001@gmail.com\",\"nickname\":\"13900000001@gmail.com\",\"password\":\"***\",\"lockpin\":\"\",\"email\":\"13900000001@gmail.com\",\"mobile\":\"\",\"avatar\":\"\\/uploads\\/20230103\\/63e2d3c790b8ccabbc31cc65887882cc.png\",\"level\":\"1\",\"gender\":\"0\",\"birthday\":\"\",\"bio\":\"\",\"successions\":\"1\",\"maxsuccessions\":\"1\",\"prevtime\":\"2022-12-31 17:20:43\",\"logintime\":\"2022-12-31 17:20:43\",\"loginip\":\"127.0.0.1\",\"loginfailure\":\"0\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2022-12-31 17:20:43\",\"status\":\"normal\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672751566);
INSERT INTO `fa_admin_log` VALUES (255, 1, 'admin', '/EIzjFDGxCM.php/yunyin/coupons/edit/ids/2?dialog=1', '运营设置 / 优惠券设置 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"充电宝代金券\",\"amount\":\"2\",\"starttime\":\"2022-11-25 05:13:55\",\"endtime\":\"2022-12-10 05:13:55\",\"day\":\"12\",\"status\":\"1\",\"type\":\"2\",\"product_id\":\"1\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672757371);
INSERT INTO `fa_admin_log` VALUES (256, 1, 'admin', '/EIzjFDGxCM.php/yunyin/coupons/edit/ids/2?dialog=1', '运营设置 / 优惠券设置 / 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"充电宝代金券\",\"amount\":\"2\",\"starttime\":\"2022-11-25 05:13:55\",\"endtime\":\"2023-01-19 05:13:55\",\"day\":\"12\",\"status\":\"1\",\"type\":\"2\",\"product_id\":\"1\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672758100);
INSERT INTO `fa_admin_log` VALUES (257, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/multi', '运营设置 / 产品管理 / 批量更新', '{\"action\":\"\",\"ids\":\"1\",\"params\":\"status=1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1672758682);
INSERT INTO `fa_admin_log` VALUES (258, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673071592);
INSERT INTO `fa_admin_log` VALUES (259, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673071630);
INSERT INTO `fa_admin_log` VALUES (260, 1, 'admin', '/EIzjFDGxCM.php/ajax/upload', '', '{\"category\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673149886);
INSERT INTO `fa_admin_log` VALUES (261, 1, 'admin', '/EIzjFDGxCM.php/general/app/add?dialog=1', '系统设置 / APP版本 / 添加', '{\"dialog\":\"1\",\"row\":{\"version\":\"1.2.5\",\"info\":\"dd\",\"platform\":\"android\",\"url\":\"http:\\/\\/local.gxzjp.com\\/uploads\\/20230108\\/1c4426cca87a3af0f267ed4ca657a467.apk\",\"addtime\":\"2023-01-08 04:51:17\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673149888);
INSERT INTO `fa_admin_log` VALUES (262, 1, 'admin', '/EIzjFDGxCM.php/user/user/edit/ids/4?dialog=1', '用户中心 / 用户列表 / Edit', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"4\",\"group_id\":\"1\",\"username\":\"kimarifreelance@gmail.com\",\"nickname\":\"Ari\",\"password\":\"***\",\"lockpin\":\"111111\",\"email\":\"kimarifreelance@gmail.com\",\"mobile\":\"\",\"avatar\":\"\\/uploads\\/20230106\\/ef30a14cd0fc4983888dccd198fc728a.jpg\",\"level\":\"1\",\"gender\":\"0\",\"birthday\":\"\",\"bio\":\"\",\"successions\":\"1\",\"maxsuccessions\":\"1\",\"prevtime\":\"2022-12-30 12:46:27\",\"logintime\":\"2023-01-05 21:33:28\",\"loginip\":\"162.158.151.153\",\"loginfailure\":\"0\",\"joinip\":\"162.158.151.132\",\"jointime\":\"2022-12-30 11:52:25\",\"status\":\"normal\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673188108);
INSERT INTO `fa_admin_log` VALUES (263, 1, 'admin', '/EIzjFDGxCM.php/auth/admin/agent/ids/4?dialog=1', '权限管理 / 管理员设置', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"user_id\":\"4\",\"username\":\"kimarifreelancegmailcom\",\"email\":\"kimarifreelance@gmail.com\",\"mobile\":\"\",\"nickname\":\"Ari\",\"password\":\"***\",\"status\":\"normal\"},\"group\":[\"\"],\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673188115);
INSERT INTO `fa_admin_log` VALUES (264, 1, 'admin', '/EIzjFDGxCM.php/auth/admin/agent/ids/4?dialog=1', '权限管理 / 管理员设置', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"user_id\":\"4\",\"username\":\"kimarifreelancegmailcom\",\"email\":\"kimarifreelance@gmail.com\",\"mobile\":\"\",\"nickname\":\"Ari\",\"password\":\"***\",\"status\":\"normal\"},\"group\":[\"1\"],\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673188126);
INSERT INTO `fa_admin_log` VALUES (265, 1, 'admin', '/EIzjFDGxCM.php/auth/admin/agent/ids/4?dialog=1', '权限管理 / 管理员设置', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"user_id\":\"4\",\"username\":\"kimarifreelan\",\"email\":\"kimarifreelance@gmail.com\",\"mobile\":\"\",\"nickname\":\"Ari\",\"password\":\"***\",\"status\":\"normal\"},\"group\":[\"1\"],\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673188134);
INSERT INTO `fa_admin_log` VALUES (266, 3, 'kimarifreelan', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fdashboard%3Fref%3Daddtabs', 'Login', '{\"url\":\"\\/EIzjFDGxCM.php\\/dashboard?ref=addtabs\",\"__token__\":\"***\",\"username\":\"kimarifreelan\",\"password\":\"***\",\"captcha\":\"jaac\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1673188148);
INSERT INTO `fa_admin_log` VALUES (267, 0, 'Unknown', '/EIzjFDGxCM.php/index/logout', '', '{\"__token__\":\"***\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673188189);
INSERT INTO `fa_admin_log` VALUES (268, 3, 'kimarifreelan', '/EIzjFDGxCM.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"kimarifreelan\",\"password\":\"***\",\"captcha\":\"pkqd\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673188196);
INSERT INTO `fa_admin_log` VALUES (269, 0, 'Unknown', '/EIzjFDGxCM.php/index/logout', '', '{\"__token__\":\"***\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1673188484);
INSERT INTO `fa_admin_log` VALUES (270, 1, 'admin', '/EIzjFDGxCM.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"e4mi\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6 Safari/605.1.15', 1673188494);
INSERT INTO `fa_admin_log` VALUES (271, 1, 'admin', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fgeneral%2Farticle%3Faddtabs%3D1', 'Login', '{\"url\":\"\\/EIzjFDGxCM.php\\/general\\/article?addtabs=1\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"6bpj\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673439693);
INSERT INTO `fa_admin_log` VALUES (272, 1, 'admin', '/EIzjFDGxCM.php/general/page/edit/ids/9?dialog=1', '系统设置 / 静态页面 / 编辑', '{\"dialog\":\"1\",\"row\":{\"en_title\":\"订单回收规则\",\"es_title\":\"订单回收规则\",\"fr_title\":\"订单回收规则\",\"ar_title\":\"订单回收规则\",\"ru_title\":\"3333\",\"video\":\"\",\"en_content\":\"我有一个需求需要fastadmin后台上传视频到阿里云或者七牛云oss,参考文档&amp;nbsp;data-mimetype&amp;nbsp;image\\/gif,image\\/jpeg,image\\/png,image\\/jpg,image\\/bmp 用于过滤允许上传的文件类型，支持mimetype或文件后缀名 不知道如何上传视频类？\",\"es_content\":\"\",\"fr_content\":\"\",\"ar_content\":\"\",\"ru_content\":\"eeee\",\"addtime\":\"2022-12-02 08:41:42\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673440076);
INSERT INTO `fa_admin_log` VALUES (273, 1, 'admin', '/EIzjFDGxCM.php/yunyin/product/edit/ids/2?dialog=1', '运营设置 / 产品管理 / 编辑', '{\"dialog\":\"1\",\"row\":{\"cn_name\":\"自行车\",\"en_name\":\"自行车\",\"ar_name\":\"自行车\",\"es_name\":\"自行车\",\"fr_name\":\"自行车\",\"ru_name\":\"wwww\",\"pic\":\"http:\\/\\/img.gszbapp.cn\\/niuniu\\/20221126\\/3eee7401b6267a41efa617fd875c92da.png\",\"photos\":\"\",\"cn_content\":\"自行车\",\"en_content\":\"自行车\",\"ar_content\":\"自行车\",\"es_content\":\"自行车\",\"fr_content\":\"自行车\",\"ru_content\":\"ru自行车\",\"price\":\"10.0\",\"maxbuy\":\"6\",\"profit\":\"2.00\",\"recycler\":\"5.00\",\"status\":\"1\",\"addtime\":\"2022-11-26 03:21:39\",\"uptime\":\"2022-11-26 03:21:39\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673440284);
INSERT INTO `fa_admin_log` VALUES (274, 1, 'admin', '/EIzjFDGxCM.php/yunyin/lucky/edit/ids/6?dialog=1', '运营设置 / 幸运之轮 / 修改', '{\"dialog\":\"1\",\"row\":{\"rewardtype\":\"1\",\"rate\":\"50\",\"reward_val\":\"50\",\"status\":\"1\",\"sort\":\"3\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673538970);
INSERT INTO `fa_admin_log` VALUES (275, 1, 'admin', '/EIzjFDGxCM.php/yunyin/lucky/edit/ids/5?dialog=1', '运营设置 / 幸运之轮 / 修改', '{\"dialog\":\"1\",\"row\":{\"rewardtype\":\"1\",\"rate\":\"500\",\"reward_val\":\"500\",\"status\":\"1\",\"sort\":\"4\"},\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673538987);
INSERT INTO `fa_admin_log` VALUES (276, 1, 'admin', '/EIzjFDGxCM.php/yunyin/lucky/edit/ids/6?dialog=1', '运营设置 / 幸运之轮 / 修改', '{\"dialog\":\"1\",\"row\":{\"rewardtype\":\"1\",\"rate\":\"350\",\"reward_val\":\"50.00\",\"status\":\"1\",\"sort\":\"3\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673540176);
INSERT INTO `fa_admin_log` VALUES (277, 1, 'admin', '/EIzjFDGxCM.php/yunyin/lucky/edit/ids/8?dialog=1', '运营设置 / 幸运之轮 / 修改', '{\"dialog\":\"1\",\"row\":{\"rewardtype\":\"2\",\"rate\":\"3310\",\"reward_val\":\"12\",\"status\":\"1\",\"sort\":\"7\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673540199);
INSERT INTO `fa_admin_log` VALUES (278, 1, 'admin', '/EIzjFDGxCM.php/general/config/bons?addtabs=1', '系统设置 / 基础配置 / 参数设置', '{\"addtabs\":\"1\",\"row\":{\"agent1\":\"12\",\"agent2\":\"8\",\"agent3\":\"4\",\"withdrawmin\":\"1\",\"withdrawefee\":\"20\",\"usdt_recharge_endtime\":\"300\",\"recharge_usdt_giveecoin\":\"100\",\"recharge_usdt_giveecoin_re\":\"50\",\"usdt_to_ecoin\":\"500\",\"ecion_out_email\":\"1\",\"luck_decute_ecoin\":\"10\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673540256);
INSERT INTO `fa_admin_log` VALUES (279, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"0\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673620491);
INSERT INTO `fa_admin_log` VALUES (280, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"albert95.asu@gmail.com\\t3\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762452);
INSERT INTO `fa_admin_log` VALUES (281, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"albert95.asu@gmail.com\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762456);
INSERT INTO `fa_admin_log` VALUES (282, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"albert95.asu@gmail.com\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762457);
INSERT INTO `fa_admin_log` VALUES (283, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"albert95.asu@gmail.com\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762458);
INSERT INTO `fa_admin_log` VALUES (284, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"albert95.asu@gmail.com\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762459);
INSERT INTO `fa_admin_log` VALUES (285, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"1061822848@qq.com\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762467);
INSERT INTO `fa_admin_log` VALUES (286, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"1061822848@qq.com\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762468);
INSERT INTO `fa_admin_log` VALUES (287, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/52?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"1061822848@qq.com\",\"remark\":\"\",\"ids\":\"52\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762534);
INSERT INTO `fa_admin_log` VALUES (288, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/48?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"\",\"remark\":\"\",\"ids\":\"48\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762544);
INSERT INTO `fa_admin_log` VALUES (289, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/48?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"dimitrdakoury@gmail.com\",\"remark\":\"\",\"ids\":\"48\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762547);
INSERT INTO `fa_admin_log` VALUES (290, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/48?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"dimitrdakoury@gmail.com\",\"remark\":\"\",\"ids\":\"48\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673762550);
INSERT INTO `fa_admin_log` VALUES (291, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/46?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"albert95.asu@gmail.com\",\"remark\":\"\",\"ids\":\"46\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763229);
INSERT INTO `fa_admin_log` VALUES (292, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/46?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"dimitrdakoury@gmail.com\",\"remark\":\"\",\"ids\":\"46\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763390);
INSERT INTO `fa_admin_log` VALUES (293, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"5\",\"parent\":\"#\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763443);
INSERT INTO `fa_admin_log` VALUES (294, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"419\",\"parent\":\"419\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763445);
INSERT INTO `fa_admin_log` VALUES (295, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"421\",\"parent\":\"421\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763448);
INSERT INTO `fa_admin_log` VALUES (296, 1, 'admin', '/EIzjFDGxCM.php/user/user/tree', '用户中心 / 用户列表 / 推荐关系', '{\"uid\":\"421\",\"parent\":\"421\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763448);
INSERT INTO `fa_admin_log` VALUES (297, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/adduser/ids/50?dialog=1', '运营设置 / usdt充值记录', '{\"dialog\":\"1\",\"email\":\"diavoloroso096@gmail.com\",\"remark\":\"\",\"ids\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763464);
INSERT INTO `fa_admin_log` VALUES (298, 1, 'admin', '/EIzjFDGxCM.php/yunyin/rechargeusdtlog/edit/ids/50?dialog=1', '运营设置 / usdt充值记录 / 编辑', '{\"dialog\":\"1\",\"row\":{\"recharge_usdt_id\":\"86\",\"user_id\":\"421\",\"amount\":\"8.0000\",\"trx\":\"5f3d556ed03438620b04cfc9caf6632651ca756061490a8a83d3bff74470078c\",\"addtime\":\"2023-01-15 06:41:09\",\"remark\":\"人工处理充值未找到用户：\"},\"ids\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673763514);
INSERT INTO `fa_admin_log` VALUES (299, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/add?dialog=1', '运营设置 / 群发邮件 / 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"测试邮件\",\"content\":\"北京时间1月16日，正在进行的NBA常规赛湖人对战76人的比赛中，詹姆斯在第二节还有5分42秒时命中一记中投，生涯总得分超越38000分，迎来了自己又一里程碑。目前詹姆斯是NBA历史上第二位拿到38000分的球员，而第一位是在球员时期同样身为湖人球员的湖人名宿卡里姆-阿卜杜尔-贾巴尔，其职业生涯总得分为38387分，目前詹姆斯与贾巴尔的差距仅有387分，本赛季很有希望超越贾巴尔拿到NBA历史第一。\",\"torole\":\"1\",\"addtime\":\"2023-01-16 06:54:51\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673848542);
INSERT INTO `fa_admin_log` VALUES (300, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/add?dialog=1', '运营设置 / 群发邮件 / 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"第二发来了\",\"content\":\"第二发来了第二发来了第二发来了第二发来了\",\"torole\":\"2\",\"addtime\":\"2023-01-16 07:05:44\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673849156);
INSERT INTO `fa_admin_log` VALUES (301, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/send/ids/2', '运营设置 / 群发邮件', '{\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673849158);
INSERT INTO `fa_admin_log` VALUES (302, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/send/ids/1', '运营设置 / 群发邮件', '{\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673849161);
INSERT INTO `fa_admin_log` VALUES (303, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/send/ids/1', '运营设置 / 群发邮件', '{\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673849172);
INSERT INTO `fa_admin_log` VALUES (304, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/send/ids/2', '运营设置 / 群发邮件', '{\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673849202);
INSERT INTO `fa_admin_log` VALUES (305, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/edit/ids/2?dialog=1', '运营设置 / 群发邮件 / 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"第二发来了\",\"content\":\"第二发来了第二发来了第二发来了第二发来了\",\"torole\":\"1\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673870909);
INSERT INTO `fa_admin_log` VALUES (306, 1, 'admin', '/EIzjFDGxCM.php/yunyin/pushmail/send/ids/2', '运营设置 / 群发邮件', '{\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673870942);
INSERT INTO `fa_admin_log` VALUES (307, 1, 'admin', '/EIzjFDGxCM.php/general/article/add?dialog=1', '系统设置 / 内容管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"en\",\"type\":\"1\",\"title\":\"ddd\",\"content\":\"sss\",\"alertendtime\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673879355);
INSERT INTO `fa_admin_log` VALUES (308, 1, 'admin', '/EIzjFDGxCM.php/general/article/add?dialog=1', '系统设置 / 内容管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"lang\":\"ar\",\"type\":\"1\",\"title\":\"ssewewe\",\"content\":\"wewe\",\"alertendtime\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673879547);
INSERT INTO `fa_admin_log` VALUES (309, 0, 'Unknown', '/EIzjFDGxCM.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"yyss\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882898);
INSERT INTO `fa_admin_log` VALUES (310, 1, 'admin', '/EIzjFDGxCM.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"6n4k\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882905);
INSERT INTO `fa_admin_log` VALUES (311, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"159\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882933);
INSERT INTO `fa_admin_log` VALUES (312, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"192\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882940);
INSERT INTO `fa_admin_log` VALUES (313, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"188\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882944);
INSERT INTO `fa_admin_log` VALUES (314, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"182\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882947);
INSERT INTO `fa_admin_log` VALUES (315, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"152\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882951);
INSERT INTO `fa_admin_log` VALUES (316, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"134\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882955);
INSERT INTO `fa_admin_log` VALUES (317, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"122\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882958);
INSERT INTO `fa_admin_log` VALUES (318, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"116\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882960);
INSERT INTO `fa_admin_log` VALUES (319, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"110\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882963);
INSERT INTO `fa_admin_log` VALUES (320, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/109?dialog=1', '权限管理 / 权限菜单 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"yunyin\",\"title\":\"USDT数据\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"109\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882984);
INSERT INTO `fa_admin_log` VALUES (321, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"191\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882990);
INSERT INTO `fa_admin_log` VALUES (322, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"167\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882993);
INSERT INTO `fa_admin_log` VALUES (323, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"166\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673882996);
INSERT INTO `fa_admin_log` VALUES (324, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/multi', '权限管理 / 权限菜单', '{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883004);
INSERT INTO `fa_admin_log` VALUES (325, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/multi', '权限管理 / 权限菜单', '{\"action\":\"\",\"ids\":\"66\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883005);
INSERT INTO `fa_admin_log` VALUES (326, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/multi', '权限管理 / 权限菜单', '{\"action\":\"\",\"ids\":\"67\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883006);
INSERT INTO `fa_admin_log` VALUES (327, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"146\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883011);
INSERT INTO `fa_admin_log` VALUES (328, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"128\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883013);
INSERT INTO `fa_admin_log` VALUES (329, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"103\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883016);
INSERT INTO `fa_admin_log` VALUES (330, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"97\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883019);
INSERT INTO `fa_admin_log` VALUES (331, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"91\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883025);
INSERT INTO `fa_admin_log` VALUES (332, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/del', '权限管理 / 权限菜单 / 删除', '{\"action\":\"del\",\"ids\":\"85\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883027);
INSERT INTO `fa_admin_log` VALUES (333, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/153?dialog=1', '权限管理 / 权限菜单 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"109\",\"name\":\"yunyin\\/rechargeusdtlog\",\"title\":\"充值订单\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"153\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883160);
INSERT INTO `fa_admin_log` VALUES (334, 1, 'admin', '/EIzjFDGxCM.php/auth/rule/edit/ids/173?dialog=1', '权限管理 / 权限菜单 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"109\",\"name\":\"yunyin\\/udun\",\"title\":\"钱包配置\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"173\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1673883453);
INSERT INTO `fa_admin_log` VALUES (335, 1, 'admin', '/EIzjFDGxCM.php/index/login?url=%2FEIzjFDGxCM.php%2Fauth%2Frule%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/EIzjFDGxCM.php\\/auth\\/rule?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"iyt4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1674116063);
INSERT INTO `fa_admin_log` VALUES (336, 1, 'admin', '/EIzjFDGxCM.php/general.config/edit', '系统设置 / 基础配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"name\":\"PAYUSDT\",\"beian\":\"是一款基于FastAdmin框架的一款USDT收款系统\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"invite_url\":\"https:\\/\\/test.esharecenter.com\\/\"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 1674117157);
COMMIT;

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类别',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件名称',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '透传数据',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建日期',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` bigint(16) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
BEGIN;
INSERT INTO `fa_attachment` VALUES (1, '', 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 'qrcode.png', 21859, 'image/png', '', 1491635035, 1491635035, 1491635035, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES (2, '', 1, 0, '/uploads/20230103/63e2d3c790b8ccabbc31cc65887882cc.png', '3243', '1705', 'png', 0, 'WechatIMG223.png', 195545, 'image/png', '', 1672751563, 1672751563, 1672751563, 'local', '3b0bcec129bc9a9e12f4a0c5b4831e4430e7e991');
INSERT INTO `fa_attachment` VALUES (3, '', 1, 0, '/uploads/20230107/4be73fddf8dd3cbf3ce75ef901f49856.png', '1867', '1417', 'png', 0, 'pc端注册.png', 934177, 'image/png', '', 1673071592, 1673071592, 1673071592, 'local', 'fbdb49a132f3f257d7a9202716c45b45cbc47718');
INSERT INTO `fa_attachment` VALUES (4, '', 1, 0, '/uploads/20230107/3840cebbb859ae0af846ed1468113966.png', '800', '1757', 'png', 0, '1注册手机端.png', 509804, 'image/png', '', 1673071630, 1673071630, 1673071630, 'local', 'bc5a6f27c1de144b9d576255d3164f0c23d2b4af');
INSERT INTO `fa_attachment` VALUES (5, '', 1, 0, '/uploads/20230108/1c4426cca87a3af0f267ed4ca657a467.apk', '', '', 'apk', 0, '__UNI__B0047B1__20230107111030.apk', 18269208, 'application/vnd.android.package-archive', '', 1673149886, 1673149886, 1673149886, 'local', '6dce178cd71127748af722dd2617f98362cbd0b0');
COMMIT;

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
BEGIN;
INSERT INTO `fa_auth_group` VALUES (1, 0, 'Admin group', '*', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1491635035, 1491635035, 'normal');
INSERT INTO `fa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1491635035, 1491635035, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
BEGIN;
INSERT INTO `fa_auth_group_access` VALUES (1, 1);
INSERT INTO `fa_auth_group_access` VALUES (2, 1);
INSERT INTO `fa_auth_group_access` VALUES (3, 1);
COMMIT;

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '条件',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `weigh` (`weigh`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `fa_auth_rule` VALUES (1, 'file', 0, 'dashboard', '控制台', 'fa fa-dashboard', '', '', 'Dashboard tips', 1, NULL, '', 'kzt', 'kongzhitai', 1491635035, 1491635035, 143, 'normal');
INSERT INTO `fa_auth_rule` VALUES (2, 'file', 0, 'general', '系统设置', 'fa fa-cogs', '', '', '', 1, 'addtabs', '', 'xtsz', 'xitongshezhi', 1491635035, 1669263306, 137, 'normal');
INSERT INTO `fa_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', '', 'Category tips', 0, NULL, '', 'flgl', 'fenleiguanli', 1491635035, 1491635035, 119, 'normal');
INSERT INTO `fa_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', '', 'Addon tips', 0, NULL, '', 'cjgl', 'chajianguanli', 1491635035, 1673883004, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (5, 'file', 0, 'auth', '权限管理', 'fa fa-group', '', '', '', 1, NULL, '', 'qxgl', 'quanxianguanli', 1491635035, 1491635035, 99, 'normal');
INSERT INTO `fa_auth_rule` VALUES (6, 'file', 2, 'general/config', '基础配置', 'fa fa-cog', '', '', '可以在此增改系统的变量和分组,也可以自定义分组和变量', 1, 'addtabs', '', 'jcpz', 'jichupeizhi', 1491635035, 1669263326, 60, 'normal');
INSERT INTO `fa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', '', 'Attachment tips', 1, NULL, '', 'fjgl', 'fujianguanli', 1491635035, 1491635035, 53, 'normal');
INSERT INTO `fa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', '', 1, NULL, '', 'grzl', 'gerenziliao', 1491635035, 1491635035, 34, 'normal');
INSERT INTO `fa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', '管理员设置', 'fa fa-user', '', '', 'Admin tips', 1, NULL, '', 'glygl', 'guanliyuanguanli', 1491635035, 1491635035, 118, 'normal');
INSERT INTO `fa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', '管理员日志', 'fa fa-list-alt', '', '', 'Admin log tips', 1, NULL, '', 'glyrz', 'guanliyuanrizhi', 1491635035, 1491635035, 113, 'normal');
INSERT INTO `fa_auth_rule` VALUES (11, 'file', 5, 'auth/group', '权限分组', 'fa fa-group', '', '', 'Group tips', 1, NULL, '', 'jsz', 'juesezu', 1491635035, 1491635035, 109, 'normal');
INSERT INTO `fa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', '权限菜单', 'fa fa-bars', '', '', 'Rule tips', 1, NULL, '', 'cdgz', 'caidanguize', 1491635035, 1491635035, 104, 'normal');
INSERT INTO `fa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 136, 'normal');
INSERT INTO `fa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 135, 'normal');
INSERT INTO `fa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 133, 'normal');
INSERT INTO `fa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 134, 'normal');
INSERT INTO `fa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 132, 'normal');
INSERT INTO `fa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 52, 'normal');
INSERT INTO `fa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 51, 'normal');
INSERT INTO `fa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 50, 'normal');
INSERT INTO `fa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 49, 'normal');
INSERT INTO `fa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 48, 'normal');
INSERT INTO `fa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 'Attachment tips', 0, NULL, '', '', '', 1491635035, 1491635035, 59, 'normal');
INSERT INTO `fa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 58, 'normal');
INSERT INTO `fa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 57, 'normal');
INSERT INTO `fa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 56, 'normal');
INSERT INTO `fa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 55, 'normal');
INSERT INTO `fa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 54, 'normal');
INSERT INTO `fa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 33, 'normal');
INSERT INTO `fa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 32, 'normal');
INSERT INTO `fa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 31, 'normal');
INSERT INTO `fa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 30, 'normal');
INSERT INTO `fa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 29, 'normal');
INSERT INTO `fa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 28, 'normal');
INSERT INTO `fa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 'Category tips', 0, NULL, '', '', '', 1491635035, 1491635035, 142, 'normal');
INSERT INTO `fa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 141, 'normal');
INSERT INTO `fa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 140, 'normal');
INSERT INTO `fa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 139, 'normal');
INSERT INTO `fa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 138, 'normal');
INSERT INTO `fa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 'Admin tips', 0, NULL, '', '', '', 1491635035, 1491635035, 117, 'normal');
INSERT INTO `fa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 116, 'normal');
INSERT INTO `fa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 115, 'normal');
INSERT INTO `fa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 114, 'normal');
INSERT INTO `fa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 'Admin log tips', 0, NULL, '', '', '', 1491635035, 1491635035, 112, 'normal');
INSERT INTO `fa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 111, 'normal');
INSERT INTO `fa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 110, 'normal');
INSERT INTO `fa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 'Group tips', 0, NULL, '', '', '', 1491635035, 1491635035, 108, 'normal');
INSERT INTO `fa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 107, 'normal');
INSERT INTO `fa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 106, 'normal');
INSERT INTO `fa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 105, 'normal');
INSERT INTO `fa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 'Rule tips', 0, NULL, '', '', '', 1491635035, 1491635035, 103, 'normal');
INSERT INTO `fa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 102, 'normal');
INSERT INTO `fa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 101, 'normal');
INSERT INTO `fa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 100, 'normal');
INSERT INTO `fa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 'Addon tips', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (66, 'file', 0, 'user', '用户中心', 'fa fa-user-circle', '', '', '', 0, NULL, '', 'yhzx', 'yonghuzhongxin', 1491635035, 1673883005, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (67, 'file', 66, 'user/user', '用户列表', 'fa fa-user', '', '', '', 0, NULL, '', 'yhlb', 'yonghuliebiao', 1491635035, 1673883006, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', '', 0, NULL, '', 'hyfz', 'huiyuanfenzu', 1491635035, 1669263228, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'hygz', 'huiyuanguize', 1491635035, 1669263229, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (109, 'file', 0, 'yunyin', 'USDT数据', 'fa fa-list', '', '', '', 1, 'addtabs', '', 'Usj', 'USDTshuju', 1669302999, 1673882984, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (140, 'file', 109, 'yunyin/rechargeusdt', '充值地址', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'czdz', 'chongzhidizhi', 1669306675, 1669306675, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (141, 'file', 140, 'yunyin/rechargeusdt/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1669306675, 1669558844, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (142, 'file', 140, 'yunyin/rechargeusdt/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1669306675, 1669558844, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (143, 'file', 140, 'yunyin/rechargeusdt/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1669306675, 1669558844, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (144, 'file', 140, 'yunyin/rechargeusdt/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1669306675, 1669558844, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (145, 'file', 140, 'yunyin/rechargeusdt/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1669306675, 1669558844, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (153, 'file', 109, 'yunyin/rechargeusdtlog', '充值订单', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'czdd', 'chongzhidingdan', 1669558882, 1673883160, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (154, 'file', 153, 'yunyin/rechargeusdtlog/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1669558882, 1669558882, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (155, 'file', 153, 'yunyin/rechargeusdtlog/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1669558882, 1669558882, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (156, 'file', 153, 'yunyin/rechargeusdtlog/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1669558882, 1669558882, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (157, 'file', 153, 'yunyin/rechargeusdtlog/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1669558882, 1669558882, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (158, 'file', 153, 'yunyin/rechargeusdtlog/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1669558882, 1669558882, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (173, 'file', 109, 'yunyin/udun', '钱包配置', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'qbpz', 'qianbaopeizhi', 1671508458, 1673883452, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (174, 'file', 173, 'yunyin/udun/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1671508459, 1671508459, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (175, 'file', 173, 'yunyin/udun/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1671508459, 1671508459, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (176, 'file', 173, 'yunyin/udun/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1671508459, 1671508459, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (177, 'file', 173, 'yunyin/udun/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1671508459, 1671508459, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (178, 'file', 173, 'yunyin/udun/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1671508459, 1671508459, 0, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自定义名称',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `weigh` (`weigh`,`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
BEGIN;
INSERT INTO `fa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1491635035, 1491635035, 1, 'normal');
INSERT INTO `fa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1491635035, 1491635035, 2, 'normal');
INSERT INTO `fa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1491635035, 1491635035, 3, 'normal');
INSERT INTO `fa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1491635035, 1491635035, 4, 'normal');
INSERT INTO `fa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1491635035, 1491635035, 5, 'normal');
INSERT INTO `fa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1491635035, 1491635035, 6, 'normal');
INSERT INTO `fa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1491635035, 1491635035, 7, 'normal');
INSERT INTO `fa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1491635035, 1491635035, 8, 'normal');
INSERT INTO `fa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1491635035, 1491635035, 9, 'normal');
INSERT INTO `fa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1491635035, 1491635035, 10, 'normal');
INSERT INTO `fa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1491635035, 1491635035, 11, 'normal');
INSERT INTO `fa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1491635035, 1491635035, 12, 'normal');
INSERT INTO `fa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1491635035, 1491635035, 13, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量名',
  `group` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '分组',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '可见条件',
  `value` text COLLATE utf8mb4_unicode_ci COMMENT '变量值',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '变量字典数据',
  `rule` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '配置',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
BEGIN;
INSERT INTO `fa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '', 'PAYUSDT', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '是一款基于FastAdmin框架的一款USDT收款系统', '', '', '', NULL);
INSERT INTO `fa_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果全站静态资源使用第三方云储存请配置该值', 'string', '', '', '', '', '', '');
INSERT INTO `fa_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '', '1.0.1', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', '', 'Asia/Shanghai', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '', '', NULL);
INSERT INTO `fa_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', '', 'dashboard', '', 'required', '', NULL);
INSERT INTO `fa_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '', '{\"default\":\"默认\",\"page\":\"单页\",\"article\":\"文章\",\"test\":\"Test\"}', '', '', '', NULL);
INSERT INTO `fa_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '', '{\"basic\":\"基础配置\",\"dictionary\":\"字典配置\",\"qiniu\":\"七牛云\",\"kefu\":\"客服设置\"}', '', '', '', NULL);
INSERT INTO `fa_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '', '1', '[\"请选择\",\"SMTP\"]', '', '', '');
INSERT INTO `fa_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', '', 'smtp.qq.com', '', '', '', '');
INSERT INTO `fa_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '', '465', '', '', '', '');
INSERT INTO `fa_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '', '10000', '', '', '', '');
INSERT INTO `fa_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码或授权码）', 'string', '', 'password', '', '', '', '');
INSERT INTO `fa_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '', '2', '[\"无\",\"TLS\",\"SSL\"]', '', '', '');
INSERT INTO `fa_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', '', '10000@qq.com', '', '', '', '');
INSERT INTO `fa_config` VALUES (18, 'attachmentcategory', 'dictionary', 'Attachment category', '', 'array', '', '{\"category1\":\"分类一\",\"category2\":\"分类二\",\"custom\":\"自定义\"}', '', '', '', NULL);
INSERT INTO `fa_config` VALUES (19, 'accessKey', 'qiniu', 'accessKey', '', 'string', '', 'WZ7KXntCgogw0K8zLZavMbMErvWso1KwuIsNlg4r', '', 'required', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (20, 'secretKey', 'qiniu', 'secretKey', '', 'string', '', 'DvuzyH3R7_2ZSHX7ZTso60X3miz4U3L5YFDMaPU-', '', 'required', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (21, 'bucket', 'qiniu', 'bucket', '', 'string', '', 'esharei', '', 'required', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (22, 'domain', 'qiniu', '空间域名', '', 'string', '', 'https://img.esharecenter.com/', '', 'required', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (23, 'service_tg', 'kefu', '客服TG', '', 'string', '', 'https://www.vultr.com/', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (24, 'service_whatsapp', 'kefu', '客服Whatsapp', '', 'string', '', 'https://www.baidu.com/', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (25, 'tggroup', 'kefu', 'telegram群组地址', '', 'string', '', '', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (26, 'whatsappgroup', 'kefu', 'whatsapp群组地址', '', 'string', '', '', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (27, 'gmail', 'kefu', 'Gmail地址', '', 'string', '', '', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (28, 'invite_url', 'basic', '分享注册地址', '', 'string', '', 'https://test.esharecenter.com/', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
INSERT INTO `fa_config` VALUES (29, 'tg_channel', 'kefu', 'TG频道链接', '', 'string', '', '', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}');
COMMIT;

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Table structure for fa_gmail
-- ----------------------------
DROP TABLE IF EXISTS `fa_gmail`;
CREATE TABLE `fa_gmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) DEFAULT NULL COMMENT '邮箱账号',
  `pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `name` varchar(50) DEFAULT NULL COMMENT '发过去给对方看到的名称',
  `authcode` varchar(50) DEFAULT NULL COMMENT '授权码',
  `nums` int(11) DEFAULT '0' COMMENT '发送次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='邮箱设置';

-- ----------------------------
-- Records of fa_gmail
-- ----------------------------
BEGIN;
INSERT INTO `fa_gmail` VALUES (1, 'esharecenter1@gmail.com', NULL, 'esharecenter1', 'qtiyjyeixvmoutby', 12);
INSERT INTO `fa_gmail` VALUES (2, 'esharecenter2@gmail.com', NULL, 'esharecenter2', 'koejadkprumwwwaa', 12);
INSERT INTO `fa_gmail` VALUES (3, 'esharecenter3@gmail.com', NULL, 'esharecenter3', 'cweslvveqgaepfer', 11);
INSERT INTO `fa_gmail` VALUES (4, 'esharecenter4@gmail.com', NULL, 'esharecenter4', 'mdkchrftzudhnbsz', 11);
INSERT INTO `fa_gmail` VALUES (5, 'esharecenter5@gmail.com', NULL, 'esharecenter5', 'fajmfbqswrcyrclj', 12);
COMMIT;

-- ----------------------------
-- Table structure for fa_recharge_usdt
-- ----------------------------
DROP TABLE IF EXISTS `fa_recharge_usdt`;
CREATE TABLE `fa_recharge_usdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `udun_id` int(11) DEFAULT '0' COMMENT '钱包ID',
  `addr` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `amount` decimal(10,3) DEFAULT '0.000' COMMENT '累计充值',
  `status` tinyint(4) DEFAULT '0' COMMENT '1充值中；0空闲',
  `addtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) DEFAULT '0' COMMENT '用户ID',
  `expiretime` int(11) DEFAULT '0' COMMENT '过期时间',
  `order_sn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ocount` int(11) DEFAULT '0' COMMENT '充值次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='充值地址';

-- ----------------------------
-- Records of fa_recharge_usdt
-- ----------------------------
BEGIN;
INSERT INTO `fa_recharge_usdt` VALUES (17, 1, 'TUcmGzqpuiEgog6jGZTiWFAe6JoV6nM6Yc', 0.100, 0, 1671643129, 0, 0, '2520221223032324728737', 0);
INSERT INTO `fa_recharge_usdt` VALUES (18, 1, 'TCPodDnF7scJUPsG5E4nX5Bftc5uL4cpKv', 0.000, 0, 1671643847, 0, 0, '2420221222115755261028', 0);
INSERT INTO `fa_recharge_usdt` VALUES (19, 1, 'TNM8i1SLNTm7ukDJRJ78TV3mBw6PSpYwdb', 0.000, 0, 1671644011, 0, 0, '2520221222013331528158', 0);
INSERT INTO `fa_recharge_usdt` VALUES (20, 2, 'TW3J37oEgQvXxFJ1eZq4HAgC9VyXiY3sVN', 0.000, 0, 1671754881, 0, 0, '25221223231956752065', 0);
INSERT INTO `fa_recharge_usdt` VALUES (21, 2, 'TZ9XBrKcpom6WH2i2NEiWHXSPJaxdMJtd4', 0.000, 0, 1671754922, 0, 0, '620221223173937453855', 0);
INSERT INTO `fa_recharge_usdt` VALUES (22, 3, 'TXuGnCX6c4fXtFuAzFCVmLub9n1WS2Kgza', 407.479, 0, 1671842920, 0, 0, '424230108001651077156', 0);
INSERT INTO `fa_recharge_usdt` VALUES (23, 3, 'TJx1pNs5cHC59Rh7sKEmDRnWTdvkimSKgz', 84.000, 0, 1672401535, 0, 0, '415230107202928967984', 0);
INSERT INTO `fa_recharge_usdt` VALUES (24, 3, 'TTWjZJyQ6NtzD1A4mPGvRETBhktCPTPMu9', 9.000, 0, 1672406595, 0, 0, '412230107201543280511', 0);
INSERT INTO `fa_recharge_usdt` VALUES (25, 3, 'TWGvL93fZqGwXwZNm1SNxH2iAAGL8hzmtw', 0.000, 0, 1672406770, 0, 0, '5230107201913544753', 0);
INSERT INTO `fa_recharge_usdt` VALUES (26, 3, 'TQDyBviLBmndCVAqShSUffZyPAHoh7cqaD', 2.000, 0, 1672412726, 0, 0, '51230101205610490592', 0);
INSERT INTO `fa_recharge_usdt` VALUES (27, 1, 'TWYh8PMgbyRgQgjoWg4SnY8vP1ZDTjozXN', 0.000, 0, 1673541698, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (28, 1, 'TAvGPQUaKyFyXy49GdJJzf9Y1AifNzEwb8', 0.000, 0, 1673541699, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (29, 1, 'TRwW1bMmhQAbEHTniqZzQ4gSzvDyi61eDx', 0.000, 0, 1673541699, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (30, 1, 'TLx4yvie3mypqdsDn93icxKA2CeqUYaAdy', 0.000, 0, 1673541699, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (31, 1, 'TYbyEegap2qmL3uKd3vbEqXnr9tjP5ucNp', 0.000, 0, 1673541699, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (32, 1, 'TU98FqYgK8yZMvbT1tuKzZ2gVJriqhHuAo', 0.000, 0, 1673541699, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (33, 1, 'TNaS6Z2yHWbRHAw894hfdiexZCZjGqL94F', 0.000, 0, 1673541700, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (34, 1, 'TNaSG4RMdoYabhmjCGsoo552Pcw5frHXXX', 0.000, 0, 1673541700, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (35, 1, 'TWASvevh8vp3Hf6RoZ5LZjoVqymemBceEJ', 0.000, 0, 1673541700, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (36, 1, 'TYdcWuh8iR1ivmJTapBUjme9pZm6YvqDbZ', 0.000, 0, 1673541700, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (37, 1, 'TF5WQMnNuacqzNKPYtR3k4YVy9umiV4cQf', 0.000, 0, 1673541700, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (38, 1, 'TB29myBawzSifZ4F1B11SnafAcD2ZMugBM', 0.000, 0, 1673541700, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (39, 1, 'TJCpZ4rpoVw5LjUGduTt17v91WiBsC7Mq8', 0.000, 0, 1673541701, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (40, 1, 'TQaxQpC24HauuV9GqrkvTGp2rVBukBizRZ', 0.000, 0, 1673541701, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (41, 1, 'TF4RvNmJ7vZCVjs7yRehXaUDZEUi7FMQXE', 0.000, 0, 1673541701, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (42, 1, 'TU4XS3USPJnrkMmZNrwCMyNFtgKZysWv7S', 0.000, 0, 1673541701, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (43, 1, 'TCUHqyT7QnW1LbDTg7ExzR98ykoFjLF28h', 0.000, 0, 1673541701, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (44, 1, 'TT4pa2Fxt4BaguyzoUeGL3Xd3Nm5itD6o8', 0.000, 0, 1673541701, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (45, 1, 'TKVSY8ZGYgeXKH4388RiKymdHqSJKzD2iG', 0.000, 0, 1673541701, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (46, 1, 'TXcRF1nSQ3r1KxaZ8JK3CQqC2YU8dTw3Ec', 0.000, 0, 1673541702, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (47, 1, 'THZP9z1jriPPnaTaPq1MwryFf9yb861B5p', 0.000, 0, 1673541702, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (48, 1, 'TF6P3apJ5VE3qgfmrtJKmFWaH6iBe9LyzG', 0.000, 0, 1673541702, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (49, 1, 'TTB83dgFvnYXmu4VGWmh6JrY3bpcR8Y3xB', 0.000, 0, 1673541703, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (50, 1, 'TQCHPHH6GLjMpYETkyCVBrPpeCPtEahB6L', 0.000, 0, 1673541703, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (51, 1, 'TWs8shsoQnPd252jGeGX3uHRzZqzFRCNW1', 0.000, 0, 1673541703, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (52, 1, 'TK8xrGJo3UbBnqh9ckbBckAkdKMaKhyoJj', 0.000, 0, 1673541703, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (53, 1, 'TFvZHgt7ayi4NSLFmLDh9aZ5LKYfRKKEpi', 0.000, 0, 1673541703, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (54, 1, 'TJfDsgQdZuZC5U55ebWCpRSdJCSC1AVuUW', 0.000, 0, 1673541704, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (55, 1, 'TXZRSDBRoqnPTN28XJzsixqgHqcx6J97KE', 0.000, 0, 1673541704, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (56, 1, 'TYzuDhCr7Uk7ihGfUiWL6wn74WoiYmWZps', 0.000, 0, 1673541704, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (57, 1, 'TYDbkCtrpMbbdxnW3R6BsBAMhhBJZbPJa6', 0.000, 0, 1673541704, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (58, 1, 'THgKooRXvZmSV2kJH1idAeSsQDmjapP4To', 0.000, 0, 1673541704, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (59, 1, 'TAuEcrHJTqZtSxMjMimPrtkpdsTxLak9sg', 0.000, 0, 1673541704, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (60, 1, 'TD8cPcDrrS3KazTFSxXYJGLTkg1ZzewJSn', 0.000, 0, 1673541705, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (61, 1, 'TRoMzJNjmnk2qHEVh8kbV3cmEz6FxVusnT', 0.000, 0, 1673541705, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (62, 1, 'TJeCmAHVAcCW4L9EUf2wg1w88HCxbv8ECt', 0.000, 0, 1673541705, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (63, 1, 'TGeytdfk5GP7ETTeJSnFWb2o2jafGaqMtf', 0.000, 0, 1673541705, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (64, 1, 'TN1yTydr7QtE1Eo8epSC4PF8sxbx95Rpf1', 0.000, 0, 1673541706, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (65, 1, 'TV14CSUYrc3Wo2t65h3FU7iX1RWDjoQPR4', 0.000, 0, 1673541706, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (66, 1, 'TGfMM5E5UTR6TCPZtz5edFei7ib4MSM5DN', 0.000, 0, 1673541706, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (67, 1, 'TUKm9WjVeg5it674wxwzzPnTKPev1RYoYk', 0.000, 0, 1673541706, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (68, 1, 'TQyTBHeM3gqcvakiPa7f38Mqog7pDRh77s', 0.000, 0, 1673541706, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (69, 1, 'TRrM41qfpwMaiELuLYk8ydzFoxgdeFqdTH', 0.000, 0, 1673541707, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (70, 1, 'TUtkqTFWZsbktYKRD1qp9GdjwQ27yamCPJ', 0.000, 0, 1673541707, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (71, 1, 'TFVZjVpmPtV76mUgJ2d1AxaKXVLfcMYGj2', 0.000, 0, 1673541707, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (72, 1, 'TKdxKJBr9ZMTWQCPB69iwanL89ZXkSXf5t', 0.000, 0, 1673541707, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (73, 1, 'TPtQ22u8rqo5XLc1zhY44uBWVnemKrLCZk', 0.000, 0, 1673541707, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (74, 1, 'TF9y6rg6DcWBnbJnfsDqgbJY1uwS3QffHr', 0.000, 0, 1673541707, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (75, 1, 'THsa8SrQpx5B2LKrkDmzqYSBg9qEjBrLqS', 0.000, 0, 1673541707, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (76, 1, 'TWPXQVYbBnxgujQDUw5C6tkGBa4r3TmyP9', 0.000, 0, 1673541708, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (77, 1, 'TPY2NLwW84oHB7qYnGW8qbVLKJ9bsL9VpH', 0.000, 0, 1673541708, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (78, 1, 'TVbU4FodHF9nLLbF3jAA92i8JpKDftAFS1', 0.000, 0, 1673541708, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (79, 1, 'TTZzvQdkyMbDnanVhYTkEYXf6qez6Mc8mX', 0.000, 0, 1673541708, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (80, 1, 'TUXPVaonSn9Fo74DdTf6kb7jMhEkDavYEz', 0.000, 0, 1673541708, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (81, 1, 'TLbJ2AAaqLDaJTWZTVdVDfynWrmWoSauJb', 0.000, 0, 1673541709, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (82, 1, 'TRHdLv2NN5orJ4JkLQrdp3Ye479pUUYjuN', 0.000, 0, 1673541709, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (83, 1, 'TJxgpxrm3aX81JYYcfW4JEdczfppjprk3X', 0.000, 0, 1673541709, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (84, 1, 'TTMj2ZsRhxj9bhKUTARgZ7uPXkVNc1gVeX', 0.000, 0, 1673541709, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (85, 1, 'TV56rvoCATjX6KW7W2P3UKSY7xBHFUBiHV', 0.000, 0, 1673541709, 0, 0, '', 0);
INSERT INTO `fa_recharge_usdt` VALUES (86, 1, 'TE49SPKWJe1B6ut7HgWpMLnCXf3bE92Qqi', 8.100, 0, 1673541710, 0, 0, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for fa_recharge_usdt_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_recharge_usdt_log`;
CREATE TABLE `fa_recharge_usdt_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recharge_usdt_id` int(11) DEFAULT '0' COMMENT '充值地址ID',
  `user_id` int(11) DEFAULT '0' COMMENT '用户ID',
  `amount` decimal(10,4) DEFAULT '0.0000' COMMENT '金额',
  `fee` decimal(10,2) DEFAULT '0.00' COMMENT '矿工费',
  `trx` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '交易hash',
  `addtime` int(11) DEFAULT '0' COMMENT '时间',
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT '99' COMMENT '状态',
  `tradeType` tinyint(4) DEFAULT '0' COMMENT '交易类型',
  `tradeId` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业务流水号',
  `order_sn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coinType` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t' COMMENT 'udun子币种',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `recharge_usdt_id` (`recharge_usdt_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='usdt充值记录';

-- ----------------------------
-- Records of fa_recharge_usdt_log
-- ----------------------------
BEGIN;
INSERT INTO `fa_recharge_usdt_log` VALUES (1, 22, 1, 22.0000, 0.00, '4795141c1d192d8a1e9269d7b6a5b8d418ff57db385c51e7e7242a9c5d0d5faa', 1672386129, '', 3, 1, '1058409662118162432', '1221230083451574094', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (2, 22, 6, 2.0000, 0.00, 'a170d4afc4159da75e970e889ab0fd742567a8fc72645af794d0b3026458efff', 1672400657, '', 3, 1, '1058470594865328128', '6221230123802970581', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (3, 22, 9, 9.0000, 6498000.00, '3547e8f77c8709683f819f5dcfd90b701056397d0d727abfa5f58a4af67cef56', 1672408537, '', 3, 1, '1058503648036057088', '9221230145028508082', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (4, 24, 18, 9.0000, 12798000.00, 'e44b0bde90e9d08cd61ea4d25cbe9b04a3569bc3a96e7e1b666488b2293ef8ac', 1672412217, '', 3, 1, '1058519078322630656', '18221230154957166662', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (5, 22, 33, 9.0000, 6498000.00, '4a6f675e87743d782461ada403edd9e5aa782463d263dd73f5a9ab94d21e933c', 1672419138, '', 3, 1, '1058548114277068800', '33221230174900106044', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (6, 22, 52, 10.0000, 6498000.00, '951bee7324556cf52582dacd9cfe4eb6c718f8c146752b24851726a8b423ac1e', 1672467857, '', 3, 1, '1058752459874562048', '52221231072037518022', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (7, 22, 75, 15.0000, 6153000.00, 'bdc2bf1296b55d98fa6186f9911400ab252c0551d57363f14b13e132a9fd40cc', 1672494059, '', 3, 1, '1058862347342639104', '75221231143833133672', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (8, 22, 85, 3.0000, 6153000.00, '7ae18ff54c6e33356c99f6367a6e8a805b56d47944d2de9295886ba7fbc39348', 1672506297, '', 3, 1, '1058913680665931776', '85221231180319522575', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (9, 22, 80, 2.0000, 6153000.00, 'e39bcd71f9b445dd36190cb445b36f73494c8f5d30ef8a9b3253f99c901f3170', 1672518856, '', 3, 1, '1058966362382462976', '80221231213252491107', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (10, 22, 85, 1.0000, 6153000.00, 'e7aab4f3b27f1ce8ef688db1a3807b6c1b32caa1b7ddc655f83d2f83203d031d', 1672539496, '', 3, 1, '1059052935551709184', '85230101031627406668', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (11, 22, 97, 4.0000, 6153000.00, '1e5e91fa715a4ce1f9007e9305a47db21ab2a5b0cdbfec12d1fa17e43e47bb58', 1672561857, '', 3, 1, '1059146716812734464', '97230101092907420514', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (12, 22, 78, 2.0000, 6153000.00, 'acde4a7ea797a41ae9993269c89ee9d57d5058a84fce01b83ca9e884472b91f7', 1672565977, '', 3, 1, '1059163998922272768', '78230101103646244957', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (13, 22, 57, 5.1120, 6150900.00, '01e48b4eda472637b18d6257b58af0357bde2cb3210662d92221e989e3864d49', 1672582217, '', 3, 1, '1059232119242682368', '57230101150425602575', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (14, 22, 85, 1.6000, 6153000.00, '60f5380a3cf8ee74c3495732c2d5c65767579c4f4d2b0bf3f853f71e9a7b1be9', 1672584337, '', 3, 1, '1059241011917942784', '85230101154354960471', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (15, 22, 114, 2.0000, 6153000.00, '3121b5bf899853dda92115ed857ac7276a9e7d25f9c1bcceebfc6f9ef7b03362', 1672586738, '', 3, 1, '1059251071851229184', '114230101162357493707', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (16, 26, 51, 2.0000, 0.00, '8fd59db70ce20c40ba5e9cdc4f5125907cf2b75fe70178199382e47e7007eb1c', 1672603337, '', 3, 1, '1059320703945601024', '51230101205610490592', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (17, 23, 93, 9.0000, 12798000.00, '7ff4a16a4d7319fb5880f0f160fcf91cf45837d450029a25dabb0a6ced339cfc', 1672610056, '', 3, 1, '1059348884656287744', '93230101224502993483', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (18, 22, 85, 2.0000, 6153000.00, '6b6f274a729ac0bda7fcee578aef8364f6f27403a5ce6d29536797f4231e5369', 1672621417, '', 3, 1, '1059396530431389696', '85230102020138536285', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (19, 22, 131, 3.2000, 6153000.00, '877c3a3e1d9690342331a3fc538b297e15737bec4bcc392806d7c03017d47dbc', 1672645143, '', 3, 1, '1059496049508675584', '131230102083621512904', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (20, 22, 97, 1.0000, 6153000.00, 'f4d0466f555dadda48fab1df9b37564dfccab5c93454f1ffd20f38489f2352b0', 1672645497, '', 3, 1, '1059497530496446464', '97230102084312884793', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (21, 22, 33, 30.0000, 6498000.00, 'b9958ac8fbcd8c73e2460e9508d190faecf820db7bfaef8786717c79b878bf66', 1672655738, '', 3, 1, '1059540486817378304', '33230102113128177107', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (22, 22, 157, 11.0000, 6153000.00, '1e4bdfdc75519addbc0af935c2c6af631bcff1daa170f350c6a2bd84d9bae640', 1672657098, '', 3, 1, '1059546192631099392', '157230102115017312897', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (23, 22, 47, 5.5310, 6498000.00, '7a1dec3b7e4425839eebddf2fb33b88c7359dca8227ba7bb84dc4255cac37b2b', 1672668737, '', 3, 1, '1059595011750162432', '47230102150718017697', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (24, 23, 6, 50.0000, 6498000.00, 'f03e201627d9a96269c9cfbe4cad53f23f4d1929024a2dcb0fcd3dbc4cbc132e', 1672686617, '', 3, 1, '1059670005456891904', '6230102200329253108', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (25, 23, 85, 9.0000, 6497580.00, 'e98eef5741786d6ccef4a224ab5f4651c52d6dd23fffe059fd871d72fcad2819', 1672917859, '', 3, 1, '1060639895802146816', '85230105122243946631', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (26, 23, 85, 4.0000, 6497580.00, 'fa27b83429d789b7d3775eefab81acc81c73998e258004e04410e5e3041c50fa', 1672918101, '', 3, 1, '1060640917404577793', '85230105122506586336', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (27, 22, 0, 15.0000, 0.00, '7181094bcb93751eaf546cfdf36b4193ac334e2e1f36aa04c3ebb54ef4128e6c', 1672925102, '未找到充值用户', 3, 1, '1060670265968881664', '161230105140634186507', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (28, 22, 0, 0.0000, 0.00, 'd328781f94dea86dc90011a6b284cde33b8faa022dd77dfbc4b313e9f9315016', 1672925224, '未找到充值用户', 3, 1, '1060670779502686208', '161230105140634186507', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (29, 22, 169, 2.8000, 0.00, 'f96061178a99a1261e9968a54df68bd5a9742dc183ea8ed14bf4b954a6231782', 1672932900, '', 3, 1, '1060702980617334784', '169230105162623039119', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (30, 23, 161, 3.0000, 6153000.00, '89a79ad8de369666c0e8e6f1c142a14c820a5c032c3416afbd4bb352851b72ab', 1672933779, '', 3, 1, '1060706671516774400', '161230105164501320837', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (31, 22, 320, 38.4775, 274000.00, '1b735513423dcd2ce48d9698504ada466fcbe9c17aa5d8f5f2789b2c804aff59', 1672942858, '', 3, 1, '1060744756153610240', '320230105191842149906', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (32, 22, 322, 10.0000, 6498000.00, '967718e75a0f837757716d63eaeb637a8ec7428883f451885d38130760b69700', 1672943138, '', 3, 1, '1060745932861403136', '322230105192155966327', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (33, 22, 88, 10.0000, 6153000.00, '8cccf0d77aff2517ba07e5ff9bfaee2879d4a8b254013c5845c6664a1df1726e', 1672978379, '', 3, 1, '1060893738825740288', '88230106050755427528', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (34, 22, 161, 9.0000, 6153000.00, '2b6b64ef878a458ac0024d660393292dc1a15898abfb4b33e87390e3ecb10fde', 1672978741, '', 3, 1, '1060895261211291648', '161230106051517716096', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (35, 22, 97, 10.1000, 6153000.00, '790d9e054025971fdc13c1f6debf220ab13306b55e01011b626df7d9de2f516b', 1672985619, '', 3, 1, '1060924104273883136', '97230106071128882555', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (36, 22, 103, 2.0000, 0.00, '3de795b0c5996d0840f9f7510d6b7e096f44d08a2e60280934244bd8aa4ca9cf', 1672993949, '', 3, 1, '1060959045028212736', '103230106092314414015', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (37, 22, 127, 2.0000, 6498000.00, 'e118f93953191e344343c45ba615ae44effba980ede6810c821158f57144e0e2', 1673007040, '', 3, 1, '1061013955153293312', '127230106130610049528', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (38, 22, 254, 9.8000, 6498000.00, '9a6986ad48ac5be208f0e910d6a869b05245cc77c7dc46c10fac06635c0a05f1', 1673023559, '', 3, 1, '1061083239191736320', '254230106173909835498', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (39, 22, 274, 50.0000, 6498000.00, 'e07e2ae97e4e7b759ea323cc0ac5f824b2119559f9203853e18f8740655e66bc', 1673031758, '', 3, 1, '1061117627086467072', '274230106195626495559', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (40, 22, 356, 55.0000, 0.00, '969bde6f56885de623108951414f1f738b681e8af1bfa6f989bd2643492072e0', 1673041879, '', 3, 1, '1061160080170610688', '356230106224534810447', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (41, 22, 85, 10.0000, 6497580.00, '26e231d0415e923f38a3ff73ccea1e2442a321d736258204384ba0e5f5be14f6', 1673047518, '', 3, 1, '1061183731062337536', '85230107002352910153', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (42, 22, 168, 2.0000, 6153000.00, '29ad0abfc3d492ccdff38f0d7952801131f40d551ee475166943f6983c0e67a4', 1673086366, '', 3, 1, '1061346666501959680', '168230107110849709089', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (43, 22, 391, 2.1400, 6136200.00, 'ba06ac04a80a8cc7072b4f0f82e9192e4fd2b2838c248f70c31f75008d51f1bd', 1673094606, '', 3, 1, '1061381235645149184', '391230107132802303074', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (44, 22, 2, 10.0000, 0.00, '31e6696be26897cd77e63f2f86ba656c6bb748bbda9d582a68005204ad4e5476', 1673099447, '', 3, 1, '1061401531261448192', '2230107144749719620', '195');
INSERT INTO `fa_recharge_usdt_log` VALUES (45, 22, 254, 30.0000, 6498000.00, '88b810d8e395047d75b12e560c594720d509d61158a869b5fea4b40de8d4c4c3', 1673108447, '', 3, 1, '1061439283038318592', '254230107171340397781', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (46, 23, 300, 9.0000, 6498000.00, 'd68ebb794a1deecf50a8d49bdcc5cb8e0868c363d72b66879fe8d430da7b716d', 1673119449, '人工处理充值未找到用户：', 3, 1, '1061485421980348416', '415230107201328619031', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (47, 22, 300, 3.0000, 6153000.00, '39733a56eacc19fcca1b5cca8cb1146d736746717c5867180c4ffdbe1795e48d', 1673123446, '', 3, 1, '1061502196440690688', '300230107212901271739', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (48, 86, 0, 0.1000, 12453000.00, '5f3d556ed03438620b04cfc9caf6632651ca756061490a8a83d3bff74470078c', 1673761070, '未找到充值用户', 3, 1, '1055277345908518912', '80221231213252491107', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (49, 86, 8, 0.1000, 12453000.00, '5f3d556ed03438620b04cfc9caf6632651ca756061490a8a83d3bff74470078c', 1673761221, '未找到充值用户', 3, 1, '1055277345908518912', '127230106130610049528', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (50, 86, 421, 8.0000, 12453000.00, '5f3d556ed03438620b04cfc9caf6632651ca756061490a8a83d3bff74470078c', 1673761269, '人工处理充值未找到用户：', 3, 1, '1055277345908518912', '161230105140634186507', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (51, 86, 8, 8.0000, 12453000.00, '5f3d556ed03438620b04cfc9caf6632651ca756061490a8a83d3bff74470078c', 1673761305, '', 3, 1, '1055277345908518912', '169230105162623039119', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
INSERT INTO `fa_recharge_usdt_log` VALUES (52, 86, 0, 8.0000, 12453000.00, '5f3d556ed03438620b04cfc9caf6632651ca756061490a8a83d3bff74470078c', 1673761324, '未找到充值用户', 3, 1, '1055277345908518912', '103230106092314414015', 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t');
COMMIT;

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) DEFAULT '0' COMMENT '会员ID',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `images` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '省市',
  `json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned DEFAULT '0' COMMENT '点击',
  `workrange` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '时间区间',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` bigint(16) DEFAULT NULL COMMENT '刷新时间',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
BEGIN;
INSERT INTO `fa_test` VALUES (1, 1, 1, 12, '12,13', '互联网,计算机', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '[{\"title\":\"标题一\",\"intro\":\"介绍一\",\"author\":\"小明\",\"age\":\"21\"}]', 0.00, 0, '2020-10-01 00:00:00 - 2021-10-31 23:59:59', '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1491635035, 1491635035, 1491635035, NULL, 0, 1, 'normal', '1');
COMMIT;

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `area` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地区',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `qq` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '/assets/files/default-avatar.png' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '我的余额',
  `expendmoney` decimal(10,2) DEFAULT '0.00' COMMENT '消费金额',
  `yongjin` decimal(10,2) DEFAULT '0.00' COMMENT '我的佣金',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Token',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  `verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证',
  `vip` tinyint(4) DEFAULT '0' COMMENT '是否vip',
  `endvip` int(11) DEFAULT '0' COMMENT '到期时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';

-- ----------------------------
-- Records of fa_user
-- ----------------------------
BEGIN;
INSERT INTO `fa_user` VALUES (1, 1, 'admin', 'admin', '86cc5cdaa504c6e9275d0fecae8ad21b', '509b4c', 'admin@163.com', NULL, '13888888888', NULL, 'http://local.acg.com/assets/img/avatar.png', 0, 0, '2017-04-08', '', 0.00, 0.00, 0.00, 0, 1, 1, 1491635035, 1491635035, '127.0.0.1', 0, '127.0.0.1', 1491635035, 0, 1491635035, '', 'normal', '', 0, 0);
INSERT INTO `fa_user` VALUES (2, 0, 'dddddd', 'dddddd', '04fd89742558c29a1b16b5277ab15ae8', 'vMO0bA', 'ddd@dd.com', NULL, '19980734997', NULL, '', 1, 0, NULL, '', 13.40, 0.00, 0.00, 0, 1, 2, 1651590922, 1651763782, '127.0.0.1', 0, '127.0.0.1', 1651467569, 1651467569, 1651763782, '', 'normal', '', 0, 0);
INSERT INTO `fa_user` VALUES (3, 0, 'eeeeee', 'eeeeee', 'aaa4eaa3015ee50e821f3e2e93337330', 'eNcO3i', '2705763608@qq.com', NULL, '', NULL, '', 1, 0, NULL, '', 0.00, 0.00, 0.00, 0, 1, 1, 1652714905, 1652714905, '127.0.0.1', 0, '127.0.0.1', 1652714905, 1652714905, 1652714905, '', 'normal', '', 0, 0);
INSERT INTO `fa_user` VALUES (4, 0, 'xxxxxx', '', '08ef33602e72f3ada68567c0c906be69', '0N2EI7', '', NULL, '', '', '/uploads/20220518/79df0d73b99f580b75082c98cec867df.png', 1, 0, NULL, '', 199.00, 0.00, 0.00, 0, 3, 3, 1652887312, 1652888183, '127.0.0.1', 0, '127.0.0.1', 1652714985, 1652714985, 1652888183, '', 'normal', '', 1, 0);
INSERT INTO `fa_user` VALUES (5, 0, 'dddd', 'dddd', 'cee15f64c996c957b7f594c8a226af35', 'ofvbNT', '2705763e608@qq.com', NULL, '', NULL, '', 1, 0, NULL, '', 1.00, 0.00, 0.00, 0, 2, 2, 1664892365, 1664944881, '127.0.0.1', 0, '127.0.0.1', 1653920685, 1653920685, 1664944881, '', 'normal', '', 1, 0);
INSERT INTO `fa_user` VALUES (6, 0, 'test111', 'test111', '41b753899735597bfc2c0470dddc5e33', 'y3rd9I', 'ssong4008@gmail.com', NULL, '', NULL, '', 1, 0, NULL, '', 0.00, 0.00, 0.00, 0, 1, 1, 1671341902, 1671716602, '127.0.0.1', 0, '127.0.0.1', 1671336102, 1671336103, 1671716602, '', 'normal', '', 0, 0);
INSERT INTO `fa_user` VALUES (7, 0, 'ddddddx', 'ddddddx', 'e880ee694081520dc3bcac12239f1695', 'jw49Pc', 'ddd@ss.com', NULL, '', NULL, '', 1, 0, NULL, '', 0.00, 0.00, 0.00, 0, 1, 1, 1671342602, 1671342602, '127.0.0.1', 0, '127.0.0.1', 1671342602, 1671342602, 1671342602, '', 'normal', '', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '包大小',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='版本表';

SET FOREIGN_KEY_CHECKS = 1;