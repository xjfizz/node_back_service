/*
Navicat MySQL Data Transfer

Source Server         : demo_weekly
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : week_manage

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-12-26 11:28:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_detail_img
-- ----------------------------
DROP TABLE IF EXISTS `goods_detail_img`;
CREATE TABLE `goods_detail_img` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `userId` int(32) DEFAULT NULL,
  `path` varchar(255) DEFAULT '',
  `create_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_detail_img
-- ----------------------------
INSERT INTO `goods_detail_img` VALUES ('1', '1', 'https://img.alicdn.com/imgextra/i1/2986712394/O1CN01l2HpnN1TYUjfydbSl_!!2986712394.jpg', '2019-12-12 09:02:34.000000');
INSERT INTO `goods_detail_img` VALUES ('2', '2', 'https://img.alicdn.com/imgextra/i1/2986712394/O1CN01z7KxnE1TYUjC6Tc7s_!!2986712394.jpg', '2019-12-11 09:03:10.000000');
INSERT INTO `goods_detail_img` VALUES ('3', '2', 'https://img.alicdn.com/imgextra/i1/2986712394/O1CN01l2HpnN1TYUjfydbSl_!!2986712394.jpg', '2019-12-19 09:03:14.000000');
INSERT INTO `goods_detail_img` VALUES ('4', '2', 'https://img.alicdn.com/imgextra/i1/2986712394/O1CN01z7KxnE1TYUjC6Tc7s_!!2986712394.jpg', '2019-12-18 09:03:19.000000');
INSERT INTO `goods_detail_img` VALUES ('5', '2', 'https://img.alicdn.com/imgextra/i1/2986712394/O1CN01l2HpnN1TYUjfydbSl_!!2986712394.jpg', '2019-12-26 09:03:22.000000');
INSERT INTO `goods_detail_img` VALUES ('6', '123', 'https://gd2.alicdn.com/imgextra/i3/0/O1CN01fFIyoI1PxuGu6TSw5_!!0-item_pic.jpg', '2019-12-26 09:03:26.000000');
INSERT INTO `goods_detail_img` VALUES ('7', '123', 'https://gd1.alicdn.com/imgextra/i1/268021908/O1CN011PxuAXCyqO8x9oI_!!268021908.jpg', '2019-12-27 09:03:30.000000');
INSERT INTO `goods_detail_img` VALUES ('8', '123', 'https://gd1.alicdn.com/imgextra/i1/268021908/O1CN01bCEa3D1PxuGD6KpHZ_!!268021908.jpg', '2019-12-25 09:03:36.000000');
INSERT INTO `goods_detail_img` VALUES ('9', '123', 'https://gd2.alicdn.com/imgextra/i3/0/O1CN01fFIyoI1PxuGu6TSw5_!!0-item_pic.jpg', '2020-01-01 09:03:40.000000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `state` int(10) DEFAULT '1',
  `email` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `type` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '3014198298@qq.com', '2019-12-24 13:29:57.000000', '2019-12-24 13:30:00.000000', '1');
INSERT INTO `user` VALUES ('2', 'test1', 'e10adc3949ba59abbe56e057f20f883e', '1', '3014198298@qq.com', '2019-12-24 13:30:03.000000', '2019-12-24 16:41:06.000000', '2');
INSERT INTO `user` VALUES ('3', 'test0', 'e10adc3949ba59abbe56e057f20f883e', '1', '3014198298@qq.com', '2019-12-24 13:30:09.000000', '2019-12-24 16:41:46.000000', '2');
INSERT INTO `user` VALUES ('4', 'test3', '52c69e3a57331081823331c4e69d3f2e', '1', '999999@qq.com', '2019-12-24 13:52:42.000000', '2019-12-24 13:52:42.000000', '1');
INSERT INTO `user` VALUES ('5', 'ceshi4', '21218cca77804d2ba1922c33e0151105', '1', '888888@qq.com', '2019-12-24 14:11:19.000000', '2019-12-24 14:11:19.000000', '1');
INSERT INTO `user` VALUES ('6', 'ceshi5', 'f63f4fbc9f8c85d409f2f59f2b9e12d5', '1', '777777@qq.com', '2019-12-24 14:13:56.000000', '2019-12-24 14:13:56.000000', '1');
INSERT INTO `user` VALUES ('7', 'ceshi6', 'f379eaf3c831b04de153469d1bec345e', '1', '666666@qq.com', '2019-12-24 14:14:42.000000', '2019-12-24 14:14:42.000000', '1');
INSERT INTO `user` VALUES ('8', '111', 'b59c67bf196a4758191e42f76670ceba', '0', '1111@qq.com', '2019-12-24 14:16:04.000000', '2019-12-24 15:59:36.000000', '1');
INSERT INTO `user` VALUES ('9', 'ceshi8', 'e10adc3949ba59abbe56e057f20f883e', '1', '13@qq.com', '2019-12-24 14:17:06.000000', '2019-12-24 15:58:33.000000', '1');
INSERT INTO `user` VALUES ('10', 'ceshi9', 'd79c8788088c2193f0244d8f1f36d2db', '0', '123@qq.com', '2019-12-24 14:20:48.000000', '2019-12-24 15:36:19.000000', '2');
INSERT INTO `user` VALUES ('11', 'sss', '698d51a19d8a121ce581499d7b701668', '0', '111@qq.com', '2019-12-24 14:58:26.000000', '2019-12-24 15:36:00.000000', '2');

-- ----------------------------
-- Table structure for weekly
-- ----------------------------
DROP TABLE IF EXISTS `weekly`;
CREATE TABLE `weekly` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userId` int(1) DEFAULT NULL,
  `title` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `state` int(32) DEFAULT '1',
  `thisWeekWork` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nextWeekWork` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `collaboration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weekly
-- ----------------------------
INSERT INTO `weekly` VALUES ('1', '2', '测试', '2019-12-24 16:36:15.000000', '2019-12-24 17:17:47.000000', '2019-12-24', '2019-12-24', '1', '111', '顶顶顶顶', '打断点');
INSERT INTO `weekly` VALUES ('2', '3', '2019 第 51 周', '2019-12-24 16:36:30.000000', '2019-12-24 17:03:22.000000', '2019-12-21', '2019-12-15', '1', '<ol><li>50周工作总结</li><li>50周工作总结</li></ol><p>50周工作总结</p><p>50周工作总结 50周工作总结 50周工作总结 50周工作总结</p><p><br></p><p>50周工作总结</p>', '<h2><strong>51周工作总结</strong></h2>', '最好一起工作');
INSERT INTO `weekly` VALUES ('3', '1', '哈哈哈', '2019-12-24 16:36:43.000000', '2019-12-24 16:36:46.000000', '2019-12-28', '2019-12-26', '1', '的点点滴滴', '的呃呃', '不能弄好');
INSERT INTO `weekly` VALUES ('4', '3', '2019 第 49 周', '2019-12-24 17:05:33.000000', '2019-12-24 17:05:33.000000', '2019-12-07', '2019-12-01', '1', '<p>111</p>', '<p>111111</p>', '11111111111');
INSERT INTO `weekly` VALUES ('5', '3', '2019 第 52 周', '2019-12-24 17:08:30.000000', '2019-12-24 17:08:30.000000', '2019-12-28', '2019-12-22', '1', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">调用</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">$confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">方法即可打开消息提示，它模拟了系统的&nbsp;</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。Message Box 组件也拥有极高的定制性，我们可以传入</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">作为第三个参数，它是一个字面量对象。</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">type</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">字段表明消息类型，可以为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">success</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">error</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">info</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">和</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">warning</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，无效的设置将会被忽略。注意，第二个参数</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">title</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">必须定义为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">String</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">类型，如果是</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">Object</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，会被理解为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。在这里我们用了 Promise 来处理后续响应。</span></p>', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">调用</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">$confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">方法即可打开消息提示，它模拟了系统的&nbsp;</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。Message Box 组件也拥有极高的定制性，我们可以传入</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">作为第三个参数，它是一个字面量对象。</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">type</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">字段表明消息类型，可以为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">success</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">error</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">info</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">和</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">warning</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，无效的设置将会被忽略。注意，第二个参数</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">title</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">必须定义为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">String</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">类型，如果是</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">Object</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，会被理解为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。在这里我们用了 Promise 来处理后续响应。</span></p>', 'vue');
INSERT INTO `weekly` VALUES ('6', '3', '2019 第 49 周', '2019-12-24 17:09:09.000000', '2019-12-24 17:09:09.000000', '2019-12-07', '2019-12-01', '1', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">调用</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">$confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">方法即可打开消息提示，它模拟了系统的&nbsp;</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。Message Box 组件也拥有极高的定制性，我们可以传入</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">作为第三个参数，它是一个字面量对象。</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">type</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">字段表明消息类型，可以为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">success</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">error</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">info</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">和</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">warning</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，无效的设置将会被忽略。注意，第二个参数</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">title</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">必须定义为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">String</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">类型，如果是</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">Object</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，会被理解为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。在这里我们用了 Promise 来处理后续响应。</span></p>', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">调用</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">$confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">方法即可打开消息提示，它模拟了系统的&nbsp;</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">confirm</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。Message Box 组件也拥有极高的定制性，我们可以传入</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">作为第三个参数，它是一个字面量对象。</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">type</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">字段表明消息类型，可以为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">success</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">error</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">info</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">和</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">warning</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，无效的设置将会被忽略。注意，第二个参数</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">title</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">必须定义为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">String</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">类型，如果是</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">Object</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">，会被理解为</span><code style=\"background-color: rgb(230, 239, 251); color: rgb(94, 109, 130);\">options</code><span style=\"background-color: rgb(255, 255, 255); color: rgb(94, 109, 130);\">。在这里我们用了 Promise 来处理后续响应。</span></p>', 'kkk');
INSERT INTO `weekly` VALUES ('7', '2', '2019 第 50 周', '2019-12-24 17:17:37.000000', '2019-12-25 11:25:15.000000', '2019-12-14', '2019-12-08', '1', '<p>11哈哈哈</p>', '<p>111111</p>', '111');
