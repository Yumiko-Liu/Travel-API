/*
Navicat MySQL Data Transfer

Source Server         : yumiko
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-09 09:35:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for destination
-- ----------------------------
DROP TABLE IF EXISTS `destination`;
CREATE TABLE `destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) DEFAULT NULL,
  `name_zh` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of destination
-- ----------------------------

-- ----------------------------
-- Table structure for guidenotes
-- ----------------------------
DROP TABLE IF EXISTS `guidenotes`;
CREATE TABLE `guidenotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `pubtime` varchar(255) DEFAULT NULL,
  `page_view` int(11) DEFAULT NULL,
  `like_num` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `content` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of guidenotes
-- ----------------------------
INSERT INTO `guidenotes` VALUES ('1', 'demo1', 'http://localhost:3000/files/-SvIC5lQwlLj6KWpFvto2LQp.jpg', '2017-10-10 18:03:20', '5', '8', 'Tokyo', 'modify<p><br></p>', '0');
INSERT INTO `guidenotes` VALUES ('2', 'this is a text', 'undefined', '1508915810000', '0', '0', 'Tokyo', '<p><b><font color=\"#f9963b\">hello</font></b></p><p><b><font color=\"#f9963b\">哈哈哈哈哈哈哈</font></b></p>', '1');
INSERT INTO `guidenotes` VALUES ('3', 'text2', 'http://localhost:3000/files/mGQa4gYnKMNR35OF8jkd6xG1.jpeg', '1508916034000', '0', '0', '京都', '<p>啊大大大爱犯困司法部i</p><p><img src=\"http://localhost:3000/files/R3f8br3k9xNrvmfkV_vSRzFs.jpg\" style=\"max-width:100%;\"><br></p>', '1');
INSERT INTO `guidenotes` VALUES ('4', '啊啊啊', 'https://p1-q.mafengwo.net/s9/M00/4D/12/wKgBs1e0VXqAGmV4AA5SJeYGjAs00.jpeg?imageMogr2%2Fthumbnail%2F%21690x276r%2Fgravity%2FCenter%2Fcrop%2F%21690x276%2Fquality%2F100', '1508918440000', '0', '0', '啊啊啊', '<p>看、</p><p><br></p>', '1');
INSERT INTO `guidenotes` VALUES ('5', '孤独的美食家之海街日记-二刷东京深度游', 'https://p1-q.mafengwo.net/s9/M00/4D/12/wKgBs1e0VXqAGmV4AA5SJeYGjAs00.jpeg?imageMogr2%2Fthumbnail%2F%21690x276r%2Fgravity%2FCenter%2Fcrop%2F%21690x276%2Fquality%2F100', '1508924309000', '0', '0', '东京', '<p>时隔一年，又来到了<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>。这次完全是临时起意，跟自己说，如果午睡醒来，最后几张机票还在，就买。结果，午睡醒来，机票还在，但是涨了200多块，还是买了<img src=\"http://images.mafengwo.net/images/i/face/daily_v2/68@2x.png\"><br>&nbsp;&nbsp;&nbsp;&nbsp;上一次在<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>停留了三天，去圆了我的三鹰美术馆的梦和<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10766.html\" data-kw=\"镰仓\" target=\"_blank\">镰仓</a>高校前和根津美术馆，嗯，我预备把去年的游记也补起来吧，觉得精彩程度不亚于这次。<br>&nbsp;&nbsp;&nbsp;&nbsp;然后呢，上次因为我在<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10766.html\" data-kw=\"镰仓\" target=\"_blank\">镰仓</a>站停留了太久，当到达明月院时，已关门。所以这次第一个目的地，就是明月院。我心心念念四季不同的禅味本堂以及<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/64055.html\" data-kw=\"紫阳\" target=\"_blank\">紫阳</a>花，再就是还想把<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10766.html\" data-kw=\"镰仓\" target=\"_blank\">镰仓</a>没有去到的地方，好好走一走。加之今年看了《海街日记》，想去探寻的念头更甚。<br>&nbsp;&nbsp;&nbsp;&nbsp;另外，之前去往三鹰美术馆的路上，遇到井之头公园，非常之喜欢，所以我打算这次预留半天在吉祥寺。我发觉我喜欢一个地方，就会想着再来，虽然还有其他地方等着我去探寻。但是我愿意，先分出时间再回到我喜爱的地方。<br>&nbsp;&nbsp;&nbsp;&nbsp;再就是，我是《孤独的美食家》的脑粉，这次就是预备了几个五郎之选，超级兴奋和口水的。<br>&nbsp;&nbsp;&nbsp;&nbsp;以上是我大致又来到<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>的理由，其实我一般很少夏天出行，但是因为上半年因为各种内外因，负能量整个笼罩得我有点喘不过气来，所以我想跳脱下现状，出去散散心。事实证明，真的有效。回来后，最近我的心态很<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/64551.html\" data-kw=\"平和\" target=\"_blank\">平和</a>，不急不躁。觉得人生有各种问题真的就是常态，切不可侥幸希冀解决了这个问题，之后不会出现问题。所以呢，正能量满满的那个我又回来啦。<img src=\"http://images.mafengwo.net/images/i/face/daily_v2/3@2x.png\"><br><img src=\"http://images.mafengwo.net/images/i/face/daily_v2/9@2x.png\">记于2016年夏。没错，是2016年去的，拖了一年，终于完工啦=&nbsp;=&nbsp;&nbsp;&nbsp;<br></p><p><img src=\"https://b3-q.mafengwo.net/s9/M00/87/47/wKgBs1eUvImAdXleAAZSiIBpHdc44.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90\" style=\"max-width:100%;\"><br></p><p>国航<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10099.html\" data-kw=\"上海\" target=\"_blank\">上海</a>-<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>往返：RMB2192/人(含机票总价、国际旅行险和航空意外险）&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;之前的西瓜卡还在，所以到<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>后在机器或者便利店充值即可。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;此行最最推荐的就是，<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>地铁48小时和72小时乘车券。之前的版本是1、2、3日券，但是<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>地铁超贴心，已改为24小时、48小时和72小时乘车券。也就是说，<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/63538.html\" data-kw=\"比如\" target=\"_blank\">比如</a>6月1日22点开始用，24小时乘车券就能让你用到6月2日的22点。对于游客来说超级贴心有木有。<br>&nbsp;&nbsp;&nbsp;&nbsp;使用范围：<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>Metro线9条线路+<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>都营地铁线4条线路，合计13条线路250余站可乘坐。<br>&nbsp;&nbsp;&nbsp;&nbsp;乘车券使用方法：在所有<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>Metro线和<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>都营地铁线内的任何一站的检票口处，将此乘车劵投入到检票机器的相应位置后将票取回，下车出站时的操作方法与入站时相同。<br>&nbsp;&nbsp;&nbsp;&nbsp;24小时乘车券，可在地铁站机器上购买。但是48小时和72小时乘车券，只能在指定点凭护照购买，<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/63538.html\" data-kw=\"比如\" target=\"_blank\">比如</a>机场和某些BIG&nbsp;CAMERA。但是由于这次到成田机场会很晚，人工购买点已下班，于是我在某宝上找了同程旅游，出国前就网上购买并拿到手了。价格跟当地购买也差不多诶，很划算。<br>&nbsp;&nbsp;&nbsp;&nbsp;因为买了这两张乘车券，所以全程能坐地铁的，都尽量利用地铁。不能用这两张卡的地方，才拿出万能的西瓜卡来刷。真的是充分利用了这两张乘车券，被自己感动到<img src=\"http://images.mafengwo.net/images/i/face/daily_v2/96@2x.png\">。如果想在<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_blank\">东京</a>暴走的同学，一定要入！<br>&nbsp;&nbsp;&nbsp;另外，我还在东急的地铁站买了东急triangle&nbsp;one-day&nbsp;ticket。具体这个一日券的使用方法请戳官网&nbsp;http://tokyu-triangle.tokyo/english/&nbsp;&nbsp;&nbsp;。官网很贴心，会推荐一些这个三角地带的好去处，其中此行很爱的一个公园，等等力溪谷公园，我就是看了官网的推荐才去的。结果发现，真的是大爱。这也是超级实惠的一个one-day&nbsp;ticket，之后我会提到都去了哪些很妙的地方。<br>&nbsp;&nbsp;&nbsp;&nbsp;关于如何换乘，我是完全依赖APP-乘换案内。找地方就是用GOOGLE&nbsp;MAPS，基本可以带你到你想去的地方。&nbsp;&nbsp;<br></p><p><img src=\"https://b3-q.mafengwo.net/s9/M00/8F/62/wKgBs1eUytiAdr5fAAdeMqc4_j073.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90\" style=\"max-width:100%;\"><br></p><p>床头的这个控制面板的按键，很80年代的电话机按键的感觉，我超喜欢这种按键的。<br>&nbsp;&nbsp;&nbsp;&nbsp;预订时，看评论说这家酒店设施很陈旧，我倒没有觉得诶，反正有我喜欢的按键哈哈。另外，房间内有保温已烧好的热水，我超级需要喝杯热茶的。&nbsp;&nbsp;<br></p>', '1');

-- ----------------------------
-- Table structure for travelnotes
-- ----------------------------
DROP TABLE IF EXISTS `travelnotes`;
CREATE TABLE `travelnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `pubtime` varchar(255) DEFAULT NULL,
  `page_view` int(11) DEFAULT NULL,
  `like_num` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `content` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of travelnotes
-- ----------------------------
INSERT INTO `travelnotes` VALUES ('1', 'no1', 'https://p1-q.mafengwo.net/s9/M00/4D/12/wKgBs1e0VXqAGmV4AA5SJeYGjAs00.jpeg?imageMogr2%2Fthumbnail%2F%21690x276r%2Fgravity%2FCenter%2Fcrop%2F%21690x276%2Fquality%2F100', 'user1', '1508916034000', '1', '2', 'Tokyo0', 'vfsd<h1></h1>', '1');
INSERT INTO `travelnotes` VALUES ('2', 'no2', 'https://p1-q.mafengwo.net/s9/M00/4D/12/wKgBs1e0VXqAGmV4AA5SJeYGjAs00.jpeg?imageMogr2%2Fthumbnail%2F%21690x276r%2Fgravity%2FCenter%2Fcrop%2F%21690x276%2Fquality%2F100', 'aafafaf', '1509615144000', '0', '0', 'Tokyo', '<b>afafafafaf</b><h1></h1><div><b><strike>sfcsafa</strike></b></div>', '0');
INSERT INTO `travelnotes` VALUES ('3', 'no3', 'https://p1-q.mafengwo.net/s9/M00/4D/12/wKgBs1e0VXqAGmV4AA5SJeYGjAs00.jpeg?imageMogr2%2Fthumbnail%2F%21690x276r%2Fgravity%2FCenter%2Fcrop%2F%21690x276%2Fquality%2F100', 'user3', '1509615297000', '0', '0', 'Tokyo0', '3333333333333????<h1></h1>', '1');
INSERT INTO `travelnotes` VALUES ('4', 'no4', 'https://p1-q.mafengwo.net/s9/M00/4D/12/wKgBs1e0VXqAGmV4AA5SJeYGjAs00.jpeg?imageMogr2%2Fthumbnail%2F%21690x276r%2Fgravity%2FCenter%2Fcrop%2F%21690x276%2Fquality%2F100', 'user4', '1509615992000', '0', '0', 'Tokyo0', '44444444444444<h1></h1>', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `notes_num` int(11) DEFAULT NULL,
  `fans_num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('10', 'http://localhost:3000/files/xugfCmhK_FWC2Pe8DleL3G38.jpg', 'zxc', 'ggg', '0', '0', '1');
INSERT INTO `users` VALUES ('13', 'http://localhost:3000/files/LBm8fXtSMKNMcLF2qk9VjucP.jpg', '4444', '1123732', '0', '0', '1');
INSERT INTO `users` VALUES ('14', 'http://localhost:3000/files/BrrihCIJL85OnCOw7evpAhZq.jpg', 'user3', '123', '0', '0', '1');
INSERT INTO `users` VALUES ('15', 'http://localhost:3000/files/Ck9oSF565CRFQeIQ8cg2MsAP.jpg', 'user10', '111110', '0', '0', '2');
