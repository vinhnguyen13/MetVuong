/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : metvuong

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-09-30 11:36:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//controller', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//crud', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//extension', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//form', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//model', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//module', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/asset/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/asset/compress', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/asset/template', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/flush', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/flush-all', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/flush-schema', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/fixture/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/fixture/load', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/fixture/unload', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/action', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/hello/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/hello/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/help/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/help/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/message/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/message/config', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/message/extract', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/down', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/history', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/mark', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/new', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/redo', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/to', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/up', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/captcha', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/change-own-password', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email-receive', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-registration-email', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/login', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/logout', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery-receive', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/registration', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/refresh-routes', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-permissions', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-routes', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-permissions', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-roles', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set-roles', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/change-password', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('Admin', '1', 'Admin', null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('assignRolesToUsers', '2', 'Assign roles to users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('bindUserToIp', '2', 'Bind user to IP', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('changeOwnPassword', '2', 'Change own password', null, null, '1426062189', '1426062189', 'userCommonPermissions');
INSERT INTO `auth_item` VALUES ('changeUserPassword', '2', 'Change user password', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('commonPermission', '2', 'Common permission', null, null, '1426062188', '1426062188', null);
INSERT INTO `auth_item` VALUES ('createUsers', '2', 'Create users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('deleteUsers', '2', 'Delete users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('editUserEmail', '2', 'Edit user email', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('editUsers', '2', 'Edit users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewRegistrationIp', '2', 'View registration IP', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserEmail', '2', 'View user email', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserRoles', '2', 'View user roles', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUsers', '2', 'View users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewVisitLog', '2', 'View visit log', null, null, '1426062189', '1426062189', 'userManagement');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('changeOwnPassword', '/user-management/auth/change-own-password');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set-roles');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/grid-page-size');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/index');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/view');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-activate');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-deactivate');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/bulk-delete');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', '/user-management/user/change-password');
INSERT INTO `auth_item_child` VALUES ('createUsers', '/user-management/user/create');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/delete');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/grid-page-size');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/index');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/update');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/view');
INSERT INTO `auth_item_child` VALUES ('Admin', 'assignRolesToUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeOwnPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeUserPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'createUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'deleteUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'editUsers');
INSERT INTO `auth_item_child` VALUES ('editUserEmail', 'viewUserEmail');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUserRoles');
INSERT INTO `auth_item_child` VALUES ('Admin', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('createUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('editUsers', 'viewUsers');

-- ----------------------------
-- Table structure for `auth_item_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_group`;
CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_group
-- ----------------------------
INSERT INTO `auth_item_group` VALUES ('userCommonPermissions', 'User common permission', '1426062189', '1426062189');
INSERT INTO `auth_item_group` VALUES ('userManagement', 'User management', '1426062189', '1426062189');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `blog_catalog`;
CREATE TABLE `blog_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `is_nav` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '50',
  `page_size` int(11) NOT NULL DEFAULT '10',
  `template` varchar(255) NOT NULL DEFAULT 'post',
  `redirect_url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_nav` (`is_nav`),
  KEY `sort_order` (`sort_order`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_catalog
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_comment`
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `blog_comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_post`
-- ----------------------------
DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  KEY `FK_post_user` (`user_id`),
  CONSTRAINT `blog_post_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `blog_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blog_post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_tag`
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `frequency` (`frequency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `cms_catalog`;
CREATE TABLE `cms_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `brief` varchar(1022) DEFAULT NULL,
  `content` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `is_nav` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '50',
  `page_type` varchar(255) NOT NULL DEFAULT 'page',
  `page_size` int(11) NOT NULL DEFAULT '10',
  `template_list` varchar(255) NOT NULL DEFAULT 'list',
  `template_show` varchar(255) NOT NULL DEFAULT 'show',
  `template_page` varchar(255) NOT NULL DEFAULT 'page',
  `redirect_url` varchar(255) DEFAULT NULL,
  `click` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_nav` (`is_nav`),
  KEY `sort_order` (`sort_order`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_catalog
-- ----------------------------
INSERT INTO `cms_catalog` VALUES ('1', '0', 'Static Page', 'Static Page', '', '<p>Static Page</p>\r\n', '', '', '', null, '1', '50', 'page', '10', 'list', 'show', 'page', '', '0', '1', '1438335832', '1442910007');
INSERT INTO `cms_catalog` VALUES ('2', '0', 'News', 'NEWS', '', '<p>News</p>\r\n', '', '', '', null, '1', '50', 'list', '10', 'list', 'show', 'page', '', '0', '1', '1438336780', '1442822522');
INSERT INTO `cms_catalog` VALUES ('3', '0', 'About Us', 'ABOUT', '', '<p>About Us</p>\r\n', '', '', '', null, '1', '50', 'list', '10', 'list', 'show', 'page', '', '0', '1', '1442800235', '1442826958');

-- ----------------------------
-- Table structure for `cms_show`
-- ----------------------------
DROP TABLE IF EXISTS `cms_show`;
CREATE TABLE `cms_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `surname` varchar(128) DEFAULT NULL,
  `brief` varchar(1022) DEFAULT NULL,
  `content` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `template_show` varchar(255) NOT NULL DEFAULT 'show',
  `author` varchar(255) NOT NULL DEFAULT 'admin',
  `click` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `cms_show_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `cms_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_show
-- ----------------------------
INSERT INTO `cms_show` VALUES ('4', '2', 'Lorem ipsum dolor sit amet dolor sit amet', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet', 'Yii2 News 1', '', '<p>Republican Party leaders, whose presidential nominees have not won a majority of female voters since 1988, are setting their sights on making electoral gains among women in the 2016 presidential race and trying to close the gender gap in swing states like Florida and Colorado. But the remarks and tone about women at Thursday&rsquo;s debate &mdash; and the sight of 10 male candidates owning the stage &mdash; may have only damaged the party&rsquo;s standing among female voters in the 2016 general election, according to pollsters and some Republican leaders.<br />\r\n<br />\r\n&ldquo;So much of the debate was all about appealing to male voters and other parts of the Republican base, rather than doing anything to help the party&rsquo;s general election goal of trying to be more inclusive,&rdquo; said Lee M. Miringoff, director of the Marist College Institute for Public Opinion. &ldquo;By being callous or showing disregard toward women, and then laughing it off with a charge of political correctness or simply saying they&rsquo;re taking conservative stands, the Republicans could win over some of the older male Republican voters out there. But what about female voters?&rdquo;<br />\r\n<br />\r\nDemocrats were gleeful at the tone of the debate, already imagining future campaign advertisements featuring debate cutaways with Mr. Rubio saying that future Americans will &ldquo;call us barbarians for murdering millions of babies.&rdquo;<br />\r\n<br />\r\nIn the short term, however, the political peril for the Republican candidates may not be so grave. They are largely focused now on winning over likely Republican voters who will decide the party&rsquo;s nomination &mdash; an electorate that tends to skew male and older in many key states.<br />\r\n<br />\r\nRecent polls of Republican voters indicate that Mr. Trump is performing strongly among men and to a slightly lesser extent among women, though sizable numbers of women also say they would not support him. It remains an open question whether Mr. Trump offended his supporters, or many other likely primary voters, by refusing to renounce his past descriptions of women as &ldquo;fat pigs&rdquo; during the debate; indeed, pollsters say he may have struck a chord with some voters by saying he doesn&rsquo;t &ldquo;have time for political correctness&rdquo; when he was asked about his remarks.</p>\r\n', '', '', '', '04.png', 'show', 'admin', '0', '1', '1438336814', '2147483647', '0', '1');
INSERT INTO `cms_show` VALUES ('5', '3', 'Lancaster Nguyen Trai', 'lancaster-nguyen-trai', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '04.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');
INSERT INTO `cms_show` VALUES ('6', '3', 'Lancaster Le Thanh Ton', 'lancaster-le-thanh-ton', '', '', '<p>ancaster offers you a sweeping panoramic view of the city skyline from virtually every window. Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.In addition, Lancaster also offers you all of the exceptional amenities and renowned white-glove services of Trung Thuy Group, promising to be the ideal place for both personal life and business..</p>\r\n', '', '', '', '04.png', 'show', 'admin', '0', '1', '0', '2147483647', '0', '1');
INSERT INTO `cms_show` VALUES ('7', '2', 'Lorem ipsum dolor sit amet dolor sit amet 2', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet-2', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '01.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');
INSERT INTO `cms_show` VALUES ('8', '2', 'Lorem ipsum dolor sit amet dolor sit amet 3', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet-3', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '02.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');
INSERT INTO `cms_show` VALUES ('9', '2', 'Lorem ipsum dolor sit amet dolor sit amet 4', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet-4', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '03.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');

-- ----------------------------
-- Table structure for `gallery`
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES ('1', 'Apartments', 'Apartments', '1');
INSERT INTO `gallery` VALUES ('2', 'Amenities', 'Amenities', '1');
INSERT INTO `gallery` VALUES ('3', 'Views', 'Views', '1');
INSERT INTO `gallery` VALUES ('4', 'Neighborhood', 'Neighborhood', '1');

-- ----------------------------
-- Table structure for `gallery_photo`
-- ----------------------------
DROP TABLE IF EXISTS `gallery_photo`;
CREATE TABLE `gallery_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `thumbs` varchar(255) DEFAULT NULL,
  `settings` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gallery_photo
-- ----------------------------
INSERT INTO `gallery_photo` VALUES ('15', '3', 'North', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35603b7f34599a.png', null, 'image/png', '1147751', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35603b7f34599a-120x80.png\";s:6:\"medium\";s:26:\"35603b7f34599a-400x300.png\";s:5:\"large\";s:26:\"35603b7f34599a-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('16', '3', 'East', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35603b7f7e8f65.png', null, 'image/png', '904738', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35603b7f7e8f65-120x80.png\";s:6:\"medium\";s:26:\"35603b7f7e8f65-400x300.png\";s:5:\"large\";s:26:\"35603b7f7e8f65-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('18', '3', 'South', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35603b808876de.png', null, 'image/png', '1537808', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35603b808876de-120x80.png\";s:6:\"medium\";s:26:\"35603b808876de-400x300.png\";s:5:\"large\";s:26:\"35603b808876de-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('20', '2', 'Swimming Pool', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8bfa4704.png', null, 'image/png', '1043911', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8bfa4704-120x80.png\";s:6:\"medium\";s:26:\"25603b8bfa4704-400x300.png\";s:5:\"large\";s:26:\"25603b8bfa4704-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('21', '2', 'Fitness Center', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8c2d4137.png', null, 'image/png', '904738', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8c2d4137-120x80.png\";s:6:\"medium\";s:26:\"25603b8c2d4137-400x300.png\";s:5:\"large\";s:26:\"25603b8c2d4137-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('22', '2', 'Healthy Care', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8c5615ad.png', null, 'image/png', '1537808', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8c5615ad-120x80.png\";s:6:\"medium\";s:26:\"25603b8c5615ad-400x300.png\";s:5:\"large\";s:26:\"25603b8c5615ad-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('23', '2', 'Skybar', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8c6e95be.png', null, 'image/png', '1147751', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8c6e95be-120x80.png\";s:6:\"medium\";s:26:\"25603b8c6e95be-400x300.png\";s:5:\"large\";s:26:\"25603b8c6e95be-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('26', '4', 'Restaurants', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45603d30b47531.png', null, 'image/png', '904738', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45603d30b47531-120x80.png\";s:6:\"medium\";s:26:\"45603d30b47531-400x300.png\";s:5:\"large\";s:26:\"45603d30b47531-800x600.png\";}', '{\"displayCaption\":\"1\"}');
INSERT INTO `gallery_photo` VALUES ('29', '1', 'Living Room', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3d218434.png', null, 'image/png', '1537808', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3d218434-120x80.png\";s:6:\"medium\";s:26:\"15603d3d218434-400x300.png\";s:5:\"large\";s:26:\"15603d3d218434-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('30', '1', 'Kitchen', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3d497404.png', null, 'image/png', '1147751', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3d497404-120x80.png\";s:6:\"medium\";s:26:\"15603d3d497404-400x300.png\";s:5:\"large\";s:26:\"15603d3d497404-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('31', '1', 'Bathroom', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3dd1dff1.png', null, 'image/png', '1043911', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3dd1dff1-120x80.png\";s:6:\"medium\";s:26:\"15603d3dd1dff1-400x300.png\";s:5:\"large\";s:26:\"15603d3dd1dff1-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('32', '1', 'Bedroom', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3df1a1c6.png', null, 'image/png', '904738', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3df1a1c6-120x80.png\";s:6:\"medium\";s:26:\"15603d3df1a1c6-400x300.png\";s:5:\"large\";s:26:\"15603d3df1a1c6-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('33', '3', 'West', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35604c3ded6c22.png', null, 'image/png', '479123', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35604c3ded6c22-120x80.png\";s:6:\"medium\";s:26:\"35604c3ded6c22-400x300.png\";s:5:\"large\";s:26:\"35604c3ded6c22-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('34', '4', 'Markets', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c43125477.png', null, 'image/png', '1043911', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c43125477-120x80.png\";s:6:\"medium\";s:26:\"45604c43125477-400x300.png\";s:5:\"large\";s:26:\"45604c43125477-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('35', '4', 'Shopping', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c433d5552.png', null, 'image/png', '1147751', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c433d5552-120x80.png\";s:6:\"medium\";s:26:\"45604c433d5552-400x300.png\";s:5:\"large\";s:26:\"45604c433d5552-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('36', '4', 'Entertaiment', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c43609fb2.png', null, 'image/png', '1537808', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c43609fb2-120x80.png\";s:6:\"medium\";s:26:\"45604c43609fb2-400x300.png\";s:5:\"large\";s:26:\"45604c43609fb2-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('37', '4', 'Parks', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c472e7e83.png', null, 'image/png', '972316', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c472e7e83-120x80.png\";s:6:\"medium\";s:26:\"45604c472e7e83-400x300.png\";s:5:\"large\";s:26:\"45604c472e7e83-800x600.png\";}', null);

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name_ascii` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('af-ZA', 'af', 'za', 'Afrikaans', 'Afrikaans', '1');
INSERT INTO `language` VALUES ('ar-AR', 'ar', 'ar', '‏العربية‏', 'Arabic', '0');
INSERT INTO `language` VALUES ('az-AZ', 'az', 'az', 'Azərbaycan dili', 'Azerbaijani', '0');
INSERT INTO `language` VALUES ('be-BY', 'be', 'by', 'Беларуская', 'Belarusian', '0');
INSERT INTO `language` VALUES ('bg-BG', 'bg', 'bg', 'Български', 'Bulgarian', '0');
INSERT INTO `language` VALUES ('bn-IN', 'bn', 'in', 'বাংলা', 'Bengali', '0');
INSERT INTO `language` VALUES ('bs-BA', 'bs', 'ba', 'Bosanski', 'Bosnian', '0');
INSERT INTO `language` VALUES ('ca-ES', 'ca', 'es', 'Català', 'Catalan', '0');
INSERT INTO `language` VALUES ('cs-CZ', 'cs', 'cz', 'Čeština', 'Czech', '0');
INSERT INTO `language` VALUES ('cy-GB', 'cy', 'gb', 'Cymraeg', 'Welsh', '0');
INSERT INTO `language` VALUES ('da-DK', 'da', 'dk', 'Dansk', 'Danish', '0');
INSERT INTO `language` VALUES ('de-DE', 'de', 'de', 'Deutsch', 'German', '0');
INSERT INTO `language` VALUES ('el-GR', 'el', 'gr', 'Ελληνικά', 'Greek', '0');
INSERT INTO `language` VALUES ('en-GB', 'en', 'gb', 'English (UK)', 'English (UK)', '1');
INSERT INTO `language` VALUES ('en-PI', 'en', 'pi', 'English (Pirate)', 'English (Pirate)', '0');
INSERT INTO `language` VALUES ('en-UD', 'en', 'ud', 'English (Upside Down)', 'English (Upside Down)', '0');
INSERT INTO `language` VALUES ('en-US', 'en', 'us', 'English (US)', 'English (US)', '1');
INSERT INTO `language` VALUES ('eo-EO', 'eo', 'eo', 'Esperanto', 'Esperanto', '0');
INSERT INTO `language` VALUES ('es-ES', 'es', 'es', 'Español (España)', 'Spanish (Spain)', '0');
INSERT INTO `language` VALUES ('es-LA', 'es', 'la', 'Español', 'Spanish', '0');
INSERT INTO `language` VALUES ('et-EE', 'et', 'ee', 'Eesti', 'Estonian', '0');
INSERT INTO `language` VALUES ('eu-ES', 'eu', 'es', 'Euskara', 'Basque', '0');
INSERT INTO `language` VALUES ('fa-IR', 'fa', 'ir', '‏فارسی‏', 'Persian', '0');
INSERT INTO `language` VALUES ('fb-LT', 'fb', 'lt', 'Leet Speak', 'Leet Speak', '0');
INSERT INTO `language` VALUES ('fi-FI', 'fi', 'fi', 'Suomi', 'Finnish', '0');
INSERT INTO `language` VALUES ('fo-FO', 'fo', 'fo', 'Føroyskt', 'Faroese', '0');
INSERT INTO `language` VALUES ('fr-CA', 'fr', 'ca', 'Français (Canada)', 'French (Canada)', '0');
INSERT INTO `language` VALUES ('fr-FR', 'fr', 'fr', 'Français (France)', 'French (France)', '0');
INSERT INTO `language` VALUES ('fy-NL', 'fy', 'nl', 'Frysk', 'Frisian', '0');
INSERT INTO `language` VALUES ('ga-IE', 'ga', 'ie', 'Gaeilge', 'Irish', '0');
INSERT INTO `language` VALUES ('gl-ES', 'gl', 'es', 'Galego', 'Galician', '0');
INSERT INTO `language` VALUES ('he-IL', 'he', 'il', '‏עברית‏', 'Hebrew', '0');
INSERT INTO `language` VALUES ('hi-IN', 'hi', 'in', 'हिन्दी', 'Hindi', '0');
INSERT INTO `language` VALUES ('hr-HR', 'hr', 'hr', 'Hrvatski', 'Croatian', '0');
INSERT INTO `language` VALUES ('hu-HU', 'hu', 'hu', 'Magyar', 'Hungarian', '0');
INSERT INTO `language` VALUES ('hy-AM', 'hy', 'am', 'Հայերեն', 'Armenian', '0');
INSERT INTO `language` VALUES ('id-ID', 'id', 'id', 'Bahasa Indonesia', 'Indonesian', '0');
INSERT INTO `language` VALUES ('is-IS', 'is', 'is', 'Íslenska', 'Icelandic', '0');
INSERT INTO `language` VALUES ('it-IT', 'it', 'it', 'Italiano', 'Italian', '0');
INSERT INTO `language` VALUES ('ja-JP', 'ja', 'jp', '日本語', 'Japanese', '0');
INSERT INTO `language` VALUES ('ka-GE', 'ka', 'ge', 'ქართული', 'Georgian', '0');
INSERT INTO `language` VALUES ('km-KH', 'km', 'kh', 'ភាសាខ្មែរ', 'Khmer', '0');
INSERT INTO `language` VALUES ('ko-KR', 'ko', 'kr', '한국어', 'Korean', '0');
INSERT INTO `language` VALUES ('ku-TR', 'ku', 'tr', 'Kurdî', 'Kurdish', '0');
INSERT INTO `language` VALUES ('la-VA', 'la', 'va', 'lingua latina', 'Latin', '0');
INSERT INTO `language` VALUES ('lt-LT', 'lt', 'lt', 'Lietuvių', 'Lithuanian', '0');
INSERT INTO `language` VALUES ('lv-LV', 'lv', 'lv', 'Latviešu', 'Latvian', '0');
INSERT INTO `language` VALUES ('mk-MK', 'mk', 'mk', 'Македонски', 'Macedonian', '0');
INSERT INTO `language` VALUES ('ml-IN', 'ml', 'in', 'മലയാളം', 'Malayalam', '0');
INSERT INTO `language` VALUES ('ms-MY', 'ms', 'my', 'Bahasa Melayu', 'Malay', '0');
INSERT INTO `language` VALUES ('nb-NO', 'nb', 'no', 'Norsk (bokmål)', 'Norwegian (bokmal)', '0');
INSERT INTO `language` VALUES ('ne-NP', 'ne', 'np', 'नेपाली', 'Nepali', '0');
INSERT INTO `language` VALUES ('nl-NL', 'nl', 'nl', 'Nederlands', 'Dutch', '0');
INSERT INTO `language` VALUES ('nn-NO', 'nn', 'no', 'Norsk (nynorsk)', 'Norwegian (nynorsk)', '0');
INSERT INTO `language` VALUES ('pa-IN', 'pa', 'in', 'ਪੰਜਾਬੀ', 'Punjabi', '0');
INSERT INTO `language` VALUES ('pl-PL', 'pl', 'pl', 'Polski', 'Polish', '0');
INSERT INTO `language` VALUES ('ps-AF', 'ps', 'af', '‏پښتو‏', 'Pashto', '0');
INSERT INTO `language` VALUES ('pt-BR', 'pt', 'br', 'Português (Brasil)', 'Portuguese (Brazil)', '0');
INSERT INTO `language` VALUES ('pt-PT', 'pt', 'pt', 'Português (Portugal)', 'Portuguese (Portugal)', '0');
INSERT INTO `language` VALUES ('ro-RO', 'ro', 'ro', 'Română', 'Romanian', '0');
INSERT INTO `language` VALUES ('ru-RU', 'ru', 'ru', 'Русский', 'Russian', '0');
INSERT INTO `language` VALUES ('sk-SK', 'sk', 'sk', 'Slovenčina', 'Slovak', '0');
INSERT INTO `language` VALUES ('sl-SI', 'sl', 'si', 'Slovenščina', 'Slovenian', '0');
INSERT INTO `language` VALUES ('sq-AL', 'sq', 'al', 'Shqip', 'Albanian', '0');
INSERT INTO `language` VALUES ('sr-RS', 'sr', 'rs', 'Српски', 'Serbian', '0');
INSERT INTO `language` VALUES ('sv-SE', 'sv', 'se', 'Svenska', 'Swedish', '0');
INSERT INTO `language` VALUES ('sw-KE', 'sw', 'ke', 'Kiswahili', 'Swahili', '0');
INSERT INTO `language` VALUES ('ta-IN', 'ta', 'in', 'தமிழ்', 'Tamil', '0');
INSERT INTO `language` VALUES ('te-IN', 'te', 'in', 'తెలుగు', 'Telugu', '0');
INSERT INTO `language` VALUES ('th-TH', 'th', 'th', 'ภาษาไทย', 'Thai', '0');
INSERT INTO `language` VALUES ('tl-PH', 'tl', 'ph', 'Filipino', 'Filipino', '0');
INSERT INTO `language` VALUES ('tr-TR', 'tr', 'tr', 'Türkçe', 'Turkish', '0');
INSERT INTO `language` VALUES ('uk-UA', 'uk', 'ua', 'Українська', 'Ukrainian', '0');
INSERT INTO `language` VALUES ('vi-VN', 'vi', 'vn', 'Tiếng Việt', 'Vietnamese', '0');
INSERT INTO `language` VALUES ('xx-XX', 'xx', 'xx', 'Fejlesztő', 'Developer', '0');
INSERT INTO `language` VALUES ('zh-CN', 'zh', 'cn', '中文(简体)', 'Simplified Chinese (China)', '0');
INSERT INTO `language` VALUES ('zh-HK', 'zh', 'hk', '中文(香港)', 'Traditional Chinese (Hong Kong)', '0');
INSERT INTO `language` VALUES ('zh-TW', 'zh', 'tw', '中文(台灣)', 'Traditional Chinese (Taiwan)', '0');

-- ----------------------------
-- Table structure for `language_source`
-- ----------------------------
DROP TABLE IF EXISTS `language_source`;
CREATE TABLE `language_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language_source
-- ----------------------------
INSERT INTO `language_source` VALUES ('7', 'javascript', 'Translation Language: {name}');
INSERT INTO `language_source` VALUES ('8', 'javascript', 'Save');
INSERT INTO `language_source` VALUES ('9', 'javascript', 'Close');
INSERT INTO `language_source` VALUES ('10', 'javascript', 'Hello!');
INSERT INTO `language_source` VALUES ('11', 'javascript', 'Hello {name}');
INSERT INTO `language_source` VALUES ('12', 'javascript', 'Hello {first_name} {last_name}');

-- ----------------------------
-- Table structure for `language_translate`
-- ----------------------------
DROP TABLE IF EXISTS `language_translate`;
CREATE TABLE `language_translate` (
  `id` int(10) unsigned NOT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `translation` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `language` (`language`),
  CONSTRAINT `language_translate_ibfk_1` FOREIGN KEY (`language`) REFERENCES `language` (`language_id`) ON DELETE CASCADE,
  CONSTRAINT `language_translate_ibfk_2` FOREIGN KEY (`id`) REFERENCES `language_source` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language_translate
-- ----------------------------
INSERT INTO `language_translate` VALUES ('7', 'vi-VN', null);

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1438101640');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1438101785');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1438102235');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1438102237');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1438102243');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1438102245');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1438102246');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1438102246');
INSERT INTO `migration` VALUES ('m141002_030233_translate_manager', '1438335293');
INSERT INTO `migration` VALUES ('m141208_201480_blog_init', '1438336167');
INSERT INTO `migration` VALUES ('m141208_201481_cms_init', '1438334883');
INSERT INTO `migration` VALUES ('m141208_201488_setting_init', '1438337955');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1438102247');
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', '1438102248');
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', '1438102252');
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', '1438102253');

-- ----------------------------
-- Table structure for `profile`
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('2', 'Vinh', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '');
INSERT INTO `profile` VALUES ('3', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('73p3dqhpsdm0nc89qu3vi3a044', '1443589181', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A363A222F61646D696E223B5F5F69647C693A313B616374696F6E732D72656469726563747C733A31373A222F61646D696E2F757365722F61646D696E223B);
INSERT INTO `session` VALUES ('9feq2eqc07241gu1pb6ffl0kq5', '1443414078', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('eu9ogm1h4c3t91vfi7m15d56p7', '1442393160', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B);
INSERT INTO `session` VALUES ('q2kt7lok5eamv9ump92sqffq40', '1443428639', 0x5F5F666C6173687C613A303A7B7D);

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `store_range` varchar(255) DEFAULT NULL,
  `store_dir` varchar(255) DEFAULT NULL,
  `value` text,
  `sort_order` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `code` (`code`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', '0', 'info', 'group', '', '', '', '1');
INSERT INTO `setting` VALUES ('2', '0', 'basic', 'group', '', '', '', '2');
INSERT INTO `setting` VALUES ('3', '0', 'smtp', 'group', '', '', '', '3');
INSERT INTO `setting` VALUES ('4', '1', 'siteName', 'text', '', '', 'Your Site', '1');
INSERT INTO `setting` VALUES ('5', '1', 'siteTitle', 'text', '', '', 'Your Site Title', '2');
INSERT INTO `setting` VALUES ('6', '1', 'siteKeyword', 'text', '', '', 'Your Site Keyword', '3');
INSERT INTO `setting` VALUES ('7', '2', 'timezone', 'select', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `setting` VALUES ('8', '2', 'commentCheck', 'select', '0,1', '', '1', '2');
INSERT INTO `setting` VALUES ('9', '3', 'smtpHost', 'text', '', '', 'localhost', '1');
INSERT INTO `setting` VALUES ('10', '3', 'smtpPort', 'text', '', '', '', '2');
INSERT INTO `setting` VALUES ('11', '3', 'smtpUser', 'text', '', '', '', '3');
INSERT INTO `setting` VALUES ('12', '3', 'smtpPassword', 'password', '', '', '', '4');
INSERT INTO `setting` VALUES ('13', '3', 'smtpMail', 'text', '', '', '', '5');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', 'U9V3YHPopgiEfyvvl4ovCrOscZaoOwVv', '1438102356', '0');
INSERT INTO `token` VALUES ('2', 'Zra290fQEAxIlkB-tPXxYUCiL4lPMqKy', '1438104800', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_email` (`email`),
  UNIQUE KEY `user_unique_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'superadmin', 'quangvinhit2007@gmail.com', '$2y$12$dM/nHKQdlSl8Af8BbdHN1e6glbi1raY7Torsrthmd84dVQcjWzXSO', 'fgFGWWvuymLapEpJTrr0wG6UZGD79Bsc', '1438102356', null, null, '127.0.0.1', '1438102356', '1438102356', '0');
INSERT INTO `user` VALUES ('2', 'vinhnguyen', 'quangvinhit@gmail.com', '$2y$12$ScqjOXSqp0gKZmWAEvppYebj88PMCaZ1hPp4PqYm2YILziYb7sCdS', 'fgFGWWvuymLapEpJTrr0wG6UZGD79Bsc', '1438104800', null, null, '127.0.0.1', '1438104800', '1438106599', '0');
INSERT INTO `user` VALUES ('3', 'vinhnguyen2', 'quangvinhit2010@gmail.com', '$2y$12$7BoGTWhMTHLrT1CDvjUAy.mxhPNFBGdC14n443hP0QBQCsT4nnpEW', 'okVO0y3EuzF9A-TXVqjqd0UZZaWzAbDl', '1438668322', null, null, '127.0.0.1', '1438668323', '1438668323', '0');
