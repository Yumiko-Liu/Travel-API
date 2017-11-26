/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50505
 Source Host           : localhost
 Source Database       : travel

 Target Server Type    : MySQL
 Target Server Version : 50505
 File Encoding         : utf-8

 Date: 11/26/2017 21:11:02 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `destination`
-- ----------------------------
DROP TABLE IF EXISTS `destination`;
CREATE TABLE `destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) DEFAULT NULL,
  `name_zh` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `destination`
-- ----------------------------
BEGIN;
INSERT INTO `destination` VALUES ('1', 'http://127.0.0.1:3000/files/fGEgVHQmn3nNiY8PVVMvQZcY.jpeg', '东京', 'Tokyo', '日本', '东京是日本的首都。这座亚洲最大的城市不仅是全球最重要的经济中心之一，也是世界上人口最多的城市之一，是一座拥有巨大影响力的国际化大都市。', '1'), ('3', 'http://127.0.0.1:3000/files/YknesiV-oz13AQ1wNKWfMQaj.jpeg', '大阪', 'Osaka', '日本', '大阪（Osaka），位于日本西部近畿地方大阪府的都市，是大阪府的府厅所在地，也是政令指定都市之一。是日本次于东京、横滨人口第三多的城市。', '1'), ('4', 'http://127.0.0.1:3000/files/E8qd_-qnE-WhGF2MvaGo2rpe.jpeg', '伦敦', 'London', '欧洲', '伦敦（London），是大不列颠及北爱尔兰联合王国（简称英国）首都，欧洲最大的城市。与美国纽约并列世界上最大的金融中心，与美国纽约、中国香港并称为“纽伦港” 。', '1'), ('5', 'http://127.0.0.1:3000/files/lH7Xhh16XeXb3NtGnPmXZ9ht.jpg', '巴黎', 'Paris', '欧洲', '巴黎是法兰西共和国的首都，法国最大城市，欧洲第二大城市，法国的政治、经济、文化、商业中心。巴黎是世界五大国际大都市之一，其余分别为纽约、伦敦、东京和香港  。', '1'), ('6', 'http://127.0.0.1:3000/files/SxI6xgchAL-cSkrmkRtLUNvZ.jpeg', '悉尼', 'Sydney', '大洋洲', '悉尼（Sydney），澳大利亚第一大城市及新南威尔士州首府，位于澳大利亚的东南沿岸，以著名的悉尼歌剧院而享誉世界，是澳大利亚的经济、文化、政治与旅游中心，世界著名的国际大都市。', '1'), ('7', 'http://127.0.0.1:3000/files/WqwHrL-EoNlyiHekgnCJGkOf.jpeg', '旧金山', 'San Francisco', '美洲', '旧金山，又译“三藩市”、“圣弗朗西斯科”，美国加利福尼亚州太平洋沿岸港口城市，是世界著名旅游胜地、加州人口第四大城市。', '1');
COMMIT;

-- ----------------------------
--  Table structure for `guidenotes`
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
--  Records of `guidenotes`
-- ----------------------------
BEGIN;
INSERT INTO `guidenotes` VALUES ('1', '我们拥抱过 东京最美丽的梦', 'http://127.0.0.1:3000/files/Kf4HHaOluI2YFwoHgZ1rZfvI.jpeg', '1508916034000', '237', '125', '东京', '<div data-index=\"1\" data-nodeindex=\"1\" id=\"_j_paragraph_1\"><h2>出发前の闲言碎语</h2></div><p data-nodeindex=\"2\">作为一个爱看日剧，喜欢美食的吃货，<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html\" data-kw=\"日本\" target=\"_self\">日本</a>早在几年前就登上了我最向往的旅行目的地榜首。<br>然而，作为一个穷逼，又迟迟没办法攒够旅费。。。从而导致这次早就该成行的旅途延迟了许久。。。<br>这次终于下定决心完成期盼已久的旅行，还要多谢我最喜欢的<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html\" data-kw=\"日本\" target=\"_self\">日本</a>女演员——米仓凉子。<br>她在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_self\">东京</a>演出的百老汇音乐剧《Chicago》，让我可以亲眼见到爱豆本人，对于我这样的脑残追星粉来说简直是可遇不可求的好机会。<br>这次《Chicago》的演出其实是7月份先在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10579.html\" data-kw=\"纽约\" target=\"_self\">纽约</a>百老汇进行，然后才是8月份“衣锦还乡”回到<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_self\">东京</a>。<br>但由于我实在是太穷了。。。去不起<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10579.html\" data-kw=\"纽约\" target=\"_self\">纽约</a>，所以只好退而求其次，去看<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_self\">东京</a>场的表演。<br>当然，这样的好处就是终于可以完成梦寐以求的<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10183.html\" data-kw=\"日本\" target=\"_self\">日本</a>之旅。<br>好不容易确定了行程和时间，但基友不是没有假期就是没有money。。。导致我迟迟没有找到旅伴。。。<br>眼看着机票余量越来越少，突然灵机一动，决定带着金主麻麻一起去，好在母上大人也比较开明，商量了两句就答应了。<br>既然决定了，那就着手准备，向着<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_self\">东京</a>前进吧！</p><p data-nodeindex=\"2\"><img src=\"https://c1-q.mafengwo.net/s10/M00/EF/65/wKgBZ1mvnUeAfqiiAAkXyIote5g78.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></p><p data-nodeindex=\"2\"><img src=\"https://n3-q.mafengwo.net/s10/M00/F0/00/wKgBZ1mvnduAfsYwAAvxfpAYHD084.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></p><p><b></b></p>', '1'), ('2', '孤独的美食家之海街日记-二刷东京深度游', 'http://127.0.0.1:3000/files/S6n4iBds0ngzTTgkFBGQQaij.jpeg', '1508915810000', '463', '323', '东京', '&nbsp;时隔一年，又来到了<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_self\">东京</a>。这次完全是临时起意，跟自己说，如果午睡醒来，最后几张机票还在，就买。结果，午睡醒来，机票还在，但是涨了200多块，还是买了<img src=\"https://images.mafengwo.net/images/i/face/daily_v2/68@2x.png\"><br>&nbsp;&nbsp;&nbsp;&nbsp;上一次在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_self\">东京</a>停留了三天，去圆了我的三鹰美术馆的梦和<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10766.html\" data-kw=\"镰仓\" target=\"_self\">镰仓</a>高校前和根津美术馆，嗯，我预备把去年的游记也补起来吧，觉得精彩程度不亚于这次。<br>&nbsp;&nbsp;&nbsp;&nbsp;然后呢，上次因为我在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10766.html\" data-kw=\"镰仓\" target=\"_self\">镰仓</a>站停留了太久，当到达明月院时，已关门。所以这次第一个目的地，就是明月院。我心心念念四季不同的禅味本堂以及<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/64055.html\" data-kw=\"紫阳\" target=\"_self\">紫阳</a>花，再就是还想把<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10766.html\" data-kw=\"镰仓\" target=\"_self\">镰仓</a>没有去到的地方，好好走一走。加之今年看了《海街日记》，想去探寻的念头更甚。<br>&nbsp;&nbsp;&nbsp;&nbsp;另外，之前去往三鹰美术馆的路上，遇到井之头公园，非常之喜欢，所以我打算这次预留半天在吉祥寺。我发觉我喜欢一个地方，就会想着再来，虽然还有其他地方等着我去探寻。但是我愿意，先分出时间再回到我喜爱的地方。<br>&nbsp;&nbsp;&nbsp;&nbsp;再就是，我是《孤独的美食家》的脑粉，这次就是预备了几个五郎之选，超级兴奋和口水的。<br>&nbsp;&nbsp;&nbsp;&nbsp;以上是我大致又来到<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10222.html\" data-kw=\"东京\" target=\"_self\">东京</a>的理由，其实我一般很少夏天出行，但是因为上半年因为各种内外因，负能量整个笼罩得我有点喘不过气来，所以我想跳脱下现状，出去散散心。事实证明，真的有效。回来后，最近我的心态很<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/64551.html\" data-kw=\"平和\" target=\"_self\">平和</a>，不急不躁。觉得人生有各种问题真的就是常态，切不可侥幸希冀解决了这个问题，之后不会出现问题。所以呢，正能量满满的那个我又回来啦。<img src=\"https://images.mafengwo.net/images/i/face/daily_v2/3@2x.png\"><br><img src=\"https://images.mafengwo.net/images/i/face/daily_v2/9@2x.png\">记于2016年夏。没错，是2016年去的，拖了一年，终于完工啦=&nbsp;=&nbsp;<p><b></b></p><p><br></p><p><img src=\"https://b1-q.mafengwo.net/s9/M00/22/5F/wKgBs1eXaAKADjxdAAY85GS5vX858.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></p>', '1'), ('3', '澳大利亚｜悉尼美食地标', 'http://127.0.0.1:3000/files/hmegmrSdbAA7RO48f3VN_nPj.jpeg', '1508916034000', '91', '23', '悉尼', '<div data-index=\"1\" data-nodeindex=\"0\" id=\"_j_paragraph_1\"><h2>序</h2></div><p data-nodeindex=\"1\">最近一次到<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10855.html\" data-kw=\"悉尼\" target=\"_self\">悉尼</a>已经是我第三次到访这座城市了，游客经常打卡的地方基本都已解锁，便想钻进<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10855.html\" data-kw=\"悉尼\" target=\"_self\">悉尼</a>华丽的外衣之下，去探究它灵魂深处的性格。吃，也许就是简单又有效的方式。<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10202.html\" data-kw=\"澳大利亚\" target=\"_self\">澳大利亚</a>是一个移民国家，所以这里的菜式开放、丰富、融合，但从这些受到本地人青睐的餐厅和小店之中，一定会感受到<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10202.html\" data-kw=\"澳大利亚\" target=\"_self\">澳大利亚</a>人自己越来越鲜明的特色。</p><p><b></b></p>', '1'), ('4', '#伦敦游记# 我能看到整个夜，而夜，看不到我。', 'http://127.0.0.1:3000/files/2q45mty3x9iPBQwFQ14e2C2g.jpeg', '1508918440000', '149', '88', '伦敦', '2017年的愿望是去<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/11124.html\" data-kw=\"伦敦\" target=\"_self\">伦敦</a>！！！可是，机票好贵，签证好复杂，路途好遥远，假好难请......<p><b></b></p><p>可是的可是，既然是约定，不就是要去实现的吗？<br>转眼2017，在上半年<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/64941.html\" data-kw=\"成功\" target=\"_self\">成功</a>实现了梦想。<br></p><p><br></p><p>13小时的飞行后，终于抵达&nbsp;Heathrow&nbsp;Airport，到达已经是当地下午6点，入境处工作人员需要口头确认入境目的，此时，你的好友“中学生英语必读课本大纲单词”上线：for&nbsp;holidays&nbsp;/&nbsp;yes&nbsp;/&nbsp;thank&nbsp;you，结束对话，顺利过关。<img src=\"https://images.mafengwo.net/images/i/face/daily_v2/9@2x.png\"><br></p><p><br></p><p><img src=\"https://b2-q.mafengwo.net/s10/M00/1F/17/wKgBZ1kcCLOAUFQYAA0KIrC1_1A44.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></p>', '1'), ('5', '9 Days in San Francisco-9天还不够把旧金山走完', 'http://127.0.0.1:3000/files/A_OzNTbPVNB1-JlrMZHrFogK.jpeg', '1508924309000', '115', '16', '旧金山', '<div data-index=\"1\" data-nodeindex=\"0\" id=\"_j_paragraph_1\"><h2>为什么在旧金山待了九天</h2></div><p data-nodeindex=\"1\">这次去<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10742.html\" data-kw=\"旧金山\" target=\"_self\">旧金山</a>主要是探亲，所以没有做什么计划，只是有几个景点是决定要去看看的，其他时间都是跟着土著到处走走。之前的旅行都很匆忙，每天从早开始一路奔波到晚上，这次决定放松心情，反正住的也是自己的房子，于是决定来一场放慢节奏的度假之旅。<br>这次真的是<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10742.html\" data-kw=\"旧金山\" target=\"_self\">旧金山</a>九日，因为我们基本没有离开湾区多远，去到最远的地方也就开车2个小时就到了，没有沿着1号公路去景点线路看一下，去的大部分都是小众景点。&nbsp;<br>原来以为9天都留在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10742.html\" data-kw=\"旧金山\" target=\"_self\">旧金山</a>会挺无聊的，结果发现9天根本不够用，还有好多想去的地方没有去到呀。&nbsp;<br>如果大家觉得想在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10742.html\" data-kw=\"旧金山\" target=\"_self\">旧金山</a>找一些小众景点，可以参照我们的点</p><p data-nodeindex=\"1\"><img src=\"https://c1-q.mafengwo.net/s10/M00/D0/B7/wKgBZ1ntjjiAa6pBAAiTsjrEaKI96.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></p><p><b></b></p>', '1');
COMMIT;

-- ----------------------------
--  Table structure for `travelnotes`
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
  `author_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `travelnotes`
-- ----------------------------
BEGIN;
INSERT INTO `travelnotes` VALUES ('1', '我们年轻，阳光免费——十日暴走糖果色关西', 'http://127.0.0.1:3000/files/CSIBYJIwNsOE0doJDUgJBVtH.jpeg', '10', '1508916034000', '462', '232', '京都', '<div data-index=\"1\" data-nodeindex=\"0\" id=\"_j_paragraph_1\"><h2>我想去流浪<br>无所谓现实其他<br>抓一把风花雪月<br>塞满时间的缝隙<br><br><br><br>旅行的缘由是偶然看到了村上春树的一句话，<br>“我们年轻，阳光免费。”<br>忽然想放飞自我一回，<br>好好利用学生生涯的最后一个暑假好好去看看外面的世界。<br>在与高中好友xixi酱的一次撸串中聊起这个话题，<br>两人一拍即合，<br>决定趁着八月的尾巴，<br>去<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/154825.html\" data-kw=\"关西\" target=\"_self\">关西</a>走一趟。<br></h2><div><img src=\"https://b2-q.mafengwo.net/s10/M00/74/71/wKgBZ1nQULOAYoBbACUa-SfJzGo08.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></div></div><h1></h1>', '1', 'Hailey'), ('2', '# 布拉格 # Nonstop闪游趴趴走！', 'http://127.0.0.1:3000/files/9hlC55MBDQs_4mBLiKYcW-b1.jpeg', '10', '1509615144000', '424', '222', '布拉格', '<div>这次的<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" data-kw=\"布拉格\" target=\"_self\">布拉格</a>之行是一个临时决定的小意外<img src=\"https://images.mafengwo.net/images/i/face/daily_v2/44@2x.png\"><br>忙乎了一个月，突然脑洞大开想去一个没去过的城市转一圈。<br>立马向小伙伴发出了一个不成熟的小建议——下周我们的面基改成在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" data-kw=\"布拉格\" target=\"_self\">布拉格</a>一起玩耍怎么样！<br>没想到她超级配合地迅速答应了！<br>刺激！马上订好机票和<a href=\"https://m.mafengwo.cn/poi/16469130.html\" data-poi_id=\"16469130\" data-cs-p=\"ginfo_txt_poi\" data-kw=\"酒店\" target=\"_self\">酒店</a>！说走就走好棒棒！<br></div><p><br></p><p><img src=\"https://p4-q.mafengwo.net/s10/M00/47/C9/wKgBZ1m0SASAd4N4AA3vjJjrHtE52.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></p>', '1', 'Hailey'), ('3', '兔美酱在路上 乐曲九首，一念中欧', 'http://127.0.0.1:3000/files/RAgwyrMBE5tKS-jRU13Wx7SI.jpeg', '13', '1509615297000', '343', '223', '慕尼黑', '一转眼今年已过大半，回顾这半年来的足迹，冬日济州，雨季马来，春末<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10444.html\" data-kw=\"青岛\" target=\"_self\">青岛</a>，初夏<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/154825.html\" data-kw=\"关西\" target=\"_self\">关西</a>。<br>不知不觉累积了些行程，见识不少，感悟颇多，可内心还是懵懂得像个不谙世事的孩童。<br><br>七月的<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10065.html\" data-kw=\"北京\" target=\"_self\">北京</a>，闷热仿佛是夏日必备，和讨厌的天气一同到来的还有航班取消的坏消息。<br>原想体验战斗民族航空的刺激，却不料<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/11155.html\" data-kw=\"莫斯科\" target=\"_self\">莫斯科</a>机场暴雨，一众航班不是延误就是取消。<br>不过因祸得福，机票奇迹般地及时得到改签，最终<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10065.html\" data-kw=\"北京\" target=\"_self\">北京</a>-<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/11155.html\" data-kw=\"莫斯科\" target=\"_self\">莫斯科</a>-<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/11095.html\" data-kw=\"布达佩斯\" target=\"_self\">布达佩斯</a>的行程将中转站改为了<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10755.html\" data-kw=\"柏林\" target=\"_self\">柏林</a>。<br>稀里糊涂，总算能在计划时间内到达目的地。<br><br>这个七月，有个奇妙的开始。<br>在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10065.html\" data-kw=\"北京\" target=\"_self\">北京</a>人来车往的东直门会了一众好友，顺带撸了把猫。<br>在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/10755.html\" data-kw=\"柏林\" target=\"_self\">柏林</a>满满当当的飞机上读完喜欢的书，不忘酗了场酒。<br>错过了俄航落地的鼓掌声，却带着N杯passion&nbsp;sandy的醉意与困意。<br>我，兔汉三，满面油光地来到了布达…呐个…<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/139963.html\" data-kw=\"佩斯\" target=\"_self\">佩斯</a>。<h1></h1>', '1', 'Somezaki'), ('4', '琉璃之岛——去了不止一次的五色冲绳', 'http://127.0.0.1:3000/files/rS0P9YUJclW1P-nR03OS3Rum.jpeg', '13', '1509615992000', '385', '234', '冲绳', '诗一样的海岸线，也许每个海岛都或多或少会有。<br>而<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/11041.html\" data-kw=\"冲绳\" target=\"_self\">冲绳</a>夕阳的橘红穿透树林影在渐深邃的海泛起金光，那是五彩琉璃色的。<br><br>整理视频时听每一道音频线，满屏绚染。<br>浪慢慢退去隐现鸥的细语，眼前画面瞬时拉回闲散在<a href=\"https://m.mafengwo.cn/travel-scenic-spot/mafengwo/65378.html\" data-kw=\"恩纳村\" target=\"_self\">恩纳村</a>的时光。<br>告别工作喝着冰凉汽水，酒店的沙滩海水余晖浮云层叠，<br>仿佛脚底还有沙砾在摩挲，指缝间潮湿海风在穿梭。<h1></h1><p><img src=\"https://c3-q.mafengwo.net/s10/M00/36/27/wKgBZ1lWyRSAChb0ABfPplvmtLs62.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90\" style=\"max-width:100%;\"><br></p>', '1', '花音');
COMMIT;

-- ----------------------------
--  Table structure for `users`
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('10', 'http://127.0.0.1:3000/files/jy5LIOCMb63xSigo_00JkOSn.png', 'Hailey', '123456', '10', '32', '1'), ('13', 'http://127.0.0.1:3000/files/Zy6hA53nHymAzhmnNJAVMmq8.png', 'Somezaki', '123456', '34', '125', '1'), ('14', 'http://127.0.0.1:3000/files/u2AEtBVcfqFG1QCtcgh3koQx.png', '花音', '111111', '54', '344', '1'), ('15', 'http://127.0.0.1:3000/files/Ew84_QJsdT9ZqPeN6ULEhAgi.png', '上君', '1123732', '5', '10', '1'), ('16', 'http://127.0.0.1:3000/files/APfV2je-mBAxWoV5NfEhHA6n.png', '咸鱼魔王', 'abcd', '64', '343', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
