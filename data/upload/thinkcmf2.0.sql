/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : thinkcmf2.0

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-01-14 16:40:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_ad
-- ----------------------------
DROP TABLE IF EXISTS `cmf_ad`;
CREATE TABLE `cmf_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_ad
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `key` varchar(50) NOT NULL COMMENT '资源 key',
  `filename` varchar(50) DEFAULT NULL COMMENT '文件名',
  `filesize` int(11) DEFAULT NULL COMMENT '文件大小,单位Byte',
  `filepath` varchar(200) NOT NULL COMMENT '文件路径，相对于 upload 目录，可以为 url',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：删除，不可用',
  `meta` text COMMENT '其它详细信息，JSON格式',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀名，不包括点',
  `download_times` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/advantage/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customerservice/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customerservice/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customerservice/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customerservice/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customerservice/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customerservice/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customerservice/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/check', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/move', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/recommend', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/listorders', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/top', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/adminpost/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/news/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/news/save_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/news/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/news/active', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honorcat/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honorcat/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honorcat/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honorcat/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honorcat/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honorcat/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honor/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honor/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honor/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honor/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honor/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honor/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/honor/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customer/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customer/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customer/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customer/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customer/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/customer/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/save_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/index/about', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/toggle', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/listorders', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/link/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/listorders', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/open', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/ban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/route/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/setting/site', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/setting/site_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/setting/password_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/setting/password', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/user/userinfo_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/user/userinfo', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/setting/userdefault', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/setting/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slidecat/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slidecat/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slidecat/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slidecat/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slidecat/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slidecat/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/cancelban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/ban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/add_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/edit_post', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/toggle', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/listorders', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'admin/slide/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', 'portal/admincutform/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('3', 'api/guestbookadmin/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('3', 'api/guestbookadmin/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('3', 'api/guestbookadmin/delete', 'admin_url');

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES ('1', 'Admin', 'admin_url', 'admin/content/default', null, '内容管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('2', 'Api', 'admin_url', 'api/guestbookadmin/index', null, '申请列表', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('3', 'Api', 'admin_url', 'api/guestbookadmin/delete', null, '删除网站留言', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('4', 'Comment', 'admin_url', 'comment/commentadmin/index', null, '评论管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('5', 'Comment', 'admin_url', 'comment/commentadmin/delete', null, '删除评论', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('6', 'Comment', 'admin_url', 'comment/commentadmin/check', null, '评论审核', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('7', 'Portal', 'admin_url', 'portal/adminpost/index', null, '文章管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('8', 'Portal', 'admin_url', 'portal/adminpost/listorders', null, '文章排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('9', 'Portal', 'admin_url', 'portal/adminpost/top', null, '文章置顶', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('10', 'Portal', 'admin_url', 'portal/adminpost/recommend', null, '文章推荐', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('11', 'Portal', 'admin_url', 'portal/adminpost/move', null, '批量移动', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('12', 'Portal', 'admin_url', 'portal/adminpost/check', null, '文章审核', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('13', 'Portal', 'admin_url', 'portal/adminpost/delete', null, '删除文章', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('14', 'Portal', 'admin_url', 'portal/adminpost/edit', null, '编辑文章', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('15', 'Portal', 'admin_url', 'portal/adminpost/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('16', 'Portal', 'admin_url', 'portal/adminpost/add', null, '添加文章', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('17', 'Portal', 'admin_url', 'portal/adminpost/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('18', 'Portal', 'admin_url', 'portal/adminterm/index', null, '分类管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('19', 'Portal', 'admin_url', 'portal/adminterm/listorders', null, '文章分类排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('20', 'Portal', 'admin_url', 'portal/adminterm/delete', null, '删除分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('21', 'Portal', 'admin_url', 'portal/adminterm/edit', null, '编辑分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('22', 'Portal', 'admin_url', 'portal/adminterm/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('23', 'Portal', 'admin_url', 'portal/adminterm/add', null, '添加分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('24', 'Portal', 'admin_url', 'portal/adminterm/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('25', 'Portal', 'admin_url', 'portal/adminpage/index', null, '页面管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('26', 'Portal', 'admin_url', 'portal/adminpage/listorders', null, '页面排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('27', 'Portal', 'admin_url', 'portal/adminpage/delete', null, '删除页面', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('28', 'Portal', 'admin_url', 'portal/adminpage/edit', null, '编辑页面', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('29', 'Portal', 'admin_url', 'portal/adminpage/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('30', 'Portal', 'admin_url', 'portal/adminpage/add', null, '添加页面', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('31', 'Portal', 'admin_url', 'portal/adminpage/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('32', 'Admin', 'admin_url', 'admin/recycle/default', null, '回收站', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('33', 'Portal', 'admin_url', 'portal/adminpost/recyclebin', null, '文章回收', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('34', 'Portal', 'admin_url', 'portal/adminpost/restore', null, '文章还原', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('35', 'Portal', 'admin_url', 'portal/adminpost/clean', null, '彻底删除', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('36', 'Portal', 'admin_url', 'portal/adminpage/recyclebin', null, '页面回收', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('37', 'Portal', 'admin_url', 'portal/adminpage/clean', null, '彻底删除', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('38', 'Portal', 'admin_url', 'portal/adminpage/restore', null, '页面还原', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('39', 'Admin', 'admin_url', 'admin/extension/default', null, '扩展工具', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('40', 'Admin', 'admin_url', 'admin/backup/default', null, '备份管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('41', 'Admin', 'admin_url', 'admin/backup/restore', null, '数据还原', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('42', 'Admin', 'admin_url', 'admin/backup/index', null, '数据备份', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('43', 'Admin', 'admin_url', 'admin/backup/index_post', null, '提交数据备份', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('44', 'Admin', 'admin_url', 'admin/backup/download', null, '下载备份', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('45', 'Admin', 'admin_url', 'admin/backup/del_backup', null, '删除备份', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('46', 'Admin', 'admin_url', 'admin/backup/import', null, '数据备份导入', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('47', 'Admin', 'admin_url', 'admin/plugin/index', null, '插件管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('48', 'Admin', 'admin_url', 'admin/plugin/toggle', null, '插件启用切换', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('49', 'Admin', 'admin_url', 'admin/plugin/setting', null, '插件设置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('50', 'Admin', 'admin_url', 'admin/plugin/setting_post', null, '插件设置提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('51', 'Admin', 'admin_url', 'admin/plugin/install', null, '插件安装', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('52', 'Admin', 'admin_url', 'admin/plugin/uninstall', null, '插件卸载', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('53', 'Admin', 'admin_url', 'admin/slide/default', null, '幻灯片', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('54', 'Admin', 'admin_url', 'admin/slide/index', null, '幻灯片管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('55', 'Admin', 'admin_url', 'admin/slide/listorders', null, '幻灯片排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('56', 'Admin', 'admin_url', 'admin/slide/toggle', null, '幻灯片显示切换', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('57', 'Admin', 'admin_url', 'admin/slide/delete', null, '删除幻灯片', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('58', 'Admin', 'admin_url', 'admin/slide/edit', null, '编辑幻灯片', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('59', 'Admin', 'admin_url', 'admin/slide/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('60', 'Admin', 'admin_url', 'admin/slide/add', null, '添加幻灯片', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('61', 'Admin', 'admin_url', 'admin/slide/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('62', 'Admin', 'admin_url', 'admin/slidecat/index', null, '幻灯片分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('63', 'Admin', 'admin_url', 'admin/slidecat/delete', null, '删除分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('64', 'Admin', 'admin_url', 'admin/slidecat/edit', null, '编辑分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('65', 'Admin', 'admin_url', 'admin/slidecat/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('66', 'Admin', 'admin_url', 'admin/slidecat/add', null, '添加分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('67', 'Admin', 'admin_url', 'admin/slidecat/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('68', 'Admin', 'admin_url', 'admin/ad/index', null, '网站广告', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('69', 'Admin', 'admin_url', 'admin/ad/toggle', null, '广告显示切换', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('70', 'Admin', 'admin_url', 'admin/ad/delete', null, '删除广告', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('71', 'Admin', 'admin_url', 'admin/ad/edit', null, '编辑广告', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('72', 'Admin', 'admin_url', 'admin/ad/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('73', 'Admin', 'admin_url', 'admin/ad/add', null, '添加广告', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('74', 'Admin', 'admin_url', 'admin/ad/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('75', 'Admin', 'admin_url', 'admin/link/index', null, '友情链接', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('76', 'Admin', 'admin_url', 'admin/link/listorders', null, '友情链接排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('77', 'Admin', 'admin_url', 'admin/link/toggle', null, '友链显示切换', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('78', 'Admin', 'admin_url', 'admin/link/delete', null, '删除友情链接', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('79', 'Admin', 'admin_url', 'admin/link/edit', null, '编辑友情链接', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('80', 'Admin', 'admin_url', 'admin/link/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('81', 'Admin', 'admin_url', 'admin/link/add', null, '添加友情链接', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('82', 'Admin', 'admin_url', 'admin/link/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('83', 'Api', 'admin_url', 'api/oauthadmin/setting', null, '第三方登陆', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('84', 'Api', 'admin_url', 'api/oauthadmin/setting_post', null, '提交设置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('85', 'Admin', 'admin_url', 'admin/menu/default', null, '菜单管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('86', 'Admin', 'admin_url', 'admin/navcat/default1', null, '前台菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('87', 'Admin', 'admin_url', 'admin/nav/index', null, '菜单管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('88', 'Admin', 'admin_url', 'admin/nav/listorders', null, '前台导航排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('89', 'Admin', 'admin_url', 'admin/nav/delete', null, '删除菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('90', 'Admin', 'admin_url', 'admin/nav/edit', null, '编辑菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('91', 'Admin', 'admin_url', 'admin/nav/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('92', 'Admin', 'admin_url', 'admin/nav/add', null, '添加菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('93', 'Admin', 'admin_url', 'admin/nav/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('94', 'Admin', 'admin_url', 'admin/navcat/index', null, '菜单分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('95', 'Admin', 'admin_url', 'admin/navcat/delete', null, '删除分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('96', 'Admin', 'admin_url', 'admin/navcat/edit', null, '编辑分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('97', 'Admin', 'admin_url', 'admin/navcat/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('98', 'Admin', 'admin_url', 'admin/navcat/add', null, '添加分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('99', 'Admin', 'admin_url', 'admin/navcat/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('100', 'Admin', 'admin_url', 'admin/menu/index', null, '后台菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('101', 'Admin', 'admin_url', 'admin/menu/add', null, '添加菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('102', 'Admin', 'admin_url', 'admin/menu/add_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('103', 'Admin', 'admin_url', 'admin/menu/listorders', null, '后台菜单排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('104', 'Admin', 'admin_url', 'admin/menu/export_menu', null, '菜单备份', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('105', 'Admin', 'admin_url', 'admin/menu/edit', null, '编辑菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('106', 'Admin', 'admin_url', 'admin/menu/edit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('107', 'Admin', 'admin_url', 'admin/menu/delete', null, '删除菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('108', 'Admin', 'admin_url', 'admin/menu/lists', null, '所有菜单', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('109', 'Admin', 'admin_url', 'admin/setting/default', null, '设置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('110', 'Admin', 'admin_url', 'admin/setting/userdefault', null, '个人信息', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('111', 'Admin', 'admin_url', 'admin/user/userinfo', null, '修改信息', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('112', 'Admin', 'admin_url', 'admin/user/userinfo_post', null, '修改信息提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('113', 'Admin', 'admin_url', 'admin/setting/password', null, '修改密码', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('114', 'Admin', 'admin_url', 'admin/setting/password_post', null, '提交修改', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('115', 'Admin', 'admin_url', 'admin/setting/site', null, '网站信息', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('116', 'Admin', 'admin_url', 'admin/setting/site_post', null, '提交修改', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('117', 'Admin', 'admin_url', 'admin/route/index', null, '路由列表', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('118', 'Admin', 'admin_url', 'admin/route/add', null, '路由添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('119', 'Admin', 'admin_url', 'admin/route/add_post', null, '路由添加提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('120', 'Admin', 'admin_url', 'admin/route/edit', null, '路由编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('121', 'Admin', 'admin_url', 'admin/route/edit_post', null, '路由编辑提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('122', 'Admin', 'admin_url', 'admin/route/delete', null, '路由删除', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('123', 'Admin', 'admin_url', 'admin/route/ban', null, '路由禁止', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('124', 'Admin', 'admin_url', 'admin/route/open', null, '路由启用', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('125', 'Admin', 'admin_url', 'admin/route/listorders', null, '路由排序', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('126', 'Admin', 'admin_url', 'admin/mailer/default', null, '邮箱配置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('127', 'Admin', 'admin_url', 'admin/mailer/index', null, 'SMTP配置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('128', 'Admin', 'admin_url', 'admin/mailer/index_post', null, '提交配置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('129', 'Admin', 'admin_url', 'admin/mailer/active', null, '邮件模板', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('130', 'Admin', 'admin_url', 'admin/mailer/active_post', null, '提交模板', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('131', 'Admin', 'admin_url', 'admin/setting/clearcache', null, '清除缓存', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('132', 'User', 'admin_url', 'user/indexadmin/default', null, '用户管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('133', 'User', 'admin_url', 'user/indexadmin/default1', null, '用户组', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('134', 'User', 'admin_url', 'user/indexadmin/index', null, '本站用户', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('135', 'User', 'admin_url', 'user/indexadmin/ban', null, '拉黑会员', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('136', 'User', 'admin_url', 'user/indexadmin/cancelban', null, '启用会员', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('137', 'User', 'admin_url', 'user/oauthadmin/index', null, '第三方用户', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('138', 'User', 'admin_url', 'user/oauthadmin/delete', null, '第三方用户解绑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('139', 'User', 'admin_url', 'user/indexadmin/default3', null, '管理组', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('140', 'Admin', 'admin_url', 'admin/rbac/index', null, '角色管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('141', 'Admin', 'admin_url', 'admin/rbac/member', null, '成员管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('142', 'Admin', 'admin_url', 'admin/rbac/authorize', null, '权限设置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('143', 'Admin', 'admin_url', 'admin/rbac/authorize_post', null, '提交设置', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('144', 'Admin', 'admin_url', 'admin/rbac/roleedit', null, '编辑角色', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('145', 'Admin', 'admin_url', 'admin/rbac/roleedit_post', null, '提交编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('146', 'Admin', 'admin_url', 'admin/rbac/roledelete', null, '删除角色', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('147', 'Admin', 'admin_url', 'admin/rbac/roleadd', null, '添加角色', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('148', 'Admin', 'admin_url', 'admin/rbac/roleadd_post', null, '提交添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('149', 'Admin', 'admin_url', 'admin/user/index', null, '管理员', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('150', 'Admin', 'admin_url', 'admin/user/delete', null, '删除管理员', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('151', 'Admin', 'admin_url', 'admin/user/edit', null, '管理员编辑', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('152', 'Admin', 'admin_url', 'admin/user/edit_post', null, '编辑提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('153', 'Admin', 'admin_url', 'admin/user/add', null, '管理员添加', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('154', 'Admin', 'admin_url', 'admin/user/add_post', null, '添加提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('155', 'Admin', 'admin_url', 'admin/plugin/update', null, '插件更新', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('156', 'Admin', 'admin_url', 'admin/storage/index', null, '文件存储', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('157', 'Admin', 'admin_url', 'admin/storage/setting_post', null, '文件存储设置提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('158', 'Admin', 'admin_url', 'admin/slide/ban', null, '禁用幻灯片', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('159', 'Admin', 'admin_url', 'admin/slide/cancelban', null, '启用幻灯片', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('160', 'Admin', 'admin_url', 'admin/user/ban', null, '禁用管理员', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('161', 'Admin', 'admin_url', 'admin/user/cancelban', null, '启用管理员', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('162', 'Api', 'admin_url', 'api/guestbookadmin/default', null, '申请代理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('163', 'Admin', 'admin_url', 'admin/link/default', null, '友情链接', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('164', 'Portal', 'admin_url', 'portal/cutform/index', null, '单页管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('165', 'Portal', 'admin_url', 'portal/admincut/index', null, '单页管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('166', 'Portal', 'admin_url', 'portal/admincutform/index', null, '单页管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('167', 'Admin', 'admin_url', 'admin/index/about', null, '关于纳网', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('168', 'Portal', 'admin_url', 'portal/admincutform/edit', null, '公司简介', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('169', 'Portal', 'admin_url', 'portal/adminpost/default', null, '产品管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('170', 'Admin', 'admin_url', 'admin/slide/default1', null, '幻灯片', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('171', 'Admin', 'admin_url', 'admin/customer/index', null, '客户案例', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('172', 'Admin', 'admin_url', 'admin/customerservice/default', null, '客服管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('173', 'Admin', 'admin_url', 'admin/customerservice/index', null, '客服列表', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('174', 'Admin', 'admin_url', 'admin/honor/default', null, '荣誉资质', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('175', 'Admin', 'admin_url', 'admin/honor/index', null, '荣誉资质管理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('176', 'Admin', 'admin_url', 'admin/honorcat/index', null, '荣誉资质分类', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('177', 'Admin', 'admin_url', 'admin/advantage/default', null, ' 纳网的优势', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('178', 'Admin', 'admin_url', 'admin/customerservice/add', null, '添加客服', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('179', 'Admin', 'admin_url', 'admin/customerservice/edit', null, '编辑客服', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('180', 'Admin', 'admin_url', 'admin/customerservice/add_post', null, '添加客服提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('181', 'Admin', 'admin_url', 'admin/customerservice/edit_post', null, '编辑客服提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('182', 'Portal', 'admin_url', 'portal/admincutform/edit_post', null, '编辑单页提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('183', 'Portal', 'admin_url', 'portal/admincutform/save_post', null, '编辑单页提交1', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('184', 'Admin', 'admin_url', 'admin/customerservice/delete', null, '客服删除', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('185', 'Admin', 'admin_url', 'admin/news/index', null, '纳网动态', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('186', 'Portal', 'admin_url', 'portal/daili/default', null, '成为代理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('187', 'Portal', 'admin_url', 'portal/admincutform/default', null, '成为代理', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('188', 'Admin', 'admin_url', 'admin/news/save_post', null, '纳网动态添加编辑提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('189', 'Admin', 'admin_url', 'admin/news/active', null, '纳网动态添加编辑页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('190', 'Admin', 'admin_url', 'admin/news/delete', null, '纳网动态删除操作', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('191', 'Admin', 'admin_url', 'admin/news/default', null, '纳网动态', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('192', 'Admin', 'admin_url', 'admin/honor/add', null, '荣誉资质添加页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('193', 'Admin', 'admin_url', 'admin/honor/add_post', null, '荣誉资质添加提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('194', 'Admin', 'admin_url', 'admin/honor/edit', null, '荣誉资质编辑页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('195', 'Admin', 'admin_url', 'admin/honor/edit_post', null, '荣誉资质编辑提交页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('196', 'Admin', 'admin_url', 'admin/honor/delete', null, '荣誉资质删除', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('197', 'Admin', 'admin_url', 'admin/customer/add', null, '客户案例添加页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('198', 'Admin', 'admin_url', 'admin/customer/add_post', null, '客户案例添加提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('199', 'Admin', 'admin_url', 'admin/customer/edit', null, '客户案例修改页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('200', 'Admin', 'admin_url', 'admin/customer/edit_post', null, '客户案例编辑提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('201', 'Admin', 'admin_url', 'admin/honorcat/add', null, '荣誉资质分类添加页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('202', 'Admin', 'admin_url', 'admin/honorcat/add_post', null, '荣誉资质分类提交操作', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('203', 'Admin', 'admin_url', 'admin/honorcat/edit', null, '荣誉资质分类编辑页', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('204', 'Admin', 'admin_url', 'admin/honorcat/edit_post', null, '荣誉资质分类编辑提交', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('205', 'Admin', 'admin_url', 'admin/honorcat/delete', null, '荣誉资质分类删除', '1', '');
INSERT INTO `cmf_auth_rule` VALUES ('206', 'Admin', 'admin_url', 'admin/customer/delete', null, '客户案例删除', '1', '');

-- ----------------------------
-- Table structure for cmf_comments
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comments`;
CREATE TABLE `cmf_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comments
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_common_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_common_action_log`;
CREATE TABLE `cmf_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='访问记录表';

-- ----------------------------
-- Records of cmf_common_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_customer
-- ----------------------------
DROP TABLE IF EXISTS `cmf_customer`;
CREATE TABLE `cmf_customer` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) DEFAULT NULL COMMENT '客户案例分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '客户案例名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '客户案例图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '客户案例链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '客户案例描述',
  `slide_content` text COMMENT '客户案例内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_customer
-- ----------------------------
INSERT INTO `cmf_customer` VALUES ('5', '0', '中国移动', '/data/upload/20151229/5681f965e9f55.jpg', '', '沟通无限、用心服务满意100等20多个域名网址是中国移动始于2010年4月与纳网科技合作相继购入的，目前这些域名已作为中国移动相关业务使用范围相继投入使用。', null, '1', '1');
INSERT INTO `cmf_customer` VALUES ('6', '0', '中国电信', '/data/upload/20151229/5681f98843337.jpg', '', 'chinatelecom、ct10000、我的e家、114搜索等50多个域名网址是中国电信始于2006年11月与纳网科技合作相继购入的，目前这些域名已作为中国电信相关业务使用范围相继投入使用。', null, '1', '0');
INSERT INTO `cmf_customer` VALUES ('7', '0', '2', '/data/upload/20151229/5681fa0895cdc.jpg', '', 'chinatelecom、ct10000、我的e家、114搜索等50多个域名网址是中国电信始于2006年11月与纳网科技合作相继购入的，目前这些域名已作为中国电信相关业务使用范围相继投入使用。', null, '1', '2');
INSERT INTO `cmf_customer` VALUES ('8', '0', '3', '/data/upload/20151229/5681fa1548581.jpg', '', 'chinatelecom、ct10000、我的e家、114搜索等50多个域名网址是中国电信始于2006年11月与纳网科技合作相继购入的，目前这些域名已作为中国电信相关业务使用范围相继投入使用。', null, '1', '0');
INSERT INTO `cmf_customer` VALUES ('9', '0', 'alibaba', '/data/upload/20151231/568496554defa.jpg', 'www', '阿里巴巴.网址、天猫.网址等网址是阿里巴巴集团控股有限公司始于2012年1月委托纳网科技域名经纪购得。目前阿里巴巴.网址跳转到1688.com，天猫.网址跳转到.tmall.com。', null, '1', '0');
INSERT INTO `cmf_customer` VALUES ('10', '0', 'ewrtewrt', '', '', 'chinatelecom、ct10000、我的e家、114搜索等50多个域名网址是中国电信始于2006年11月与纳网科技合作相继购入的，目前这些域名已作为中国电信相关业务使用范围相继投入使用。', null, '1', '0');
INSERT INTO `cmf_customer` VALUES ('11', null, 'test', '/data/upload/20160104/568a1f4332c4e.jpg', null, 'chinatelecom、ct10000、我的e家、114搜索等50多个域名网址是中国电信始于2006年11月与纳网科技合作相继购入的，目前这些域名已作为中国电信相关业务使用范围相继投入使用。', null, '1', '0');

-- ----------------------------
-- Table structure for cmf_customer_service
-- ----------------------------
DROP TABLE IF EXISTS `cmf_customer_service`;
CREATE TABLE `cmf_customer_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL COMMENT '帐号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `listorder` int(11) NOT NULL COMMENT '排序',
  `type` int(1) DEFAULT NULL COMMENT '客服类型:1-售前咨询2-售后咨询',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客服管理表';

-- ----------------------------
-- Records of cmf_customer_service
-- ----------------------------
INSERT INTO `cmf_customer_service` VALUES ('3', '234778310', '在线客服3', '在线客服3', '3', '1');
INSERT INTO `cmf_customer_service` VALUES ('5', '2347778341', '售后客服', '1', '1', '2');
INSERT INTO `cmf_customer_service` VALUES ('6', '234778310', '投诉建议', '1', '1', '3');

-- ----------------------------
-- Table structure for cmf_cut_form
-- ----------------------------
DROP TABLE IF EXISTS `cmf_cut_form`;
CREATE TABLE `cmf_cut_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '单页标题',
  `excerpt` text COMMENT '摘要',
  `keywords` varchar(150) DEFAULT NULL COMMENT '关键字',
  `content` text COMMENT '内容',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态: 0-删除 1-显示',
  `type` int(1) DEFAULT NULL COMMENT '类型:1-关于纳网 2-纳网的优势',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='单页内容页';

-- ----------------------------
-- Records of cmf_cut_form
-- ----------------------------
INSERT INTO `cmf_cut_form` VALUES ('1', '单页管理1', '单页管理3', '单页管理2', '<p>单页管理5</p>', '0', null);
INSERT INTO `cmf_cut_form` VALUES ('2', '成为代理', '成为代理', '成为代理', '<p>成为代理</p>', '1', null);
INSERT INTO `cmf_cut_form` VALUES ('3', '公司简介', '公司简介qweqe', '公司简介qweqweqweqwe', '<header class=\"about-right-tit\">\r\n<h2>\r\n	企业简介\r\n</h2>\r\n</header>\r\n				<article class=\"clearfix\">\r\n					<header class=\"clearfix intro-top\">\r\n						<img src=\"/themes/simplebootx/Public/images/intro_img.jpg\" height=\"184\" width=\"217\" alt=\"\" class=\"fl\" /> \r\n<p class=\"fl\">\r\n	2006年，厦门纳网科技股份有限公司成立于厦门，从8个人团队起步，经过十余年发展，如今纳网科技拥有200多人的团队，分公司遍及北京、济南、厦门等地，业务范围辐射全国。纳网科技目前域名保有量在百万级别，是国内领先的域名注册商之一。当前在中国，纳网科技是唯一一家能为客户注册全球一切在售域名的域名注册商。\r\n</p>\r\n</header>\r\n<p class=\"g-pt15\">\r\n	纳网科技一直致力于安全互联网基础服务产业，十余年的发展使其拥有了雄厚的实力和丰富的行业经验。2015年，纳网科技融合其十余年的数据保护实践，倾力打造数据灾备软件——易备安，力求最大程度地保护中小企业的数据资产安全，提供安全可靠的数据保险箱。纳网科技以易备安为出发点，助力创业者和转型者进军互联网，致力于成为互联网安全启航得力伙伴。\r\n</p>\r\n<dl class=\"g-pt20\">\r\n	<dt>\r\n		<strong>企业性质</strong>--\r\n	</dt>\r\n	<dd>\r\n		纳网科技是中国互联网信息中心（CNNIC）和互联网域名体系最高管理机构（ICANN）双认证的顶级注册服务机构，专注于安全互联网基础服务。\r\n	</dd>\r\n</dl>\r\n<dl class=\"g-pt20\">\r\n	<dt>\r\n		<strong>创业宗旨</strong>--\r\n	</dt>\r\n	<dd>\r\n		以客户为中心，以技术为基础，以质量求生存，以诚信谋发展。\r\n	</dd>\r\n</dl>\r\n<dl class=\"g-pt20\">\r\n	<dt>\r\n		<strong>企业目标</strong>--\r\n	</dt>\r\n	<dd>\r\n		2006年至今，纳网科技凭借着勤奋耕耘、拥抱变革、随时迎接挑战的坚定决心，在互联网服务行业赢得了客户的一致好评。2016年，                    纳网科技倾力打造易备安数据保险箱，致力于跻身安全互联网一线品牌。\r\n	</dd>\r\n</dl>\r\n<dl class=\"g-pt20\">\r\n	<dt>\r\n		<strong>企业信仰</strong>--\r\n	</dt>\r\n	<dd>\r\n		纳容万象，网聚天下。纳网人求真务实、开拓创新，对中国互联网的发展具有强烈的使命感，走出了一条令人瞩目的发展之路，创立了\r\n                   良好的品牌形象。科学的组织架构+先进的管理理念+成熟的企业文化是纳网人不断前行的动力和保障。\r\n	</dd>\r\n</dl>\r\n</article>\r\n<div class=\"about-picMarquee\">\r\n	<h2 class=\"about-win-tit\">\r\n		纳网风采\r\n	</h2>\r\n	<div class=\"bd\">\r\n		<div class=\"tempWrap\" style=\"overflow:hidden;position:relative;width:944px;\">\r\n			<ul class=\"picList\" style=\"width:3068px;position:relative;overflow:hidden;padding:0px;margin:0px;left:-345px;\">\r\n				<li class=\"clone\">\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_02.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_01.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_02.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_01.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_02.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_01.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_02.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_01.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_02.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li class=\"clone\">\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_01.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li class=\"clone\">\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_02.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li class=\"clone\">\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_01.gif\" /></a> \r\n					</div>\r\n				</li>\r\n				<li class=\"clone\">\r\n					<div class=\"pic\">\r\n						<a><img src=\"/themes/simplebootx/Public/images/about_02.gif\" /></a> \r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>', '1', '1');
INSERT INTO `cmf_cut_form` VALUES ('4', '人才招聘', '人才招聘4234234', '人才招聘', '<header class=\"about-right-tit\"><h2>人才招聘</h2></header><article class=\"clearfix\"><img src=\"images/person_img.jpg\" alt=\"\" class=\"fl g-mt15\"/><p>厦门纳网科技股份有限公司成立于2006年，总部设在美丽的南方滨海城市厦门，在北京、济南、上海、成都、厦门等地设有全资子公司，是一家专注于为企业和组织机构提供安全互联网基础服务的企业。　</p><p class=\"g-pt15\">十余年的发展时间让我们成为蒸蒸日上的互联网企业领头羊。公司针对不同类型的客户和不同发展阶段的企业信息化需求，提供多种信息化产品。【专业化信息产品】包含公司四大项目：“易备安”容灾备份系统、Nabla业务管理系统、牛名网、纳网微微；【基础互联网产品】包含网站建设、虚拟主机、多语种域名注册、400电话、企业邮局以及在线客服，让企业可以在低成本、高效率的前提下完成企业服务的网络信息化。</p><p class=\"g-pt15\">十余年的辛苦耕耘让纳网在客户群中赢得了良好的口碑。我们的合作伙伴有高大上如国家广电总局、国家食品药品监督管理局、中共文化部对外\r\n文化联络局、中国银行、中国移动、中国电信、中国联通、阿里巴巴、东方航空等，也有接地气如天猫、新浪微博、加多宝集团、中国黄金、中铁\r\n快运、盛大网络、京华时报、顺丰速递等。</p><p class=\"g-pt15\">如今我们已成为：</p><ul class=\"person-ul list-paddingleft-2\"><li><p>中国基础互联网应用服务领先企业和专业化信息服务佼佼者；</p></li><li><p>中国首家全球商标信息交换库（Trademark Clearing House）认证服务机构；</p></li><li><p>中国互联网信息中心与中国域名体系最高管理机构双认证的顶级域名注册商；</p></li><li><p>中国拥有可注册域名后缀最多的域名注册服务提供商；</p></li><li><p>厦门市极少数同时获得“高新技术企业” 与 “厦门市双软认证企业”资质的单位；</p></li><li><p>微软、腾讯、Yandex、百度、移动、电信、联通的重要合作伙伴；</p></li><li><p>移动营销解决方案专家，360度全方位链接6亿移动互联网用户；</p></li><li><p>海外市场推广解决方案专家，助力企业拓展欧洲、美国与俄罗斯等重要海外市场；</p></li><li><p>企业信誉认证解决方案专家，为中国数百万网站颁发“可信身份证”；</p></li></ul><p class=\"g-pt15\">如今，我们依然在为团队扩大而不断努力，如果您是这样的小伙伴：即便完胜岗位，仍能不忘提升技能；可为团队绩效，搁置约会，熬夜赶工；\r\n定位明确，有志于互联网；那么您肯定是我们的菜了！</p><h2 class=\"about-win-tit  g-mt20\">纳网风采</h2><ul class=\"g-pt20 list-paddingleft-2\"><li><p><strong>薪 &nbsp;资</strong>--</p></li><li><p>如果您期待好薪资，关于收入是个隐私问题，不方便回答太多。我只能告诉你，自从加入纳网以后，喝酸奶再也没有舔过盖儿了，吃薯片\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 也不舔手指了，喝星巴克也不自拍了，最最明显的是吃口香糖敢三粒一起嚼，去超市也不用纠结要不要购物袋了~</p></li></ul><ul class=\"g-pt20 list-paddingleft-2\"><li><p><strong>环 &nbsp;境</strong>--</p></li><li><p>如果您期望好环境，1500平方办公区域随你游，电脑电话办公用品为你备，冰箱微波炉冷热饮水机子任你用，平时工作交流有大虾，休息\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 时间还有帅哥美女聊~</p></li></ul><ul class=\"g-pt20 list-paddingleft-2\"><li><p><strong>福 &nbsp;利</strong>--</p></li><li><p>如果您期望好福利，没问题，周末有双休，每天7个半小时，还能享受带薪法定节假日，生日有礼物，过节有惊喜，公司内部活动多~　</p></li></ul><ul class=\"g-pt20 clearfix list-paddingleft-2\"><li><p><strong>提 &nbsp;升</strong>--</p></li><li><p>如果您期望好提升，公司实行内部晋升制，专业系统培训制，入职技能必强化、管理课程全开放，外训会与培训机构合作，技能考试还会\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 有报销~　　</p></li></ul><p><strong>你还在等什么，快加入我们吧~~</strong></p></article><p><br/></p>', '1', '1');
INSERT INTO `cmf_cut_form` VALUES ('5', '联系我们', '联系我们', '联系我们', '<dl>\r\n                        <dt>厦门纳网科技有限公司</dt>\r\n                        <dd>地址：厦门市软件园二期望海路45号201单元</dd>\r\n                        <dd>邮政编码：361008</dd>\r\n                        <dd>电子邮件：ebeim@nawang.cn</dd>\r\n                        <dd>传真：0592-3180123</dd>\r\n                        <dd class=\"tel\"> 服务热线:<strong>400-66-18925</strong></dd>\r\n                    </dl>\r\n                    <div class=\"map\" >\r\n                        <fieldset id=\"map\"></fieldset>\r\n                    </div>', '1', '1');
INSERT INTO `cmf_cut_form` VALUES ('6', '资深专业', '资深专业', '资深专业', '<p>\r\n	互联网创业基础组s合，打下互联网领域的第一桩，适用于零互联网基础的个人和企业用户。\r\n</p>', '1', '2');
INSERT INTO `cmf_cut_form` VALUES ('7', '即时响应', '即使响应2341', '即使响应', '<p>独创Nabla全业务服务系统，客服零迟疑即时响应。</p>', '1', '2');
INSERT INTO `cmf_cut_form` VALUES ('8', '安全绝密', '安全绝密', '安全绝密', '<p>明星产品易备安数据灾备系统，用户数据的加密保险箱。</p><p><br/></p><p>1123123<br/></p>', '1', '2');
INSERT INTO `cmf_cut_form` VALUES ('9', '覆盖全球', '覆盖全球', '覆盖全球', '<p>唯一一家能为客户注册全球一切在售域名的域名注册商。</p>', '1', '2');
INSERT INTO `cmf_cut_form` VALUES ('10', '合作优势', '1', '', '			<div class=\"w1140 agent-win1\" id=\"agent-win1\">	\r\n				<header class=\"agent-tit\"><h2>合作优势</h2></header>			 \r\n				<ul class=\"agent-win1-list clearfix\">\r\n					<li class=\"clearfix agent-win1-li01\">\r\n						<i class=\"agent-icons  agent-icons01\"></i>\r\n						<dl>\r\n							<dt>品牌优势</dt>							 \r\n							<dd>自有品牌战略，优势集中，卖点清晰，更具市场渗透力。</dd>							 \r\n						</dl>\r\n					</li>\r\n					<li class=\"clearfix agent-win1-li02\">\r\n						<i class=\"agent-icons  agent-icons02\"></i>\r\n						<dl>\r\n							<dt>产品优势</dt>							 \r\n							<dd>立足于ISO22301业务连续性管理体系、ISO27001信息安全管理体系、ISO20000IT服务管理体系、GB/20988-2007信息系统灾难恢复规范等国内外标准。\r\n							</dd>							 \r\n						</dl>\r\n					</li>\r\n					<li class=\"clearfix agent-win1-li03\">\r\n						<i class=\"agent-icons  agent-icons03\"></i>\r\n						<dl>\r\n							<dt>市场优势</dt>							 \r\n							<dd>通过广告投放、市场活动支持、商机共享、宣传资料支持等方面对我们的渠道商提供市场支持；并协同渠道合作伙伴，开展行业以及区域市场。</dd>							 \r\n						</dl>\r\n					</li>\r\n					<li class=\"clearfix agent-win1-li04\">\r\n						<i class=\"agent-icons  agent-icons04\"></i>\r\n						<dl>\r\n							<dt>渠道扶持</dt>							 \r\n							<dd>从奖励政策及执行、竞争秩序维护、供货及时性、渠道能力提升培训、\r\n渠道沟通的力度、长期合作意识六个方面加强与渠道伙伴的紧密合作。</dd>							 \r\n						</dl>\r\n					</li>\r\n				</ul>\r\n			</div>\r\n', '1', '3');
INSERT INTO `cmf_cut_form` VALUES ('11', '服务优势', '2', null, '<div class=\"agent-win2\" id=\"agent-win2\">\r\n				<ul class=\"w1140 agent-win2-list\">\r\n					<li class=\"agent-win2-li01\">\r\n						<h3>覆盖全国的服务体系</h3>\r\n						<p style=\"display:none\">由厦门总部、全国重点区域平台为全国客户提供统一、专业、快速的现场服务与本地化支持。</p>\r\n					</li>\r\n					<li class=\"agent-win2-li02\">\r\n						<h3>多渠道服务方式</h3>\r\n						<p style=\"display:none\">现场、远程、电话（400）、网站、E-Mail、传真等；</p>\r\n					</li>\r\n					<li class=\"agent-win2-li03\">\r\n						<h3>专业技术服务</h3>\r\n						<p style=\"display:none\">专业的存储备份产品服务，丰富的实战经验与服务方案架构规划能力；</p>\r\n					</li>\r\n					<li class=\"agent-win2-li04\">\r\n						<h3>完善的服务信息系统</h3>\r\n						<p style=\"display:none\">拥有完善的服务信息管理体系，客户的每次服务请求及处理过程均会被详细记录下来，以便日后查询，减少服务环节沟通所需的时间，提高支持服务的工作效率。精确的服务过程及结果记录，可以使热线咨询、技术支持与客户服务各环节实现信息与经验的共享与互动，使服务更高效。</p>\r\n					</li>\r\n				</ul>\r\n			</div>\r', '1', '3');
INSERT INTO `cmf_cut_form` VALUES ('12', '合作流程', '3', null, '<div class=\"w1140 agent-win3\" id=\"agent-win3\">	\r\n				<header class=\"agent-tit\"><h2>合作流程</h2></header>			 \r\n				<ul class=\"agent-win3-list clearfix w1020\">\r\n					<li class=\"clearfix agent-win3-li01 dot-bg\">\r\n						<i></i>\r\n						<h4>登录(注册)代理专区账号</h4> \r\n					</li>					\r\n					<li class=\"clearfix agent-win3-li02 dot-bg\">\r\n						<i></i>\r\n						<h4>提交合作伙伴申请</h4> \r\n					</li>					\r\n					<li class=\"clearfix agent-win3-li03 dot-bg\">\r\n						<i></i>\r\n						<h4>申请审核通过</h4> \r\n					</li>					 \r\n					<li class=\"clearfix agent-win3-li04 dot-bg\">\r\n						<i></i>\r\n						<h4>合作洽谈</h4> \r\n					</li>					\r\n					<li class=\"clearfix agent-win3-li05 dot-bg\">\r\n						<i></i>\r\n						<h4>签订合作协议</h4> \r\n					</li>					\r\n					<li class=\"clearfix agent-win3-li06\">\r\n						<i></i>\r\n						<h4>业务代理</h4> \r\n					</li>					\r\n				</ul>\r\n				<a href=\"javascript:void(0)\" class=\"red-btn agent-btn\">申请加入</a>\r\n			</div>		', '1', '3');

-- ----------------------------
-- Table structure for cmf_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_guestbook`;
CREATE TABLE `cmf_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL COMMENT '留言时间',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '留言状态，1：正常，0：删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of cmf_guestbook
-- ----------------------------
INSERT INTO `cmf_guestbook` VALUES ('1', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:09:44', '1');
INSERT INTO `cmf_guestbook` VALUES ('2', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:10:23', '1');
INSERT INTO `cmf_guestbook` VALUES ('3', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:10:24', '1');
INSERT INTO `cmf_guestbook` VALUES ('4', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:10:25', '1');
INSERT INTO `cmf_guestbook` VALUES ('5', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:10:33', '1');
INSERT INTO `cmf_guestbook` VALUES ('6', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:11:07', '1');
INSERT INTO `cmf_guestbook` VALUES ('7', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:12:21', '1');
INSERT INTO `cmf_guestbook` VALUES ('8', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:16:24', '1');
INSERT INTO `cmf_guestbook` VALUES ('9', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:17:02', '1');
INSERT INTO `cmf_guestbook` VALUES ('10', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:17:15', '1');
INSERT INTO `cmf_guestbook` VALUES ('11', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:17:17', '1');
INSERT INTO `cmf_guestbook` VALUES ('12', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:17:42', '1');
INSERT INTO `cmf_guestbook` VALUES ('13', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:17:44', '1');
INSERT INTO `cmf_guestbook` VALUES ('14', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:18:59', '1');
INSERT INTO `cmf_guestbook` VALUES ('15', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:18:59', '1');
INSERT INTO `cmf_guestbook` VALUES ('16', 'fsdfsdf', 'luwenbin8023@126.com', null, '', '2016-01-07 19:18:59', '1');
INSERT INTO `cmf_guestbook` VALUES ('17', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:20:24', '1');
INSERT INTO `cmf_guestbook` VALUES ('18', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:20:35', '1');
INSERT INTO `cmf_guestbook` VALUES ('19', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:21:45', '1');
INSERT INTO `cmf_guestbook` VALUES ('20', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:21:48', '1');
INSERT INTO `cmf_guestbook` VALUES ('21', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:22:59', '1');
INSERT INTO `cmf_guestbook` VALUES ('22', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:23:03', '1');
INSERT INTO `cmf_guestbook` VALUES ('23', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:23:36', '1');
INSERT INTO `cmf_guestbook` VALUES ('24', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:23:37', '1');
INSERT INTO `cmf_guestbook` VALUES ('25', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:23:37', '1');
INSERT INTO `cmf_guestbook` VALUES ('26', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:23:37', '1');
INSERT INTO `cmf_guestbook` VALUES ('27', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:23:37', '1');
INSERT INTO `cmf_guestbook` VALUES ('28', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:23:38', '1');
INSERT INTO `cmf_guestbook` VALUES ('29', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:25:33', '1');
INSERT INTO `cmf_guestbook` VALUES ('30', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:25:47', '1');
INSERT INTO `cmf_guestbook` VALUES ('31', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:26:30', '1');
INSERT INTO `cmf_guestbook` VALUES ('32', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:26:38', '1');
INSERT INTO `cmf_guestbook` VALUES ('33', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:27:39', '1');
INSERT INTO `cmf_guestbook` VALUES ('34', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:31:57', '1');
INSERT INTO `cmf_guestbook` VALUES ('35', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:51', '1');
INSERT INTO `cmf_guestbook` VALUES ('36', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:52', '1');
INSERT INTO `cmf_guestbook` VALUES ('37', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:53', '1');
INSERT INTO `cmf_guestbook` VALUES ('38', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:53', '1');
INSERT INTO `cmf_guestbook` VALUES ('39', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:54', '1');
INSERT INTO `cmf_guestbook` VALUES ('40', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:54', '1');
INSERT INTO `cmf_guestbook` VALUES ('41', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:54', '1');
INSERT INTO `cmf_guestbook` VALUES ('42', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:55', '1');
INSERT INTO `cmf_guestbook` VALUES ('43', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:56:55', '1');
INSERT INTO `cmf_guestbook` VALUES ('44', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:57:54', '1');
INSERT INTO `cmf_guestbook` VALUES ('45', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 19:57:57', '1');
INSERT INTO `cmf_guestbook` VALUES ('46', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:02:42', '1');
INSERT INTO `cmf_guestbook` VALUES ('47', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:02:43', '1');
INSERT INTO `cmf_guestbook` VALUES ('48', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:02:46', '1');
INSERT INTO `cmf_guestbook` VALUES ('49', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:02:47', '1');
INSERT INTO `cmf_guestbook` VALUES ('50', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:04:16', '1');
INSERT INTO `cmf_guestbook` VALUES ('51', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:04:21', '1');
INSERT INTO `cmf_guestbook` VALUES ('52', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:04:21', '1');
INSERT INTO `cmf_guestbook` VALUES ('53', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:04:21', '1');
INSERT INTO `cmf_guestbook` VALUES ('54', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:04:22', '1');
INSERT INTO `cmf_guestbook` VALUES ('55', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:04:23', '1');
INSERT INTO `cmf_guestbook` VALUES ('56', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:09', '1');
INSERT INTO `cmf_guestbook` VALUES ('57', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:10', '1');
INSERT INTO `cmf_guestbook` VALUES ('58', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:10', '1');
INSERT INTO `cmf_guestbook` VALUES ('59', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:11', '1');
INSERT INTO `cmf_guestbook` VALUES ('60', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:11', '1');
INSERT INTO `cmf_guestbook` VALUES ('61', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:11', '1');
INSERT INTO `cmf_guestbook` VALUES ('62', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:11', '1');
INSERT INTO `cmf_guestbook` VALUES ('63', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:16', '1');
INSERT INTO `cmf_guestbook` VALUES ('64', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:17', '1');
INSERT INTO `cmf_guestbook` VALUES ('65', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:17', '1');
INSERT INTO `cmf_guestbook` VALUES ('66', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:21', '1');
INSERT INTO `cmf_guestbook` VALUES ('67', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:22', '1');
INSERT INTO `cmf_guestbook` VALUES ('68', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:22', '1');
INSERT INTO `cmf_guestbook` VALUES ('69', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:22', '1');
INSERT INTO `cmf_guestbook` VALUES ('70', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:22', '1');
INSERT INTO `cmf_guestbook` VALUES ('71', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:22', '1');
INSERT INTO `cmf_guestbook` VALUES ('72', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:23', '1');
INSERT INTO `cmf_guestbook` VALUES ('73', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:23', '1');
INSERT INTO `cmf_guestbook` VALUES ('74', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:23', '1');
INSERT INTO `cmf_guestbook` VALUES ('75', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:23', '1');
INSERT INTO `cmf_guestbook` VALUES ('76', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:24', '1');
INSERT INTO `cmf_guestbook` VALUES ('77', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:24', '1');
INSERT INTO `cmf_guestbook` VALUES ('78', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:24', '1');
INSERT INTO `cmf_guestbook` VALUES ('79', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:25', '1');
INSERT INTO `cmf_guestbook` VALUES ('80', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:06:45', '1');
INSERT INTO `cmf_guestbook` VALUES ('81', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:14', '1');
INSERT INTO `cmf_guestbook` VALUES ('82', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:14', '1');
INSERT INTO `cmf_guestbook` VALUES ('83', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:15', '1');
INSERT INTO `cmf_guestbook` VALUES ('84', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:15', '1');
INSERT INTO `cmf_guestbook` VALUES ('85', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:28', '1');
INSERT INTO `cmf_guestbook` VALUES ('86', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:29', '1');
INSERT INTO `cmf_guestbook` VALUES ('87', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:31', '1');
INSERT INTO `cmf_guestbook` VALUES ('88', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:40', '1');
INSERT INTO `cmf_guestbook` VALUES ('89', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:41', '1');
INSERT INTO `cmf_guestbook` VALUES ('90', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:41', '1');
INSERT INTO `cmf_guestbook` VALUES ('91', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:41', '1');
INSERT INTO `cmf_guestbook` VALUES ('92', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:41', '1');
INSERT INTO `cmf_guestbook` VALUES ('93', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:42', '1');
INSERT INTO `cmf_guestbook` VALUES ('94', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:07:44', '1');
INSERT INTO `cmf_guestbook` VALUES ('95', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:09:00', '1');
INSERT INTO `cmf_guestbook` VALUES ('96', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:09:13', '1');
INSERT INTO `cmf_guestbook` VALUES ('97', '纳网科技', 'luwenbin8023@126.com', null, '', '2016-01-07 20:09:16', '1');

-- ----------------------------
-- Table structure for cmf_honor
-- ----------------------------
DROP TABLE IF EXISTS `cmf_honor`;
CREATE TABLE `cmf_honor` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) NOT NULL COMMENT '资质分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '资质名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '资质图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '资质链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '描述',
  `slide_content` text COMMENT '内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_honor
-- ----------------------------
INSERT INTO `cmf_honor` VALUES ('1', '0', '1', '/data/upload/20151229/56824aef986d8.jpg', '2', '腾讯云', '4', '1', '3');
INSERT INTO `cmf_honor` VALUES ('2', '1', '成长企业', '/data/upload/20151229/56824ad8274ea.jpg', 'aa', 'baidu.com', '', '1', '2');
INSERT INTO `cmf_honor` VALUES ('3', '5', '百度直达号', '/data/upload/20151229/56824ae31df04.jpg', 'www', '百度直达号', '23t3 tefg  e 热议他二货二十一号杂而安泽又 尔冬升和人人通电话的燃烧着不饿这样紫色个真是太很好用啊healer要不好找土家族爱上他杀人后突然还是挺还杂 艾尔hyte6yheq 撒盐很讨厌和特色与哈有和阿尔义合堂与在萨尔要和他在奥泽鸭子油核桃仁厚一体机哈哈二月红砸核桃就哈哈这句话你射安徽建筑', '1', '2');
INSERT INTO `cmf_honor` VALUES ('4', '1', '百度直达号', '/data/upload/20151229/56824cab513b2.jpg', null, '', '', '1', '9');
INSERT INTO `cmf_honor` VALUES ('5', '1', '腾讯云', '/data/upload/20151231/5684903cb17b5.jpg', 'baidu.com', '腾讯云2', 'XXX', '1', '0');

-- ----------------------------
-- Table structure for cmf_honor_cat
-- ----------------------------
DROP TABLE IF EXISTS `cmf_honor_cat`;
CREATE TABLE `cmf_honor_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '荣誉资质分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '荣誉资质分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `cat_position_id` int(2) DEFAULT NULL COMMENT '位置ID',
  `listorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='幻灯片分类表';

-- ----------------------------
-- Records of cmf_honor_cat
-- ----------------------------
INSERT INTO `cmf_honor_cat` VALUES ('1', '2015', '2015-1', '2015.1', '1', '2', '2');
INSERT INTO `cmf_honor_cat` VALUES ('5', '2016', '2016-1', '2016.1', '1', null, '1');

-- ----------------------------
-- Table structure for cmf_links
-- ----------------------------
DROP TABLE IF EXISTS `cmf_links`;
CREATE TABLE `cmf_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_links
-- ----------------------------
INSERT INTO `cmf_links` VALUES ('2', 'http://www.189.cn/', '中国电信', '/data/upload/20151231/5684c78fc7315.jpg', '_blank', '', '1', '0', null, '6');
INSERT INTO `cmf_links` VALUES ('3', 'http://www.boc.cn/', '中国银行', '/data/upload/20151224/567ba79db2b1d.jpg', '_blank', '', '1', '0', null, '0');
INSERT INTO `cmf_links` VALUES ('4', 'http://www.1688.com/', '阿里巴巴', '/data/upload/20151224/567ba7c77870a.jpg', '_blank', '', '1', '0', null, '0');
INSERT INTO `cmf_links` VALUES ('5', 'http://www.sf-express.com/', '顺丰速运', '/data/upload/20151224/567ba7e91c9fd.jpg', '_blank', '', '1', '0', null, '0');
INSERT INTO `cmf_links` VALUES ('6', 'http://weibo.com/', '新浪微博', '/data/upload/20151224/567ba8153103e.jpg', '_blank', '', '1', '0', null, '0');
INSERT INTO `cmf_links` VALUES ('7', 'http://nw.test.com/', '百度地图', '/data/upload/20151231/5684c7e12e46b.jpg', '_blank', '', '1', '0', null, '0');
INSERT INTO `cmf_links` VALUES ('8', 'http://nw.test.com/', '百度翻译', '/data/upload/20151231/5684c7f485377.jpg', '_blank', '', '1', '0', null, '0');

-- ----------------------------
-- Table structure for cmf_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_menu`;
CREATE TABLE `cmf_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_menu
-- ----------------------------
INSERT INTO `cmf_menu` VALUES ('1', '0', 'Admin', 'Content', 'default', '', '0', '1', '内容管理', 'th', '', '30');
INSERT INTO `cmf_menu` VALUES ('163', '162', 'Api', 'Guestbookadmin', 'index', '', '1', '1', '申请列表', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('164', '163', 'Api', 'Guestbookadmin', 'delete', '', '1', '0', '删除网站留言', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('4', '1', 'Comment', 'Commentadmin', 'index', '', '1', '1', '评论管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('5', '4', 'Comment', 'Commentadmin', 'delete', '', '1', '0', '删除评论', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('6', '4', 'Comment', 'Commentadmin', 'check', '', '1', '0', '评论审核', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('7', '171', 'Portal', 'AdminPost', 'index', '', '1', '1', '文章管理', '', '', '1');
INSERT INTO `cmf_menu` VALUES ('8', '7', 'Portal', 'AdminPost', 'listorders', '', '1', '0', '文章排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('9', '7', 'Portal', 'AdminPost', 'top', '', '1', '0', '文章置顶', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('10', '7', 'Portal', 'AdminPost', 'recommend', '', '1', '0', '文章推荐', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('11', '7', 'Portal', 'AdminPost', 'move', '', '1', '0', '批量移动', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('12', '7', 'Portal', 'AdminPost', 'check', '', '1', '0', '文章审核', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('13', '7', 'Portal', 'AdminPost', 'delete', '', '1', '0', '删除文章', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('14', '7', 'Portal', 'AdminPost', 'edit', '', '1', '0', '编辑文章', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('15', '14', 'Portal', 'AdminPost', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('16', '7', 'Portal', 'AdminPost', 'add', '', '1', '0', '添加文章', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('17', '16', 'Portal', 'AdminPost', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('18', '171', 'Portal', 'AdminTerm', 'index', '', '0', '1', '分类管理', '', '', '2');
INSERT INTO `cmf_menu` VALUES ('19', '18', 'Portal', 'AdminTerm', 'listorders', '', '1', '0', '文章分类排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('20', '18', 'Portal', 'AdminTerm', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('21', '18', 'Portal', 'AdminTerm', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('22', '21', 'Portal', 'AdminTerm', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('23', '18', 'Portal', 'AdminTerm', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('24', '23', 'Portal', 'AdminTerm', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('25', '1', 'Portal', 'AdminPage', 'index', '', '1', '1', '页面管理', '', '', '3');
INSERT INTO `cmf_menu` VALUES ('26', '25', 'Portal', 'AdminPage', 'listorders', '', '1', '0', '页面排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('27', '25', 'Portal', 'AdminPage', 'delete', '', '1', '0', '删除页面', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('28', '25', 'Portal', 'AdminPage', 'edit', '', '1', '0', '编辑页面', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('29', '28', 'Portal', 'AdminPage', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('30', '25', 'Portal', 'AdminPage', 'add', '', '1', '0', '添加页面', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('31', '30', 'Portal', 'AdminPage', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('32', '1', 'Admin', 'Recycle', 'default', '', '1', '1', '回收站', '', '', '4');
INSERT INTO `cmf_menu` VALUES ('33', '32', 'Portal', 'AdminPost', 'recyclebin', '', '1', '1', '文章回收', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('34', '33', 'Portal', 'AdminPost', 'restore', '', '1', '0', '文章还原', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('35', '33', 'Portal', 'AdminPost', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('36', '32', 'Portal', 'AdminPage', 'recyclebin', '', '1', '1', '页面回收', '', '', '1');
INSERT INTO `cmf_menu` VALUES ('37', '36', 'Portal', 'AdminPage', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('38', '36', 'Portal', 'AdminPage', 'restore', '', '1', '0', '页面还原', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('39', '0', 'Admin', 'Extension', 'default', '', '0', '1', '扩展工具', 'cloud', '', '40');
INSERT INTO `cmf_menu` VALUES ('40', '39', 'Admin', 'Backup', 'default', '', '1', '1', '备份管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('41', '40', 'Admin', 'Backup', 'restore', '', '1', '1', '数据还原', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('42', '40', 'Admin', 'Backup', 'index', '', '1', '1', '数据备份', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('43', '42', 'Admin', 'Backup', 'index_post', '', '1', '0', '提交数据备份', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('44', '40', 'Admin', 'Backup', 'download', '', '1', '0', '下载备份', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('45', '40', 'Admin', 'Backup', 'del_backup', '', '1', '0', '删除备份', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('46', '40', 'Admin', 'Backup', 'import', '', '1', '0', '数据备份导入', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('47', '39', 'Admin', 'Plugin', 'index', '', '1', '1', '插件管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('48', '47', 'Admin', 'Plugin', 'toggle', '', '1', '0', '插件启用切换', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('49', '47', 'Admin', 'Plugin', 'setting', '', '1', '0', '插件设置', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('50', '49', 'Admin', 'Plugin', 'setting_post', '', '1', '0', '插件设置提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('51', '47', 'Admin', 'Plugin', 'install', '', '1', '0', '插件安装', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('52', '47', 'Admin', 'Plugin', 'uninstall', '', '1', '0', '插件卸载', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('53', '0', 'Admin', 'Slide', 'default', '', '1', '1', '幻灯片', '', '', '4');
INSERT INTO `cmf_menu` VALUES ('54', '53', 'Admin', 'Slide', 'index', '', '1', '1', '幻灯片管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('55', '54', 'Admin', 'Slide', 'listorders', '', '1', '0', '幻灯片排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('56', '54', 'Admin', 'Slide', 'toggle', '', '1', '0', '幻灯片显示切换', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('57', '54', 'Admin', 'Slide', 'delete', '', '1', '0', '删除幻灯片', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('58', '54', 'Admin', 'Slide', 'edit', '', '1', '0', '编辑幻灯片', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('59', '58', 'Admin', 'Slide', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('60', '54', 'Admin', 'Slide', 'add', '', '1', '0', '添加幻灯片', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('61', '60', 'Admin', 'Slide', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('62', '53', 'Admin', 'Slidecat', 'index', '', '1', '1', '幻灯片分类', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('63', '62', 'Admin', 'Slidecat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('64', '62', 'Admin', 'Slidecat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('65', '64', 'Admin', 'Slidecat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('66', '62', 'Admin', 'Slidecat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('67', '66', 'Admin', 'Slidecat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('68', '39', 'Admin', 'Ad', 'index', '', '1', '1', '网站广告', '', '', '2');
INSERT INTO `cmf_menu` VALUES ('69', '68', 'Admin', 'Ad', 'toggle', '', '1', '0', '广告显示切换', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('70', '68', 'Admin', 'Ad', 'delete', '', '1', '0', '删除广告', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('71', '68', 'Admin', 'Ad', 'edit', '', '1', '0', '编辑广告', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('72', '71', 'Admin', 'Ad', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('73', '68', 'Admin', 'Ad', 'add', '', '1', '0', '添加广告', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('74', '73', 'Admin', 'Ad', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('75', '165', 'Admin', 'Link', 'index', '', '0', '1', '友情链接', '', '', '3');
INSERT INTO `cmf_menu` VALUES ('76', '75', 'Admin', 'Link', 'listorders', '', '1', '0', '友情链接排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('77', '75', 'Admin', 'Link', 'toggle', '', '1', '0', '友链显示切换', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('78', '75', 'Admin', 'Link', 'delete', '', '1', '0', '删除友情链接', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('79', '75', 'Admin', 'Link', 'edit', '', '1', '0', '编辑友情链接', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('80', '79', 'Admin', 'Link', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('81', '75', 'Admin', 'Link', 'add', '', '1', '0', '添加友情链接', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('82', '81', 'Admin', 'Link', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('83', '39', 'Api', 'Oauthadmin', 'setting', '', '1', '1', '第三方登陆', 'leaf', '', '4');
INSERT INTO `cmf_menu` VALUES ('84', '83', 'Api', 'Oauthadmin', 'setting_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('85', '0', 'Admin', 'Menu', 'default', '', '1', '1', '菜单管理', 'list', '', '20');
INSERT INTO `cmf_menu` VALUES ('86', '85', 'Admin', 'Navcat', 'default1', '', '1', '1', '前台菜单', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('87', '86', 'Admin', 'Nav', 'index', '', '1', '1', '菜单管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('88', '87', 'Admin', 'Nav', 'listorders', '', '1', '0', '前台导航排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('89', '87', 'Admin', 'Nav', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('90', '87', 'Admin', 'Nav', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('91', '90', 'Admin', 'Nav', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('92', '87', 'Admin', 'Nav', 'add', '', '1', '0', '添加菜单', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('93', '92', 'Admin', 'Nav', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('94', '86', 'Admin', 'Navcat', 'index', '', '1', '1', '菜单分类', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('95', '94', 'Admin', 'Navcat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('96', '94', 'Admin', 'Navcat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('97', '96', 'Admin', 'Navcat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('98', '94', 'Admin', 'Navcat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('99', '98', 'Admin', 'Navcat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('100', '85', 'Admin', 'Menu', 'index', '', '1', '1', '后台菜单', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('101', '100', 'Admin', 'Menu', 'add', '', '1', '0', '添加菜单', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('102', '101', 'Admin', 'Menu', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('103', '100', 'Admin', 'Menu', 'listorders', '', '1', '0', '后台菜单排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('104', '100', 'Admin', 'Menu', 'export_menu', '', '1', '0', '菜单备份', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('105', '100', 'Admin', 'Menu', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('106', '105', 'Admin', 'Menu', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('107', '100', 'Admin', 'Menu', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('108', '100', 'Admin', 'Menu', 'lists', '', '1', '0', '所有菜单', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('109', '0', 'Admin', 'Setting', 'default', '', '0', '1', '设置', 'cogs', '', '8');
INSERT INTO `cmf_menu` VALUES ('110', '109', 'Admin', 'Setting', 'userdefault', '', '0', '1', '个人信息', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('111', '110', 'Admin', 'User', 'userinfo', '', '1', '1', '修改信息', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('112', '111', 'Admin', 'User', 'userinfo_post', '', '1', '0', '修改信息提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('113', '110', 'Admin', 'Setting', 'password', '', '1', '1', '修改密码', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('114', '113', 'Admin', 'Setting', 'password_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('115', '109', 'Admin', 'Setting', 'site', '', '1', '1', '网站信息', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('116', '115', 'Admin', 'Setting', 'site_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('117', '115', 'Admin', 'Route', 'index', '', '1', '0', '路由列表', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('118', '115', 'Admin', 'Route', 'add', '', '1', '0', '路由添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('119', '118', 'Admin', 'Route', 'add_post', '', '1', '0', '路由添加提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('120', '115', 'Admin', 'Route', 'edit', '', '1', '0', '路由编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('121', '120', 'Admin', 'Route', 'edit_post', '', '1', '0', '路由编辑提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('122', '115', 'Admin', 'Route', 'delete', '', '1', '0', '路由删除', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('123', '115', 'Admin', 'Route', 'ban', '', '1', '0', '路由禁止', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('124', '115', 'Admin', 'Route', 'open', '', '1', '0', '路由启用', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('125', '115', 'Admin', 'Route', 'listorders', '', '1', '0', '路由排序', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('126', '109', 'Admin', 'Mailer', 'default', '', '1', '1', '邮箱配置', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('127', '126', 'Admin', 'Mailer', 'index', '', '1', '1', 'SMTP配置', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('128', '127', 'Admin', 'Mailer', 'index_post', '', '1', '0', '提交配置', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('129', '126', 'Admin', 'Mailer', 'active', '', '1', '1', '邮件模板', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('130', '129', 'Admin', 'Mailer', 'active_post', '', '1', '0', '提交模板', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('131', '109', 'Admin', 'Setting', 'clearcache', '', '1', '1', '清除缓存', '', '', '1');
INSERT INTO `cmf_menu` VALUES ('132', '0', 'User', 'Indexadmin', 'default', '', '1', '1', '用户管理', 'group', '', '10');
INSERT INTO `cmf_menu` VALUES ('133', '132', 'User', 'Indexadmin', 'default1', '', '1', '1', '用户组', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('134', '133', 'User', 'Indexadmin', 'index', '', '1', '1', '本站用户', 'leaf', '', '0');
INSERT INTO `cmf_menu` VALUES ('135', '134', 'User', 'Indexadmin', 'ban', '', '1', '0', '拉黑会员', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('136', '134', 'User', 'Indexadmin', 'cancelban', '', '1', '0', '启用会员', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('137', '133', 'User', 'Oauthadmin', 'index', '', '1', '1', '第三方用户', 'leaf', '', '0');
INSERT INTO `cmf_menu` VALUES ('138', '137', 'User', 'Oauthadmin', 'delete', '', '1', '0', '第三方用户解绑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('139', '132', 'User', 'Indexadmin', 'default3', '', '1', '1', '管理组', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('140', '139', 'Admin', 'Rbac', 'index', '', '1', '1', '角色管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('141', '140', 'Admin', 'Rbac', 'member', '', '1', '0', '成员管理', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('142', '140', 'Admin', 'Rbac', 'authorize', '', '1', '0', '权限设置', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('143', '142', 'Admin', 'Rbac', 'authorize_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('144', '140', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '编辑角色', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('145', '144', 'Admin', 'Rbac', 'roleedit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('146', '140', 'Admin', 'Rbac', 'roledelete', '', '1', '1', '删除角色', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('147', '140', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '添加角色', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('148', '147', 'Admin', 'Rbac', 'roleadd_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('149', '139', 'Admin', 'User', 'index', '', '1', '1', '管理员', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('150', '149', 'Admin', 'User', 'delete', '', '1', '0', '删除管理员', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('151', '149', 'Admin', 'User', 'edit', '', '1', '0', '管理员编辑', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('152', '151', 'Admin', 'User', 'edit_post', '', '1', '0', '编辑提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('153', '149', 'Admin', 'User', 'add', '', '1', '0', '管理员添加', '', '', '1000');
INSERT INTO `cmf_menu` VALUES ('154', '153', 'Admin', 'User', 'add_post', '', '1', '0', '添加提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('155', '47', 'Admin', 'Plugin', 'update', '', '1', '0', '插件更新', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('156', '39', 'Admin', 'Storage', 'index', '', '1', '1', '文件存储', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('157', '156', 'Admin', 'Storage', 'setting_post', '', '1', '0', '文件存储设置提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('158', '54', 'Admin', 'Slide', 'ban', '', '1', '0', '禁用幻灯片', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('159', '54', 'Admin', 'Slide', 'cancelban', '', '1', '0', '启用幻灯片', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('160', '149', 'Admin', 'User', 'ban', '', '1', '0', '禁用管理员', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('161', '149', 'Admin', 'User', 'cancelban', '', '1', '0', '启用管理员', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('162', '0', 'Api', 'Guestbookadmin', 'default', '', '1', '1', '申请代理', 'envelope-o', '', '99');
INSERT INTO `cmf_menu` VALUES ('165', '0', 'Admin', 'Link', 'default', '', '1', '1', '友情链接', 'link', '', '6');
INSERT INTO `cmf_menu` VALUES ('166', '1', 'Portal', 'AdminCutForm', 'index', '', '1', '1', '单页管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('167', '0', 'Admin', 'Index', 'about', '', '1', '1', '关于纳网', '', '', '3');
INSERT INTO `cmf_menu` VALUES ('168', '167', 'Portal', 'AdminCutForm', 'edit', 'id=3', '1', '1', '公司简介', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('169', '167', 'Portal', 'AdminCutForm', 'edit', 'id=4', '1', '1', '人才招聘', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('171', '0', 'Portal', 'AdminPost', 'default', '', '1', '1', '产品管理', '', '', '1');
INSERT INTO `cmf_menu` VALUES ('173', '167', 'Admin', 'Customer', 'index', '', '1', '1', '客户案例', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('174', '0', 'Admin', 'CustomerService', 'default', '', '1', '1', '客服管理', '', '', '5');
INSERT INTO `cmf_menu` VALUES ('175', '174', 'Admin', 'Customerservice', 'index', '', '1', '1', '客服列表', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('176', '167', 'Admin', 'Honor', 'default', '', '0', '1', '荣誉资质', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('177', '176', 'Admin', 'Honor', 'index', '', '1', '1', '荣誉资质管理', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('178', '176', 'Admin', 'Honorcat', 'index', '', '1', '1', '荣誉资质分类', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('179', '0', 'Admin', 'Advantage', 'default', '', '1', '1', ' 纳网的优势', '', '', '7');
INSERT INTO `cmf_menu` VALUES ('180', '179', 'Portal', 'AdminCutForm', 'edit', 'id=6', '1', '1', '资深专业', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('181', '179', 'Portal', 'AdminCutForm', 'edit', 'id=7', '1', '1', '即使响应', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('182', '179', 'Portal', 'AdminCutForm', 'edit', 'id=8', '1', '1', '安全绝密', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('183', '179', 'Portal', 'AdminCutForm', 'edit', 'id=9', '1', '1', '覆盖全球', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('184', '175', 'Admin', 'CustomerService', 'add', '', '1', '0', '添加客服', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('185', '175', 'Admin', 'CustomerService', 'edit', '', '1', '0', '编辑客服', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('186', '184', 'Admin', 'CustomerService', 'add_post', '', '1', '0', '添加客服提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('187', '185', 'Admin', 'CustomerService', 'edit_post', '', '1', '0', '编辑客服提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('188', '166', 'Portal', 'AdminCutForm', 'edit', '', '1', '0', '编辑单页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('189', '168', 'Portal', 'AdminCutForm', 'save_post', 'id=3', '1', '0', '编辑单页提交1', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('190', '175', 'Admin', 'Customerservice', 'delete', '', '1', '0', '客服删除', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('191', '167', 'Admin', 'News', 'index', '', '1', '1', '纳网动态', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('192', '0', 'Portal', 'AdminCutForm', 'default', '', '1', '1', '成为代理', '', '', '2');
INSERT INTO `cmf_menu` VALUES ('193', '192', 'Portal', 'AdminCutForm', 'edit', 'id=10', '1', '1', '合作优势', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('194', '192', 'Portal', 'AdminCutForm', 'edit', 'id=11', '1', '1', '服务优势', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('195', '192', 'Portal', 'AdminCutForm', 'edit', 'id=12', '1', '1', '合作流程', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('196', '191', 'Admin', 'News', 'active', '', '1', '0', '纳网动态添加编辑页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('197', '191', 'Admin', 'News', 'save_post', '', '1', '0', '纳网动态添加编辑提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('198', '191', 'Admin', 'News', 'delete', '', '1', '0', '纳网动态删除操作', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('201', '177', 'Admin', 'Honor', 'add', '', '1', '0', '荣誉资质添加页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('200', '167', 'Portal', 'AdminCutForm', 'edit', 'id=5', '1', '1', '联系我们', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('202', '177', 'Admin', 'Honor', 'add_post', '', '1', '0', '荣誉资质添加提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('203', '177', 'Admin', 'Honor', 'edit', '', '1', '0', '荣誉资质编辑页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('204', '177', 'Admin', 'Honor', 'edit_post', '', '1', '0', '荣誉资质编辑提交页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('205', '177', 'Admin', 'Honor', 'delete', '', '1', '1', '荣誉资质删除', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('206', '173', 'Admin', 'Customer', 'add', '', '1', '0', '客户案例添加页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('207', '173', 'Admin', 'Customer', 'add_post', '', '1', '0', '客户案例添加提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('208', '173', 'Admin', 'Customer', 'edit', '', '1', '0', '客户案例修改页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('209', '173', 'Admin', 'Customer', 'edit_post', '', '1', '0', '客户案例编辑提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('210', '178', 'Admin', 'Honorcat', 'add', '', '1', '0', '荣誉资质分类添加页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('211', '178', 'Admin', 'Honorcat', 'add_post', '', '1', '0', '荣誉资质分类提交操作', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('212', '178', 'Admin', 'Honorcat', 'edit', '', '1', '0', '荣誉资质分类编辑页', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('213', '178', 'Admin', 'Honorcat', 'edit_post', '', '1', '0', '荣誉资质分类编辑提交', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('214', '178', 'Admin', 'Honorcat', 'delete', '', '1', '0', '荣誉资质分类删除', '', '', '0');
INSERT INTO `cmf_menu` VALUES ('215', '173', 'Admin', 'Customer', 'delete', '', '1', '0', '客户案例删除', '', '', '0');

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '导航分类 id',
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL DEFAULT '0' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='前台导航表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES ('1', '1', '0', '首页', '', 'home', '', '1', '0', '0-1');
INSERT INTO `cmf_nav` VALUES ('2', '1', '0', '列表演示', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}', '', '1', '0', '0-2');
INSERT INTO `cmf_nav` VALUES ('3', '1', '0', '瀑布流', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}', '', '1', '0', '0-3');

-- ----------------------------
-- Table structure for cmf_nav_cat
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_cat`;
CREATE TABLE `cmf_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示，0不显示',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='前台导航分类表';

-- ----------------------------
-- Records of cmf_nav_cat
-- ----------------------------
INSERT INTO `cmf_nav_cat` VALUES ('1', '主导航', '1', '主导航');

-- ----------------------------
-- Table structure for cmf_news
-- ----------------------------
DROP TABLE IF EXISTS `cmf_news`;
CREATE TABLE `cmf_news` (
  `news_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL COMMENT '标题',
  `news_content` text NOT NULL COMMENT '内容',
  `news_listorder` int(2) NOT NULL DEFAULT '1' COMMENT '排序',
  `news_status` int(1) DEFAULT NULL COMMENT '状态: 1-开启  2-关闭',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_news
-- ----------------------------
INSERT INTO `cmf_news` VALUES ('15', '纳网科技现身首届中国域名节 数字资产交易成大势所趋', '&lt;p&gt;\r\n	2015年12月19日，首届中国域名节暨中国数字资产投资峰会在深圳举行，这是中国国内首次举办与数字资产交易的相关盛会。本次盛会邀请\r\n到顶级域名界知名投资人，及耕耘于域名投资市场多年的企业大咖、诸多专业优质的域名中介服务平台、权威顶级的域名注册服务商。纳网科技\r\n的副总经理王良、销售管理部总监邱智能和牛名网运营经理柴雪也携手出席了本次盛会。\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/themes/simplebootx/Public/images/cont_img01.jpg&quot; /&gt; &lt;img src=&quot;/themes/simplebootx/Public/images/cont_img02.jpg&quot; /&gt; \r\n&lt;p&gt;\r\n	本次峰会的议题集中在“数字资产证券化的畅想”、“域名拍卖与域名投资流通”和“比特币投资新机遇”等核心话题上，现场气氛激烈\r\n而火热。\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/themes/simplebootx/Public/images/cont_img03.jpg&quot; /&gt; \r\n&lt;p&gt;\r\n	当日下午中国域名节域名拍卖会正式启动，共有52个高端域名现场拍卖，由国内知名金牌拍卖首席拍卖师乔主持，现场拍卖总额高达1.5449\r\n亿元，现场火爆远超预期。以下是几个超火热的域名关键词：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	关键词一：“创客”相关域名拍出价格 81万\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	关键词二：“老婆”相关域名拍出价格 668万\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	关键词三：“香蕉”相关域名拍出价格 1320万\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	关键词四：“皇冠”相关域名拍出价格 1600万\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	关键词五：“房子”相关域名拍出价格 1620万\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	关键词六：“哥哥”相关域名拍出价格 1700万\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	关键词七：“药”相关域名拍出价格：2150万\r\n&lt;/p&gt;', '12', '1', '2015-12-29 17:11:45');
INSERT INTO `cmf_news` VALUES ('16', '534', '&lt;p&gt;&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;amp;lt;p&amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;p&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;p&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;p&amp;amp;amp;amp;amp;amp;amp;gt;5432&amp;amp;amp;amp;amp;amp;amp;lt;br/&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;/p&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;/p&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;/p&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;lt;/p&amp;amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;&lt;/p&gt;', '1', '1', '2015-12-29 17:09:39');
INSERT INTO `cmf_news` VALUES ('17', '123123', '&lt;p&gt;&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;21312厄齐岁的萨&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;&lt;/p&gt;', '1', '1', '2015-12-29 17:09:31');
INSERT INTO `cmf_news` VALUES ('22', 'test3', 'test34', '2', '1', '2015-12-30 12:13:24');
INSERT INTO `cmf_news` VALUES ('23', 'test6', 'tea7', '7', '1', '2015-12-30 12:22:18');
INSERT INTO `cmf_news` VALUES ('26', 'test5', 'test', '1', '1', '2016-01-04 11:06:07');
INSERT INTO `cmf_news` VALUES ('25', 'fjksdjfhkjhkjsdfhkjh', 'kjhkjhklfdjshkjshdkfjhsdkfdsfsdf', '1', '1', '2015-12-30 14:26:52');
INSERT INTO `cmf_news` VALUES ('27', 'test2', 'test', '0', '1', '2016-01-04 14:12:20');
INSERT INTO `cmf_news` VALUES ('28', 'test3', 'test', '0', '1', '2016-01-04 14:12:30');
INSERT INTO `cmf_news` VALUES ('29', 'test1', 'tett', '0', '2', '2016-01-04 14:12:44');
INSERT INTO `cmf_news` VALUES ('30', 'test3', 'test', '2', '1', '2016-01-05 11:26:42');
INSERT INTO `cmf_news` VALUES ('31', 'test3', 'test', '2', '1', '2016-01-05 11:26:50');
INSERT INTO `cmf_news` VALUES ('21', '11111111111', 'dss234234', '123213', '2', '2015-12-30 10:57:09');
INSERT INTO `cmf_news` VALUES ('20', '123123', '123123', '123123', '1', '2015-12-30 10:56:18');

-- ----------------------------
-- Table structure for cmf_oauth_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_oauth_user`;
CREATE TABLE `cmf_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(512) NOT NULL,
  `expires_date` int(11) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方用户表';

-- ----------------------------
-- Records of cmf_oauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_options
-- ----------------------------
DROP TABLE IF EXISTS `cmf_options`;
CREATE TABLE `cmf_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_options
-- ----------------------------
INSERT INTO `cmf_options` VALUES ('1', 'member_email_active', '{\"title\":\"trey\",\"template\":\"<p>tryrt<br\\/><\\/p>\"}', '1');
INSERT INTO `cmf_options` VALUES ('2', 'site_options', '{\"site_name\":\"\\u7eb3\\u7f51\\u79d1\\u6280_\\u57df\\u540d\\u6ce8\\u518c_\\u865a\\u62df\\u4e3b\\u673a_400\\u7535\\u8bdd_\\u4f01\\u4e1a\\u90ae\\u5c40-\\u901a\\u7528\\u7f51\\u5740_\\u53ef\\u4fe1\\u7f51\\u7ad9\\u2014\\u7eb3\\u7f51-\\u9876\\u7ea7\\u6ce8\\u518c\\u670d\\u52a1\\u673a\\u6784\",\"site_host\":\"http:\\/\\/my.thinkcmf.com\\/\",\"site_tpl\":\"simplebootx\",\"site_adminstyle\":\"flat\",\"site_service_hotline\":\"400-66-18925\",\"site_icp\":\"\",\"site_admin_email\":\"luwenbin8023@126.com\",\"site_tongji\":\"<script type=\\\"text\\/javascript\\\">var cnzz_protocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https:\\/\\/\\\" : \\\" http:\\/\\/\\\");document.write(unescape(\\\"%3Cspan id=\'cnzz_stat_icon_4552939\'%3E%3C\\/span%3E%3Cscript src=\'\\\" + cnzz_protocol + \\\"s5.cnzz.com\\/stat.php%3Fid%3D4552939%26show%3Dpic1\' type=\'text\\/javascript\'%3E%3C\\/script%3E\\\"));<\\/script>\",\"site_copyright\":\"<div class=\\\"fBDetail\\\">\\n\\t<p>\\n\\t\\t\\u516c\\u53f8\\u5730\\u5740\\uff1a\\u53a6\\u95e8\\u5e02\\u8f6f\\u4ef6\\u56ed\\u4e8c\\u671f\\u671b\\u6d77\\u8def45\\u53f7201\\u5355\\u5143\\u2003\\u7535\\u5b50\\u90ae\\u4ef6\\uff1a<a href=\\\"javascript:;\\\">web@nawang.cn<\\/a> \\u90ae\\u653f\\u7f16\\u7801\\uff1a361008\\n\\t<\\/p>\\n\\t<div class=\\\"fBDBot\\\">\\n\\t\\t<p>\\n\\t\\t\\t\\u901a\\u7528\\u7f51\\u5740\\uff1a\\u7eb3\\u7f51\\u2003\\u4e2d\\u6587\\u57df\\u540d\\uff1a\\u7eb3\\u7f51.cn\\u2003\\u7eb3\\u7f51\\u79d1\\u6280.cn\\u2003\\u5168\\u56fd\\u5ba2\\u670d\\u70ed\\u7ebf\\uff1a<a href=\\\"javascript:;\\\">400-66-18925\\uff08\\u8981\\u5e2e\\u5c31\\u6309\\u6211\\uff09<\\/a> \\n\\t\\t<\\/p>\\n\\t<\\/div>\\n\\t<div class=\\\"footerImg\\\">\\n\\t\\t<img src=\\\"\\/themes\\/simplebootx\\/Public\\/images\\/foot_1.png\\\" height=\\\"27\\\" width=\\\"27\\\" \\/> <img src=\\\"\\/themes\\/simplebootx\\/Public\\/images\\/foot_2.png\\\" height=\\\"32\\\" width=\\\"26\\\" \\/> <img src=\\\"\\/themes\\/simplebootx\\/Public\\/images\\/foot_3.png\\\" height=\\\"30\\\" width=\\\"80\\\" \\/> <img src=\\\"\\/themes\\/simplebootx\\/Public\\/images\\/foot_4.png\\\" alt=\\\"\\\" height=\\\"35\\\" width=\\\"35\\\" \\/> <span>\\u300a\\u4e2d\\u534e\\u4eba\\u6c11\\u5171\\u548c\\u56fd\\u589e\\u503c\\u7535\\u4fe1\\u4e1a\\u52a1\\u7ecf\\u8425\\u8bb8\\u53ef\\u8bc1\\u300b\\u95fdB2-20110118<\\/span> \\n\\t<\\/div>\\n<\\/div>\",\"site_seo_title\":\"\\u7eb3\\u7f51\\u79d1\\u6280_\\u57df\\u540d\\u6ce8\\u518c_\\u865a\\u62df\\u4e3b\\u673a_400\\u7535\\u8bdd_\\u4f01\\u4e1a\\u90ae\\u5c40-\\u901a\\u7528\\u7f51\\u5740_\\u53ef\\u4fe1\\u7f51\\u7ad9\\u2014\\u7eb3\\u7f51-\\u9876\\u7ea7\\u6ce8\\u518c\\u670d\\u52a1\\u673a\\u6784\",\"site_seo_keywords\":\"\\u7eb3\\u7f51\\u79d1\\u6280\\u63d0\\u4f9b400\\u7535\\u8bdd,\\u81ea\\u52a9\\u5efa\\u7ad9\\uff0c\\u7f51\\u7ad9\\u5efa\\u8bbe\\uff0c\\u53ef\\u4fe1\\u7f51\\u7ad9\\uff0c\\u4e2d\\u6587\\u57df\\u540d,\\u865a\\u62df\\u4e3b\\u673a\\uff0c \\u901a\\u7528\\u7f51\\u5740\\uff0cbing\\u63a8\\u5e7f\",\"site_seo_description\":\"\\u7eb3\\u7f51\\u79d1\\u6280\\u662f\\u56fd\\u5185\\u9886\\u5148400\\u7535\\u8bdd\\u3001\\u81ea\\u52a9\\u5efa\\u7ad9\\u3001\\u57df\\u540d\\u6ce8\\u518c\\u3001\\u901a\\u7528\\u7f51\\u5740\\u3001\\u7f51\\u7ad9\\u5efa\\u8bbe\\u670d\\u52a1\\u5546\\uff0c\\u798f\\u5efa\\u7701\\u5fae\\u8f6f\\u51fa\\u53e3\\u901a\\u552f\\u4e00\\u4ee3\\u7406\\u5546\\uff0c\\u4e3a\\u4f01\\u4e1a\\u53d1\\u5c55\\u63d0\\u4f9b\\u6d77\\u5916\\u8f6c\\u53d1\\u4f01\\u4e1a\\u90ae\\u5c40\\u3001400\\u7535\\u8bdd\\u3001bing\\u63a8\\u5e7f\\u3001\\u57df\\u540d\\u6ce8\\u518c\\u3001\\u81ea\\u52a9\\u5efa\\u7ad9\\u3001\\u7f51\\u7ad9\\u5efa\\u8bbe\\u3001\\u4e2d\\u6587\\u57df\\u540d\\u3001\\u65e0\\u7ebf\\u7f51\\u5740\\u3001\\u8d22\\u4ed8\\u901a\\u5728\\u7ebf\\u5ba2\\u670d\\u7b49\\u5168\\u65b9\\u4f4d\\u4fe1\\u606f\\u5316\\u670d\\u52a1\\u3002\",\"urlmode\":\"0\",\"html_suffix\":\"\",\"comment_time_interval\":60}', '1');
INSERT INTO `cmf_options` VALUES ('3', 'cmf_settings', '{\"banned_usernames\":\"\"}', '1');

-- ----------------------------
-- Table structure for cmf_plugins
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugins`;
CREATE TABLE `cmf_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_position_config
-- ----------------------------
DROP TABLE IF EXISTS `cmf_position_config`;
CREATE TABLE `cmf_position_config` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_title` varchar(255) DEFAULT NULL COMMENT '位置名称',
  `position_type` tinyint(2) DEFAULT NULL COMMENT '位置类型',
  `position_listorder` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='位置配置表';

-- ----------------------------
-- Records of cmf_position_config
-- ----------------------------
INSERT INTO `cmf_position_config` VALUES ('1', '首页Banner', '1', '1');
INSERT INTO `cmf_position_config` VALUES ('2', '解决方案Banner', '1', '1');
INSERT INTO `cmf_position_config` VALUES ('3', '产品介绍Banner', '1', '1');
INSERT INTO `cmf_position_config` VALUES ('4', '成为代理Banner', '1', '1');
INSERT INTO `cmf_position_config` VALUES ('5', '关于纳网Banner', '1', '1');

-- ----------------------------
-- Table structure for cmf_posts
-- ----------------------------
DROP TABLE IF EXISTS `cmf_posts`;
CREATE TABLE `cmf_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) DEFAULT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_title_describe` varchar(255) DEFAULT NULL COMMENT '标题描述',
  `post_subtitle` varchar(255) DEFAULT NULL COMMENT '副标题',
  `post_subtitle_describe` varchar(255) DEFAULT NULL COMMENT '副标题描述',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  `purchase_url` varchar(255) DEFAULT NULL COMMENT '购买链接',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Portal文章表';

-- ----------------------------
-- Records of cmf_posts
-- ----------------------------
INSERT INTO `cmf_posts` VALUES ('1', '1', '213123', '12312', '2015-12-09 10:20:10', '', '123123', null, null, null, '3123123', '1', '1', '2015-12-09 10:20:04', null, '0', null, '', '0', '{\"thumb\":\"\"}', '5', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('2', '2', '1', '1', '2015-12-09 16:53:11', '<p>1</p>', '1', null, null, null, '1', '1', '1', '2015-12-09 16:53:04', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('3', '2', '23', '23', '2015-12-09 16:53:20', '<p>2313</p>', '2', null, null, null, '23', '1', '1', '2015-12-09 16:53:12', null, '0', null, '', '0', '{\"thumb\":\"\"}', '1', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('4', '2', '2342', '34234', '2015-12-09 16:53:28', '<p>234234</p>', '23423', null, null, null, '234234234', '1', '1', '2015-12-09 16:53:21', null, '0', null, '', '0', '{\"thumb\":\"\"}', '2', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('5', '2', '3213', '21312', '2015-12-09 16:53:38', '<p><em>12312</em><br/></p>', '21321', null, null, null, '123', '1', '1', '2015-12-09 16:53:29', null, '0', null, '', '0', '{\"thumb\":\"\"}', '2', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('6', '2', '21321', '123', '2015-12-09 16:53:45', '<p>213213</p>', '123', null, null, null, '123213123', '1', '1', '2015-12-09 16:53:39', null, '0', null, '', '0', '{\"thumb\":\"\"}', '8', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('7', '2', '1231', '1321', '2015-12-09 16:53:53', '<p>123123</p>', '1231', null, null, null, '3213', '1', '1', '2015-12-09 16:53:46', null, '0', null, '', '0', '{\"thumb\":\"\"}', '2', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('8', '2', '`12', '`12`', '2015-12-09 16:54:01', '<p>`12`</p>', '1`2', null, null, null, '12`12', '1', '1', '2015-12-09 16:53:54', null, '0', null, '', '0', '{\"thumb\":\"20151211\\/566a91e980213.jpg\",\"photo\":[{\"url\":\"20151211\\/566a9191bd290.jpg\",\"alt\":\"1321346206\"},{\"url\":\"20151211\\/566a921c26fe4.gif\",\"alt\":\"1322472782\"}]}', '1', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('9', '2', '', null, '2015-12-24 11:07:46', '<dd>互联网创业基础组合，打下互联网领域的第一桩，适用于零互联网基础的个人和企业用户。</dd>\r\n							<dd>提供专业的咨询和解决方案。帮助用户在低成本、高效率的前提下，完成个人和企业服务的网络信息化。</dd>', '风帆初扬安全启航', '适用于零基础互联网创业者', '域名+主机', '互联网创业基础组合，打下互联网领域的第一桩，适用于零互联网基础的个人和企业用户。', '互联网初创者入口', '1', '1', '2015-12-24 11:07:19', null, '0', null, '', '0', '{\"thumb\":\"20151230\\/56839d93e1d43.png\",\"subthumb\":\"20151224\\/567b63e5a5c69.png\",\"icon\":\"20151229\\/5681f311bbf60.png\"}', '2', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('10', '2', '', null, '2015-12-24 11:19:16', '<dd>进军互联网如虎添翼的工具箱，每一项都是助攻的好帮手，纳网科技提供多种信息化产品</dd>\r\n							<dd>可与互联网基础服务包搭配自由组合，为用户提供优质的配套服务，适用于互联网转型和升级的个人和企业用户。</dd>', '开疆扩土深耕互联', '适用于互联网转型人士和企业', '易备安、云服务器、VPS', '进军互联网如鱼得水的工具箱，每一项都是助攻的好帮手，适用于互联网转型和升级的个人和企业用户。', '互联网转型升级入口', '1', '1', '2015-12-24 11:18:27', null, '0', null, '', '0', '{\"thumb\":\"20151224\\/567b642ccf0d7.png\",\"subthumb\":\"20151224\\/567b643199a71.png\",\"icon\":\"20151229\\/5681f304e5c62.png\"}', '0', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('11', '2', '', null, '2015-12-24 11:19:50', '<dd>2016年，纳网科技融合其十余年的数据保护实践，倾力打造数据灾备系统——易备安，力求最大程度地保护中小企业的数据资产安全，提供安全可靠的数据保险箱。</dd>\r\n							<dd>易备安是基于文件系统的新一代企业数据保护软件。支持文件、网站、微信、OA、电商平台、数据库、应用程序、服务器、云主机、虚机、云存储等数据的实时备份与瞬间恢复，彻底改变了传统的数据备份及灾难恢复方式，全面整合了数据备份、系统恢复、灾难恢复、本地及异地容灾等多项功能。无论用户的系统发生任何意外（如：恶意的程序破坏、文件损毁、人为误删误改、操作系统宕机、硬件故障，甚至整个机房毁于意外），都能保证企业数据不丢失。</dd>', '步步为营守业至上', '适用于数据资产保护的中小企业', '数据保险箱', '基于文件系统的新一代企业数据灾备系统，针对中小企业量身定制，具有多地多活容灾、快速恢复数据、全程数据加密、数据轨迹变更等功能。', '数据资产保护入口', '1', '1', '2015-12-24 11:19:18', null, '0', null, '', '0', '{\"thumb\":\"20151224\\/567b644f9fafe.png\",\"subthumb\":\"20151224\\/567b6454a5dc6.png\",\"icon\":\"20151229\\/5681f26aa4e03.png\"}', '1', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('12', '1', '', null, '2015-12-25 11:56:12', '<div class=\"pro-tabs-cont\">\r\n					<header>互联网的邀请函，品牌保护的第一道防线</header>\r\n					<section>\r\n						<i class=\"pro-cont-icons\"><img src=\"images/pro_cont_icon01.jpg\" alt=\"\"></i>\r\n						<article><i class=\"proCont-art-icon\"></i>域名（Domain Name），是由一串用点分隔的名字组成的Internet上某一台计算机或计算机组的名称，用于在数据传输时标识计算机的电子方位。域名的目的是便于记忆和沟通的一组服务器的地址（网站，电子邮件，FTP等）。域名是在互联网上建立任何服务的基础，具有唯一性，是互联网的品牌、网上商标保护必备的产品之一。</article>\r\n						<h4 class=\"g-bold \">基本类型：</h4>\r\n						<article><i class=\"proCont-art-icon\"></i>一是国际域名（international top-level domain-names，简称iTDs），也叫国际顶级域名。这也是使用最早也最广泛的域名。例如表示工商企业的 .com，表示网络提供商的.net，表示非盈利组织的.org等。在实际使用和功能上，国际域名与国内域名没有任何区别，都是互联网上的具有唯一性的标识。只是在最终管理机构上，国际域名由美国商业部授权的互联网名称与数字地址分配机构（The Internet Corporation for Assigned Names and Numbers）即ICANN负责注册和管理；而国内域名则由中国互联网络管理中心（China Internet Network Information Center) 即CNNIC负责注册和管理。</article>\r\n						<a href=\"javascript:void(0)\" class=\"red-btn solu-cont-btn\">立即购买</a>\r\n					</section>\r\n				</div>', '域名', '域名是互联网上的一个服务器或一个网络系统的名字，是在互联网上建立任何服务的基础，具有唯一性，是互联网的品牌、网上商标保护必备的产品之一。', '', '', '', '1', '1', '2015-12-25 11:31:10', null, '0', null, '', '0', '{\"thumb\":\"20151230\\/56834b0651de7.png\",\"subthumb\":\"\",\"icon\":\"\"}', '0', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('13', '1', '', null, '2015-12-28 08:50:53', '				<div class=\"pro-tabs-cont\">\r\n					<header>虚机时代，高速稳定才是不二之选</header>\r\n					<section>\r\n						<i class=\"pro-cont-icons\"><img src=\"/themes/simplebootx/Public/images/pro_cont_icon03.jpg\" alt=\"\"></i>\r\n						<article><i class=\"proCont-art-icon\"></i>虚拟主机是在网络服务器上分出一定的磁盘空间供用户放置站点、应用组件等，提供必要的站点功能、数据存放和传输功能。所谓虚拟主机，也叫“网站空间”，就是把一台运行在互联网上的服务器划分成多个“虚拟”的服务器，每一个虚拟主机都具有独立的域名和完整的Internet服务器（支持WWW、FTP、E-mail等）功能。虚拟主机是网络发展的福音，极大的促进了网络技术的应用和普及。同时虚拟主机的租用服务也成了网络时代新的经济形式。虚拟主机的租用类似于房屋租用。</article>						\r\n						<a href=\"javascript:void(0)\" class=\"red-btn solu-cont-btn\">立即购买</a>\r\n					</section>\r\n				</div>\r\n', '虚拟主机', '虚拟主机，也叫“网站空间”，就是把一台运行在互联网上的服务器划分成多个“虚拟”的服务器，每一个虚拟主机都具有独立的域名和完整的Internet服务器功能。', '互联网的邀请函，品牌保护的第一道防线', 'test', 'test', '1', '1', '2015-12-28 08:49:55', null, '0', null, '', '0', '{\"thumb\":\"20151230\\/56834af381f24.png\",\"subthumb\":\"\",\"icon\":\"\"}', '0', '0', '0', '0', null);
INSERT INTO `cmf_posts` VALUES ('14', '2', null, null, '2016-01-04 10:19:01', '12321313', '123', '12321', '3213', '3123123', '123123', '1', '1', '2016-01-04 10:18:27', null, '0', null, '', '0', '{\"thumb\":\"20160104\\/5689d6c0b3d07.png\",\"subthumb\":\"20160104\\/5689d684791c9.jpg\",\"image\":\"\\/data\\/upload\\/20160104\\/5689d6e589d91.png\",\"icon\":\"20160104\\/5689d69136a39.png\"}', '0', '0', '0', '0', '123123');
INSERT INTO `cmf_posts` VALUES ('15', '2', null, null, '2016-01-05 10:59:56', '1232132', '1', '1', '1', '1', '', '1', '1', '2016-01-05 10:59:30', null, '0', null, '', '0', '{\"thumb\":\"20160105\\/568b31a3297c4.jpg\",\"subthumb\":\"20160105\\/568b31a7622f6.png\",\"image\":\"\",\"icon\":\"\"}', '0', '0', '0', '0', '13123');

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `cmf_role` VALUES ('2', '管理员', null, '1', '管理员', '1449645247', '0', '0');
INSERT INTO `cmf_role` VALUES ('3', '小米服务号', null, '1', '小米服务号', '1452138357', '0', '0');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------
INSERT INTO `cmf_role_user` VALUES ('2', '2');
INSERT INTO `cmf_role_user` VALUES ('3', '3');

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) NOT NULL COMMENT '幻灯片分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '幻灯片名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '幻灯片图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '幻灯片链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '幻灯片描述',
  `slide_content` text COMMENT '幻灯片内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `slide_background` varchar(100) DEFAULT NULL COMMENT '背景颜色',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES ('1', '1', '首页banner', '/data/upload/20160106/568ce450a4683.jpg', '', '#F7646E2', '4', '1', null, '0');
INSERT INTO `cmf_slide` VALUES ('2', '1', '首页banner2', '/data/upload/20151223/567a601141ea9.jpg', '', '#F7646E', '4', '0', null, '0');
INSERT INTO `cmf_slide` VALUES ('3', '1', '首页banner3', '/data/upload/20160106/568cc0cab2188.jpg', '', '#F7646E', '4', '0', null, '0');
INSERT INTO `cmf_slide` VALUES ('4', '2', '解决方案', '/data/upload/20151224/567bb51d7f28d.jpg', '', '', null, '1', null, '0');
INSERT INTO `cmf_slide` VALUES ('7', '3', '产品中心', '/data/upload/20160106/568cc152102ad.jpg', '', '#1a84c7', null, '1', null, '0');
INSERT INTO `cmf_slide` VALUES ('12', '6', '关于纳网', '/data/upload/20160107/568dc999c7711.jpg', '', '', null, '1', null, '0');
INSERT INTO `cmf_slide` VALUES ('11', '5', '成为代理', '/data/upload/20151229/56827cdb6d92e.jpg', '', '', null, '1', null, '0');
INSERT INTO `cmf_slide` VALUES ('13', '3', '产品中心2', '/data/upload/20160106/568cc15dcccee.jpg', '', '#1a84c7', null, '1', null, '0');
INSERT INTO `cmf_slide` VALUES ('15', '1', 'test', '/data/upload/20160106/568cc0fede481.jpg', '', '', null, '0', null, '0');
INSERT INTO `cmf_slide` VALUES ('16', '3', '1', '/data/upload/20160104/568a0e049fb76.jpg', '', '', null, '1', null, '0');

-- ----------------------------
-- Table structure for cmf_slide_cat
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_cat`;
CREATE TABLE `cmf_slide_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '幻灯片分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `cat_position_id` int(2) DEFAULT NULL COMMENT '位置ID',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='幻灯片分类表';

-- ----------------------------
-- Records of cmf_slide_cat
-- ----------------------------
INSERT INTO `cmf_slide_cat` VALUES ('1', '首页Banner', '', '首页Banner', '1', '1');
INSERT INTO `cmf_slide_cat` VALUES ('2', '解决方案Banner', '', '', '1', '2');
INSERT INTO `cmf_slide_cat` VALUES ('3', '产品中心', '', '产品中心列表', '1', '3');
INSERT INTO `cmf_slide_cat` VALUES ('5', '成为代理Banner', '', '1', '1', '4');
INSERT INTO `cmf_slide_cat` VALUES ('6', '关于纳网Banner', '', '', '1', '5');
INSERT INTO `cmf_slide_cat` VALUES ('7', 'test', '', '', '1', '1');

-- ----------------------------
-- Table structure for cmf_terms
-- ----------------------------
DROP TABLE IF EXISTS `cmf_terms`;
CREATE TABLE `cmf_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Portal 文章分类表';

-- ----------------------------
-- Records of cmf_terms
-- ----------------------------
INSERT INTO `cmf_terms` VALUES ('1', '解决方案', '', 'article', '解决方案', '0', '0', '0-1', '解决方案', '解决方案', '解决方案', 'list', 'article', '0', '1');
INSERT INTO `cmf_terms` VALUES ('2', '产品介绍', '', 'article', '产品介绍', '0', '0', '0-2', '产品介绍', '产品介绍', '产品介绍', 'list_masonry', 'article', '0', '1');

-- ----------------------------
-- Table structure for cmf_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `cmf_term_relationships`;
CREATE TABLE `cmf_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Portal 文章分类对应表';

-- ----------------------------
-- Records of cmf_term_relationships
-- ----------------------------
INSERT INTO `cmf_term_relationships` VALUES ('13', '13', '2', '2', '1');
INSERT INTO `cmf_term_relationships` VALUES ('14', '14', '2', '1', '1');
INSERT INTO `cmf_term_relationships` VALUES ('3', '3', '2', '7', '0');
INSERT INTO `cmf_term_relationships` VALUES ('4', '4', '2', '2', '0');
INSERT INTO `cmf_term_relationships` VALUES ('5', '5', '2', '5', '0');
INSERT INTO `cmf_term_relationships` VALUES ('12', '12', '2', '8', '1');
INSERT INTO `cmf_term_relationships` VALUES ('7', '7', '2', '3', '0');
INSERT INTO `cmf_term_relationships` VALUES ('8', '8', '1', '1', '0');
INSERT INTO `cmf_term_relationships` VALUES ('9', '9', '1', '6', '1');
INSERT INTO `cmf_term_relationships` VALUES ('10', '10', '1', '4', '1');
INSERT INTO `cmf_term_relationships` VALUES ('11', '11', '1', '3', '1');
INSERT INTO `cmf_term_relationships` VALUES ('15', '15', '1', '0', '0');

-- ----------------------------
-- Table structure for cmf_users
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users`;
CREATE TABLE `cmf_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_users
-- ----------------------------
INSERT INTO `cmf_users` VALUES ('1', 'admin', '###3540210a3f2012557e1e3538534fda1a', 'admin', 'luwenbin8023@126.com', '', null, '0', null, null, '127.0.0.1', '2016-01-11 10:28:56', '2015-12-09 10:13:17', '', '1', '0', '1', '0', '');
INSERT INTO `cmf_users` VALUES ('2', 'admin1', '###3540210a3f2012557e1e3538534fda1a', '', 'lu@126.com', '', null, '0', null, null, '127.0.0.1', '2016-01-07 09:26:02', '2015-12-09 15:14:30', '', '1', '0', '1', '0', '');
INSERT INTO `cmf_users` VALUES ('3', 'xiaomi', '###fbc41d5287ba2738353f700aee243350', '', 'luwenbin@nawang.cn', '', null, '0', null, null, '127.0.0.1', '2016-01-07 14:43:27', '2016-01-07 11:46:55', '', '1', '0', '1', '0', '');

-- ----------------------------
-- Table structure for cmf_user_favorites
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorites`;
CREATE TABLE `cmf_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL COMMENT '用户 id',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

-- ----------------------------
-- Records of cmf_user_favorites
-- ----------------------------
