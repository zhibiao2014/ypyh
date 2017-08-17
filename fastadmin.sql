/*
Navicat MySQL Data Transfer

Source Server         : WAMP
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : fastadmin

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-17 14:38:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', '7f9f3b562d6c28cc4764eec1411dcab9', '352189', '/assets/img/avatar.png', 'admin@admin.com', '0', '1502437121', '1492186163', '1502437121', 'de27f1e4-6d08-4746-96d8-62e79227927f', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1285 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1218', '1', 'admin', '/index.php/admin/index/login', '登录', '{\"__token__\":\"5eec0207232289a09d7b75e9534821d7\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437121');
INSERT INTO `fa_admin_log` VALUES ('1219', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"page\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437132');
INSERT INTO `fa_admin_log` VALUES ('1220', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"wechat\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437136');
INSERT INTO `fa_admin_log` VALUES ('1221', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"third\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437137');
INSERT INTO `fa_admin_log` VALUES ('1222', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"adminlte\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437140');
INSERT INTO `fa_admin_log` VALUES ('1223', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"bootstrap\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437142');
INSERT INTO `fa_admin_log` VALUES ('1224', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"ucenter\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437144');
INSERT INTO `fa_admin_log` VALUES ('1225', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"alisms\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437145');
INSERT INTO `fa_admin_log` VALUES ('1226', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"loginbg\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437146');
INSERT INTO `fa_admin_log` VALUES ('1227', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"database\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437149');
INSERT INTO `fa_admin_log` VALUES ('1228', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"crontab\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437150');
INSERT INTO `fa_admin_log` VALUES ('1229', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"qrcode\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437151');
INSERT INTO `fa_admin_log` VALUES ('1230', '1', 'admin', '/index.php/admin/addon/install', '插件管理 安装', '{\"name\":\"version\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437152');
INSERT INTO `fa_admin_log` VALUES ('1231', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437221');
INSERT INTO `fa_admin_log` VALUES ('1232', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437239');
INSERT INTO `fa_admin_log` VALUES ('1233', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437239');
INSERT INTO `fa_admin_log` VALUES ('1234', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437242');
INSERT INTO `fa_admin_log` VALUES ('1235', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437243');
INSERT INTO `fa_admin_log` VALUES ('1236', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"1 * * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437254');
INSERT INTO `fa_admin_log` VALUES ('1237', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"1 * * * *\",\"days\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437254');
INSERT INTO `fa_admin_log` VALUES ('1238', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* 1 * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437262');
INSERT INTO `fa_admin_log` VALUES ('1239', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* 1 * * *\",\"days\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437262');
INSERT INTO `fa_admin_log` VALUES ('1240', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* *\\/1 * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437283');
INSERT INTO `fa_admin_log` VALUES ('1241', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* *\\/1 * * *\",\"days\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437284');
INSERT INTO `fa_admin_log` VALUES ('1242', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* *\\/1 *\\/1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437293');
INSERT INTO `fa_admin_log` VALUES ('1243', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* *\\/1 *\\/1 * *\",\"days\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437293');
INSERT INTO `fa_admin_log` VALUES ('1244', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * *\\/1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437298');
INSERT INTO `fa_admin_log` VALUES ('1245', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * *\\/1 * *\",\"days\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437298');
INSERT INTO `fa_admin_log` VALUES ('1246', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * *\\/1 * *\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437303');
INSERT INTO `fa_admin_log` VALUES ('1247', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * *\\/1 * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437304');
INSERT INTO `fa_admin_log` VALUES ('1248', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * *\\/1 * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437306');
INSERT INTO `fa_admin_log` VALUES ('1249', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * 1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437310');
INSERT INTO `fa_admin_log` VALUES ('1250', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * 1 * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437310');
INSERT INTO `fa_admin_log` VALUES ('1251', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* 1 * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437326');
INSERT INTO `fa_admin_log` VALUES ('1252', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* 1 * * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437326');
INSERT INTO `fa_admin_log` VALUES ('1253', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"1 1 * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437338');
INSERT INTO `fa_admin_log` VALUES ('1254', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"1 1 * * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437338');
INSERT INTO `fa_admin_log` VALUES ('1255', '1', 'admin', '/index.php/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"1 2 * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437345');
INSERT INTO `fa_admin_log` VALUES ('1256', '1', 'admin', '/index.php/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"1 2 * * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437346');
INSERT INTO `fa_admin_log` VALUES ('1257', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437374');
INSERT INTO `fa_admin_log` VALUES ('1258', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437375');
INSERT INTO `fa_admin_log` VALUES ('1259', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437377');
INSERT INTO `fa_admin_log` VALUES ('1260', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437377');
INSERT INTO `fa_admin_log` VALUES ('1261', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437378');
INSERT INTO `fa_admin_log` VALUES ('1262', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437378');
INSERT INTO `fa_admin_log` VALUES ('1263', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437378');
INSERT INTO `fa_admin_log` VALUES ('1264', '1', 'admin', '/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502437379');
INSERT INTO `fa_admin_log` VALUES ('1265', '1', 'admin', '/index.php/admin/category/edit/ids/26?dialog=1', '分类管理 编辑', '{\"dialog\":\"1\",\"row\":{\"type\":\"test\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd52\",\"nickname\":\"test2\",\"flag\":[\"recommend\"],\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"weigh\":\"13\",\"status\":\"normal\"},\"ids\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502677557');
INSERT INTO `fa_admin_log` VALUES ('1266', '1', 'admin', '/admin/?callback=jQuery22408319835476078381_1502933182290', '', '{\"callback\":\"jQuery22408319835476078381_1502933182290\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502933182');
INSERT INTO `fa_admin_log` VALUES ('1267', '1', 'admin', '/admin/?callback=jQuery22404892156112858568_1502936777590', '', '{\"callback\":\"jQuery22404892156112858568_1502936777590\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502936777');
INSERT INTO `fa_admin_log` VALUES ('1268', '1', 'admin', '/admin/version/del/ids/1', '版本管理 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502936799');
INSERT INTO `fa_admin_log` VALUES ('1269', '1', 'admin', '/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502936805');
INSERT INTO `fa_admin_log` VALUES ('1270', '1', 'admin', '/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502936807');
INSERT INTO `fa_admin_log` VALUES ('1271', '1', 'admin', '/admin/auth/rule/edit/ids/108?dialog=1', '权限管理 规则管理 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"version\",\"title\":\"\\u7248\\u672c\\u7ba1\\u7406\",\"icon\":\"fa fa-file-text-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\\u5e38\\u7528\\u4e8e\\u7ba1\\u7406\\u79fb\\u52a8\\u7aef\\u5e94\\u7528\\u7248\\u672c\\u66f4\\u65b0\",\"status\":\"hidden\"},\"ids\":\"108\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502937009');
INSERT INTO `fa_admin_log` VALUES ('1272', '1', 'admin', '/admin/?callback=jQuery224012323361630001228_1502937013087', '', '{\"callback\":\"jQuery224012323361630001228_1502937013087\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502937013');
INSERT INTO `fa_admin_log` VALUES ('1273', '1', 'admin', '/admin/auth/rule/edit/ids/4?dialog=1', '权限管理 规则管理 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"addon\",\"title\":\"\\u63d2\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-rocket\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\\u53ef\\u5728\\u7ebf\\u5b89\\u88c5\\u3001\\u5378\\u8f7d\\u3001\\u7981\\u7528\\u3001\\u542f\\u7528\\u63d2\\u4ef6\\uff0c\\u540c\\u65f6\\u652f\\u6301\\u6dfb\\u52a0\\u672c\\u5730\\u63d2\\u4ef6\",\"status\":\"hidden\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502937028');
INSERT INTO `fa_admin_log` VALUES ('1274', '1', 'admin', '/admin/?callback=jQuery22408986986613170354_1502937042669', '', '{\"callback\":\"jQuery22408986986613170354_1502937042669\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502937043');
INSERT INTO `fa_admin_log` VALUES ('1275', '1', 'admin', '/admin/?callback=jQuery22400038847489739139984_1502938755472', '', '{\"callback\":\"jQuery22400038847489739139984_1502938755472\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502938756');
INSERT INTO `fa_admin_log` VALUES ('1276', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502942522');
INSERT INTO `fa_admin_log` VALUES ('1277', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502942524');
INSERT INTO `fa_admin_log` VALUES ('1278', '1', 'admin', '/admin/general.database/query', '常规管理 数据库管理 查询', '{\"do_action\":\"optimizeall\",\"submit5\":\"\\u4f18\\u5316\\u5168\\u90e8\\u8868\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502942563');
INSERT INTO `fa_admin_log` VALUES ('1279', '1', 'admin', '/admin/general.database/query', '常规管理 数据库管理 查询', '{\"do_action\":\"repairall\",\"submit6\":\"\\u4fee\\u590d\\u5168\\u90e8\\u8868\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502942563');
INSERT INTO `fa_admin_log` VALUES ('1280', '1', 'admin', '/admin/general.database/query', '常规管理 数据库管理 查询', '{\"do_action\":\"repair\",\"tablename\":[\"fa_auth_rule\"],\"submit4\":\"\\u4fee\\u590d\\u8868\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502942563');
INSERT INTO `fa_admin_log` VALUES ('1281', '1', 'admin', '/admin/?callback=jQuery22406488256814972397_1502948861626', '', '{\"callback\":\"jQuery22406488256814972397_1502948861626\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502948861');
INSERT INTO `fa_admin_log` VALUES ('1282', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"QQ\\u56fe\\u724720170518171734.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502949912');
INSERT INTO `fa_admin_log` VALUES ('1283', '1', 'admin', '/admin/?callback=jQuery22409079881073893192_1502950149198', '', '{\"callback\":\"jQuery22409079881073893192_1502950149198\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502950149');
INSERT INTO `fa_admin_log` VALUES ('1284', '1', 'admin', '/admin/?callback=jQuery224035256932569296895_1502950167962', '', '{\"callback\":\"jQuery224035256932569296895_1502950167962\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1502950168');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES ('2', '/uploads/20170817/fa1fba19d119a0a843926e73c1fc04f9.png', '1441', '369', 'png', '0', '79697', 'image/png', '', '1502949912', '1502949912', '1502949912', 'local', '1e6c29cc02150abbcd1b06146f21cdb1403d1546');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', '超级管理员', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('2', '1', '二级管理员', '1,2,4,6,7,8,9,10,11,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205308', 'normal');
INSERT INTO `fa_auth_group` VALUES ('3', '2', '三级管理员', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `fa_auth_group` VALUES ('4', '1', '二级管理员2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `fa_auth_group` VALUES ('5', '2', '三级管理员2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');
INSERT INTO `fa_auth_group_access` VALUES ('2', '2');
INSERT INTO `fa_auth_group_access` VALUES ('3', '3');
INSERT INTO `fa_auth_group_access` VALUES ('4', '5');
INSERT INTO `fa_auth_group_access` VALUES ('5', '5');

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('1', 'file', '0', 'dashboard', '控制台', 'fa fa-dashboard\r', '', '用于展示当前系统中的统计数据、统计报表及重要实时数据\r', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('2', 'file', '0', 'general', '常规管理', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('3', 'file', '0', 'category', '分类管理', 'fa fa-list\r', '', '用于统一管理网站的所有分类,分类可进行无限级分类\r', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('4', 'file', '0', 'addon', '插件管理', 'fa fa-rocket', '', '可在线安装、卸载、禁用、启用插件，同时支持添加本地插件', '1', '1502035509', '1502937028', '0', 'hidden');
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', '权限管理', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('6', 'file', '2', 'general/config', '系统配置', 'fa fa-cog', '', '', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', '附件管理', 'fa fa-file-image-o', '', '主要用于管理上传到又拍云的数据或上传至本服务的上传数据\r\n', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '2', 'general/profile', '个人配置', 'fa fa-user\r', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', '管理员管理', 'fa fa-user', '', '一个管理员可以有多个角色组,左侧的菜单根据管理员所拥有的权限进行生成', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', '管理员日志', 'fa fa-list-alt', '', '管理员可以查看自己所拥有的权限的管理员日志', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', '角色组', 'fa fa-group', '', '角色组可以有多个,角色有上下级层级关系,如果子角色有角色组和管理员的权限则可以派生属于自己组别下级的角色组或管理员', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', '规则管理', 'fa fa-bars', '', '规则通常对应一个控制器的方法,同时左侧的菜单栏数据也从规则中体现,通常建议通过控制台进行生成规则节点', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', '选择附件', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', '更新个人信息', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('35', 'file', '3', 'category/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('36', 'file', '3', 'category/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('37', 'file', '3', 'category/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('38', 'file', '3', 'category/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('39', 'file', '3', 'category/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', '详情', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', '查看', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', '添加', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', '删除', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('55', 'file', '4', 'addon/index', '查看', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('56', 'file', '4', 'addon/add', '添加', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', '修改', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('58', 'file', '4', 'addon/del', '删除', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('59', 'file', '4', 'addon/local', '本地安装', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('60', 'file', '4', 'addon/state', '禁用启用', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('61', 'file', '4', 'addon/install', '安装', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('62', 'file', '4', 'addon/uninstall', '卸载', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('63', 'file', '4', 'addon/config', '配置', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', '刷新', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('66', 'file', '0', 'page', '单页管理', 'fa fa-tags', '', '用于管理普通的单页面,通常用于关于我们、联系我们、商务合作等单一页面', '1', '1502437132', '1502437132', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('67', 'file', '66', 'page/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437132', '1502437132', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('68', 'file', '66', 'page/add', '添加', 'fa fa-circle-o', '', '', '0', '1502437132', '1502437132', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('69', 'file', '66', 'page/edit', '修改', 'fa fa-circle-o', '', '', '0', '1502437132', '1502437132', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('70', 'file', '66', 'page/del', '删除', 'fa fa-circle-o', '', '', '0', '1502437132', '1502437132', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('71', 'file', '66', 'page/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502437132', '1502437132', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('72', 'file', '0', 'wechat', '微信管理', 'fa fa-wechat', '', '', '1', '1502437133', '1502437133', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('73', 'file', '72', 'wechat/autoreply', '自动回复管理', 'fa fa-reply-all', '', '', '1', '1502437133', '1502437133', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('74', 'file', '73', 'wechat/autoreply/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437133', '1502437133', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('75', 'file', '73', 'wechat/autoreply/add', '添加', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('76', 'file', '73', 'wechat/autoreply/edit', '修改', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('77', 'file', '73', 'wechat/autoreply/del', '删除', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('78', 'file', '73', 'wechat/autoreply/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('79', 'file', '72', 'wechat/config', '配置管理', 'fa fa-cog', '', '', '1', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('80', 'file', '79', 'wechat/config/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('81', 'file', '79', 'wechat/config/add', '添加', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('82', 'file', '79', 'wechat/config/edit', '修改', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('83', 'file', '79', 'wechat/config/del', '删除', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('84', 'file', '79', 'wechat/config/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('85', 'file', '72', 'wechat/menu', '菜单管理', 'fa fa-list', '', '', '1', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('86', 'file', '85', 'wechat/menu/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('87', 'file', '85', 'wechat/menu/add', '添加', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('88', 'file', '85', 'wechat/menu/edit', '修改', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('89', 'file', '85', 'wechat/menu/del', '删除', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('90', 'file', '85', 'wechat/menu/sync', '同步', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('91', 'file', '85', 'wechat/menu/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('92', 'file', '72', 'wechat/response', '资源管理', 'fa fa-list-alt', '', '', '1', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('93', 'file', '92', 'wechat/response/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('94', 'file', '92', 'wechat/response/add', '添加', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('95', 'file', '92', 'wechat/response/edit', '修改', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('96', 'file', '92', 'wechat/response/del', '删除', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('97', 'file', '92', 'wechat/response/select', '选择', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('98', 'file', '92', 'wechat/response/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502437134', '1502437134', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('99', 'file', '2', 'general/database', '数据库管理', 'fa fa-database', '', '可在线进行一些简单的数据库表优化或修复,查看表结构和数据。也可以进行SQL语句的操作', '1', '1502437149', '1502437149', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('100', 'file', '99', 'general/database/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437149', '1502437149', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('101', 'file', '99', 'general/database/query', '查询', 'fa fa-circle-o', '', '', '0', '1502437149', '1502437149', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('102', 'file', '2', 'general/crontab', '定时任务', 'fa fa-tasks', '', '类似于Linux的Crontab定时任务,可以按照设定的时间进行任务的执行,目前仅支持三种任务:请求URL、执行SQL、执行Shell', '1', '1502437150', '1502437150', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('103', 'file', '102', 'general/crontab/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437150', '1502437150', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('104', 'file', '102', 'general/crontab/add', '添加', 'fa fa-circle-o', '', '', '0', '1502437150', '1502437150', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('105', 'file', '102', 'general/crontab/edit', '编辑 ', 'fa fa-circle-o', '', '', '0', '1502437150', '1502437150', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('106', 'file', '102', 'general/crontab/del', '删除', 'fa fa-circle-o', '', '', '0', '1502437150', '1502437150', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('107', 'file', '102', 'general/crontab/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502437150', '1502437150', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('108', 'file', '0', 'version', '版本管理', 'fa fa-file-text-o', '', '常用于管理移动端应用版本更新', '1', '1502437152', '1502937008', '0', 'hidden');
INSERT INTO `fa_auth_rule` VALUES ('109', 'file', '108', 'version/index', '查看', 'fa fa-circle-o', '', '', '0', '1502437152', '1502437152', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('110', 'file', '108', 'version/add', '添加', 'fa fa-circle-o', '', '', '0', '1502437152', '1502437152', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('111', 'file', '108', 'version/edit', '修改', 'fa fa-circle-o', '', '', '0', '1502437152', '1502437152', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('112', 'file', '108', 'version/del', '删除', 'fa fa-circle-o', '', '', '0', '1502437152', '1502437152', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('113', 'file', '108', 'version/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1502437152', '1502437152', '0', 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');
INSERT INTO `fa_category` VALUES ('14', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('15', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('16', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('17', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('18', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('19', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `fa_category` VALUES ('20', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('21', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('22', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('23', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('24', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('25', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('26', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1502677557', '13', 'normal');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', '站点名称', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', '备案号', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'CDN地址', '如果使用CDN云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', '版本号', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', '时区', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', '禁止访问IP', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', '模块语言', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', '后台默认页', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', '分类类型', '', 'array', '{\"default\":\"默认\",\"page\":\"单页\",\"article\":\"文章\",\"test\":\"测试\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', '配置分组', '', 'array', '{\"basic\":\"基础配置\",\"email\":\"邮件配置\",\"dictionary\":\"字典配置\",\"user\":\"会员配置\",\"example\":\"示例分组\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', '邮件发送方式', '选择邮件发送方式', 'select', '1', '[\"请选择\",\"SMTP\",\"mail()函数\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'SMTP[服务器]', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'SMTP[端口]', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'SMTP[用户名]', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'SMTP[密码]', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'SMTP验证方式', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"无\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', '发件人邮箱', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_crontab
-- ----------------------------
DROP TABLE IF EXISTS `fa_crontab`;
CREATE TABLE `fa_crontab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '事件类型',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '事件标题',
  `content` text NOT NULL COMMENT '事件内容',
  `schedule` varchar(100) NOT NULL DEFAULT '' COMMENT 'Crontab格式',
  `sleep` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '延迟秒数执行',
  `maximums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大执行次数 0为不限',
  `executes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经执行的次数',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `begintime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `executetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后执行时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('completed','expired','hidden','normal') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务表';

-- ----------------------------
-- Records of fa_crontab
-- ----------------------------
INSERT INTO `fa_crontab` VALUES ('1', 'url', '请求FastAdmin', 'http://www.fastadmin.net', '* * * * *', '0', '0', '13548', '1497070825', '1501253101', '1483200000', '1546272000', '1501253101', '1', 'normal');
INSERT INTO `fa_crontab` VALUES ('2', 'sql', '查询一条SQL', 'SELECT 1;', '* * * * *', '0', '0', '13548', '1497071095', '1501253101', '1483200000', '1546272000', '1501253101', '2', 'normal');

-- ----------------------------
-- Table structure for fa_page
-- ----------------------------
DROP TABLE IF EXISTS `fa_page`;
CREATE TABLE `fa_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `content` text NOT NULL COMMENT '内容',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='单页表';

-- ----------------------------
-- Records of fa_page
-- ----------------------------
INSERT INTO `fa_page` VALUES ('1', '4', 'test', 'test', 'recommend', '/assets/img/qrcode.png', '<p>test</p>', '', '0', '0', '1499769482', '1499769482', '0', 'normal');

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for fa_third
-- ----------------------------
DROP TABLE IF EXISTS `fa_third`;
CREATE TABLE `fa_third` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `platform` enum('weibo','wechat','qq') NOT NULL COMMENT '第三方应用',
  `openid` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方唯一ID',
  `openname` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方会员昵称',
  `access_token` varchar(100) NOT NULL DEFAULT '',
  `refresh_token` varchar(100) NOT NULL DEFAULT '',
  `expires_in` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `platform` (`platform`,`openid`),
  KEY `user_id` (`user_id`,`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='第三方登录表';

-- ----------------------------
-- Records of fa_third
-- ----------------------------

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='版本表';

-- ----------------------------
-- Records of fa_version
-- ----------------------------

-- ----------------------------
-- Table structure for fa_wechat_autoreply
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_autoreply`;
CREATE TABLE `fa_wechat_autoreply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `text` varchar(100) NOT NULL DEFAULT '' COMMENT '触发文本',
  `eventkey` varchar(50) NOT NULL DEFAULT '' COMMENT '响应事件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信自动回复表';

-- ----------------------------
-- Records of fa_wechat_autoreply
-- ----------------------------
INSERT INTO `fa_wechat_autoreply` VALUES ('1', '输入hello', 'hello', '58c7d908c4570', '123', '1493366855', '1493366855', 'normal');
INSERT INTO `fa_wechat_autoreply` VALUES ('2', '输入你好', '你好', '58fdfaa9e1965', 'sad', '1493704976', '1493704976', 'normal');

-- ----------------------------
-- Table structure for fa_wechat_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_config`;
CREATE TABLE `fa_wechat_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '配置名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `value` text NOT NULL COMMENT '配置值',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信配置表';

-- ----------------------------
-- Records of fa_wechat_config
-- ----------------------------
INSERT INTO `fa_wechat_config` VALUES ('1', 'menu', '微信菜单', '[{\"name\":\"FastAdmin\",\"sub_button\":[{\"name\":\"官网\",\"type\":\"view\",\"url\":\"http:\\/\\/www.fastadmin.net\"},{\"name\":\"在线演示\",\"type\":\"click\",\"key\":\"\"},{\"name\":\"文档\",\"type\":\"view\",\"url\":\"http:\\/\\/doc.fastadmin.net\"}]},{\"name\":\"在线客服\",\"type\":\"click\",\"key\":\"58cb852984970\"},{\"name\":\"关于我们\",\"type\":\"click\",\"key\":\"58bf944aa0777\"}]', '1497398820', '1500538185');
INSERT INTO `fa_wechat_config` VALUES ('2', 'service', '客服配置', '{\"onlinetime\":\"09:00-18:00\",\"offlinemsg\":\"请在工作时间联系客服！\",\"nosessionmsg\":\"当前没有客服在线！请稍后重试！\",\"waitformsg\":\"请问有什么可以帮到您？\"}', '1497429674', '1497429674');
INSERT INTO `fa_wechat_config` VALUES ('3', 'signin', '连续登录配置', '{\"s1\":\"100\",\"s2\":\"200\",\"s3\":\"300\",\"sn\":\"500\"}', '1497429711', '1497429711');

-- ----------------------------
-- Table structure for fa_wechat_context
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_context`;
CREATE TABLE `fa_wechat_context` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `eventkey` varchar(64) NOT NULL DEFAULT '',
  `command` varchar(64) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后刷新时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信上下文表';

-- ----------------------------
-- Records of fa_wechat_context
-- ----------------------------

-- ----------------------------
-- Table structure for fa_wechat_response
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_response`;
CREATE TABLE `fa_wechat_response` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '资源名',
  `eventkey` varchar(128) NOT NULL DEFAULT '' COMMENT '事件',
  `type` enum('text','image','news','voice','video','music','link','app') NOT NULL DEFAULT 'text' COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `event` (`eventkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信资源表';

-- ----------------------------
-- Records of fa_wechat_response
-- ----------------------------
INSERT INTO `fa_wechat_response` VALUES ('1', '签到送积分', '58adaf7876aab', 'app', '{\"app\":\"signin\"}', '', '1487777656', '1487777656', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('2', '关于我们', '58bf944aa0777', 'app', '{\"app\":\"page\",\"id\":\"1\"}', '', '1488950346', '1488950346', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('3', '自动回复1', '58c7d908c4570', 'text', '{\"content\":\"world\"}', '', '1489492232', '1489492232', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('4', '联系客服', '58cb852984970', 'app', '{\"app\":\"service\"}', '', '1489732905', '1489732905', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('5', '自动回复2', '58fdfaa9e1965', 'text', '{\"content\":\"我是FastAdmin!\"}', '', '1493039785', '1493039785', 'normal');
