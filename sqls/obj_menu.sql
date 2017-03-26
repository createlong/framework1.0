-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2017 年 03 月 22 日 23:50
-- 服务器版本: 5.6.23
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_liyangceshi`
--

-- --------------------------------------------------------

--
-- 表的结构 `obj_menu`
--

CREATE TABLE IF NOT EXISTS `obj_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(6) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单名',
  `createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `m` varchar(11) NOT NULL DEFAULT '' COMMENT '模型',
  `c` char(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `f` varchar(11) NOT NULL DEFAULT '' COMMENT '方法',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1为前台 2为后台',
  `listorder` tinyint(2) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `data` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`menu_id`),
  KEY `parent_id` (`parent_id`),
  KEY `listorder` (`listorder`),
  KEY `module` (`m`,`c`,`f`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `obj_menu`
--

INSERT INTO `obj_menu` (`menu_id`, `parent_id`, `name`, `createtime`, `updatetime`, `m`, `c`, `f`, `type`, `listorder`, `status`, `data`) VALUES
(1, 0, '菜单管理', 1487947517, 0, 'admin', 'menu', 'index', 1, 50, 1, ''),
(2, 0, '文章管理', 1487947559, 0, 'admin', 'content', 'index', 1, 50, 1, ''),
(3, 0, '推荐位管理', 1487947575, 0, 'admin', 'position', 'index', 1, 50, 1, ''),
(4, 0, '推荐位内容管理', 1487947596, 0, 'admin', 'positioncontent', 'index', 1, 50, 1, ''),
(5, 0, '用户管理', 1487947619, 0, 'admin', 'user', 'index', 1, 50, 1, ''),
(6, 0, '配置设置', 1487949032, 0, 'admin', 'basic', 'index', 1, 50, 1, ''),
(7, 0, '新闻', 1487949224, 0, 'home', 'cat', 'index', 2, 50, 1, ''),
(8, 0, '娱乐', 1487949263, 0, 'home', 'cat', 'index', 2, 50, 1, ''),
(9, 0, '生活', 1487949298, 0, 'home', 'cat', 'index', 2, 50, 1, ''),
(10, 0, '资料', 1487949317, 0, 'home', 'cat', 'index', 2, 50, 1, ''),
(11, 0, '首页', 1487949336, 0, 'home', 'cat', 'index', 2, 50, 1, '');
