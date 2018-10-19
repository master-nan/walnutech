/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : walnutech

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 19/10/2018 13:44:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `m_admin_user`;
CREATE TABLE `m_admin_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(64) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `create_at` int(10) DEFAULT NULL,
  `r_id` tinyint(3) DEFAULT NULL,
  `d_id` tinyint(3) DEFAULT '0' COMMENT '部门id',
  `p_id` tinyint(3) DEFAULT '0' COMMENT '岗位',
  `last_login_at` int(10) DEFAULT '0' COMMENT '上次登录时间',
  `last_logout_at` int(10) DEFAULT NULL COMMENT '上次退出时间',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像路径',
  `status` tinyint(1) DEFAULT '1' COMMENT '当前状态0禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_admin_user
-- ----------------------------
BEGIN;
INSERT INTO `m_admin_user` VALUES (1, '管理员', 'admin', 'cea3e8e1659582206e0be32539729e9f', NULL, NULL, NULL, NULL, 1539911080, 1538407812, NULL, 1);
INSERT INTO `m_admin_user` VALUES (2, '测试11', 'dev', 'c9a973c677899e92518c823c31527716', 0, 1, 2, 3, 1538407832, 1533287755, '', 1);
COMMIT;

-- ----------------------------
-- Table structure for m_article
-- ----------------------------
DROP TABLE IF EXISTS `m_article`;
CREATE TABLE `m_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL COMMENT '唯一标识',
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `cover_id` int(11) DEFAULT NULL COMMENT '图片id',
  `status` tinyint(1) DEFAULT '0' COMMENT '0草稿1发布2下架',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `click` int(11) DEFAULT '0' COMMENT '打开次数',
  `keywords` varchar(255) DEFAULT NULL COMMENT '页面关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '页面描述',
  `user_id` int(11) DEFAULT '0' COMMENT '后台用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_article
-- ----------------------------
BEGIN;
INSERT INTO `m_article` VALUES (1, '80B6DD33-EE65-F64A-8BF9-2CA6FDD9DC0C', 'Centos部分工具命令', '<p><span style=\"font-size: large;\"><span style=\"font-weight: bold;\">apache：</span><br>启动  停止  重启<br>systemctl start httpd<br>systemctl stop httpd<br>systemctl restart httpd<br><br><span style=\"font-weight: bold;\">mysql：</span><br>启动  停止  重启<br>systemctl start mysqld<br>systemctl stop mysqld<br>systemctl restart mysqld<br><br><span style=\"font-weight: bold;\">php-fpm：</span><br>启动  停止  重启<br>systemctl start php-fpm<br>systemctl stop php-fpm<br>systemctl restart php-fpm<br><br>nginx：<br>启动  停止  重启<br>systemctl start nginx<br>systemctl stop nginx<br>systemctl restart nginx<br><br><span style=\"font-weight: bold;\">pm2：</span><br>pm2 list # 查看当前正在运行的进程<br>pm2 start all  # 启动所有应用<br>pm2 restart all  # 重启所有应用<br>pm2 stop all # 停止所有的应用程序<br>pm2 delete all # 关闭并删除所有应用<br>pm2 logs # 控制台显示所有日志<br>pm2 start 0  # 启动 id为 0的指定应用程序<br>pm2 restart 0  # 重启 id为 0的指定应用程序<br>pm2 stop 0 # 停止 id为 0的指定应用程序<br>pm2 delete 0 # 删除 id为 0的指定应用程序</span><br><span style=\"font-size: large;\">pm2 logs 0 # 控制台显示编号为0的日志<br>pm2 show 0  # 查看执行编号为0的进程<br>pm2 monit xxx # 监控名称为xxx的进程<br>pm2执行启动Nuxt项目命令<br>pm2 start npm --name \"xxx\" -- run star</span><br></p>', 0, 1, '2018-10-17 11:17:17', '2018-10-18 17:40:07', 123, 'Centos, apache, mysql, php-fpm, nginx, pm2', '', 1);
INSERT INTO `m_article` VALUES (2, 'DAAD06B9-47DE-B24F-2D49-55069CC8E025', 'Github创建tag', '<p><span style=\"font-size: large;\">首先进入对应目录</span></p><p><span style=\"font-size: large;\">git tag&nbsp; （显示所有tags</span></p><p><span style=\"font-size: large;\">git tag -a v1.0&nbsp; &nbsp;（创建名为v1.0的tag</span></p><p><span style=\"font-size: large;\">git tag -a v1.0-m \'first version\'&nbsp; (创建带有附带信息的tag</span></p><p><span style=\"font-size: large;\">git push origin --tags&nbsp; &nbsp; &nbsp;(创建结束需要将tag推送到远端<br></span></p><p><span style=\"font-size: large;\">git tag -d v1.0&nbsp; &nbsp; （删除tag，同样，删除完以后也要执行上述推送tag</span><br></p>', 0, 1, '2018-10-17 11:25:06', '2018-10-18 17:39:46', 332, 'gihub, tag', '', 1);
INSERT INTO `m_article` VALUES (4, 'E961E80D-6DCE-CCC8-4F98-E700922EFF26', '测试111111111', '<p>测试111111111</p>', 0, 0, '2018-10-17 16:10:23', '2018-10-17 16:10:23', 0, NULL, NULL, 1);
INSERT INTO `m_article` VALUES (5, '5EDD3B5C-9E16-7A69-5F78-AAB2192CD279', '测试222222222', '<p>测试222222222</p>', 0, 0, '2018-10-17 16:10:34', '2018-10-17 16:10:34', 0, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for m_department
-- ----------------------------
DROP TABLE IF EXISTS `m_department`;
CREATE TABLE `m_department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT '',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of m_department
-- ----------------------------
BEGIN;
INSERT INTO `m_department` VALUES (1, '总经办', 1);
INSERT INTO `m_department` VALUES (2, '财务部', 1);
INSERT INTO `m_department` VALUES (3, '研发部', 1);
INSERT INTO `m_department` VALUES (4, '设计部', 1);
INSERT INTO `m_department` VALUES (5, '市场部', 1);
INSERT INTO `m_department` VALUES (6, '测试部', 1);
INSERT INTO `m_department` VALUES (7, '项目部', 1);
COMMIT;

-- ----------------------------
-- Table structure for m_files
-- ----------------------------
DROP TABLE IF EXISTS `m_files`;
CREATE TABLE `m_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `u_id` int(10) DEFAULT '0',
  `ext` varchar(16) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `create_at` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_files
-- ----------------------------
BEGIN;
INSERT INTO `m_files` VALUES (1, '0e58305c1d39c556ea30c03aa6577116.jpeg', 'b0b572237ad979e156f8ccfcc3c63ba19cc99b49', 'uploads/20181017/', 1, 'jpeg', 'avatar', 1539740300);
INSERT INTO `m_files` VALUES (2, 'ab14e33725a1fa80c3be38ad89f22f27.jpg', 'e3b0f94a99151ad6e461194847ad90b02f787fbd', 'uploads/20181017/', 1, 'jpg', 'avatar', 1539742924);
COMMIT;

-- ----------------------------
-- Table structure for m_menu
-- ----------------------------
DROP TABLE IF EXISTS `m_menu`;
CREATE TABLE `m_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0',
  `name` varchar(64) DEFAULT NULL COMMENT '路由中可跳转name，请保持唯一值',
  `title` varchar(64) DEFAULT NULL COMMENT '显示名称',
  `icon` varchar(64) DEFAULT NULL COMMENT '显示icon class，一级菜单有效',
  `component` varchar(255) DEFAULT NULL COMMENT '引入的vue在前端代码中的位置',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `redirect` varchar(255) DEFAULT '' COMMENT '面包屑点击跳转路径',
  `show` tinyint(1) DEFAULT '1' COMMENT '是否始终在左侧显示',
  `hidden` tinyint(1) DEFAULT '0' COMMENT '是否在左侧隐藏',
  `sort` tinyint(2) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '1',
  `op` varchar(64) DEFAULT NULL COMMENT '后台判断权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of m_menu
-- ----------------------------
BEGIN;
INSERT INTO `m_menu` VALUES (1, 0, 'organization', 'Organization', 'mdi-sitemap', 'home', '/organization', '', 1, 0, 8, 1, '');
INSERT INTO `m_menu` VALUES (2, 0, 'system', 'System', 'mdi-settings', 'home', '/system', '', 1, 0, 9, 1, '');
INSERT INTO `m_menu` VALUES (3, 1, 'department', 'Department', 'mdi-puzzle', 'department', 'department/index', '', 1, 0, 1, 1, 'admin-Department-index');
INSERT INTO `m_menu` VALUES (4, 1, 'position', 'Position', 'mdi-account-card-details', 'position', 'position/index', '', 1, 0, 2, 1, 'admin-Position-index');
INSERT INTO `m_menu` VALUES (5, 1, 'user', 'User', 'mdi-account-group', 'user', 'user/index', '', 1, 0, 3, 1, 'admin-AdminUser-index');
INSERT INTO `m_menu` VALUES (6, 2, 'menu', 'Menu', 'mdi-format-list-bulleted', 'menu', 'menu/index', '', 1, 0, 1, 1, 'admin-Menu-index');
INSERT INTO `m_menu` VALUES (7, 2, 'rule', 'Rule', 'mdi-account-key', 'rule', 'rule/index', '', 1, 0, 2, 1, 'admin-Rule-index');
INSERT INTO `m_menu` VALUES (8, 2, 'addMenu', 'addMenu', '', 'addMenu', 'menu/add', '', 1, 1, 1, 1, '');
INSERT INTO `m_menu` VALUES (9, 2, 'addRule', 'addRule', '', 'addRule', 'rule/add', '', 1, 1, 2, 1, '');
INSERT INTO `m_menu` VALUES (10, 2, 'setting', 'Setting', 'mdi-circle-edit-outline', 'setting', 'setting/index', '', 1, 0, 3, 1, 'admin-Setting-index');
COMMIT;

-- ----------------------------
-- Table structure for m_position
-- ----------------------------
DROP TABLE IF EXISTS `m_position`;
CREATE TABLE `m_position` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态1启用,0禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='岗位表';

-- ----------------------------
-- Records of m_position
-- ----------------------------
BEGIN;
INSERT INTO `m_position` VALUES (1, '后端开发工程师', 1);
INSERT INTO `m_position` VALUES (2, '前端开发工程师', 1);
INSERT INTO `m_position` VALUES (3, '设计师', 1);
INSERT INTO `m_position` VALUES (4, '文案策划', 1);
INSERT INTO `m_position` VALUES (5, '产品助理', 1);
INSERT INTO `m_position` VALUES (6, '总经理', 1);
INSERT INTO `m_position` VALUES (7, '项目经理', 1);
INSERT INTO `m_position` VALUES (8, '项目助理', 1);
INSERT INTO `m_position` VALUES (9, '测试工程师', 1);
INSERT INTO `m_position` VALUES (10, '人事经理', 1);
INSERT INTO `m_position` VALUES (11, 'CEO', 1);
COMMIT;

-- ----------------------------
-- Table structure for m_rule
-- ----------------------------
DROP TABLE IF EXISTS `m_rule`;
CREATE TABLE `m_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `rs` varchar(4000) DEFAULT NULL COMMENT '权限id',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of m_rule
-- ----------------------------
BEGIN;
INSERT INTO `m_rule` VALUES (1, '部分权限', '1,5,3,4', '测试', 1);
INSERT INTO `m_rule` VALUES (2, '全部权限', '1,3,4,5,2,6,8,7,9,10', '测试', 1);
COMMIT;

-- ----------------------------
-- Table structure for m_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `m_sys_config`;
CREATE TABLE `m_sys_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of m_sys_config
-- ----------------------------
BEGIN;
INSERT INTO `m_sys_config` VALUES (1, 'Walnutech', '', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
