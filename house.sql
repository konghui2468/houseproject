/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-01-21 11:13:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `house_name` varchar(255) DEFAULT NULL,
  `house_url` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `room_1` varchar(255) DEFAULT NULL,
  `room_2` varchar(255) DEFAULT NULL,
  `room_3` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `tier` varchar(255) DEFAULT NULL,
  `pack_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '中兴公寓 刚需两房 装修清爽 房东诚心卖', 'https://hz.5i5j.com/ershoufang/90060518.html', '110', '66.16', '2', '1', '1', '  南北', '  高', '7', '简装');
INSERT INTO `house` VALUES ('2', '元都新景 南北通透 全明东边套 毛坯可自主装修  房东诚卖', 'https://hz.5i5j.com/ershoufang/35730266.html', '180', '135', '4', '2', '2', '南北  ', '中', '11', ' 毛坯');
INSERT INTO `house` VALUES ('3', '外东山弄 三室一厅东边套 全明户型 看房方便 装修好', 'https://hz.5i5j.com/ershoufang/90109431.html', '140', '70.19', '3', '1', '1', '  南 ', ' 中', '4', ' 简装');
INSERT INTO `house` VALUES ('4', ' 北景园清爽装修小两房 户型方正 房东诚心售卖', 'https://hz.5i5j.com/ershoufang/90081658.html', '200', '60.07', '2', '1', '1', '  南 ', ' 中', '5', ' 简装');
INSERT INTO `house` VALUES ('5', '性价比高  楼层好 总价低 得房率高 诚心出售', 'https://hz.5i5j.com/ershoufang/90033721.html', '201', '52.43', '2', '1', '1', '  南 ', '顶', '11', ' 简装');
INSERT INTO `house` VALUES ('6', '御景蓝湾 D户型 三开间朝南 全明户型 看房方便 房东诚售', 'https://hz.5i5j.com/ershoufang/38626325.html', '222', '89.59', '3', '2', '2', '  南北', '  低', '27', '  毛坯');
INSERT INTO `house` VALUES ('7', '浙江大学门口 省厅级以上领导房改房 3南1北 4楼阳光好', 'https://hz.5i5j.com/ershoufang/90107341.html', '236', '110.5', '4', '1', '1', '南', '  中', '5', '  简装');
INSERT INTO `house` VALUES ('8', '70年产权，带阳台通天然气精装拎包入住', 'https://hz.5i5j.com/ershoufang/90106723.html', '336', '42.77', '1', '1', '1', '  东 ', ' 高', '12', '  精装');
INSERT INTO `house` VALUES ('9', '两房朝南厨卫朝北，大客厅，得分率高。配套齐全交通方便', 'https://hz.5i5j.com/ershoufang/90069649.html', '337', '61.8', '2', '1', '1', ' 南  ', '中', '4', '简装');
INSERT INTO `house` VALUES ('10', '全景江景房，一线江景尽收眼底，满足阳光，江景两个条件的不多。', 'https://hz.5i5j.com/ershoufang/90065353.html', '338', '183.6', '3', '2', '2', ' 南', '  低', '33', '·  精装');
INSERT INTO `house` VALUES ('11', '一梯两户，两房朝南，全明西边套', 'https://hz.5i5j.com/ershoufang/90107328.html', '442', '56.81', '2', '1', '1', '  南北', '  中', '5', '  简装');
INSERT INTO `house` VALUES ('12', '永安坊 经典一室户型 南北通透 位置安静 出行方便', 'https://hz.5i5j.com/ershoufang/90098939.html', '441', '42.28', '1', '1', '1', '  南 ', ' 中', '6', ' 简装');
INSERT INTO `house` VALUES ('13', '北上新城，精装修公寓，民用水电，出租自住都好', 'https://hz.5i5j.com/ershoufang/90098813.html', '450', '32.94', '1', '1', '1', '  北 ', ' 中', '13', '  精装');
INSERT INTO `house` VALUES ('14', '舒适两房朝南通透  小区环境好', 'https://hz.5i5j.com/ershoufang/90096801.html', '469', '55.03', '2', '1', '1', '  南 ', ' 高', '7', ' 简装');
INSERT INTO `house` VALUES ('15', '保俶塔实验九年制，全新装修没住过，购置软装即可入住', 'https://hz.5i5j.com/ershoufang/90085235.html', '500', '76.14', '2', '2', '1', '  南北', '  高', '6', '  精装');
INSERT INTO `house` VALUES ('16', '江干区北城枫景园，南北通透，中间楼层，主卧朝南带阳台', 'https://hz.5i5j.com/ershoufang/90079366.html', '456', '62.97', '2', '2', '1', '  南 ', ' 中', '17', '  毛坯');
INSERT INTO `house` VALUES ('17', '福利新村小区，城站旁边，养老自住好房，租金高，精装修', 'https://hz.5i5j.com/ershoufang/90070598.html', '269', '31.57', '1', '1', '1', '  南 ', ' 高', '7', ' 精装');
INSERT INTO `house` VALUES ('18', '锦园 两南一北 户型正气 南北通透 一梯两户 三楼阳光好', 'https://hz.5i5j.com/ershoufang/90069935.html', '280', '72.93', '3', '1', '1', '  南 ', ' 中', '7', ' 毛坯');
INSERT INTO `house` VALUES ('19', '南肖埠北景西苑，中间楼层，两房朝南，户型方正，诚心卖', 'https://hz.5i5j.com/ershoufang/90069887.html', '560', '79.54', '2', '2', '1', '  南北', '  中', '7', '  简装');
INSERT INTO `house` VALUES ('20', '三里家园二区好房出售，成熟小区全明户型南北通透采光好', 'https://hz.5i5j.com/ershoufang/90062346.html', '570', '77.88', '2', '2', '1', '  南北', '  顶', '17', '  简装');
INSERT INTO `house` VALUES ('21', '三里亭苑一区，两房朝南，南北通透，采光好日照9h', 'https://hz.5i5j.com/ershoufang/90061500.html', '580', '52.56', '2', '1', '1', '  南北', '  顶', '7', ' 毛坯');
INSERT INTO `house` VALUES ('22', '小区彩虹城规模成熟，房子精装好，保养新，看房方便', 'https://hz.5i5j.com/ershoufang/90037813.html', '290', '129.2', '3', '2', '2', '  南', '  低', '23', '·  精装');
INSERT INTO `house` VALUES ('23', '江南实验 绿城物业 麻雀虽小 五脏齐全 价格好', 'https://hz.5i5j.com/ershoufang/90037648.html', '190', '44.09', '2', '1', '1', '  北 ', ' 低', '31', '  简装');
INSERT INTO `house` VALUES ('24', '天湖公寓 三房两卫 电梯房 看房有钥匙的 中间楼层', 'https://hz.5i5j.com/ershoufang/90034523.html', '600', '125.1', '3', '2', '2', '  南北', '  中', '7', '  简装');
INSERT INTO `house` VALUES ('25', '博奥城 南北通 夹边套  大阳台 楼层好 随时看房', 'https://hz.5i5j.com/ershoufang/90033216.html', '687', '89.13', '3', '2', '1', '  南 ', ' 高', '30', '  毛坯');
INSERT INTO `house` VALUES ('26', '新挂次小区，绿城物业，三房户型，楼层采光好', 'https://hz.5i5j.com/ershoufang/90030077.html', '700', '80.88', '3', '2', '1', '  南 ', ' 低', '18', '  毛坯');
INSERT INTO `house` VALUES ('27', '小套面积，可做两房，看房方便 看中可谈', 'https://hz.5i5j.com/ershoufang/90029399.html', '780', '38.39', '1', '1', '1', '  南 ', ' 高', '7', ' 简装');
INSERT INTO `house` VALUES ('28', '雅居乐次新小区，户型好，有赠送面积，房东诚心卖', 'https://hz.5i5j.com/ershoufang/90025833.html', '488', '81.21', '2', '2', '1', '  南北', '  中', '34', '·  简装');
INSERT INTO `house` VALUES ('29', '大学路新村  精装两房 户型正气  全天阳光 价格可谈', 'https://hz.5i5j.com/ershoufang/90024720.html', '499', '54.79', '2', '2', '1', '  南 ', ' 高', '6', ' 精装');
INSERT INTO `house` VALUES ('30', '米市巷新村，运河边的房子，三楼的楼层，交通便利，看房随时！', 'https://hz.5i5j.com/ershoufang/90013748.html', '396', '67.76', '3', '1', '1', '  南北', '低', '6', '  毛坯');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(36) DEFAULT NULL,
  `passwordSalt` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张山', '1234567891', '123', null);
