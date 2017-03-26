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
-- 表的结构 `obj_user`
--

CREATE TABLE IF NOT EXISTS `obj_users` (
  `user_id` tinyint(6) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pwd` char(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `user_email` VARCHAR(100) not null default '' COMMENT '用户邮箱',
  `register_time` int(11) not null default '0' COMMENT '注册时间',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '登陆时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `lastlogintime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '登陆ip',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `token` VARCHAR(200) not null default '' COMMENT '密钥',
  PRIMARY KEY (`user_id`),
  KEY `obj_user_name_email`(`user_name`,`user_email`),
  KEY `obj_user_name_pwd`(`user_name`,`user_pwd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `obj_user`
--
--
-- INSERT INTO `obj_users` (`user_id`, `user_name`, `user_pwd`, `login_time`, `create_time`, `lastlogintime`, `login_ip`, `status`) VALUES
-- (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0, 1487910541, 1487910541, '', 1);
