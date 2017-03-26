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
-- 表的结构 `obj_news`
--

CREATE TABLE IF NOT EXISTS `obj_news` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '50',
  PRIMARY KEY (`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `obj_news`
--

INSERT INTO `obj_news` (`news_id`, `catid`, `title`, `small_title`, `title_font_color`, `thumb`, `keywords`, `description`, `posids`, `listorder`, `status`, `copyfrom`, `username`, `create_time`, `update_time`, `count`) VALUES
(1, 8, '王鸥感慨80后压力大：我也在租房挣钱养活自己', '我也在租房挣钱养活自己', '#5674ed', './upload/2017/02/25/58b0d96b0d038.jpg', '80后', '80后夫妻买房难、职场动荡、孩子给谁带、老人也要哄……', '', 0, 1, '0', '李阳', 1487985054, 0, 58),
(2, 8, '马东何炅高晓松叫停选手 超女冠军澄清假唱事件', '马东何炅高晓松叫停选手 超女冠军澄清假唱事件', '#5674ed', './upload/2017/02/25/58b0d9d2c709d.jpg', '超女冠军澄清假唱事件', '超女冠军澄清假唱事件', '', 0, 1, '0', '李阳', 1487985132, 0, 53),
(3, 8, '宋慧乔赴台出席代言活动笑容甜美 自爆私下不爱化妆', '宋慧乔赴台出席代言活动笑容甜美', '#5674ed', './upload/2017/02/25/58b0da3ac8208.jpg', '宋慧乔', '宋慧乔赴台出席代言活动笑容甜美', '', 0, 1, '0', '李阳', 1487985244, 0, 52),
(4, 8, '《乐高蝙蝠侠大电影》北美破亿 登顶周末票房榜', '《乐高蝙蝠侠大电影》', '#5674ed', './upload/2017/02/25/58b0da7e6b8ef.jpg', '中国巨幕3D', '爆笑动画电影《乐高蝙蝠侠大电影》已定于2017年3月3日国内上映。电影将以2D、3D、IMAX3D和中国巨幕3D版本同步上映。', '', 0, 1, '0', '李阳', 1487985309, 0, 52),
(5, 8, '这部充满男性荷尔蒙的燃片，让沉寂多年的他咸鱼翻身！', '咸鱼翻身', '', './upload/2017/02/25/58b0dad6f157f.jpg', '血战钢锯岭', '血战钢锯岭', '', 0, 1, '0', '李阳', 1487985404, 0, 53),
(6, 7, '川普声称：中国是“货币操纵的大冠军”', '中国是“货币操纵的大冠军”', '', './upload/2017/02/25/58b0db3fad231.jpg', '中国是“货币操纵的大冠军”', '2月24日路透社称，美国总统特朗普周四接受路透采访时称，中国是“货币操纵的大冠军”，而此前数小时他的新财长努钦刚刚承诺，将采取更有条理的方式来分析中国的外汇操作。', '', 0, 1, '0', '李阳', 1487985508, 0, 57),
(7, 7, '借口？！特朗普：对朝鲜射弹很生气 或加速为日韩建反导', '日韩建反导', '', './upload/2017/02/25/58b0db8614b26.jpg', '特朗普 中国  国家安全', '特朗普还批评称，中国能够"轻而易举"地解决朝鲜试验带来的国家安全问题，但该国“不愿这么做”。', '', 0, 1, '0', '李阳', 1487985637, 0, 52),
(8, 7, '日本为何凭借三八大盖在我国横行霸道八年？', '三八大盖', '', './upload/2017/02/25/58b0dc08a8be9.jpg', '在抗战时期日本所使用的枪支一般是三八大盖', '在抗战时期日本所使用的枪支一般是三八大盖，冲锋用的也就是歪把子机枪，他们所用的炮弹是炮弹筒。这些对于当时二战的其他国家来说其实根本就不值一提的武器。就比如和当时同时法西斯的德国比吧。', '', 0, 1, '0', '李阳', 1487985711, 0, 52),
(9, 7, '今年是否举行建军90周年大阅兵？国防部回应(1)', '90周年大阅兵', '#ed568b', './upload/2017/02/25/58b0dc4ef3b61.jpg', '解放军超三分之一“9·3”阅兵将军领队已履新职', '解放军超三分之一“9·3”阅兵将军领队已履新职', '', 0, 1, '0', '李阳', 1487985778, 0, 54),
(10, 9, '毫不费力玩性感 露肩毛衣的轻松穿法', '一天一look', '#ed568b', './upload/2017/02/25/58b0dca5c8101.jpg', '黑色皮裤和黑色配饰', '想要性感又不想太夸张？穿嘉姐推荐的露肩毛衣吧！用黑色皮裤和黑色配饰把视线集中在露出的香肩和锁骨上，遮住你春节攒下的肥肉，用不经意的小性感征服他的心~', '', 0, 1, '0', '李阳', 1487985867, 0, 51),
(11, 9, '现在就流行 | 这种“不正经”的牛仔裤', '“不正经”的牛仔裤', '', './upload/2017/02/25/58b0df3690421.jpg', '前两天，代表大英帝国皇室形象的凯特王妃和威廉王子CP一起去印度乡下访问，王妃身上', '前两天，代表大英帝国皇室形象的凯特王妃和威廉王子CP一起去印度乡下访问，王妃身上的那件机车牛仔裤，虽然颜色也像吃了土一样朴素，但还是瞬间秒掉了周围一堆老干部style高腰裤。', '', 0, 1, '0', '李阳', 1487986578, 0, 52),
(12, 10, 'Linux定时任务', 'Linux定时任务', '#ed568b', './upload/2017/02/25/58b0dfc5a3c33.png', 'linux定时任务的设置', 'linux定时任务的设置', '', 0, 1, '0', '李阳', 1487986681, 0, 50),
(13, 10, 'VisualSvn Server安装和使用', 'VisualSvn Server', '', './upload/2017/02/25/58b0e05281c02.png', 'VisualSvn Server安装和使用', 'VisualSvn Server安装和使用', '', 0, 1, '0', '李阳', 1487986934, 0, 54),
(14, 10, 'redis 秒杀的实现', '秒杀', '#5674ed', './upload/2017/03/03/58b85485cdd42.jpg', 'redis', '电商秒杀', '', 0, 1, '0', '李阳', 1488475293, 0, 50);
