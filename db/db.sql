create schema smbms collate utf8_general_ci;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for smbms_address
-- ----------------------------
DROP TABLE IF EXISTS `smbms_address`;
CREATE TABLE `smbms_address` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                                 `contact` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人姓名',
                                 `addressDesc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货地址明细',
                                 `postCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮编',
                                 `tel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人电话',
                                 `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者',
                                 `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
                                 `modifyBy` bigint(20) DEFAULT NULL COMMENT '修改者',
                                 `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
                                 `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
                                 `isDelete` tinyint(4) DEFAULT '0' COMMENT '0-正常 1-已删除',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of smbms_address
-- ----------------------------
INSERT INTO `smbms_address` VALUES ('1', '王丽', '北京市东城区东交民巷44号', '100010', '13678789999', '1', '2016-04-13 00:00:00', null, null, '1', '0');
INSERT INTO `smbms_address` VALUES ('2', '张红丽', '北京市海淀区丹棱街3号', '100000', '18567672312', '1', '2016-04-13 00:00:00', null, null, '1', '0');
INSERT INTO `smbms_address` VALUES ('3', '任志强', '北京市东城区美术馆后街23号', '100021', '13387906742', '1', '2016-04-13 00:00:00', null, null, '1', '0');
INSERT INTO `smbms_address` VALUES ('4', '曹颖', '北京市朝阳区朝阳门南大街14号', '100053', '13568902323', '1', '2016-04-13 00:00:00', null, null, '2', '0');
INSERT INTO `smbms_address` VALUES ('5', '李慧', '北京市西城区三里河路南三巷3号', '100032', '18032356666', '1', '2016-04-13 00:00:00', null, null, '3', '0');
INSERT INTO `smbms_address` VALUES ('6', '王国强', '北京市顺义区高丽营镇金马工业区18号', '100061', '13787882222', '1', '2016-04-13 00:00:00', null, null, '3', '0');

-- ----------------------------
-- Table structure for smbms_bill
-- ----------------------------
DROP TABLE IF EXISTS `smbms_bill`;
CREATE TABLE `smbms_bill` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                              `billCode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账单编码',
                              `productName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
                              `productDesc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品描述',
                              `productUnit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品单位',
                              `productCount` decimal(20,2) DEFAULT NULL COMMENT '商品数量',
                              `totalPrice` decimal(20,2) DEFAULT NULL COMMENT '商品总额',
                              `isPayment` int(11) DEFAULT NULL COMMENT '是否支付（1：未支付 2：已支付）',
                              `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
                              `creationDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                              `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
                              `modifyDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
                              `providerId` bigint(20) DEFAULT NULL COMMENT '供应商ID',
                              `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - 未删除 1- 已删除',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of smbms_bill
-- ----------------------------
INSERT INTO `smbms_bill` VALUES ('1', 'BILL2016_001', '洗发水、护发素', '日用品-洗发、护发', '瓶', '500.00', '25000.00', '1', '1', '2014-12-14 13:02:03', null, null, '13', '1');
INSERT INTO `smbms_bill` VALUES ('2', 'BILL2016_002', '香皂、肥皂、药皂', '日用品-皂类', '块', '1000.00', '10000.00', '2', '1', '2016-03-23 04:20:40', null, null, '13', '0');
INSERT INTO `smbms_bill` VALUES ('3', 'BILL2016_003', '大豆油', '食品-食用油', '斤', '300.00', '5890.00', '2', '1', '2014-12-14 13:02:03', null, null, '6', '1');
INSERT INTO `smbms_bill` VALUES ('4', 'BILL2016_004', '橄榄油', '食品-进口食用油', '斤', '200.00', '9800.00', '2', '1', '2013-10-10 03:12:13', null, null, '7', '1');
INSERT INTO `smbms_bill` VALUES ('5', 'BILL2016_005', '洗洁精', '日用品-厨房清洁', '瓶', '500.00', '7000.00', '1', '1', '2014-12-14 13:02:03', null, null, '9', '1');
INSERT INTO `smbms_bill` VALUES ('6', 'BILL2016_006', '美国大杏仁', '食品-坚果', '袋', '300.00', '5000.00', '2', '1', '2016-04-14 06:08:09', null, null, '4', '0');
INSERT INTO `smbms_bill` VALUES ('7', 'BILL2016_007', '沐浴液、精油', '日用品-沐浴类', '瓶', '500.00', '23000.00', '1', '1', '2016-07-22 10:10:22', null, null, '14', '0');
INSERT INTO `smbms_bill` VALUES ('8', 'BILL2016_008', '不锈钢盘碗', '日用品-厨房用具', '个', '600.00', '6000.00', '1', '1', '2016-04-14 05:12:13', null, null, '14', '1');
INSERT INTO `smbms_bill` VALUES ('9', 'BILL2016_009', '塑料杯', '日用品-杯子', '个', '350.00', '1750.00', '1', '1', '2016-02-04 11:40:20', null, null, '14', '0');
INSERT INTO `smbms_bill` VALUES ('10', 'BILL2016_010', '豆瓣酱', '食品-调料', '瓶', '200.00', '2000.00', '2', '1', '2013-10-29 05:07:03', null, null, '8', '1');
INSERT INTO `smbms_bill` VALUES ('11', 'BILL2016_011', '海之蓝', '饮料-国酒', '瓶', '50.00', '10000.00', '2', '1', '2016-04-14 16:16:00', null, null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('12', 'BILL2016_012', '芝华士', '饮料-洋酒', '瓶', '20.00', '6000.00', '1', '1', '2016-09-09 17:00:00', null, null, '1', '1');
INSERT INTO `smbms_bill` VALUES ('13', 'BILL2016_013', '长城红葡萄酒', '饮料-红酒', '瓶', '60.00', '800.00', '2', '1', '2016-11-14 15:23:00', null, null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('14', 'BILL2016_014', '泰国香米', '食品-大米', '斤', '400.00', '5000.00', '2', '1', '2016-10-09 15:20:00', null, null, '3', '0');
INSERT INTO `smbms_bill` VALUES ('15', 'BILL2016_015', '东北大米', '食品-大米', '斤', '600.00', '4000.00', '2', '1', '2016-11-14 14:00:00', null, null, '3', '0');
INSERT INTO `smbms_bill` VALUES ('16', 'BILL2016_016', '可口可乐', '饮料', '瓶', '2000.00', '6000.00', '2', '1', '2012-03-27 13:03:01', null, null, '2', '0');
INSERT INTO `smbms_bill` VALUES ('17', 'BILL2016_017', '脉动', '饮料', '瓶', '1500.00', '4500.00', '2', '1', '2016-05-10 12:00:00', null, null, '2', '0');
INSERT INTO `smbms_bill` VALUES ('18', 'BILL2016_018', '哇哈哈', '饮料', '瓶', '2000.00', '4000.00', '2', '1', '2015-11-24 15:12:03', null, null, '2', '0');
INSERT INTO `smbms_bill` VALUES ('19', 'RJZke', '饰链', '芝华士', '瓶', '200.00', '25000.00', '2', '1', '2022-05-07 21:59:20', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('20', 'CNx0m', '腰带', '胸针', '瓶', '200.00', '25000.00', '2', '1', '2022-03-29 12:57:31', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('21', '6Jr', '耳环', '肥皂', '瓶', '200.00', '25000.00', '2', '1', '2022-09-21 08:42:13', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('22', '7R', '胸针', '戒指', '瓶', '200.00', '25000.00', '2', '1', '2022-05-08 04:12:38', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('23', 'lJuuG', '皮筋', '丝巾', '瓶', '200.00', '25000.00', '2', '1', '2022-03-20 05:08:49', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('24', 'nDvgp', '发夹', '发网', '瓶', '200.00', '25000.00', '2', '1', '2022-11-30 15:26:32', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('25', 'ceczC', '戒指', '胸针', '瓶', '200.00', '25000.00', '2', '1', '2022-09-09 13:45:59', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('26', 'TSWd', '饰链', '耳环', '瓶', '200.00', '25000.00', '2', '1', '2022-11-29 23:24:11', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('27', 'Rn', '长城红葡萄酒', '护发素', '瓶', '200.00', '25000.00', '2', '1', '2022-12-04 01:04:42', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('28', 'huo', '脚链', '肥皂', '瓶', '200.00', '25000.00', '2', '1', '2022-02-23 22:20:29', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('29', 'opehI', '腰带', '手镯', '瓶', '200.00', '25000.00', '2', '1', '2022-05-13 08:52:01', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('30', 'UiEzi', '发网', '香皂', '瓶', '200.00', '25000.00', '2', '1', '2022-01-07 07:35:23', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('31', '8XkP', '手链', '戒指', '瓶', '200.00', '25000.00', '2', '1', '2022-08-04 12:56:31', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('32', '05iif', '戒指', '长城红葡萄酒', '瓶', '200.00', '25000.00', '2', '1', '2022-03-16 11:38:33', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('33', '0T', '饰链', '手镯', '瓶', '200.00', '25000.00', '2', '1', '2022-12-02 13:24:24', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('34', 'LnNrd', '皮筋', '皮筋', '瓶', '200.00', '25000.00', '2', '1', '2022-01-18 03:19:19', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('35', 'Jd', '发网', '肥皂', '瓶', '200.00', '25000.00', '2', '1', '2022-04-08 02:21:54', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('36', 'z8T', '假发', '头箍', '瓶', '200.00', '25000.00', '2', '1', '2022-11-23 15:31:20', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('37', 'W9hA', '手链', '手链', '瓶', '200.00', '25000.00', '2', '1', '2022-05-03 12:08:24', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('38', 'mIL2', '肥皂', '香皂', '瓶', '200.00', '25000.00', '2', '1', '2022-01-15 05:06:40', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('39', 'MHEhA', '皮筋', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-09-01 00:40:07', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('40', 'MXmF', '手链', '长城红葡萄酒', '瓶', '200.00', '25000.00', '2', '1', '2022-02-04 04:04:02', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('41', 'SUHq', '耳环', '香皂', '瓶', '200.00', '25000.00', '2', '1', '2022-10-08 16:28:09', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('42', '6i', '药皂', '药皂', '瓶', '200.00', '25000.00', '2', '1', '2022-10-01 14:04:54', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('43', 'QsDt', '戒指', '香皂', '瓶', '200.00', '25000.00', '2', '1', '2022-04-29 20:15:37', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('44', 'cxU', '肥皂', '假发', '瓶', '200.00', '25000.00', '2', '1', '2022-03-28 06:42:35', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('45', 'o6t', '丝巾', '护发素', '瓶', '200.00', '25000.00', '2', '1', '2022-01-07 01:53:42', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('46', 'tHG', '腰带', '脚链', '瓶', '200.00', '25000.00', '2', '1', '2022-02-03 09:32:18', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('47', 'jJ', '头箍', '项链', '瓶', '200.00', '25000.00', '2', '1', '2022-03-29 18:24:11', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('48', '0Y', '戒指', '手链', '瓶', '200.00', '25000.00', '2', '1', '2022-09-20 10:37:26', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('49', 'EWN', '肥皂', '肥皂', '瓶', '200.00', '25000.00', '2', '1', '2022-12-10 15:30:01', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('50', '7y', '头巾', '药皂', '瓶', '200.00', '25000.00', '2', '1', '2022-09-25 18:02:16', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('51', 'FM', '肥皂', '皮筋', '瓶', '200.00', '25000.00', '2', '1', '2022-02-16 19:37:06', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('52', 'Ibh', '发夹', '护发素', '瓶', '200.00', '25000.00', '2', '1', '2022-08-27 22:54:34', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('53', 'g4r', '头箍', '丝巾', '瓶', '200.00', '25000.00', '2', '1', '2022-11-08 12:51:37', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('54', 'chE', '洗发水', '肥皂', '瓶', '200.00', '25000.00', '2', '1', '2022-11-03 18:49:10', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('55', 'BEL9Z', '手链', '药皂', '瓶', '200.00', '25000.00', '2', '1', '2022-09-01 19:46:59', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('56', 'qzY', '假发', '手镯', '瓶', '200.00', '25000.00', '2', '1', '2022-08-29 10:38:28', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('57', '1o', '项链', '丝巾', '瓶', '200.00', '25000.00', '2', '1', '2022-11-01 17:11:33', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('58', 'ummpb', '手镯', '胸针', '瓶', '200.00', '25000.00', '2', '1', '2022-10-06 19:30:27', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('59', '7zV', '芝华士', '药皂', '瓶', '200.00', '25000.00', '2', '1', '2022-12-19 08:49:57', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('60', '5GO', '香皂', '芝华士', '瓶', '200.00', '25000.00', '2', '1', '2022-10-11 02:38:21', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('61', 'N8J3', '芝华士', '护发素', '瓶', '200.00', '25000.00', '2', '1', '2022-01-19 08:59:09', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('62', 'peh', '手链', '饰链', '瓶', '200.00', '25000.00', '2', '1', '2022-05-10 10:16:55', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('63', 'lYvgn', '手镯', '饰链', '瓶', '200.00', '25000.00', '2', '1', '2022-05-01 23:47:54', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('64', 'OT', '皮筋', '药皂', '瓶', '200.00', '25000.00', '2', '1', '2022-08-09 21:36:06', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('65', 'CD', '头巾', '洗发水', '瓶', '200.00', '25000.00', '2', '1', '2022-04-16 01:48:29', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('66', 'Sm1i', '胸针', '手链', '瓶', '200.00', '25000.00', '2', '1', '2022-10-09 22:35:52', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('67', '82', '腰带', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-06-12 18:33:41', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('68', 'z8Vx', '胸针', '发圈', '瓶', '200.00', '25000.00', '2', '1', '2022-05-25 09:26:54', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('69', 'C0KNb', '头巾', '脚链', '瓶', '200.00', '25000.00', '2', '1', '2022-11-18 23:33:02', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('70', 'Wxkw', '发网', '胸针', '瓶', '200.00', '25000.00', '2', '1', '2022-06-13 16:48:44', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('71', 'CI287', '发网', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-01-14 14:19:57', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('72', 'Os', '长城红葡萄酒', '洗发水', '瓶', '200.00', '25000.00', '2', '1', '2022-04-05 18:23:41', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('73', 'ar6', '丝巾', '项链', '瓶', '200.00', '25000.00', '2', '1', '2022-03-05 06:40:09', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('74', 'xk2', '丝巾', '头巾', '瓶', '200.00', '25000.00', '2', '1', '2022-08-10 08:48:31', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('75', 'pqf', '芝华士', '手镯', '瓶', '200.00', '25000.00', '2', '1', '2022-01-22 18:11:15', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('76', 'ZuFSn', '头巾', '丝巾', '瓶', '200.00', '25000.00', '2', '1', '2022-09-29 04:15:41', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('77', 'PbmXb', '胸针', '芝华士', '瓶', '200.00', '25000.00', '2', '1', '2022-07-11 18:10:03', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('78', 'TV4dC', '手镯', '戒指', '瓶', '200.00', '25000.00', '2', '1', '2022-04-14 12:48:03', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('79', 'Uf', '芝华士', '饰链', '瓶', '200.00', '25000.00', '2', '1', '2022-12-28 10:28:12', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('80', 'zo8wB', '腰带', '香皂', '瓶', '200.00', '25000.00', '2', '1', '2022-03-01 08:05:21', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('81', 'ET8Yo', '项链', '长城红葡萄酒', '瓶', '200.00', '25000.00', '2', '1', '2022-10-21 04:05:36', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('82', '5Ru', '发网', '护发素', '瓶', '200.00', '25000.00', '2', '1', '2022-06-27 22:34:52', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('83', 'SZCIv', '肥皂', '发圈', '瓶', '200.00', '25000.00', '2', '1', '2022-10-05 08:47:11', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('84', 'pK0UM', '耳环', '皮筋', '瓶', '200.00', '25000.00', '2', '1', '2022-01-05 20:57:56', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('85', 'Jwyl', '头巾', '头箍', '瓶', '200.00', '25000.00', '2', '1', '2022-08-22 15:51:18', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('86', 'T45K', '发夹', '戒指', '瓶', '200.00', '25000.00', '2', '1', '2022-01-31 22:13:34', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('87', 'k4', '丝巾', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-01-20 11:17:09', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('88', 'zu', '项链', '假发', '瓶', '200.00', '25000.00', '2', '1', '2022-10-06 14:21:17', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('89', 'Yg', '芝华士', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-06-27 16:14:51', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('90', 'Nd', '手链', '芝华士', '瓶', '200.00', '25000.00', '2', '1', '2022-09-24 12:52:10', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('91', 'IsLQs', '肥皂', '头巾', '瓶', '200.00', '25000.00', '2', '1', '2022-03-26 00:27:21', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('92', 'vHM', '发夹', '耳环', '瓶', '200.00', '25000.00', '2', '1', '2022-12-29 11:21:11', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('93', 'Xa0uk', '头箍', '腰带', '瓶', '200.00', '25000.00', '2', '1', '2022-05-03 02:32:29', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('94', 'i1', '丝巾', '洗发水', '瓶', '200.00', '25000.00', '2', '1', '2022-06-08 14:39:08', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('95', 'jA', '长城红葡萄酒', '饰链', '瓶', '200.00', '25000.00', '2', '1', '2022-12-14 05:53:41', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('96', '7qYC', '护发素', '肥皂', '瓶', '200.00', '25000.00', '2', '1', '2022-05-27 16:07:09', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('97', 'QtoLR', '戒指', '脚链', '瓶', '200.00', '25000.00', '2', '1', '2022-12-24 09:06:00', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('98', '87Xi9', '头箍', '发圈', '瓶', '200.00', '25000.00', '2', '1', '2022-01-31 03:37:21', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('99', 'Xic', '皮筋', '药皂', '瓶', '200.00', '25000.00', '2', '1', '2022-10-21 15:33:45', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('100', 'DmN', '头箍', '耳环', '瓶', '200.00', '25000.00', '2', '1', '2022-06-19 10:32:04', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('101', 'DTo', '芝华士', '胸针', '瓶', '200.00', '25000.00', '2', '1', '2022-04-09 16:24:48', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('102', 'mT', '手链', '戒指', '瓶', '200.00', '25000.00', '2', '1', '2022-10-02 17:47:38', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('103', 'VdV', '腰带', '手链', '瓶', '200.00', '25000.00', '2', '1', '2022-05-14 12:04:23', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('104', 'P1', '头箍', '戒指', '瓶', '200.00', '25000.00', '2', '1', '2022-10-26 00:05:46', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('105', '5RNY', '长城红葡萄酒', '芝华士', '瓶', '200.00', '25000.00', '2', '1', '2022-12-20 13:29:37', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('106', 'vW', '香皂', '丝巾', '瓶', '200.00', '25000.00', '2', '1', '2022-11-20 21:01:43', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('107', 'be', '戒指', '头箍', '瓶', '200.00', '25000.00', '2', '1', '2022-06-04 21:21:21', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('108', '2cPq', '发夹', '长城红葡萄酒', '瓶', '200.00', '25000.00', '2', '1', '2022-11-01 04:40:30', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('109', 'eXB9', '芝华士', '洗发水', '瓶', '200.00', '25000.00', '2', '1', '2022-03-17 10:01:34', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('110', 'QdWW', '手镯', '项链', '瓶', '200.00', '25000.00', '2', '1', '2022-05-10 12:20:31', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('111', 'YZ', '胸针', '长城红葡萄酒', '瓶', '200.00', '25000.00', '2', '1', '2022-08-17 12:11:59', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('112', 'Bp0Lj', '芝华士', '手链', '瓶', '200.00', '25000.00', '2', '1', '2022-02-22 00:08:03', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('113', 'WiqCn', '脚链', '手镯', '瓶', '200.00', '25000.00', '2', '1', '2022-03-18 09:16:26', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('114', 'eUX', '发网', '发圈', '瓶', '200.00', '25000.00', '2', '1', '2022-06-18 03:42:41', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('115', '6V28v', '脚链', '假发', '瓶', '200.00', '25000.00', '2', '1', '2022-02-01 04:40:34', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('116', '7dJ94', '假发', '皮筋', '瓶', '200.00', '25000.00', '2', '1', '2022-09-03 18:24:05', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('117', 'Ms', '项链', '香皂', '瓶', '200.00', '25000.00', '2', '1', '2022-10-17 01:53:34', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('118', 'jGh', '皮筋', '药皂', '瓶', '200.00', '25000.00', '2', '1', '2022-10-24 07:56:12', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('119', 'r8A', '胸针', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-11-14 14:50:37', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('120', 'tR', '肥皂', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-05-21 14:18:37', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('121', '0H', '发网', '饰链', '瓶', '200.00', '25000.00', '2', '1', '2022-12-04 04:04:08', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('122', '4fgKv', '假发', '脚链', '瓶', '200.00', '25000.00', '2', '1', '2022-04-04 20:08:58', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('123', '1fEXf', '护发素', '发夹', '瓶', '200.00', '25000.00', '2', '1', '2022-10-26 19:35:59', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('124', 'Kw', '手镯', '腰带', '瓶', '200.00', '25000.00', '2', '1', '2022-01-28 04:19:59', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('125', '3oD', '长城红葡萄酒', '肥皂', '瓶', '200.00', '25000.00', '2', '1', '2022-04-26 05:59:19', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('126', 'zgXP', '头箍', '洗发水', '瓶', '200.00', '25000.00', '2', '1', '2022-09-13 13:33:00', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('127', 'MUY8', '发网', '发圈', '瓶', '200.00', '25000.00', '2', '1', '2022-05-18 06:54:03', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('128', 'JSeI5', '长城红葡萄酒', '丝巾', '瓶', '200.00', '25000.00', '2', '1', '2022-05-20 23:09:30', '1', null, '1', '0');
INSERT INTO `smbms_bill` VALUES ('129', '2222', '1111', null, 'qq', null, null, '1', null, null, null, null, '1', '1');
INSERT INTO `smbms_bill` VALUES ('130', '222002', '1111', null, 'qq', null, null, '1', null, null, null, null, '1', '1');
INSERT INTO `smbms_bill` VALUES ('131', '12', '11', null, '111', '1.00', '12.00', '1', null, null, null, null, '3', '1');
INSERT INTO `smbms_bill` VALUES ('132', '1', '大米', null, '袋', '2.00', '100.00', '1', null, null, null, null, '2', '1');
INSERT INTO `smbms_bill` VALUES ('133', '请问嗡嗡嗡', '122222', null, '1111111', '1.00', '111111.00', '1', null, null, null, null, '2', '1');
INSERT INTO `smbms_bill` VALUES ('134', '1111', '222', null, '111', '11.00', '1111.00', '1', null, null, null, null, '1', '1');
INSERT INTO `smbms_bill` VALUES ('135', '77', '11', null, '111', '11.00', '111.00', '1', null, null, null, null, '1', '1');
INSERT INTO `smbms_bill` VALUES ('136', '1111111', '11111111', null, '111111', '1.00', '1111.00', '1', null, '2023-02-24 23:55:23', null, '2023-02-24 23:55:23', '1', '1');
INSERT INTO `smbms_bill` VALUES ('137', '111111', '11111111', null, '111111111', '11.00', '11.00', '1', null, '2023-02-24 15:58:28', null, '2023-02-24 23:58:27', '1', '0');
INSERT INTO `smbms_bill` VALUES ('138', 'WWWW', 'QQQQ', null, 'QQQQQ', '12.00', '222.00', '1', null, '2023-02-24 16:10:27', null, '2023-02-25 00:10:27', '6', '1');
INSERT INTO `smbms_bill` VALUES ('139', '1', '1', null, '1', '1.00', '1.00', '1', null, '2023-02-25 12:04:23', null, '2023-02-25 20:04:23', '2', '0');

-- ----------------------------
-- Table structure for smbms_provider
-- ----------------------------
DROP TABLE IF EXISTS `smbms_provider`;
CREATE TABLE `smbms_provider` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                                  `proCode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商编码',
                                  `proName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商名称',
                                  `proDesc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商详细描述',
                                  `proContact` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商联系人',
                                  `proPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
                                  `proAddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
                                  `proFax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传真',
                                  `createdBy` bigint(20) DEFAULT '1' COMMENT '创建者（userId）',
                                  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
                                  `modifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
                                  `modifyBy` tinyint(20) NOT NULL DEFAULT '0' COMMENT '更新人 0-没有人',
                                  `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-正常 1-已删除',
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smbms_provider
-- ----------------------------
INSERT INTO `smbms_provider` VALUES ('1', 'BJ_GYS001', '北京三木堂商贸有限公司', '长期合作伙伴，主营产品:茅台、五粮液、郎酒、酒鬼酒、泸州老窖、赖茅酒、法国红酒等', '张国强', '13566667777', '北京市丰台区育芳园北路', '010-58858787', '1', '2013-03-21 16:52:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('2', 'HB_GYS001', '石家庄帅益食品贸易有限公司', '长期合作伙伴，主营产品:饮料、水饮料、植物蛋白饮料、休闲食品、果汁饮料、功能饮料等', '王军', '13309094212', '河北省石家庄新华区', '0311-67738876', '1', '2016-04-13 04:20:40', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('3', 'GZ_GYS001', '深圳市泰香米业有限公司', '初次合作伙伴，主营产品：良记金轮米,龙轮香米等', '郑程瀚', '13402013312', '广东省深圳市福田区深南大道6006华丰大厦', '0755-67776212', '1', '2014-03-21 16:56:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('4', 'GZ_GYS002', '深圳市喜来客商贸有限公司', '长期合作伙伴，主营产品：坚果炒货.果脯蜜饯.天然花茶.营养豆豆.特色美食.进口食品.海味零食.肉脯肉', '林妮拟', '18599897645', '广东省深圳市福龙工业区B2栋3楼西', '0755-67772341', '1', '2013-03-22 16:52:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('5', 'JS_GYS009', '兴化佳美调味品厂', '长期合作伙伴，主营产品：天然香辛料、鸡精、复合调味料', '徐国洋', '13754444221', '江苏省兴化市林湖工业区', '0523-21299098', '1', '2015-11-22 16:52:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('6', 'BJ_GYS002', '北京纳福尔食用油有限公司', '长期合作伙伴，主营产品：山茶油、大豆油、花生油、橄榄油等', '马莺', '13422235678', '北京市朝阳区珠江帝景1号楼', '010-588634233', '1', '2012-03-21 17:52:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('7', 'BJ_GYS003', '北京国粮食用油有限公司', '初次合作伙伴，主营产品：花生油、大豆油、小磨油等', '王驰', '13344441135', '北京大兴青云店开发区', '010-588134111', '1', '2016-04-13 00:00:00', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('8', 'ZJ_GYS001', '慈溪市广和绿色食品厂', '长期合作伙伴，主营产品：豆瓣酱、黄豆酱、甜面酱，辣椒，大蒜等农产品', '薛圣丹', '18099953223', '浙江省宁波市慈溪周巷小安村', '0574-34449090', '1', '2013-11-21 06:02:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('9', 'GX_GYS001', '优百商贸有限公司', '长期合作伙伴，主营产品：日化产品', '李立国', '13323566543', '广西南宁市秀厢大道42-1号', '0771-98861134', '1', '2013-03-21 19:52:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('10', 'JS_GYS002', '南京火头军信息技术有限公司', '长期合作伙伴，主营产品：不锈钢厨具等', '陈女士', '13098992113', '江苏省南京市浦口区浦口大道1号新城总部大厦A座903室', '025-86223345', '1', '2013-03-25 16:52:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('11', 'GZ_GYS003', '广州市白云区美星五金制品厂', '长期合作伙伴，主营产品：海绵床垫、坐垫、靠垫、海绵枕头、头枕等', '梁天', '13562276775', '广州市白云区钟落潭镇福龙路20号', '020-85542231', '1', '2016-12-21 06:12:17', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('12', 'BJ_GYS004', '北京隆盛日化科技', '长期合作伙伴，主营产品：日化环保清洗剂，家居洗涤专卖、洗涤用品网、墙体除霉剂、墙面霉菌清除剂等', '孙欣', '13689865678', '北京市大兴区旧宫', '010-35576786', '1', '2014-11-21 12:51:11', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('13', 'SD_GYS001', '山东豪克华光联合发展有限公司', '长期合作伙伴，主营产品：洗衣皂、洗衣粉、洗衣液、洗洁精、消杀类、香皂等', '吴洪转', '13245468787', '山东济阳济北工业区仁和街21号', '0531-53362445', '1', '2015-01-28 10:52:07', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('14', 'JS_GYS003', '无锡喜源坤商行', '长期合作伙伴，主营产品：日化品批销', '周一清', '18567674532', '江苏无锡盛岸西路', '0510-32274422', '1', '2016-04-23 11:11:11', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('15', 'ZJ_GYS002', '乐摆日用品厂', '长期合作伙伴，主营产品：各种中、高档塑料杯，塑料乐扣水杯（密封杯）、保鲜杯（保鲜盒）、广告杯、礼品杯', '王世杰', '13212331567', '浙江省金华市义乌市义东路', '0579-34452321', '1', '2016-08-22 10:01:30', '2023-02-25 21:48:16', '0', '0');
INSERT INTO `smbms_provider` VALUES ('16', '00001', '超级无敌大老板', '123333333333', '柒木', '17888888883', '北京', '111-222-55-999', '1', '2023-02-25 13:08:36', '2023-02-25 21:48:16', '0', '0');

-- ----------------------------
-- Table structure for smbms_role
-- ----------------------------
DROP TABLE IF EXISTS `smbms_role`;
CREATE TABLE `smbms_role` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                              `roleCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
                              `roleName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
                              `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者',
                              `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
                              `modifyBy` bigint(20) DEFAULT NULL COMMENT '修改者',
                              `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
                              `isDelete` tinyint(4) DEFAULT '0' COMMENT '0-正常 1-已删除',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of smbms_role
-- ----------------------------
INSERT INTO `smbms_role` VALUES ('1', 'SMBMS_ADMIN', '系统管理员', '1', '2016-04-13 00:00:00', null, null, '0');
INSERT INTO `smbms_role` VALUES ('2', 'SMBMS_MANAGER', '经理', '1', '2016-04-13 00:00:00', null, null, '0');
INSERT INTO `smbms_role` VALUES ('3', 'SMBMS_EMPLOYEE', '普通员工', '1', '2016-04-13 00:00:00', null, null, '0');

-- ----------------------------
-- Table structure for smbms_user
-- ----------------------------
DROP TABLE IF EXISTS `smbms_user`;
CREATE TABLE `smbms_user` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                              `userCode` varchar(15) DEFAULT NULL COMMENT '用户编码',
                              `userName` varchar(15) DEFAULT NULL COMMENT '用户名称',
                              `userPassword` varchar(15) DEFAULT NULL COMMENT '用户密码',
                              `gender` tinyint(4) DEFAULT '1' COMMENT '性别（1:男、 2:女）',
                              `birthday` datetime DEFAULT NULL COMMENT '出生日期',
                              `phone` varchar(15) DEFAULT NULL COMMENT '手机',
                              `address` varchar(30) DEFAULT NULL COMMENT '地址',
                              `userRole` bigint(20) DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
                              `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
                              `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
                              `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
                              `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
                              `loginStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未登录 1 登录',
                              `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-正常 1-已删除',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=utf8 COMMENT='`smbms_user`';

-- ----------------------------
-- Records of smbms_user
-- ----------------------------
INSERT INTO `smbms_user` VALUES ('1', 'admin', '柒木', '12345678', '2', '2023-02-06 16:00:00', '17744608948', '北京', '1', null, '2023-02-24 16:35:29', null, null, '0', '0');
INSERT INTO `smbms_user` VALUES ('4', 'dddd', '邹哲瀚', '00000000', '1', '2022-09-08 16:00:00', '15804494596', '即墨', '1', '1', '2022-07-19 04:42:36', null, '2022-05-16 14:03:04', '0', '1');
INSERT INTO `smbms_user` VALUES ('5', 'BBJ', '史修洁', '00000000', '1', '2022-12-06 02:33:13', '17582720044', '渭南', '3', '1', '2022-05-26 20:10:01', null, '2022-05-01 10:45:36', '0', '1');
INSERT INTO `smbms_user` VALUES ('6', '3sTf', '王懿轩', '00000000', '1', '2022-12-25 13:28:00', '14560404461', '舟山', '3', '1', '2022-09-06 13:31:56', null, '2022-02-02 10:54:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('7', 'fwl', '张雪松', '00000000', '1', '2022-11-25 20:21:25', '17889104286', '北海', '3', '1', '2022-04-16 08:56:38', null, '2022-04-16 09:13:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('8', '17D', '龚博涛', '00000000', '1', '2022-02-27 18:13:19', '15560598940', '呼和浩特', '3', '1', '2022-09-07 07:42:39', null, '2022-06-20 14:54:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('9', 'O4C', '邱文昊', '00000000', '1', '2022-11-28 19:21:38', '15352236051', '韶关', '3', '1', '2022-11-08 17:02:01', null, '2022-09-04 15:40:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('10', 'sqga', '萧明杰', '00000000', '1', '2022-07-27 18:05:05', '15768365996', '石家庄', '3', '1', '2022-12-31 00:28:59', null, '2022-06-07 23:14:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('11', 'YP', '石伟宸', '00000000', '1', '2022-06-12 02:52:47', '17840373538', '宜宾', '3', '1', '2022-05-27 23:04:14', null, '2022-12-22 15:16:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('12', 'wz3VI', '顾炎彬', '00000000', '1', '2022-05-05 03:31:09', '15668949508', '常熟', '3', '1', '2022-09-16 19:54:01', null, '2022-11-09 13:14:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('13', 'QQ', '卢展鹏', '00000000', '1', '2022-03-07 01:48:40', '14721997251', '苏州', '3', '1', '2022-08-30 08:57:55', null, '2022-02-28 10:49:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('14', 'CSx4q', '邓鸿煊', '00000000', '1', '2022-04-03 21:55:41', '17343528464', '阳泉', '3', '1', '2022-03-09 02:48:05', null, '2022-10-25 20:44:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('15', 'x0xj', '余绍辉', '00000000', '1', '2022-07-22 07:20:23', '17572111474', '衡水', '3', '1', '2022-09-16 11:29:44', null, '2022-03-20 00:31:14', '0', '0');
INSERT INTO `smbms_user` VALUES ('16', 'nEC3g', '余黎昕', '00000000', '1', '2022-06-06 07:12:24', '17388248169', '牡丹江', '3', '1', '2022-12-19 05:09:05', null, '2022-12-23 23:32:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('17', 'SNH', '沈哲瀚', '00000000', '1', '2022-11-01 11:04:37', '15040978496', '广州', '3', '1', '2022-09-08 07:17:05', null, '2022-06-21 15:42:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('18', 'VZc', '郝展鹏', '00000000', '1', '2022-10-27 11:46:46', '18014655862', '宜兴', '3', '1', '2022-03-12 02:21:03', null, '2022-07-13 11:28:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('19', 'sc46', '蔡正豪', '00000000', '1', '2022-06-07 12:47:16', '13788344999', '荣成', '3', '1', '2022-03-23 22:54:07', null, '2022-01-23 02:20:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('20', 'dgA8', '冯伟泽', '00000000', '1', '2022-07-15 12:09:41', '15834041794', '攀枝花', '3', '1', '2022-02-11 20:24:08', null, '2022-10-02 04:03:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('21', 'cqITJ', '方烨伟', '00000000', '1', '2022-12-13 23:47:39', '18883495421', '烟台', '3', '1', '2022-02-03 00:58:18', null, '2022-10-17 18:51:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('22', 'v5', '覃智宸', '00000000', '1', '2022-09-11 21:50:40', '15131023730', '连云港', '3', '1', '2022-04-20 03:26:34', null, '2022-03-25 08:15:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('23', 'Ig', '蔡锦程', '00000000', '1', '2022-01-23 19:33:28', '15753896170', '滨州', '3', '1', '2022-12-02 12:24:16', null, '2022-06-10 03:08:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('24', 'yL', '莫智渊', '00000000', '1', '2022-07-23 13:13:23', '17634558040', '三门峡', '3', '1', '2022-06-27 01:22:43', null, '2022-10-18 03:33:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('25', '9YkUa', '吴博涛', '00000000', '1', '2022-02-21 12:01:49', '14799840503', '武汉', '3', '1', '2022-07-16 19:23:22', null, '2022-06-25 08:06:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('26', 'G4b', '马建辉', '00000000', '1', '2022-03-04 22:14:21', '17272454407', '遵义', '3', '1', '2022-06-07 17:50:57', null, '2022-12-11 23:33:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('27', 'mPk', '王煜城', '00000000', '1', '2022-08-19 01:35:36', '17250164174', '宁波', '3', '1', '2022-04-14 13:47:00', null, '2022-12-26 00:27:21', '0', '0');
INSERT INTO `smbms_user` VALUES ('28', 'oTC', '曹乐驹', '00000000', '1', '2022-11-16 01:01:22', '15202508571', '昆山', '3', '1', '2022-10-20 17:10:03', null, '2022-12-28 17:03:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('29', '30', '贺远航', '00000000', '1', '2022-09-29 18:18:53', '15542814203', '东莞', '3', '1', '2022-07-05 07:38:00', null, '2022-02-23 03:18:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('30', 'ou', '周立轩', '00000000', '1', '2022-03-18 00:16:40', '17771759682', '大连', '3', '1', '2022-08-04 07:57:15', null, '2022-05-25 22:16:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('31', 'UH', '曹绍辉', '00000000', '1', '2022-09-29 00:12:58', '15925233392', '克拉玛依', '3', '1', '2022-02-22 14:11:49', null, '2022-07-04 01:58:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('32', 'kdi', '陈修洁', '00000000', '1', '2022-06-28 21:29:10', '15266708868', '咸阳', '3', '1', '2022-03-05 00:34:31', null, '2022-07-12 02:14:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('33', 'Zbf', '郭靖琪', '00000000', '1', '2022-04-28 14:13:13', '15519748824', '九江', '3', '1', '2022-04-29 02:44:30', null, '2022-08-23 06:22:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('34', 'jsY', '彭鹏飞', '00000000', '1', '2022-01-10 06:55:57', '17093484113', '南通', '3', '1', '2022-07-24 12:23:03', null, '2022-05-10 03:06:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('35', 'MQS9t', '严晟睿', '00000000', '1', '2022-05-31 01:39:41', '15539819460', '东营', '3', '1', '2022-01-18 05:51:04', null, '2022-04-06 20:46:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('36', 'by', '戴哲瀚', '00000000', '1', '2022-11-24 07:45:09', '15290121017', '韶关', '3', '1', '2022-09-06 18:16:00', null, '2022-08-23 07:34:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('37', 'Ce', '张风华', '00000000', '1', '2022-06-10 15:47:13', '15915351290', '石嘴山', '3', '1', '2022-03-05 05:46:09', null, '2022-06-04 21:46:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('38', 'MT', '袁子轩', '00000000', '1', '2022-07-02 22:08:58', '17677008430', '张家港', '3', '1', '2022-06-07 18:51:49', null, '2022-08-22 12:03:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('39', 'Lvmr', '胡鸿煊', '00000000', '1', '2022-08-09 00:44:39', '14774277953', '曲靖', '3', '1', '2022-05-02 09:20:22', null, '2022-06-22 12:00:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('40', 'cp', '熊耀杰', '00000000', '1', '2022-08-26 03:10:47', '15177570364', '大庆', '3', '1', '2022-11-30 12:23:58', null, '2022-03-30 03:33:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('41', 'ItULG', '段远航', '00000000', '1', '2022-08-01 23:19:14', '15789972115', '泉州', '3', '1', '2022-09-05 19:02:51', null, '2022-02-15 05:07:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('42', 'L6Zq', '沈晓啸', '00000000', '1', '2022-09-01 18:09:51', '14757481015', '肇庆', '3', '1', '2022-02-05 14:11:16', null, '2022-01-10 15:49:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('43', 'dov', '薛弘文', '00000000', '1', '2022-10-30 10:56:50', '15041738703', '重庆', '3', '1', '2022-12-02 19:46:45', null, '2022-02-16 17:16:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('44', 'RR3', '武志强', '00000000', '1', '2022-06-26 16:41:42', '14705296515', '长沙', '3', '1', '2022-09-01 20:29:48', null, '2022-04-02 00:53:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('45', 'vqtS', '龙天宇', '00000000', '1', '2022-11-08 20:47:35', '15761188828', '盐城', '3', '1', '2022-08-06 04:09:47', null, '2022-03-08 22:24:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('46', 'g9', '杜博文', '00000000', '1', '2022-03-11 05:03:20', '18351948271', '张家界', '3', '1', '2022-02-25 18:54:06', null, '2022-01-21 17:14:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('47', 'hArhI', '郑立诚', '00000000', '1', '2022-03-18 03:05:48', '14769472172', '杭州', '3', '1', '2022-06-02 18:54:04', null, '2022-01-20 01:11:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('48', 'yR', '叶思远', '00000000', '1', '2022-03-18 05:19:52', '17081551077', '秦皇岛', '3', '1', '2022-03-27 09:35:53', null, '2022-02-13 06:03:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('49', 'D42p', '孔靖琪', '00000000', '1', '2022-08-13 19:21:03', '15399062468', '铜川', '3', '1', '2022-04-26 04:11:41', null, '2022-09-19 02:55:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('50', 'Jm', '任修洁', '00000000', '1', '2022-10-22 11:46:06', '17197432968', '南宁', '3', '1', '2022-06-13 03:03:33', null, '2022-08-11 00:02:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('51', 'km', '李雪松', '00000000', '1', '2022-10-14 02:48:16', '15874589741', '章丘', '3', '1', '2022-12-29 20:20:57', null, '2022-01-19 16:27:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('52', 'jzY1', '黎越泽', '00000000', '1', '2022-07-12 14:59:30', '17555605577', '铜川', '3', '1', '2022-07-31 18:11:51', null, '2022-10-21 05:13:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('53', '5iJcg', '史思', '00000000', '1', '2022-03-20 08:47:24', '15943985726', '太原', '3', '1', '2022-01-05 09:46:53', null, '2022-09-20 09:59:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('54', '9Pl', '傅子默', '00000000', '1', '2022-09-19 23:41:34', '15937415162', '寿光', '3', '1', '2022-05-14 02:31:43', null, '2022-10-27 01:23:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('55', '0bzgY', '廖鸿煊', '00000000', '1', '2022-06-08 15:14:39', '17606098554', '长治', '3', '1', '2022-04-16 17:17:45', null, '2022-04-03 01:01:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('56', 'q6fX', '叶智宸', '00000000', '1', '2022-08-20 11:03:22', '17152742750', '金昌', '3', '1', '2022-02-24 10:29:59', null, '2022-11-26 01:33:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('57', 'GO5', '邓昊天', '00000000', '1', '2022-02-02 11:35:11', '15939478320', '胶南', '3', '1', '2022-05-15 16:45:40', null, '2022-01-11 06:00:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('58', 'e0', '曹泽洋', '00000000', '1', '2022-01-30 06:18:45', '15719225734', '江门', '3', '1', '2022-03-26 06:22:50', null, '2022-08-08 02:07:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('59', 'ODb', '金正豪', '00000000', '1', '2022-10-14 00:19:55', '15019093517', '张家口', '3', '1', '2022-12-11 04:16:05', null, '2022-08-15 17:33:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('60', 'rapiN', '韩越彬', '00000000', '1', '2022-01-07 16:13:02', '15997515028', '清远', '3', '1', '2022-07-16 14:22:47', null, '2022-06-09 21:15:55', '0', '0');
INSERT INTO `smbms_user` VALUES ('61', 'Z6w9Y', '侯文轩', '00000000', '1', '2022-04-20 09:56:47', '15586986702', '招远', '3', '1', '2022-09-28 08:33:20', null, '2022-04-20 09:36:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('62', '9C', '毛致远', '00000000', '1', '2022-06-29 18:06:06', '14574856999', '瓦房店', '3', '1', '2022-11-11 07:57:59', null, '2022-01-04 21:45:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('63', 'lVJ', '彭伟泽', '00000000', '1', '2022-04-12 10:22:34', '17034889855', '玉溪', '3', '1', '2022-06-08 09:48:46', null, '2022-03-28 15:31:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('64', 'iEg', '徐涛', '00000000', '1', '2022-05-22 10:55:14', '14704289247', '莱芜', '3', '1', '2022-07-28 15:15:33', null, '2022-01-22 18:09:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('65', 'Kuk', '邹哲瀚', '00000000', '1', '2022-05-23 00:19:37', '17637079105', '太原', '3', '1', '2022-03-01 09:40:33', null, '2022-06-27 06:12:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('66', 'UtuJ', '谭烨磊', '00000000', '1', '2022-01-08 10:07:26', '15864466258', '河源', '3', '1', '2022-12-19 07:45:01', null, '2022-08-30 02:00:14', '0', '0');
INSERT INTO `smbms_user` VALUES ('67', 'F131', '金越彬', '00000000', '1', '2022-06-02 15:25:57', '18987127809', '临安', '3', '1', '2022-06-07 16:23:36', null, '2022-05-21 01:55:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('68', 'fmtYR', '黄越彬', '00000000', '1', '2022-06-06 03:19:33', '15834426946', '焦作', '3', '1', '2022-10-28 16:38:02', null, '2022-01-02 02:56:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('69', 'AKC7P', '钱思远', '00000000', '1', '2022-11-11 20:18:21', '15137868409', '诸暨', '3', '1', '2022-02-17 13:17:25', null, '2022-05-23 17:41:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('70', 'jj2Qr', '张鹏涛', '00000000', '1', '2022-04-06 13:02:12', '17784607682', '三亚', '3', '1', '2022-09-26 16:44:34', null, '2022-03-06 19:45:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('71', '19WXi', '尹伟祺', '00000000', '1', '2022-06-11 15:41:36', '15750206464', '上海', '3', '1', '2022-03-16 18:25:28', null, '2022-01-03 09:58:06', '0', '0');
INSERT INTO `smbms_user` VALUES ('72', 'QCF3b', '邱擎苍', '00000000', '1', '2022-11-20 07:43:36', '17648349016', '呼和浩特', '3', '1', '2022-02-03 09:35:29', null, '2022-10-27 11:49:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('73', '86kIf', '郭楷瑞', '00000000', '1', '2022-03-28 07:01:12', '18363449885', '成都', '3', '1', '2022-02-18 03:45:41', null, '2022-04-11 12:53:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('74', 'mvzJ', '黄黎昕', '00000000', '1', '2022-01-16 16:47:55', '15245736082', '济宁', '3', '1', '2022-03-03 15:57:46', null, '2022-02-12 11:21:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('75', '7KWLT', '谢修杰', '00000000', '1', '2022-11-18 02:25:07', '15241750594', '海门', '3', '1', '2022-08-27 15:31:39', null, '2022-11-09 05:09:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('76', 'aYfyJ', '黄笑愚', '00000000', '1', '2022-08-20 21:35:51', '15971187620', '东莞', '3', '1', '2022-10-31 18:53:39', null, '2022-12-04 06:45:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('77', 'SlNQP', '于绍辉', '00000000', '1', '2022-05-20 20:40:10', '14537357592', '南充', '3', '1', '2022-11-24 19:50:55', null, '2022-09-11 13:35:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('78', 'LU', '任凯瑞', '00000000', '1', '2022-01-18 09:13:23', '18106103934', '大连', '3', '1', '2022-04-22 00:27:37', null, '2022-04-03 07:37:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('79', 'b6', '侯志泽', '00000000', '1', '2022-05-08 02:32:49', '15601368167', '南昌', '3', '1', '2022-04-30 06:50:00', null, '2022-06-23 21:48:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('80', 'pjT', '谭鹏飞', '00000000', '1', '2022-08-13 04:15:54', '15264527307', '乌鲁木齐', '3', '1', '2022-09-15 11:17:35', null, '2022-01-09 10:17:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('81', 'uLTwJ', '江越泽', '00000000', '1', '2022-07-14 12:34:48', '15152798631', '曲靖', '3', '1', '2022-04-10 21:52:22', null, '2022-10-29 12:06:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('82', 'jR', '覃鸿煊', '00000000', '1', '2022-06-07 17:45:53', '15886300886', '蓬莱', '3', '1', '2022-08-24 15:43:24', null, '2022-01-27 11:39:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('83', 'Cy0T', '谭伟诚', '00000000', '1', '2022-06-02 05:42:25', '15111122152', '银川', '3', '1', '2022-02-04 05:32:30', null, '2022-09-14 15:01:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('84', 'TBsGG', '郝瑾瑜', '00000000', '1', '2022-05-04 12:22:22', '15762438973', '锦州', '3', '1', '2022-03-13 14:08:42', null, '2022-11-28 18:39:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('85', 'Z4', '顾思', '00000000', '1', '2022-06-15 07:52:24', '15205627960', '济南', '3', '1', '2022-08-29 10:04:49', null, '2022-03-08 18:06:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('86', 'eJBiT', '雷雪松', '00000000', '1', '2022-03-01 20:32:03', '17594808369', '锦州', '3', '1', '2022-09-20 11:35:39', null, '2022-12-14 15:56:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('87', 'R98', '蔡越泽', '00000000', '1', '2022-02-08 23:19:01', '17500321508', '胶州', '3', '1', '2022-05-02 06:05:41', null, '2022-09-10 09:11:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('88', 'Xe7B', '余笑愚', '00000000', '1', '2022-06-09 17:19:44', '15947488936', '岳阳', '3', '1', '2022-02-09 02:40:24', null, '2022-01-19 04:19:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('89', 'ZKK', '江峻熙', '00000000', '1', '2022-01-15 04:57:12', '18647293028', '北海', '3', '1', '2022-03-17 15:27:27', null, '2022-10-19 14:19:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('90', '4g3', '夏致远', '00000000', '1', '2022-08-27 20:48:20', '15776443372', '徐州', '3', '1', '2022-01-28 10:01:26', null, '2022-05-23 20:41:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('91', 'yQQ', '程靖琪', '00000000', '1', '2022-07-31 15:48:10', '15021406846', '福州', '3', '1', '2022-07-23 17:04:15', null, '2022-06-13 04:23:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('92', 'YHPXQ', '蒋耀杰', '00000000', '1', '2022-04-21 14:59:10', '14581227682', '烟台', '3', '1', '2022-09-23 10:59:18', null, '2022-11-14 16:31:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('93', 'C0', '吴烨霖', '00000000', '1', '2022-12-22 11:11:51', '15597942771', '东营', '3', '1', '2022-12-09 08:01:33', null, '2022-03-06 14:01:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('94', 'trVL', '范思远', '00000000', '1', '2022-09-13 20:23:41', '15609755979', '马鞍山', '3', '1', '2022-11-08 04:02:46', null, '2022-07-27 15:50:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('95', 'y60', '邱鹏飞', '00000000', '1', '2022-12-09 05:49:04', '15073268360', '衡水', '3', '1', '2022-05-03 16:39:41', null, '2022-11-11 05:24:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('96', '8caF', '莫哲瀚', '00000000', '1', '2022-04-27 15:35:39', '15317450611', '株洲', '3', '1', '2022-08-20 22:41:59', null, '2022-01-02 04:50:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('97', 'R75qO', '曹展鹏', '00000000', '1', '2022-01-08 18:36:23', '17721799099', '遵义', '3', '1', '2022-11-16 22:32:30', null, '2022-03-15 20:34:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('98', 'kt', '范文昊', '00000000', '1', '2022-12-06 15:45:53', '15376813872', '安阳', '3', '1', '2022-05-09 17:46:37', null, '2022-07-18 01:06:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('99', 'bQ', '刘凯瑞', '00000000', '1', '2022-03-06 21:32:13', '17714277586', '营口', '3', '1', '2022-10-28 06:13:38', null, '2022-03-28 03:39:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('100', '4eOz', '贾弘文', '00000000', '1', '2022-01-27 18:07:02', '17395635941', '安阳', '3', '1', '2022-08-11 07:21:18', null, '2022-02-28 06:50:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('101', 'Hh8O2', '孔瑞霖', '00000000', '1', '2022-09-14 09:14:29', '15307427290', '上海', '3', '1', '2022-10-24 13:26:02', null, '2022-11-14 08:04:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('102', 'kJ', '郑正豪', '00000000', '1', '2022-09-19 16:31:58', '17209662931', '天津', '3', '1', '2022-07-14 04:58:06', null, '2022-10-17 02:25:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('103', 'L3iCb', '宋驰', '00000000', '1', '2022-08-19 19:03:52', '15187675926', '泰州', '3', '1', '2022-04-02 03:52:16', null, '2022-08-06 15:05:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('104', 'znOR', '徐凯瑞', '00000000', '1', '2022-07-20 22:32:12', '17803515925', '东莞', '3', '1', '2022-05-18 09:31:05', null, '2022-03-31 18:10:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('105', 'KgqY', '李鹏', '00000000', '1', '2022-04-14 13:39:26', '17055005378', '温州', '3', '1', '2022-09-25 09:24:40', null, '2022-10-20 16:54:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('106', '1rgy', '黎建辉', '00000000', '1', '2022-06-19 12:46:57', '15297003265', '杭州', '3', '1', '2022-10-04 17:24:42', null, '2022-07-29 12:44:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('107', 'nEk', '贺昊天', '00000000', '1', '2022-07-21 13:30:58', '13743780865', '银川', '3', '1', '2022-09-25 08:06:08', null, '2022-07-08 18:22:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('108', '6I3', '黄天宇', '00000000', '1', '2022-06-30 16:18:42', '15749115018', '河源', '3', '1', '2022-07-02 15:56:37', null, '2022-01-09 21:43:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('109', 'oMq', '魏越彬', '00000000', '1', '2022-04-03 20:58:16', '15158630358', '攀枝花', '3', '1', '2022-09-11 11:45:02', null, '2022-10-16 12:19:29', '0', '0');
INSERT INTO `smbms_user` VALUES ('110', 'Fh10p', '雷琪', '00000000', '1', '2022-01-17 01:46:59', '15242802652', '自贡', '3', '1', '2022-06-18 10:27:47', null, '2022-06-18 18:31:06', '0', '0');
INSERT INTO `smbms_user` VALUES ('111', 'P4Vl2', '顾文昊', '00000000', '1', '2022-08-04 06:32:36', '14741702845', '锦州', '3', '1', '2022-07-17 05:40:01', null, '2022-09-23 04:15:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('112', 'xb3', '许鑫磊', '00000000', '1', '2022-10-10 05:35:19', '15253503729', '邢台', '3', '1', '2022-03-01 19:23:36', null, '2022-06-22 01:16:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('113', 'fPY', '韦健柏', '00000000', '1', '2022-10-18 05:34:12', '15623241307', '西宁', '3', '1', '2022-04-09 07:45:56', null, '2022-02-12 01:52:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('114', 'YkLUz', '苏黎昕', '00000000', '1', '2022-08-16 07:35:32', '13595021027', '成都', '3', '1', '2022-12-12 06:19:13', null, '2022-11-23 13:05:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('115', 'zaGhA', '余立诚', '00000000', '1', '2022-06-23 08:57:28', '17123825402', '张家口', '3', '1', '2022-06-11 21:34:08', null, '2022-05-15 12:45:10', '0', '0');
INSERT INTO `smbms_user` VALUES ('116', 'avh', '钟弘文', '00000000', '1', '2022-04-08 16:56:48', '15338854089', '厦门', '3', '1', '2022-06-05 09:29:27', null, '2022-09-10 21:34:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('117', 'yC9bb', '钱子涵', '00000000', '1', '2022-01-17 23:48:01', '15590677915', '惠州', '3', '1', '2022-07-11 16:54:30', null, '2022-01-12 13:32:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('118', 'y0EG', '黄伟祺', '00000000', '1', '2022-04-30 10:07:31', '15139629674', '淮安', '3', '1', '2022-12-13 05:18:51', null, '2022-01-13 09:53:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('119', 'K6ST', '洪展鹏', '00000000', '1', '2022-01-14 06:45:14', '17882402732', '昆山', '3', '1', '2022-06-23 23:51:57', null, '2022-07-12 06:42:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('120', 'Ux', '姜子轩', '00000000', '1', '2022-09-03 04:56:28', '15680513278', '汕头', '3', '1', '2022-12-17 06:03:31', null, '2022-06-25 04:05:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('121', 'KFWhl', '史鑫磊', '00000000', '1', '2022-06-23 02:57:09', '15774542057', '江门', '3', '1', '2022-07-21 19:18:23', null, '2022-07-22 18:20:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('122', 'bxM', '丁天翊', '00000000', '1', '2022-04-07 10:09:02', '15283388879', '丽水', '3', '1', '2022-08-02 19:42:49', null, '2022-04-29 21:51:43', '0', '0');
INSERT INTO `smbms_user` VALUES ('123', 'Ooh', '苏弘文', '00000000', '1', '2022-12-02 16:07:38', '17123331413', '安阳', '3', '1', '2022-10-18 23:41:08', null, '2022-12-31 12:34:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('124', 'z2FJw', '陶泽洋', '00000000', '1', '2022-12-21 15:08:00', '17773478004', '克拉玛依', '3', '1', '2022-02-08 21:29:40', null, '2022-07-03 17:36:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('125', 'LL5bf', '蒋胤祥', '00000000', '1', '2022-08-28 19:34:06', '17207659929', '菏泽', '3', '1', '2022-01-23 19:45:04', null, '2022-08-24 21:37:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('126', 'Uac', '朱雨泽', '00000000', '1', '2022-02-03 21:49:01', '17654740465', '阳江', '3', '1', '2022-04-11 13:51:11', null, '2022-02-21 09:39:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('127', 'Pa6Pu', '张驰', '00000000', '1', '2022-03-11 13:41:06', '14587257130', '淮安', '3', '1', '2022-10-22 02:22:16', null, '2022-12-19 07:06:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('128', 'kAk', '夏子默', '00000000', '1', '2022-10-03 02:30:55', '17043773494', '清远', '3', '1', '2022-02-26 01:42:53', null, '2022-10-18 03:07:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('129', 'AOZor', '戴胤祥', '00000000', '1', '2022-07-29 09:26:44', '15925801123', '临安', '3', '1', '2022-03-26 07:31:19', null, '2022-12-23 15:02:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('130', 'y7YNd', '贺峻熙', '00000000', '1', '2022-06-12 11:45:24', '18128433511', '青岛', '3', '1', '2022-10-07 10:11:16', null, '2022-07-11 07:43:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('131', 'bU2', '魏嘉熙', '00000000', '1', '2022-12-16 12:37:55', '15531782344', '海门', '3', '1', '2022-08-13 23:24:45', null, '2022-07-30 09:22:14', '0', '0');
INSERT INTO `smbms_user` VALUES ('132', '9HafK', '彭鹏', '00000000', '1', '2022-07-18 03:40:54', '17809240669', '莱西', '3', '1', '2022-06-13 15:46:39', null, '2022-06-22 03:42:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('133', 'vCm9', '江文博', '00000000', '1', '2022-05-16 00:14:18', '15606407946', '淄博', '3', '1', '2022-03-01 16:29:18', null, '2022-09-09 20:17:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('134', 'cxO', '杨修杰', '00000000', '1', '2022-07-06 22:40:36', '15684020043', '宜兴', '3', '1', '2022-02-15 03:08:48', null, '2022-03-31 17:06:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('135', 'cSC', '卢嘉懿', '00000000', '1', '2022-07-08 23:34:22', '15518019649', '呼和浩特', '3', '1', '2022-11-09 20:09:04', null, '2022-01-22 05:55:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('136', 'pu', '叶烨伟', '00000000', '1', '2022-07-31 21:22:12', '15041849264', '上海', '3', '1', '2022-10-02 20:35:09', null, '2022-10-14 23:53:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('137', 'fI', '邵智渊', '00000000', '1', '2022-08-03 15:05:14', '17338164180', '清远', '3', '1', '2022-11-07 22:41:59', null, '2022-05-31 00:41:21', '0', '0');
INSERT INTO `smbms_user` VALUES ('138', 'oVCle', '黎博超', '00000000', '1', '2022-05-24 01:18:20', '15727241941', '日照', '3', '1', '2022-06-12 16:44:20', null, '2022-08-17 23:39:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('139', 'EB', '潘熠彤', '00000000', '1', '2022-03-14 17:46:07', '14567979629', '章丘', '3', '1', '2022-05-13 14:57:52', null, '2022-01-17 07:55:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('140', 'Xi7', '廖立轩', '00000000', '1', '2022-01-02 21:45:36', '15888996715', '绵阳', '3', '1', '2022-04-20 13:54:29', null, '2022-05-25 12:15:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('141', 'bml', '覃彬', '00000000', '1', '2022-03-13 23:41:13', '15091730801', '烟台', '3', '1', '2022-07-03 12:08:32', null, '2022-06-15 18:31:10', '0', '0');
INSERT INTO `smbms_user` VALUES ('142', 'nY', '邓志强', '00000000', '1', '2022-12-20 11:40:52', '17154744741', '诸暨', '3', '1', '2022-12-20 03:16:18', null, '2022-12-26 02:27:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('143', 'E6b', '邹天宇', '00000000', '1', '2022-07-10 05:47:10', '15664547203', '句容', '3', '1', '2022-06-03 20:41:29', null, '2022-04-29 19:58:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('144', 'J5', '邵浩然', '00000000', '1', '2022-03-06 05:22:29', '17642624061', '海口', '3', '1', '2022-11-27 17:18:44', null, '2022-09-16 16:19:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('145', 'n4N', '杨梓晨', '00000000', '1', '2022-07-11 03:41:42', '14573920995', '宜昌', '3', '1', '2022-09-20 08:27:23', null, '2022-09-20 11:55:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('146', 'GQYBF', '邓鸿涛', '00000000', '1', '2022-06-20 19:45:34', '15264051302', '溧阳', '3', '1', '2022-11-14 19:16:31', null, '2022-11-11 07:54:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('147', 'I0aR', '姜绍齐', '00000000', '1', '2022-06-08 05:21:05', '15139313529', '抚顺', '3', '1', '2022-08-29 13:43:32', null, '2022-02-15 06:30:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('148', '1NN', '姜峻熙', '00000000', '1', '2022-09-19 17:48:32', '15374869249', '淮安', '3', '1', '2022-02-01 00:19:01', null, '2022-03-20 16:17:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('149', '32z', '曾博涛', '00000000', '1', '2022-09-23 22:49:59', '17275176232', '烟台', '3', '1', '2022-03-02 09:33:33', null, '2022-04-19 04:10:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('150', 'MC', '丁琪', '00000000', '1', '2022-02-10 18:11:47', '14707036494', '衢州', '3', '1', '2022-12-29 06:07:20', null, '2022-09-24 00:24:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('151', 'i0T5m', '胡钰轩', '00000000', '1', '2022-08-11 06:53:42', '15288617330', '泰州', '3', '1', '2022-10-01 21:34:20', null, '2022-10-11 01:27:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('152', 'IfEM', '尹思远', '00000000', '1', '2022-08-12 16:59:45', '15110458616', '成都', '3', '1', '2022-01-09 06:44:21', null, '2022-10-06 16:53:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('153', 'WWR', '杨彬', '00000000', '1', '2022-01-22 02:28:34', '18529276794', '芜湖', '3', '1', '2022-02-07 18:06:08', null, '2022-01-07 16:00:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('154', 'iBK', '白峻熙', '00000000', '1', '2022-11-23 20:35:07', '17281436611', '淄博', '3', '1', '2022-07-04 17:24:51', null, '2022-12-25 06:09:43', '0', '0');
INSERT INTO `smbms_user` VALUES ('155', '8LoZy', '贺雨泽', '00000000', '1', '2022-05-02 01:47:26', '17634135025', '临沂', '3', '1', '2022-10-05 07:40:11', null, '2022-02-14 20:25:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('156', '3tM1y', '萧昊焱', '00000000', '1', '2022-04-27 23:47:26', '13000196551', '鞍山', '3', '1', '2022-07-02 01:44:31', null, '2022-12-17 00:46:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('157', 'hCr', '周智宸', '00000000', '1', '2022-05-07 16:13:13', '17506577048', '无锡', '3', '1', '2022-10-31 19:00:09', null, '2022-09-11 17:08:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('158', 'f5', '谭远航', '00000000', '1', '2022-02-09 22:42:49', '15871337853', '渭南', '3', '1', '2022-07-11 07:42:06', null, '2022-03-23 02:06:29', '0', '0');
INSERT INTO `smbms_user` VALUES ('159', 'tKVd', '阎正豪', '00000000', '1', '2022-05-18 15:57:03', '13995925344', '济宁', '3', '1', '2022-04-02 15:11:52', null, '2022-03-27 04:49:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('160', 'jfM', '卢鸿煊', '00000000', '1', '2022-06-24 17:54:53', '17772477148', '泰安', '3', '1', '2022-09-07 20:02:42', null, '2022-08-12 21:13:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('161', 'lRuU', '戴航', '00000000', '1', '2022-07-08 21:11:48', '17049041899', '阳泉', '3', '1', '2022-07-07 07:56:02', null, '2022-06-24 08:00:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('162', 'LJN', '曹浩宇', '00000000', '1', '2022-04-12 18:32:40', '17687286701', '咸阳', '3', '1', '2022-11-28 18:42:26', null, '2022-04-18 12:41:14', '0', '0');
INSERT INTO `smbms_user` VALUES ('163', 'YW', '邱涛', '00000000', '1', '2022-04-28 06:38:27', '17844058191', '青岛', '3', '1', '2022-12-22 01:22:15', null, '2022-05-23 15:50:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('164', 'eNb', '冯伟祺', '00000000', '1', '2022-12-24 17:16:08', '15612982245', '泸州', '3', '1', '2022-02-16 06:45:19', null, '2022-11-19 14:49:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('165', '21CY', '袁风华', '00000000', '1', '2022-09-29 00:09:52', '15182046335', '莱西', '3', '1', '2022-03-09 18:01:49', null, '2022-04-22 12:50:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('166', 'FM21', '王思源', '00000000', '1', '2022-10-04 01:43:26', '15959741848', '三亚', '3', '1', '2022-08-03 06:28:23', null, '2022-08-04 12:30:45', '0', '0');
INSERT INTO `smbms_user` VALUES ('167', 'dYYQL', '胡雨泽', '00000000', '1', '2022-03-31 07:59:44', '17899146570', '重庆', '3', '1', '2022-08-27 23:33:34', null, '2022-10-15 17:12:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('168', 'u81h', '邵瑾瑜', '00000000', '1', '2022-04-06 04:54:56', '15795230894', '锦州', '3', '1', '2022-10-20 06:51:19', null, '2022-08-01 05:53:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('169', '8x', '阎振家', '00000000', '1', '2022-07-28 14:52:48', '17788661421', '上海', '3', '1', '2022-07-20 11:42:40', null, '2022-06-09 17:25:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('170', '4uR', '郑晋鹏', '00000000', '1', '2022-12-02 08:24:11', '15977907459', '聊城', '3', '1', '2022-11-05 01:38:50', null, '2022-02-03 21:25:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('171', 'HuN', '梁鸿煊', '00000000', '1', '2022-04-27 12:24:32', '18464769848', '潮州', '3', '1', '2022-08-01 14:35:09', null, '2022-02-27 05:11:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('172', 'B5Qj', '高昊天', '00000000', '1', '2022-03-22 22:29:03', '17543107063', '金坛', '3', '1', '2022-12-30 09:01:16', null, '2022-11-12 12:12:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('173', '0MNNL', '孔绍辉', '00000000', '1', '2022-03-28 17:40:36', '15213254176', '唐山', '3', '1', '2022-01-03 08:03:28', null, '2022-09-16 19:42:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('174', 'ulN', '洪俊驰', '00000000', '1', '2022-12-08 18:26:54', '17309959325', '乌鲁木齐', '3', '1', '2022-01-25 10:56:47', null, '2022-02-11 23:06:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('175', 'nhP5', '叶果', '00000000', '1', '2022-02-21 18:58:11', '15707544665', '海口', '3', '1', '2022-09-26 15:14:31', null, '2022-06-11 20:39:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('176', 'nEHk', '白天磊', '00000000', '1', '2022-11-27 02:40:56', '15370475734', '秦皇岛', '3', '1', '2022-11-22 21:54:53', null, '2022-12-21 13:43:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('177', 'aYw', '邹健柏', '00000000', '1', '2022-07-24 14:17:41', '13539265804', '芜湖', '3', '1', '2022-08-01 19:11:38', null, '2022-01-25 01:38:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('178', 'jghGF', '邓天磊', '00000000', '1', '2022-04-25 20:10:15', '15722484865', '银川', '3', '1', '2022-07-15 23:05:29', null, '2022-03-07 22:40:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('179', 'xjhp', '潘金鑫', '00000000', '1', '2022-12-10 18:35:41', '17084710391', '郑州', '3', '1', '2022-05-13 20:06:36', null, '2022-03-05 05:40:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('180', 'qxT2', '萧楷瑞', '00000000', '1', '2022-07-19 13:28:47', '13206165525', '乌鲁木齐', '3', '1', '2022-03-12 10:22:02', null, '2022-09-10 07:00:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('181', 'wpRnw', '丁志强', '00000000', '1', '2022-02-23 15:34:52', '17083836178', '临安', '3', '1', '2022-09-21 08:08:54', null, '2022-01-19 07:22:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('182', '1jx', '徐明杰', '00000000', '1', '2022-09-17 08:13:37', '17891673531', '张家界', '3', '1', '2022-09-26 19:45:18', null, '2022-08-23 21:05:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('183', 'SvvPy', '梁子涵', '00000000', '1', '2022-09-02 00:49:26', '17759703914', '邢台', '3', '1', '2022-01-15 11:59:53', null, '2022-02-09 13:15:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('184', 'ysfFw', '金博超', '00000000', '1', '2022-09-27 03:20:10', '18971208808', '章丘', '3', '1', '2022-02-14 04:09:26', null, '2022-11-22 15:18:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('185', 'LsXML', '侯金鑫', '00000000', '1', '2022-11-29 18:37:13', '17052265098', '岳阳', '3', '1', '2022-02-04 15:31:09', null, '2022-03-21 18:41:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('186', 'IzP', '苏智辉', '00000000', '1', '2022-10-22 09:33:50', '17682931852', '莱州', '3', '1', '2022-12-16 13:58:44', null, '2022-03-06 05:53:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('187', '4bi', '董文', '00000000', '1', '2022-08-04 17:57:41', '17254957509', '德阳', '3', '1', '2022-04-09 10:36:52', null, '2022-08-27 10:33:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('188', 'ZbcsE', '洪君浩', '00000000', '1', '2022-01-26 21:59:27', '17834573228', '包头', '3', '1', '2022-10-26 09:04:44', null, '2022-04-03 07:18:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('189', 'Ynd', '阎修杰', '00000000', '1', '2022-02-12 21:37:40', '14540081635', '青岛', '3', '1', '2022-11-02 10:00:08', null, '2022-01-10 16:19:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('190', 'AR', '陈昊强', '00000000', '1', '2022-11-26 19:06:14', '17699890390', '德阳', '3', '1', '2022-01-06 06:24:07', null, '2022-07-05 19:32:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('191', 'SP9g7', '廖越彬', '00000000', '1', '2022-01-25 04:46:12', '15615504522', '牡丹江', '3', '1', '2022-12-08 06:25:48', null, '2022-02-01 12:39:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('192', 'TrTcs', '杜乐驹', '00000000', '1', '2022-08-28 01:06:58', '13369996573', '重庆', '3', '1', '2022-08-17 01:25:04', null, '2022-06-05 21:38:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('193', 'EAs', '郭哲瀚', '00000000', '1', '2022-12-21 23:19:48', '17373594543', '邯郸', '3', '1', '2022-02-22 01:31:38', null, '2022-11-06 15:04:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('194', 'io4X', '贾弘文', '00000000', '1', '2022-12-15 10:41:58', '17102567168', '汕尾', '3', '1', '2022-04-04 06:51:53', null, '2022-08-22 04:15:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('195', 'oy1D', '史子轩', '00000000', '1', '2022-10-18 17:39:38', '15810288810', '烟台', '3', '1', '2022-05-07 07:24:38', null, '2022-06-23 19:45:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('196', 'cF', '冯绍齐', '00000000', '1', '2022-01-14 05:31:36', '15348245868', '泰州', '3', '1', '2022-12-28 05:06:27', null, '2022-06-14 01:07:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('197', 'MRd', '任鑫磊', '00000000', '1', '2022-10-19 01:18:06', '17106351726', '东营', '3', '1', '2022-08-24 06:57:13', null, '2022-03-05 10:31:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('198', 'bm0LC', '苏越彬', '00000000', '1', '2022-06-26 03:13:11', '15175392210', '玉溪', '3', '1', '2022-11-15 13:14:17', null, '2022-05-09 19:40:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('199', 'fG', '戴鹭洋', '00000000', '1', '2022-12-21 12:54:44', '15745868146', '太原', '3', '1', '2022-10-28 20:41:51', null, '2022-01-05 20:17:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('200', 'ZE', '龚健柏', '00000000', '1', '2022-04-28 03:05:32', '15587791030', '滨州', '3', '1', '2022-11-06 06:02:08', null, '2022-04-01 06:36:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('201', 'FGo9Q', '丁明轩', '00000000', '1', '2022-11-14 01:42:59', '17322971820', '吉林', '3', '1', '2022-01-16 03:28:29', null, '2022-03-28 13:20:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('202', 'ST', '于伟祺', '00000000', '1', '2022-01-20 06:29:23', '15226175015', '宿迁', '3', '1', '2022-08-28 08:13:29', null, '2022-08-02 06:38:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('203', '3Rzws', '冯博涛', '00000000', '1', '2022-05-14 10:12:48', '17882158563', '鞍山', '3', '1', '2022-07-10 00:26:00', null, '2022-02-19 09:34:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('204', 'R6', '雷昊天', '00000000', '1', '2022-11-27 06:42:07', '17189590331', '焦作', '3', '1', '2022-10-13 18:14:08', null, '2022-04-28 20:23:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('205', 'VZhe', '赵泽洋', '00000000', '1', '2022-04-28 20:35:34', '15073259193', '章丘', '3', '1', '2022-07-21 14:17:49', null, '2022-01-26 01:58:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('206', 'sQAnY', '范立果', '00000000', '1', '2022-09-02 06:31:03', '15696472273', '柳州', '3', '1', '2022-09-01 09:02:30', null, '2022-02-11 17:27:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('207', 'flRwM', '卢致远', '00000000', '1', '2022-03-23 20:19:44', '17866789182', '嘉兴', '3', '1', '2022-03-18 14:35:15', null, '2022-07-29 16:21:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('208', 'GV8', '任鹭洋', '00000000', '1', '2022-07-28 19:52:14', '15061053338', '上海', '3', '1', '2022-10-24 05:43:34', null, '2022-02-15 18:06:10', '0', '0');
INSERT INTO `smbms_user` VALUES ('209', 'fs', '金浩宇', '00000000', '1', '2022-02-17 17:19:10', '13371090307', '诸暨', '3', '1', '2022-02-19 13:23:29', null, '2022-09-20 08:57:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('210', 'Qr', '薛瑞霖', '00000000', '1', '2022-09-23 03:09:52', '17242907933', '大同', '3', '1', '2022-03-20 05:45:43', null, '2022-11-15 21:05:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('211', 'xxBiv', '熊浩轩', '00000000', '1', '2022-01-30 14:35:05', '17250664631', '清远', '3', '1', '2022-08-06 01:27:53', null, '2022-08-22 06:32:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('212', 'JC8d', '袁胤祥', '00000000', '1', '2022-05-18 13:12:37', '15646472652', '拉萨', '3', '1', '2022-08-21 07:16:04', null, '2022-10-02 18:46:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('213', 'ZaIk', '朱风华', '00000000', '1', '2022-12-08 23:23:16', '15018453462', '韶关', '3', '1', '2022-10-10 14:27:21', null, '2022-07-24 18:17:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('214', 'ekW', '沈天磊', '00000000', '1', '2022-05-17 05:50:47', '15239683829', '滨州', '3', '1', '2022-03-08 22:22:28', null, '2022-08-31 12:27:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('215', 'E3GW', '邓荣轩', '00000000', '1', '2022-09-02 17:33:55', '15596667094', '东莞', '3', '1', '2022-11-03 04:46:12', null, '2022-08-01 20:18:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('216', 'eG5o', '夏远航', '00000000', '1', '2022-09-24 10:14:10', '17061022806', '洛阳', '3', '1', '2022-04-29 20:28:19', null, '2022-11-30 05:43:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('217', '5A', '万立果', '00000000', '1', '2022-07-21 13:36:46', '15881916670', '成都', '3', '1', '2022-08-14 07:17:14', null, '2022-05-27 02:50:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('218', '6y', '钱乐驹', '00000000', '1', '2022-06-21 16:40:06', '17255421667', '聊城', '3', '1', '2022-03-29 12:11:15', null, '2022-01-21 16:18:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('219', '91', '蒋伟祺', '00000000', '1', '2022-09-02 04:28:42', '17764676176', '柳州', '3', '1', '2022-01-21 14:19:00', null, '2022-05-12 19:03:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('220', 'a5', '覃昊天', '00000000', '1', '2022-07-26 17:28:10', '17158120306', '武汉', '3', '1', '2022-01-24 12:38:11', null, '2022-03-12 20:54:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('221', 'gc', '万驰', '00000000', '1', '2022-04-14 14:22:36', '15313371595', '锦州', '3', '1', '2022-10-24 02:58:57', null, '2022-12-04 22:20:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('222', 'wic', '董展鹏', '00000000', '1', '2022-04-16 17:20:53', '15569985845', '无锡', '3', '1', '2022-10-22 16:28:04', null, '2022-03-29 22:06:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('223', 'cf', '马文昊', '00000000', '1', '2022-04-06 02:34:06', '15885115147', '日照', '3', '1', '2022-02-17 01:49:42', null, '2022-06-16 01:34:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('224', 'Ua', '邓建辉', '00000000', '1', '2022-06-29 15:30:16', '15968535075', '菏泽', '3', '1', '2022-03-22 00:54:44', null, '2022-03-25 02:39:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('225', 'ik', '武泽洋', '00000000', '1', '2022-04-11 10:40:55', '17861377545', '舟山', '3', '1', '2022-12-31 22:56:19', null, '2022-02-05 14:27:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('226', 'WF', '顾昊然', '00000000', '1', '2022-05-22 03:55:30', '18065059262', '阳泉', '3', '1', '2022-10-05 10:45:50', null, '2022-05-09 01:33:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('227', 'E5dR', '贺鹤轩', '00000000', '1', '2022-07-25 13:31:41', '15212268987', '洛阳', '3', '1', '2022-11-27 20:56:57', null, '2022-04-01 00:54:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('228', 'MDA', '白明辉', '00000000', '1', '2022-06-07 18:07:00', '17343371491', '德州', '3', '1', '2022-11-22 19:53:54', null, '2022-07-08 18:04:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('229', 'sEUF', '袁潇然', '00000000', '1', '2022-01-02 03:38:02', '17560698073', '太仓', '3', '1', '2022-03-05 11:33:00', null, '2022-08-24 02:12:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('230', 'bk0', '龙正豪', '00000000', '1', '2022-12-25 10:00:31', '17862243809', '承德', '3', '1', '2022-08-11 16:16:43', null, '2022-06-28 21:58:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('231', '55mL', '张凯瑞', '00000000', '1', '2022-09-28 20:10:53', '17304297948', '遵义', '3', '1', '2022-08-04 06:36:50', null, '2022-06-03 10:26:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('232', 'ikm5n', '夏晓博', '00000000', '1', '2022-07-01 14:17:47', '15227870395', '潮州', '3', '1', '2022-09-01 09:00:44', null, '2022-12-03 13:35:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('233', 'WM', '吕航', '00000000', '1', '2022-11-01 10:53:26', '17155757716', '石家庄', '3', '1', '2022-06-08 10:01:54', null, '2022-08-10 23:00:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('234', 'oW5', '蔡致远', '00000000', '1', '2022-11-25 21:44:05', '15981814596', '太原', '3', '1', '2022-05-10 17:05:08', null, '2022-08-27 23:27:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('235', 'DRn', '周鑫鹏', '00000000', '1', '2022-03-07 18:18:29', '13547648510', '鄂尔多斯', '3', '1', '2022-06-07 01:02:55', null, '2022-10-14 04:34:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('236', 'oie', '毛风华', '00000000', '1', '2022-03-13 11:10:43', '15679736294', '邢台', '3', '1', '2022-07-26 13:12:25', null, '2022-11-06 01:16:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('237', 'o5', '姚黎昕', '00000000', '1', '2022-09-02 16:20:10', '14761125284', '嘉兴', '3', '1', '2022-10-21 01:56:32', null, '2022-10-24 21:24:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('238', 'F2Wq', '彭鹏涛', '00000000', '1', '2022-10-09 01:20:49', '17031473777', '渭南', '3', '1', '2022-02-13 06:02:20', null, '2022-03-31 00:39:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('239', 'J2dQo', '魏耀杰', '00000000', '1', '2022-12-24 17:40:41', '14573038854', '济南', '3', '1', '2022-02-21 16:36:48', null, '2022-05-12 04:47:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('240', 'pjslu', '邹浩然', '00000000', '1', '2022-07-21 02:20:07', '17004923632', '秦皇岛', '3', '1', '2022-03-27 08:15:56', null, '2022-11-14 10:44:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('241', '2LL2', '田航', '00000000', '1', '2022-05-05 22:18:02', '17680191925', '营口', '3', '1', '2022-03-28 14:28:31', null, '2022-09-07 23:51:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('242', 'TuQ', '薛君浩', '00000000', '1', '2022-07-17 20:09:40', '17340380250', '泉州', '3', '1', '2022-10-05 06:35:20', null, '2022-02-04 02:11:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('243', 'ywrsZ', '罗明辉', '00000000', '1', '2022-03-28 07:28:19', '15847943104', '锦州', '3', '1', '2022-08-20 10:43:09', null, '2022-10-30 01:54:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('244', '9My', '崔远航', '00000000', '1', '2022-05-24 18:54:37', '17053745715', '岳阳', '3', '1', '2022-12-13 21:42:48', null, '2022-03-28 23:06:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('245', 'iu', '段晋鹏', '00000000', '1', '2022-03-25 10:45:17', '17091151098', '营口', '3', '1', '2022-06-12 10:25:14', null, '2022-06-12 06:40:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('246', '8PQ', '曹正豪', '00000000', '1', '2022-11-11 13:46:28', '17827301589', '遵义', '3', '1', '2022-01-24 05:19:50', null, '2022-09-14 08:24:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('247', 'HyR', '杜健柏', '00000000', '1', '2022-04-08 17:08:16', '13662338346', '胶州', '3', '1', '2022-07-19 18:32:44', null, '2022-06-27 08:12:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('248', 'qz', '邓晟睿', '00000000', '1', '2022-12-12 11:25:10', '15706292953', '湘潭', '3', '1', '2022-02-19 22:02:32', null, '2022-09-03 22:39:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('249', '4Ja', '钱烨霖', '00000000', '1', '2022-09-24 22:30:35', '17068509172', '宁波', '3', '1', '2022-03-11 20:25:30', null, '2022-03-14 09:27:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('250', 'lE', '胡鹏煊', '00000000', '1', '2022-03-06 02:49:31', '17717426557', '徐州', '3', '1', '2022-04-17 15:13:19', null, '2022-06-06 01:10:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('251', '6d8u', '冯昊然', '00000000', '1', '2022-11-11 07:23:22', '14527347998', '常州', '3', '1', '2022-04-18 02:59:33', null, '2022-01-16 10:47:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('252', 'ujn0', '熊胤祥', '00000000', '1', '2022-07-27 08:01:39', '13691440626', '张家界', '3', '1', '2022-12-27 15:35:40', null, '2022-10-05 01:47:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('253', '30', '唐耀杰', '00000000', '1', '2022-03-16 21:33:42', '14572517987', '滨州', '3', '1', '2022-03-15 02:39:43', null, '2022-10-06 10:56:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('254', 'cIj', '苏瑞霖', '00000000', '1', '2022-06-30 18:05:44', '15926361465', '清远', '3', '1', '2022-01-11 08:44:18', null, '2022-05-10 07:45:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('255', 'Xv', '叶旭尧', '00000000', '1', '2022-02-02 02:38:27', '14741283848', '库尔勒', '3', '1', '2022-10-15 08:21:10', null, '2022-02-14 01:03:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('256', 'iNA', '黄振家', '00000000', '1', '2022-11-02 09:26:40', '15579815374', '焦作', '3', '1', '2022-06-27 18:11:36', null, '2022-02-28 22:16:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('257', 'Jusr7', '韩皓轩', '00000000', '1', '2022-08-24 05:04:36', '17755319554', '烟台', '3', '1', '2022-09-19 07:36:17', null, '2022-06-22 06:06:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('258', 'KTJnC', '唐聪健', '00000000', '1', '2022-07-09 05:41:40', '13693483041', '乌鲁木齐', '3', '1', '2022-03-26 16:21:30', null, '2022-08-01 10:27:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('259', 'WWUP', '卢立辉', '00000000', '1', '2022-04-30 06:18:56', '15362359097', '大同', '3', '1', '2022-01-19 07:24:05', null, '2022-11-16 13:58:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('260', 'or', '郑煜城', '00000000', '1', '2022-09-20 02:28:20', '14765376508', '汕头', '3', '1', '2022-03-24 03:39:16', null, '2022-04-21 04:10:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('261', '6X1', '江绍齐', '00000000', '1', '2022-06-23 09:49:08', '15646913348', '丽水', '3', '1', '2022-04-28 16:27:19', null, '2022-06-19 11:17:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('262', 'hCN', '姚炎彬', '00000000', '1', '2022-02-08 13:23:59', '15261685828', '赤峰', '3', '1', '2022-10-07 20:58:59', null, '2022-12-21 15:43:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('263', '7oe', '孔健雄', '00000000', '1', '2022-03-16 03:42:14', '17230171503', '沈阳', '3', '1', '2022-09-30 10:40:38', null, '2022-09-09 01:01:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('264', 's9', '吕瑾瑜', '00000000', '1', '2022-11-28 19:42:44', '17237552762', '锦州', '3', '1', '2022-11-23 17:11:29', null, '2022-07-06 11:07:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('265', 'eHw', '唐语堂', '00000000', '1', '2022-01-18 01:57:31', '15815002106', '广州', '3', '1', '2022-08-03 06:06:04', null, '2022-05-05 12:51:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('266', 'JD', '侯晓博', '00000000', '1', '2022-12-12 09:52:48', '15791108607', '南昌', '3', '1', '2022-01-15 21:32:50', null, '2022-12-07 13:59:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('267', 'rJ', '熊苑博', '00000000', '1', '2022-11-08 17:43:53', '17535813144', '玉溪', '3', '1', '2022-05-26 07:21:31', null, '2022-07-14 02:52:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('268', 'XK', '卢越彬', '00000000', '1', '2022-05-06 16:30:42', '13719152208', '渭南', '3', '1', '2022-10-06 08:43:50', null, '2022-04-19 20:59:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('269', 'zITb', '钟瑾瑜', '00000000', '1', '2022-11-25 15:00:58', '17636657961', '潍坊', '3', '1', '2022-07-06 11:51:18', null, '2022-06-07 00:28:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('270', 'LY', '彭思淼', '00000000', '1', '2022-03-31 21:04:26', '17634151566', '西宁', '3', '1', '2022-12-27 14:27:51', null, '2022-08-24 00:12:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('271', 'o4f', '杜涛', '00000000', '1', '2022-07-15 10:18:31', '17576418793', '威海', '3', '1', '2022-07-11 03:13:04', null, '2022-11-26 12:10:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('272', 'aD', '王昊然', '00000000', '1', '2022-05-09 01:45:43', '15803958600', '德州', '3', '1', '2022-07-26 00:14:13', null, '2022-08-20 09:04:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('273', 'nSSw7', '薛煜城', '00000000', '1', '2022-09-22 03:47:41', '13840026241', '北海', '3', '1', '2022-08-12 17:17:28', null, '2022-01-18 03:01:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('274', 'UBY', '段远航', '00000000', '1', '2022-08-22 12:05:28', '15827045496', '马鞍山', '3', '1', '2022-03-09 11:06:01', null, '2022-07-03 04:20:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('275', 'mMcH', '于俊驰', '00000000', '1', '2022-11-01 06:10:29', '15992822462', '广州', '3', '1', '2022-06-16 12:47:02', null, '2022-07-16 21:58:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('276', 'vzmqJ', '何鸿煊', '00000000', '1', '2022-05-31 06:17:25', '15127878018', '扬州', '3', '1', '2022-01-03 05:58:06', null, '2022-01-27 02:58:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('277', 'sAb', '白子轩', '00000000', '1', '2022-09-15 16:15:02', '17191587407', '厦门', '3', '1', '2022-11-22 12:44:52', null, '2022-01-01 08:34:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('278', '7OF1', '董聪健', '00000000', '1', '2022-07-21 19:05:11', '13623129518', '舟山', '3', '1', '2022-01-30 05:09:00', null, '2022-03-11 04:18:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('279', 'ewBF', '邹修杰', '00000000', '1', '2022-09-22 04:07:28', '17051480217', '呼和浩特', '3', '1', '2022-11-03 09:18:31', null, '2022-09-14 18:02:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('280', 'ZZ8n', '苏昊然', '00000000', '1', '2022-08-09 07:01:38', '17856307848', '河源', '3', '1', '2022-12-17 10:52:20', null, '2022-10-17 13:11:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('281', 'Ft6Da', '刘瑞霖', '00000000', '1', '2022-10-29 21:36:10', '15265602422', '平顶山', '3', '1', '2022-01-25 21:18:59', null, '2022-11-12 02:47:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('282', '5cSk', '秦越彬', '00000000', '1', '2022-06-15 20:20:22', '15615231840', '张家界', '3', '1', '2022-10-18 05:13:21', null, '2022-03-12 23:21:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('283', 'guSP', '余俊驰', '00000000', '1', '2022-12-30 20:09:31', '17138708943', '沧州', '3', '1', '2022-05-14 12:21:27', null, '2022-06-10 04:05:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('284', 'iiU', '苏泽洋', '00000000', '1', '2022-09-19 11:36:52', '14716939409', '郑州', '3', '1', '2022-05-25 10:04:18', null, '2022-02-17 19:50:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('285', 'eu', '魏鹏涛', '00000000', '1', '2022-04-13 03:09:02', '17057131734', '东莞', '3', '1', '2022-02-10 19:52:13', null, '2022-04-16 15:51:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('286', 'KF', '熊楷瑞', '00000000', '1', '2022-08-24 06:09:20', '14563348924', '赤峰', '3', '1', '2022-03-09 00:28:24', null, '2022-10-08 07:27:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('287', 'Ks4Q', '丁烨霖', '00000000', '1', '2022-05-20 15:53:38', '15974657186', '东营', '3', '1', '2022-06-23 07:12:59', null, '2022-05-21 21:47:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('288', 'RU', '薛伟泽', '00000000', '1', '2022-01-19 01:10:14', '13202297782', '长治', '3', '1', '2022-05-19 11:52:51', null, '2022-12-18 10:53:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('289', 'Sz', '丁文博', '00000000', '1', '2022-08-07 11:46:14', '17159765511', '平顶山', '3', '1', '2022-05-14 08:17:11', null, '2022-07-11 07:07:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('290', 'E6', '史煜城', '00000000', '1', '2022-12-03 18:30:45', '17533756032', '丹东', '3', '1', '2022-04-08 07:12:50', null, '2022-07-13 13:22:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('291', 'A3Nq', '梁烨华', '00000000', '1', '2022-02-20 03:56:35', '17390238805', '桂林', '3', '1', '2022-09-21 18:10:04', null, '2022-05-29 04:26:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('292', 'ESYN', '梁锦程', '00000000', '1', '2022-01-25 01:35:59', '15245136228', '茂名', '3', '1', '2022-01-12 06:23:07', null, '2022-05-30 21:35:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('293', 'yLhb', '贾远航', '00000000', '1', '2022-02-14 12:40:32', '17328721286', '徐州', '3', '1', '2022-10-04 02:42:14', null, '2022-03-09 10:09:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('294', 'lc', '陆修洁', '00000000', '1', '2022-09-20 11:34:01', '15787043054', '云浮', '3', '1', '2022-10-26 19:26:21', null, '2022-04-14 15:25:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('295', '4Alk2', '武天宇', '00000000', '1', '2022-12-09 11:11:29', '17101623309', '石家庄', '3', '1', '2022-07-01 07:32:29', null, '2022-11-28 14:12:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('296', 'uP', '毛思远', '00000000', '1', '2022-02-16 04:26:54', '13589820272', '大庆', '3', '1', '2022-08-23 09:26:46', null, '2022-09-08 21:14:10', '0', '0');
INSERT INTO `smbms_user` VALUES ('297', 'Du0j', '邓立辉', '00000000', '1', '2022-08-01 04:46:20', '15173467956', '攀枝花', '3', '1', '2022-11-24 19:52:18', null, '2022-03-03 09:08:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('298', 'kOWMs', '江立果', '00000000', '1', '2022-01-06 21:56:23', '15851646009', '荆州', '3', '1', '2022-07-26 16:57:40', null, '2022-03-11 08:14:29', '0', '0');
INSERT INTO `smbms_user` VALUES ('299', 'JYrcv', '董鹏', '00000000', '1', '2022-01-16 07:24:53', '17320657446', '深圳', '3', '1', '2022-02-28 04:01:59', null, '2022-03-03 14:40:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('300', '628V', '许昊焱', '00000000', '1', '2022-05-29 23:14:51', '15698685318', '文登', '3', '1', '2022-12-26 01:13:16', null, '2022-04-25 08:53:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('301', 'Vi', '薛文', '00000000', '1', '2022-01-20 08:28:27', '17836705944', '诸暨', '3', '1', '2022-12-17 01:14:16', null, '2022-03-09 13:38:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('302', 'W8G', '叶绍辉', '00000000', '1', '2022-04-22 02:37:22', '15118025673', '泰安', '3', '1', '2022-12-07 10:30:35', null, '2022-09-24 03:40:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('303', 'K4gI', '苏伟宸', '00000000', '1', '2022-07-03 21:31:30', '17843029450', '绍兴', '3', '1', '2022-11-16 12:28:00', null, '2022-06-30 19:41:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('304', 'Pgz', '高思', '00000000', '1', '2022-08-15 02:29:20', '17793581101', '北京', '3', '1', '2022-12-17 11:28:57', null, '2022-03-07 17:52:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('305', 'knwvV', '彭胤祥', '00000000', '1', '2022-04-14 02:37:13', '15908462582', '葫芦岛', '3', '1', '2022-12-13 04:02:40', null, '2022-11-26 12:01:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('306', 'wkD', '郝耀杰', '00000000', '1', '2022-07-31 17:43:06', '17342809131', '平顶山', '3', '1', '2022-05-22 07:41:11', null, '2022-12-01 13:46:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('307', 'kR', '梁靖琪', '00000000', '1', '2022-12-27 17:27:28', '15352528202', '邯郸', '3', '1', '2022-11-08 15:57:12', null, '2022-05-22 04:56:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('308', 'iU4G', '许语堂', '00000000', '1', '2022-10-08 22:44:58', '15675882972', '茂名', '3', '1', '2022-04-25 12:34:18', null, '2022-12-11 18:35:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('309', 'R22', '叶昊天', '00000000', '1', '2022-10-01 23:28:32', '18138733491', '南宁', '3', '1', '2022-04-13 19:59:21', null, '2022-08-13 15:24:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('310', '3Jbjs', '郭越彬', '00000000', '1', '2022-12-11 19:55:14', '13320216029', '库尔勒', '3', '1', '2022-04-15 00:45:48', null, '2022-06-16 11:07:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('311', 'dH', '韩钰轩', '00000000', '1', '2022-08-03 14:31:43', '17674002016', '韶关', '3', '1', '2022-03-14 23:30:36', null, '2022-02-05 07:30:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('312', 'bD', '任博文', '00000000', '1', '2022-05-01 02:02:24', '14538268465', '瓦房店', '3', '1', '2022-05-31 12:21:21', null, '2022-07-29 22:11:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('313', 'qt', '毛智渊', '00000000', '1', '2022-05-31 00:38:06', '15296129716', '莱州', '3', '1', '2022-02-15 15:39:44', null, '2022-12-16 10:55:43', '0', '0');
INSERT INTO `smbms_user` VALUES ('314', 'QB', '陈文', '00000000', '1', '2022-07-03 15:00:02', '15143672072', '深圳', '3', '1', '2022-06-06 10:56:31', null, '2022-03-30 20:06:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('315', 'N8Q', '秦智辉', '00000000', '1', '2022-11-14 15:45:14', '17717332770', '寿光', '3', '1', '2022-11-11 13:05:32', null, '2022-12-05 02:41:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('316', 'usC', '彭志泽', '00000000', '1', '2022-12-06 10:37:37', '17580223968', '秦皇岛', '3', '1', '2022-04-27 22:00:14', null, '2022-03-06 21:29:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('317', 'c46', '方昊天', '00000000', '1', '2022-09-30 14:52:59', '15568596999', '宁波', '3', '1', '2022-04-24 11:37:38', null, '2022-07-23 03:38:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('318', 'FT', '吕鹭洋', '00000000', '1', '2022-07-18 11:35:15', '17713820678', '中山', '3', '1', '2022-05-02 10:22:36', null, '2022-10-13 04:27:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('319', 'Flexi', '梁哲瀚', '00000000', '1', '2022-09-17 06:57:28', '14552971865', '章丘', '3', '1', '2022-10-26 08:33:13', null, '2022-12-27 13:47:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('320', 'E0', '龙聪健', '00000000', '1', '2022-05-16 19:17:11', '15698920325', '长春', '3', '1', '2022-06-30 06:29:01', null, '2022-03-10 04:27:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('321', 'bLKr', '刘潇然', '00000000', '1', '2022-12-07 03:06:01', '15361256591', '齐齐哈尔', '3', '1', '2022-11-13 21:47:31', null, '2022-04-27 07:02:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('322', 'DbMQ', '任绍齐', '00000000', '1', '2022-07-29 01:06:57', '13168558163', '昆明', '3', '1', '2022-04-24 04:58:26', null, '2022-08-17 23:08:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('323', 'H5tv', '秦熠彤', '00000000', '1', '2022-02-15 17:05:34', '14770771938', '阳泉', '3', '1', '2022-04-16 20:35:08', null, '2022-12-13 12:36:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('324', 'Xu', '韩烨霖', '00000000', '1', '2022-05-12 06:06:23', '15114209683', '青岛', '3', '1', '2022-09-10 15:06:42', null, '2022-12-21 19:16:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('325', 'PRFL', '邵瑞霖', '00000000', '1', '2022-04-17 12:00:11', '17873409986', '桂林', '3', '1', '2022-08-21 04:59:03', null, '2022-10-11 23:52:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('326', 'DU', '熊子骞', '00000000', '1', '2022-11-23 21:41:27', '17383432591', '厦门', '3', '1', '2022-06-17 06:57:02', null, '2022-11-19 01:28:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('327', 'Udckd', '杨潇然', '00000000', '1', '2022-08-24 06:49:56', '18078617287', '大连', '3', '1', '2022-04-06 23:13:06', null, '2022-12-06 02:55:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('328', 'aRV0v', '严航', '00000000', '1', '2022-06-28 04:37:39', '15599753524', '银川', '3', '1', '2022-08-24 01:24:00', null, '2022-02-08 13:41:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('329', 'Nt8Z', '马绍齐', '00000000', '1', '2022-07-08 12:52:28', '17119189531', '吉林', '3', '1', '2022-06-13 11:23:59', null, '2022-11-10 22:57:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('330', 'qqw', '毛黎昕', '00000000', '1', '2022-02-27 09:35:20', '15011459088', '瓦房店', '3', '1', '2022-10-13 01:02:57', null, '2022-11-14 18:00:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('331', 'BFcsb', '唐烨霖', '00000000', '1', '2022-05-21 12:55:17', '15272962501', '广州', '3', '1', '2022-07-28 00:57:24', null, '2022-05-31 15:59:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('332', 'WGs', '贾子默', '00000000', '1', '2022-09-19 19:11:20', '15846959313', '包头', '3', '1', '2022-07-13 14:44:57', null, '2022-12-11 16:09:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('333', '9HKf', '邵皓轩', '00000000', '1', '2022-10-03 10:15:04', '17825154098', '韶关', '3', '1', '2022-05-15 10:25:30', null, '2022-10-08 03:05:14', '0', '0');
INSERT INTO `smbms_user` VALUES ('334', 't3', '彭志泽', '00000000', '1', '2022-08-31 12:47:58', '17091557810', '金昌', '3', '1', '2022-11-28 04:00:27', null, '2022-08-23 06:20:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('335', 'rt0', '魏伟宸', '00000000', '1', '2022-10-13 16:34:10', '18183507111', '滨州', '3', '1', '2022-02-04 17:01:14', null, '2022-08-11 17:26:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('336', 'WxL', '崔烨霖', '00000000', '1', '2022-06-27 11:18:22', '14550622234', '抚顺', '3', '1', '2022-12-21 15:08:59', null, '2022-10-23 02:36:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('337', '05', '徐昊强', '00000000', '1', '2022-04-12 13:38:24', '17700106213', '兰州', '3', '1', '2022-09-11 18:57:30', null, '2022-01-22 14:04:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('338', 'oTNU', '赵明哲', '00000000', '1', '2022-08-22 18:28:34', '15518354007', '蓬莱', '3', '1', '2022-08-01 12:54:05', null, '2022-08-11 09:12:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('339', 'BDqc', '徐靖琪', '00000000', '1', '2022-11-25 06:32:52', '17589904987', '常熟', '3', '1', '2022-06-22 20:00:34', null, '2022-04-06 18:25:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('340', 'mD66F', '罗健雄', '00000000', '1', '2022-04-25 13:32:48', '15352978730', '石家庄', '3', '1', '2022-02-16 22:57:44', null, '2022-12-30 17:19:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('341', 'ALI', '黄浩', '00000000', '1', '2022-11-07 13:08:27', '17735844696', '成都', '3', '1', '2022-09-17 10:35:41', null, '2022-03-22 23:50:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('342', 'NMx', '薛智渊', '00000000', '1', '2022-09-09 12:53:29', '17090856524', '太原', '3', '1', '2022-07-19 09:24:12', null, '2022-11-14 17:34:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('343', 'p9d', '廖浩轩', '00000000', '1', '2022-01-08 19:36:00', '15357344649', '厦门', '3', '1', '2022-09-09 01:55:01', null, '2022-11-22 04:46:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('344', 'ld3nS', '胡文博', '00000000', '1', '2022-08-05 13:11:54', '17703069082', '咸阳', '3', '1', '2022-07-19 03:06:20', null, '2022-07-20 00:14:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('345', 'BjiN', '熊晓博', '00000000', '1', '2022-01-27 18:29:48', '17884275489', '柳州', '3', '1', '2022-08-19 21:58:01', null, '2022-04-10 16:27:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('346', 'TGT', '邵子默', '00000000', '1', '2022-01-11 09:15:33', '17859563102', '三亚', '3', '1', '2022-07-17 11:47:30', null, '2022-07-06 07:16:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('347', 'YkowQ', '孟文昊', '00000000', '1', '2022-10-01 12:54:17', '13162571061', '邯郸', '3', '1', '2022-03-09 11:01:12', null, '2022-08-12 13:29:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('348', 'hm', '许瑞霖', '00000000', '1', '2022-01-03 08:51:12', '15848529067', '库尔勒', '3', '1', '2022-08-14 04:03:54', null, '2022-01-22 05:22:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('349', 'hc', '孙弘文', '00000000', '1', '2022-06-08 10:36:25', '15050176715', '潮州', '3', '1', '2022-08-29 01:27:00', null, '2022-07-29 11:24:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('350', '0Unu', '夏立辉', '00000000', '1', '2022-10-05 19:32:53', '18747964575', '齐齐哈尔', '3', '1', '2022-05-20 23:40:10', null, '2022-01-02 02:25:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('351', 'UuD', '邵鹏飞', '00000000', '1', '2022-12-18 05:25:46', '15271619919', '玉溪', '3', '1', '2022-06-05 23:38:23', null, '2022-11-23 03:04:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('352', 'KuuD', '毛振家', '00000000', '1', '2022-10-25 23:49:34', '14730769981', '招远', '3', '1', '2022-08-07 12:09:58', null, '2022-06-14 10:59:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('353', 'ZFHB', '唐智辉', '00000000', '1', '2022-01-26 00:41:11', '17190238998', '滨州', '3', '1', '2022-12-26 15:04:27', null, '2022-05-23 06:41:06', '0', '0');
INSERT INTO `smbms_user` VALUES ('354', 'nGb', '秦文博', '00000000', '1', '2022-06-14 02:33:36', '14598421354', '湖州', '3', '1', '2022-08-01 21:37:54', null, '2022-02-22 09:33:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('355', '21', '万明辉', '00000000', '1', '2022-04-09 12:25:27', '17783399694', '常熟', '3', '1', '2022-12-23 16:43:06', null, '2022-10-14 01:21:55', '0', '0');
INSERT INTO `smbms_user` VALUES ('356', '9J', '金哲瀚', '00000000', '1', '2022-09-10 06:31:14', '15600953455', '西安', '3', '1', '2022-01-11 17:58:36', null, '2022-06-26 21:47:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('357', 'fvy', '姜志强', '00000000', '1', '2022-02-18 03:41:26', '18404569663', '平顶山', '3', '1', '2022-07-31 18:17:05', null, '2022-05-28 06:21:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('358', 'q70Q', '毛鹏', '00000000', '1', '2022-08-21 10:34:17', '17264780074', '汕头', '3', '1', '2022-12-01 22:22:51', null, '2022-01-03 19:36:43', '0', '0');
INSERT INTO `smbms_user` VALUES ('359', '2EFI', '任炫明', '00000000', '1', '2022-05-05 14:58:59', '15065096351', '汕尾', '3', '1', '2022-12-08 14:26:14', null, '2022-12-26 10:44:55', '0', '0');
INSERT INTO `smbms_user` VALUES ('360', 'vnr', '潘伟泽', '00000000', '1', '2022-09-22 21:51:42', '17725077534', '莱西', '3', '1', '2022-09-28 19:47:23', null, '2022-07-16 04:13:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('361', '2x2', '贺子轩', '00000000', '1', '2022-01-01 17:38:43', '14708316178', '南通', '3', '1', '2022-01-06 04:00:53', null, '2022-07-21 06:15:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('362', '2sP3', '毛浩轩', '00000000', '1', '2022-11-10 03:44:52', '17848764804', '阳江', '3', '1', '2022-12-04 16:15:04', null, '2022-03-30 14:13:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('363', 'u7B', '何鸿涛', '00000000', '1', '2022-11-10 15:55:47', '17794582898', '咸阳', '3', '1', '2022-02-06 01:49:10', null, '2022-05-26 02:00:06', '0', '0');
INSERT INTO `smbms_user` VALUES ('364', 'lC', '陈瑞霖', '00000000', '1', '2022-11-08 18:42:37', '17500083193', '南充', '3', '1', '2022-04-12 09:29:14', null, '2022-06-28 01:43:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('365', '17Z', '徐哲瀚', '00000000', '1', '2022-10-24 12:46:00', '17281833980', '包头', '3', '1', '2022-04-20 19:54:03', null, '2022-08-12 22:53:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('366', 'TNF', '戴风华', '00000000', '1', '2022-10-06 17:53:52', '15530755369', '抚顺', '3', '1', '2022-12-19 10:11:54', null, '2022-08-09 12:16:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('367', 'sIVEo', '戴博文', '00000000', '1', '2022-03-12 16:16:21', '17873198924', '临沂', '3', '1', '2022-08-10 10:22:59', null, '2022-08-01 15:56:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('368', '3MdT', '谭果', '00000000', '1', '2022-10-18 12:47:51', '15569284249', '乌鲁木齐', '3', '1', '2022-12-12 02:02:14', null, '2022-07-15 21:55:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('369', 'cLl', '马文博', '00000000', '1', '2022-02-20 10:49:42', '17306237233', '自贡', '3', '1', '2022-11-15 22:18:03', null, '2022-11-08 18:11:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('370', 'bs', '赵旭尧', '00000000', '1', '2022-04-08 17:16:55', '15534700877', '烟台', '3', '1', '2022-04-29 13:59:51', null, '2022-02-04 16:04:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('371', 'HKZyr', '郑乐驹', '00000000', '1', '2022-01-13 07:56:19', '15918726712', '揭阳', '3', '1', '2022-07-23 20:02:28', null, '2022-11-15 15:20:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('372', 'n6', '吴志泽', '00000000', '1', '2022-10-21 11:06:05', '14530755926', '海门', '3', '1', '2022-01-28 02:34:50', null, '2022-06-07 11:08:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('373', 'nrv3', '田子骞', '00000000', '1', '2022-10-08 06:58:03', '17566805030', '江阴', '3', '1', '2022-08-17 20:06:58', null, '2022-05-23 11:35:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('374', '6dfg', '汪子涵', '00000000', '1', '2022-05-01 03:30:37', '17281661745', '大连', '3', '1', '2022-11-20 10:46:56', null, '2022-07-19 05:24:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('375', 'NxoAI', '江立果', '00000000', '1', '2022-08-04 15:39:46', '15818426162', '宜兴', '3', '1', '2022-12-30 11:19:03', null, '2022-07-30 07:55:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('376', 'yWon', '范明轩', '00000000', '1', '2022-09-27 15:18:39', '17721085640', '北海', '3', '1', '2022-07-20 22:31:14', null, '2022-10-16 03:03:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('377', 'CHt9', '马炎彬', '00000000', '1', '2022-04-04 00:22:53', '17561090159', '湖州', '3', '1', '2022-02-25 15:00:40', null, '2022-12-08 13:41:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('378', 'ulNt', '尹嘉熙', '00000000', '1', '2022-07-21 15:00:48', '13884560065', '河源', '3', '1', '2022-08-14 05:54:27', null, '2022-05-08 08:14:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('379', '5m', '杨子轩', '00000000', '1', '2022-03-29 09:20:27', '13304797988', '唐山', '3', '1', '2022-12-10 06:16:50', null, '2022-11-20 22:26:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('380', 'jBv6', '郑擎宇', '00000000', '1', '2022-06-08 14:09:16', '18027181239', '菏泽', '3', '1', '2022-02-16 18:33:54', null, '2022-09-30 13:26:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('381', 'ftm', '罗思聪', '00000000', '1', '2022-04-08 23:49:38', '17757286944', '莱芜', '3', '1', '2022-08-05 19:59:14', null, '2022-12-03 16:12:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('382', 'XfL8', '白博文', '00000000', '1', '2022-05-12 16:01:25', '15128642151', '荆州', '3', '1', '2022-07-16 14:16:24', null, '2022-03-22 16:00:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('383', 'QI', '吴立诚', '00000000', '1', '2022-11-22 07:20:12', '14712818038', '沈阳', '3', '1', '2022-02-10 21:56:54', null, '2022-02-08 05:44:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('384', 'TL', '梁博超', '00000000', '1', '2022-04-26 20:40:24', '14726582479', '日照', '3', '1', '2022-12-24 21:00:36', null, '2022-04-10 08:36:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('385', 'U6EI', '徐智辉', '00000000', '1', '2022-02-14 06:40:53', '13612842956', '沧州', '3', '1', '2022-10-14 09:55:44', null, '2022-04-15 15:36:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('386', 'jzvj', '顾志强', '00000000', '1', '2022-02-24 04:39:12', '15644755488', '宝鸡', '3', '1', '2022-10-24 17:22:59', null, '2022-11-30 19:43:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('387', 'Bk', '许雨泽', '00000000', '1', '2022-03-13 08:09:15', '15918383096', '安阳', '3', '1', '2022-06-19 02:13:15', null, '2022-08-27 00:05:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('388', 'JsW', '邵烨霖', '00000000', '1', '2022-04-04 15:35:46', '15651367387', '芜湖', '3', '1', '2022-08-31 08:48:57', null, '2022-09-22 14:31:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('389', 'tP', '吴琪', '00000000', '1', '2022-04-23 06:49:48', '17059141729', '保定', '3', '1', '2022-07-25 14:59:23', null, '2022-06-14 17:07:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('390', 'Gjs3H', '胡睿渊', '00000000', '1', '2022-10-29 13:15:38', '14535672638', '泸州', '3', '1', '2022-03-03 21:16:23', null, '2022-10-12 05:40:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('391', 'JhWnq', '魏文轩', '00000000', '1', '2022-10-29 18:54:55', '18960689270', '武汉', '3', '1', '2022-05-01 05:30:51', null, '2022-06-06 12:46:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('392', 'H2Bs', '傅致远', '00000000', '1', '2022-12-19 23:05:34', '17042676608', '湛江', '3', '1', '2022-04-26 09:10:18', null, '2022-04-11 23:18:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('393', 't2kuH', '白弘文', '00000000', '1', '2022-01-16 08:30:23', '17885188904', '宁波', '3', '1', '2022-09-10 13:46:38', null, '2022-02-11 07:19:45', '0', '0');
INSERT INTO `smbms_user` VALUES ('394', 'H0r', '黄鸿煊', '00000000', '1', '2022-12-25 10:23:41', '15309442259', '渭南', '3', '1', '2022-10-13 01:36:17', null, '2022-03-18 06:05:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('395', 'pDg', '贾子涵', '00000000', '1', '2022-07-27 18:53:38', '17107808835', '银川', '3', '1', '2022-02-21 05:10:45', null, '2022-04-19 20:46:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('396', '5c', '蔡伟宸', '00000000', '1', '2022-09-06 18:04:11', '17271829743', '贵阳', '3', '1', '2022-11-03 03:50:42', null, '2022-09-02 02:01:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('397', '1BCOA', '程炫明', '00000000', '1', '2022-12-09 05:05:25', '14508112067', '江门', '3', '1', '2022-05-10 08:26:06', null, '2022-01-10 21:29:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('398', '745', '秦立果', '00000000', '1', '2022-08-17 12:51:00', '15781751467', '石家庄', '3', '1', '2022-06-12 13:57:02', null, '2022-11-08 10:16:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('399', '1Z4ja', '韦思远', '00000000', '1', '2022-10-01 21:32:46', '17233632701', '即墨', '3', '1', '2022-11-30 08:12:35', null, '2022-04-22 16:26:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('400', 'OFy8', '蔡金鑫', '00000000', '1', '2022-08-21 13:13:21', '17614551410', '义乌', '3', '1', '2022-08-11 13:26:01', null, '2022-10-14 17:37:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('401', 'MrM', '李胤祥', '00000000', '1', '2022-02-15 00:57:43', '15278892793', '烟台', '3', '1', '2022-06-27 07:09:48', null, '2022-05-05 06:30:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('402', 'coY', '戴博超', '00000000', '1', '2022-04-17 19:20:34', '15323880248', '广州', '3', '1', '2022-11-27 23:57:23', null, '2022-04-28 20:31:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('403', 'Zr9wj', '贾绍辉', '00000000', '1', '2022-09-24 10:37:05', '17550974194', '富阳', '3', '1', '2022-05-15 15:01:21', null, '2022-08-15 06:20:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('404', 'vS', '贺琪', '00000000', '1', '2022-08-27 12:51:39', '15755698248', '张家口', '3', '1', '2022-06-09 09:31:56', null, '2022-01-28 17:20:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('405', 'ez2', '潘浩宇', '00000000', '1', '2022-02-05 20:48:32', '14594635926', '唐山', '3', '1', '2022-04-03 19:25:28', null, '2022-03-29 03:53:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('406', 'Ll', '于浩', '00000000', '1', '2022-10-17 01:02:00', '17567569248', '南通', '3', '1', '2022-12-17 00:26:40', null, '2022-07-14 11:45:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('407', 'Y9', '邱鸿涛', '00000000', '1', '2022-06-06 01:20:48', '15375460048', '揭阳', '3', '1', '2022-09-12 14:03:55', null, '2022-12-23 04:44:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('408', 'cE', '武笑愚', '00000000', '1', '2022-08-28 07:37:47', '15504008623', '哈尔滨', '3', '1', '2022-12-19 06:56:46', null, '2022-01-22 17:35:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('409', 'sfR', '石思', '00000000', '1', '2022-02-26 05:45:43', '15829108275', '克拉玛依', '3', '1', '2022-02-25 14:15:37', null, '2022-01-02 11:12:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('410', '0kKV', '石文轩', '00000000', '1', '2022-12-17 23:23:06', '17014009649', '太原', '3', '1', '2022-11-30 10:03:43', null, '2022-05-28 21:01:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('411', '0jc0v', '孙烨磊', '00000000', '1', '2022-10-22 22:16:36', '15980709311', '临汾', '3', '1', '2022-03-21 08:54:02', null, '2022-12-18 03:02:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('412', 'CA', '韩烨伟', '00000000', '1', '2022-03-24 23:07:53', '17030322294', '临安', '3', '1', '2022-03-14 18:36:59', null, '2022-05-04 22:25:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('413', '0zhu', '姜弘文', '00000000', '1', '2022-05-10 10:32:29', '17363768452', '玉溪', '3', '1', '2022-05-02 11:29:41', null, '2022-05-02 02:42:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('414', 'Qrqb8', '孔智宸', '00000000', '1', '2022-06-12 10:46:04', '17870529373', '济宁', '3', '1', '2022-08-12 20:17:34', null, '2022-06-24 11:37:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('415', '5UY', '唐展鹏', '00000000', '1', '2022-07-29 13:09:46', '17527546963', '抚顺', '3', '1', '2022-07-02 11:59:47', null, '2022-10-26 07:46:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('416', 'ksrFx', '顾晓博', '00000000', '1', '2022-03-27 14:10:06', '15583188026', '义乌', '3', '1', '2022-08-11 13:49:39', null, '2022-06-26 15:42:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('417', 'Fw', '孔昊然', '00000000', '1', '2022-02-15 02:43:53', '15288204130', '烟台', '3', '1', '2022-01-17 04:48:58', null, '2022-08-15 14:53:51', '0', '0');
INSERT INTO `smbms_user` VALUES ('418', 'Db', '钟文轩', '00000000', '1', '2022-03-20 02:52:40', '15668068027', '临汾', '3', '1', '2022-08-15 14:50:38', null, '2022-12-27 09:22:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('419', 'b6g', '邓伟宸', '00000000', '1', '2022-05-17 05:35:43', '15241548344', '胶州', '3', '1', '2022-05-16 03:55:20', null, '2022-02-08 07:26:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('420', '6MQcu', '于熠彤', '00000000', '1', '2022-07-26 15:55:31', '13237039641', '咸阳', '3', '1', '2022-10-03 03:56:52', null, '2022-02-17 09:02:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('421', 'weXv', '万致远', '00000000', '1', '2022-08-21 13:41:25', '17376511242', '滨州', '3', '1', '2022-10-26 18:42:18', null, '2022-12-08 13:41:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('422', 'ct68', '梁志泽', '00000000', '1', '2022-02-20 20:42:38', '17234029916', '天津', '3', '1', '2022-12-09 14:46:34', null, '2022-01-22 21:22:31', '0', '0');
INSERT INTO `smbms_user` VALUES ('423', 'VKL1', '吕瑾瑜', '00000000', '1', '2022-01-31 00:14:23', '15615538622', '湛江', '3', '1', '2022-01-14 18:57:25', null, '2022-04-15 16:28:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('424', 'iRo', '潘胤祥', '00000000', '1', '2022-07-12 00:40:22', '15352740856', '盘锦', '3', '1', '2022-12-30 20:35:02', null, '2022-01-09 03:49:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('425', '96al', '吕子涵', '00000000', '1', '2022-09-26 20:28:24', '15997422026', '长沙', '3', '1', '2022-12-20 08:22:09', null, '2022-01-07 04:02:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('426', '17P', '董擎宇', '00000000', '1', '2022-07-24 15:36:23', '15810503271', '牡丹江', '3', '1', '2022-09-09 08:34:39', null, '2022-06-13 06:27:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('427', 'ljaQ', '朱明', '00000000', '1', '2022-08-20 13:38:26', '17280085776', '长治', '3', '1', '2022-11-07 15:35:26', null, '2022-06-25 14:06:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('428', 'NBAl', '蔡擎宇', '00000000', '1', '2022-07-15 09:53:39', '17118429541', '上海', '3', '1', '2022-09-29 15:42:45', null, '2022-12-07 04:55:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('429', 'ndCR', '廖嘉熙', '00000000', '1', '2022-07-14 01:19:14', '13457681974', '章丘', '3', '1', '2022-07-05 04:17:17', null, '2022-04-27 05:05:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('430', 'SF0', '陆荣轩', '00000000', '1', '2022-02-14 12:41:37', '17658900624', '衢州', '3', '1', '2022-07-02 13:31:46', null, '2022-01-05 12:57:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('431', 'pqNkl', '贺建辉', '00000000', '1', '2022-02-24 12:19:58', '17010278519', '常德', '3', '1', '2022-02-25 11:44:29', null, '2022-06-09 19:14:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('432', '2fQWZ', '杨驰', '00000000', '1', '2022-10-24 17:24:52', '15081353664', '合肥', '3', '1', '2022-03-29 22:22:27', null, '2022-04-27 13:08:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('433', 'NASO', '宋健雄', '00000000', '1', '2022-12-09 17:38:19', '15728227085', '石家庄', '3', '1', '2022-01-17 22:43:56', null, '2022-07-05 13:42:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('434', 'fYy5', '钱越彬', '00000000', '1', '2022-06-18 12:52:27', '15641413207', '邯郸', '3', '1', '2022-09-16 22:19:54', null, '2022-05-04 04:31:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('435', 'amp2m', '董鹤轩', '00000000', '1', '2022-09-01 11:51:02', '15087732547', '焦作', '3', '1', '2022-02-23 20:46:52', null, '2022-07-28 06:57:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('436', 'zUhn9', '秦晋鹏', '00000000', '1', '2022-03-30 00:44:43', '15790781204', '昆明', '3', '1', '2022-12-25 17:30:32', null, '2022-09-10 11:14:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('437', 'PJ', '傅文昊', '00000000', '1', '2022-12-04 20:06:47', '15852522383', '南京', '3', '1', '2022-03-28 23:11:42', null, '2022-01-21 14:29:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('438', 'iH', '邱弘文', '00000000', '1', '2022-09-05 02:12:26', '15828935765', '江门', '3', '1', '2022-08-12 06:41:00', null, '2022-12-28 03:16:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('439', '0q', '龙鹏煊', '00000000', '1', '2022-02-04 23:45:34', '14709230645', '大连', '3', '1', '2022-03-22 23:23:05', null, '2022-03-07 13:40:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('440', '9V', '叶瑾瑜', '00000000', '1', '2022-01-28 17:20:54', '15222400471', '张家界', '3', '1', '2022-11-22 18:27:03', null, '2022-08-23 02:58:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('441', 'EE1ZW', '董语堂', '00000000', '1', '2022-01-07 22:01:13', '13813159829', '莱芜', '3', '1', '2022-05-05 20:31:06', null, '2022-08-02 16:01:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('442', 'd0e1k', '谭锦程', '00000000', '1', '2022-05-26 23:45:06', '15378711742', '滨州', '3', '1', '2022-12-03 11:50:08', null, '2022-04-08 10:11:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('443', '6g0', '沈修杰', '00000000', '1', '2022-11-24 20:17:19', '15208732959', '台州', '3', '1', '2022-01-15 20:03:29', null, '2022-01-04 04:48:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('444', 'cRn', '韦昊天', '00000000', '1', '2022-10-03 08:46:33', '15695220011', '常熟', '3', '1', '2022-08-15 18:50:55', null, '2022-11-15 09:20:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('445', 'f0k', '刘昊强', '00000000', '1', '2022-06-07 10:33:44', '15821961538', '邢台', '3', '1', '2022-06-02 09:12:07', null, '2022-03-12 12:12:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('446', 'E6', '姜风华', '00000000', '1', '2022-10-18 22:32:05', '15037351385', '宿迁', '3', '1', '2022-09-30 20:45:40', null, '2022-06-25 13:10:21', '0', '0');
INSERT INTO `smbms_user` VALUES ('447', 'FF', '黄胤祥', '00000000', '1', '2022-05-08 08:33:21', '13373610722', '绵阳', '3', '1', '2022-10-29 07:40:59', null, '2022-03-03 20:52:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('448', 'eK', '顾琪', '00000000', '1', '2022-03-24 08:12:44', '17176912388', '衡水', '3', '1', '2022-06-26 05:28:52', null, '2022-10-26 09:31:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('449', 'ep2', '戴鹏涛', '00000000', '1', '2022-05-09 19:08:13', '14518628214', '张家口', '3', '1', '2022-07-12 14:32:10', null, '2022-06-07 19:53:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('450', 'LIko', '万思聪', '00000000', '1', '2022-06-18 04:13:57', '15367756806', '瓦房店', '3', '1', '2022-11-19 10:28:19', null, '2022-09-01 12:04:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('451', 'QbVX', '周文博', '00000000', '1', '2022-11-06 22:49:56', '13199723565', '莱西', '3', '1', '2022-05-18 15:03:43', null, '2022-06-22 16:05:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('452', 'Ot', '邓擎宇', '00000000', '1', '2022-05-28 04:35:09', '15262901394', '金昌', '3', '1', '2022-02-01 04:14:06', null, '2022-09-15 02:10:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('453', 'oIl', '石博超', '00000000', '1', '2022-01-17 04:25:49', '18180877351', '珠海', '3', '1', '2022-01-06 02:15:13', null, '2022-02-14 07:03:43', '0', '0');
INSERT INTO `smbms_user` VALUES ('454', 'a0kja', '戴泽洋', '00000000', '1', '2022-03-19 06:40:43', '17362283922', '海口', '3', '1', '2022-04-19 12:47:33', null, '2022-06-21 03:34:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('455', 'a4Q3', '董立轩', '00000000', '1', '2022-10-11 10:16:38', '15647194421', '太原', '3', '1', '2022-03-16 16:58:29', null, '2022-11-01 05:18:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('456', 'ob', '江明辉', '00000000', '1', '2022-06-25 00:18:01', '13461045235', '肇庆', '3', '1', '2022-09-13 15:39:27', null, '2022-12-31 00:32:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('457', 'sgvHT', '刘修杰', '00000000', '1', '2022-07-08 05:50:10', '15595888312', '临汾', '3', '1', '2022-10-13 20:47:37', null, '2022-07-10 08:05:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('458', 'rLIa', '段文博', '00000000', '1', '2022-07-11 01:40:17', '17523318633', '宜宾', '3', '1', '2022-01-06 03:49:52', null, '2022-05-26 11:49:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('459', '5vMK', '冯思淼', '00000000', '1', '2022-04-23 11:25:11', '15302160740', '莱州', '3', '1', '2022-01-23 16:25:35', null, '2022-09-09 07:54:45', '0', '0');
INSERT INTO `smbms_user` VALUES ('460', 'wSz', '黄鹏煊', '00000000', '1', '2022-11-20 18:16:07', '18591348324', '文登', '3', '1', '2022-07-27 07:33:01', null, '2022-05-09 15:25:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('461', 'FY', '莫楷瑞', '00000000', '1', '2022-05-20 21:16:01', '15089881963', '石家庄', '3', '1', '2022-09-21 10:22:34', null, '2022-02-15 16:45:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('462', 'JKXP8', '彭明哲', '00000000', '1', '2022-06-28 07:53:41', '17213675948', '韶关', '3', '1', '2022-06-22 01:48:42', null, '2022-04-26 14:54:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('463', '7iV', '叶智渊', '00000000', '1', '2022-07-09 10:25:30', '18133219883', '马鞍山', '3', '1', '2022-11-24 10:13:08', null, '2022-07-30 15:36:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('464', 'bai3', '魏天磊', '00000000', '1', '2022-07-07 02:29:35', '14714848444', '莱芜', '3', '1', '2022-10-15 05:38:46', null, '2022-03-03 08:10:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('465', 'Vt', '彭伟诚', '00000000', '1', '2022-09-20 13:16:15', '15812325784', '宜宾', '3', '1', '2022-09-06 21:19:52', null, '2022-07-04 15:26:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('466', '6Y', '白嘉熙', '00000000', '1', '2022-05-26 19:14:38', '17109547631', '滨州', '3', '1', '2022-02-16 20:42:35', null, '2022-11-05 01:19:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('467', '9vR', '杨炫明', '00000000', '1', '2022-07-09 12:32:35', '15338276380', '平度', '3', '1', '2022-09-11 16:12:40', null, '2022-08-28 17:26:55', '0', '0');
INSERT INTO `smbms_user` VALUES ('468', '3nma', '韦熠彤', '00000000', '1', '2022-11-18 16:15:59', '15375656701', '贵阳', '3', '1', '2022-11-06 00:05:55', null, '2022-07-01 03:29:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('469', 'Myos', '赵博文', '00000000', '1', '2022-06-11 17:27:01', '15067850674', '汕尾', '3', '1', '2022-04-06 04:49:24', null, '2022-08-04 19:05:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('470', 'qCQAW', '何苑博', '00000000', '1', '2022-01-06 12:24:17', '17693587641', '三门峡', '3', '1', '2022-09-06 06:06:40', null, '2022-05-31 01:37:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('471', 'QH', '邵烨霖', '00000000', '1', '2022-02-08 14:54:50', '17608716507', '舟山', '3', '1', '2022-11-12 14:08:27', null, '2022-02-13 01:16:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('472', 'BdRT', '卢明哲', '00000000', '1', '2022-09-20 09:32:24', '17574429812', '克拉玛依', '3', '1', '2022-04-24 13:00:06', null, '2022-02-22 02:18:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('473', 'yKQ0', '尹胤祥', '00000000', '1', '2022-07-08 22:37:34', '15081003919', '镇江', '3', '1', '2022-07-16 20:16:42', null, '2022-07-06 01:05:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('474', 'nEJH', '江立辉', '00000000', '1', '2022-06-25 00:28:34', '15008965046', '梅州', '3', '1', '2022-03-22 23:04:45', null, '2022-07-15 03:43:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('475', 'mT2', '蒋熠彤', '00000000', '1', '2022-07-11 02:37:33', '17021345652', '鞍山', '3', '1', '2022-01-07 16:07:42', null, '2022-09-29 16:54:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('476', 'i9qo', '王鑫磊', '00000000', '1', '2022-03-25 03:20:09', '13379449834', '克拉玛依', '3', '1', '2022-04-07 09:31:14', null, '2022-01-23 19:32:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('477', 'ry1', '莫泽洋', '00000000', '1', '2022-02-09 05:22:42', '15673821848', '盐城', '3', '1', '2022-12-23 06:49:53', null, '2022-12-20 22:41:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('478', 'UOq', '郑文昊', '00000000', '1', '2022-02-01 12:49:56', '15676216171', '聊城', '3', '1', '2022-02-23 17:32:02', null, '2022-10-22 06:21:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('479', 'GG9O5', '毛嘉懿', '00000000', '1', '2022-11-03 05:06:03', '15077222109', '株洲', '3', '1', '2022-06-28 09:43:38', null, '2022-08-12 21:29:38', '0', '0');
INSERT INTO `smbms_user` VALUES ('480', 'ImBC', '龚浩然', '00000000', '1', '2022-07-13 08:43:54', '17813193285', '岳阳', '3', '1', '2022-04-26 12:58:54', null, '2022-06-02 19:27:55', '0', '0');
INSERT INTO `smbms_user` VALUES ('481', 'i3m', '杜展鹏', '00000000', '1', '2022-01-26 14:50:22', '15021945184', '瓦房店', '3', '1', '2022-06-16 16:01:31', null, '2022-06-04 20:45:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('482', 'FXL', '谭明辉', '00000000', '1', '2022-11-14 06:49:44', '17783220557', '湛江', '3', '1', '2022-04-30 00:31:29', null, '2022-12-31 13:07:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('483', 'jqI4W', '田思聪', '00000000', '1', '2022-08-29 14:29:26', '15810477922', '东莞', '3', '1', '2022-03-05 02:06:53', null, '2022-04-15 17:36:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('484', 'jnu', '蒋智渊', '00000000', '1', '2022-07-26 19:54:37', '15770003771', '盘锦', '3', '1', '2022-07-28 17:50:39', null, '2022-12-23 09:58:45', '0', '0');
INSERT INTO `smbms_user` VALUES ('485', 'nABYH', '彭鸿涛', '00000000', '1', '2022-07-01 08:14:45', '14570754563', '聊城', '3', '1', '2022-03-24 01:07:52', null, '2022-08-06 10:53:24', '0', '0');
INSERT INTO `smbms_user` VALUES ('486', 'yY43n', '卢哲瀚', '00000000', '1', '2022-09-29 18:35:53', '17379986123', '北海', '3', '1', '2022-09-13 20:52:19', null, '2022-07-31 07:45:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('487', '1xHcG', '冯瑾瑜', '00000000', '1', '2022-10-10 20:11:06', '17548974135', '洛阳', '3', '1', '2022-05-13 01:30:12', null, '2022-10-18 03:07:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('488', '4G', '高炎彬', '00000000', '1', '2022-06-07 14:20:08', '17549927109', '盐城', '3', '1', '2022-04-23 21:57:14', null, '2022-10-28 02:35:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('489', 'qJspZ', '龙远航', '00000000', '1', '2022-03-26 16:57:27', '15092837976', '牡丹江', '3', '1', '2022-02-16 17:31:40', null, '2022-12-18 23:30:45', '0', '0');
INSERT INTO `smbms_user` VALUES ('490', 'pV', '傅鹏', '00000000', '1', '2022-08-31 21:32:46', '14713667976', '岳阳', '3', '1', '2022-03-31 14:02:43', null, '2022-02-24 12:01:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('491', 'QLzCS', '冯聪健', '00000000', '1', '2022-09-30 10:21:07', '17309176470', '鄂尔多斯', '3', '1', '2022-11-28 16:35:13', null, '2022-03-04 19:16:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('492', 'MZUZH', '田子轩', '00000000', '1', '2022-01-12 02:28:06', '18196914106', '丽水', '3', '1', '2022-04-14 00:54:21', null, '2022-08-31 17:30:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('493', 'fVh9n', '丁志泽', '00000000', '1', '2022-02-23 06:38:44', '15637139045', '宜宾', '3', '1', '2022-07-14 15:56:09', null, '2022-12-26 05:33:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('494', 'P2', '傅鸿煊', '00000000', '1', '2022-05-11 03:37:34', '14527531743', '鞍山', '3', '1', '2022-10-02 09:53:22', null, '2022-03-02 15:44:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('495', 'YX7e', '顾伟宸', '00000000', '1', '2022-04-06 04:46:00', '17683689860', '金昌', '3', '1', '2022-08-13 11:35:06', null, '2022-09-25 08:22:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('496', 'W3Qo', '张晋鹏', '00000000', '1', '2022-08-14 01:16:06', '17266347717', '桂林', '3', '1', '2022-04-10 22:48:51', null, '2022-03-01 23:46:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('497', 'Z5', '何鹏', '00000000', '1', '2022-08-01 00:18:17', '15965267387', '乳山', '3', '1', '2022-05-28 06:24:13', null, '2022-01-22 02:36:08', '0', '0');
INSERT INTO `smbms_user` VALUES ('498', 'NyZ', '韦文昊', '00000000', '1', '2022-11-04 19:58:27', '15185862460', '滨州', '3', '1', '2022-12-04 07:15:34', null, '2022-08-15 10:19:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('499', 'lyzs3', '苏昊天', '00000000', '1', '2022-05-09 10:18:13', '15016023142', '北海', '3', '1', '2022-02-10 04:44:10', null, '2022-10-02 12:10:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('500', 'mpeL', '廖烨伟', '00000000', '1', '2022-08-10 09:34:09', '18735993835', '锦州', '3', '1', '2022-11-03 04:05:53', null, '2022-09-14 18:49:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('501', 'SkLK', '谭明辉', '00000000', '1', '2022-09-16 03:10:08', '18275640818', '济南', '3', '1', '2022-05-12 16:19:59', null, '2022-01-20 02:33:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('502', 'J9', '潘伟宸', '00000000', '1', '2022-04-03 11:52:58', '15318035507', '张家界', '3', '1', '2022-03-03 12:46:39', null, '2022-05-04 11:19:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('503', 'rDk', '林越泽', '00000000', '1', '2022-07-31 06:04:09', '15220438509', '承德', '3', '1', '2022-02-28 19:03:31', null, '2022-09-14 10:20:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('504', 'pPX', '吕嘉熙', '00000000', '1', '2022-12-03 14:59:55', '17674832393', '嘉峪关', '3', '1', '2022-11-09 02:41:21', null, '2022-06-13 11:33:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('505', 'ex', '魏昊天', '00000000', '1', '2022-07-13 03:31:36', '18553542392', '河源', '3', '1', '2022-04-24 11:21:17', null, '2022-02-20 03:13:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('506', '80', '梁钰轩', '00000000', '1', '2022-05-09 00:07:35', '15824031155', '昆明', '3', '1', '2022-12-24 15:32:57', null, '2022-02-15 05:48:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('507', 'RU9', '徐俊驰', '00000000', '1', '2022-02-21 00:57:11', '17617279291', '营口', '3', '1', '2022-11-24 01:51:35', null, '2022-04-17 22:30:35', '0', '0');
INSERT INTO `smbms_user` VALUES ('508', 'hmG7', '袁胤祥', '00000000', '1', '2022-09-29 02:12:52', '14773218480', '济宁', '3', '1', '2022-03-30 14:22:30', null, '2022-11-29 22:25:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('509', 'nK', '杜语堂', '00000000', '1', '2022-02-17 22:05:28', '17159411280', '珠海', '3', '1', '2022-09-17 12:23:18', null, '2022-07-08 15:27:58', '0', '0');
INSERT INTO `smbms_user` VALUES ('510', 'rBPbV', '袁越泽', '00000000', '1', '2022-03-23 01:58:16', '18507991453', '南京', '3', '1', '2022-07-05 05:14:23', null, '2022-06-05 22:33:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('511', 'Sq6', '朱鑫鹏', '00000000', '1', '2022-04-09 06:45:28', '17296106457', '秦皇岛', '3', '1', '2022-02-11 14:42:12', null, '2022-09-27 03:34:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('512', 'ycu', '魏智辉', '00000000', '1', '2022-03-23 20:11:24', '17316991560', '云浮', '3', '1', '2022-04-17 22:23:34', null, '2022-01-30 09:10:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('513', 'gLk', '孔子默', '00000000', '1', '2022-11-24 07:51:06', '15278653228', '成都', '3', '1', '2022-01-09 10:12:27', null, '2022-12-16 17:49:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('514', 'dRV4', '朱涛', '00000000', '1', '2022-08-27 05:57:15', '17872449353', '青岛', '3', '1', '2022-11-17 17:28:09', null, '2022-02-06 19:10:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('515', '5nR', '陶鹏', '00000000', '1', '2022-06-26 02:23:00', '15136161335', '芜湖', '3', '1', '2022-04-06 19:37:04', null, '2022-02-08 05:22:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('516', 'JLVX', '汪鹭洋', '00000000', '1', '2022-03-11 07:38:49', '15293499333', '东莞', '3', '1', '2022-06-14 15:13:20', null, '2022-06-06 13:33:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('517', '2pt', '崔鸿涛', '00000000', '1', '2022-09-10 09:09:56', '18534255575', '荣成', '3', '1', '2022-10-03 03:43:48', null, '2022-12-04 04:25:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('518', 'zIsT', '张鸿煊', '00000000', '1', '2022-02-25 06:34:49', '15037238157', '宜昌', '3', '1', '2022-08-31 00:56:28', null, '2022-11-19 19:28:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('519', 'KHv', '卢修杰', '00000000', '1', '2022-01-12 05:37:54', '13881430367', '南充', '3', '1', '2022-07-05 10:32:22', null, '2022-12-02 02:17:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('520', '1eccs', '高伟祺', '00000000', '1', '2022-12-28 11:17:18', '17568453117', '玉溪', '3', '1', '2022-02-21 13:41:32', null, '2022-01-26 08:02:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('521', '0OT', '秦文博', '00000000', '1', '2022-12-30 09:16:29', '17600842787', '葫芦岛', '3', '1', '2022-08-27 01:15:05', null, '2022-08-12 20:12:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('522', 'Gos', '钱乐驹', '00000000', '1', '2022-05-27 09:30:09', '15292668421', '河源', '3', '1', '2022-10-14 14:11:27', null, '2022-03-30 07:34:59', '0', '0');
INSERT INTO `smbms_user` VALUES ('523', 'phLme', '韩鹤轩', '00000000', '1', '2022-09-04 16:36:44', '15031663349', '茂名', '3', '1', '2022-10-28 05:37:13', null, '2022-11-16 04:54:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('524', 'UwkS', '韦健雄', '00000000', '1', '2022-11-24 18:34:05', '15930451028', '南京', '3', '1', '2022-12-27 04:20:15', null, '2022-08-28 06:27:10', '0', '0');
INSERT INTO `smbms_user` VALUES ('525', 'hSZb8', '魏黎昕', '00000000', '1', '2022-02-23 22:53:31', '15865592042', '莱西', '3', '1', '2022-02-28 01:09:23', null, '2022-11-10 06:05:14', '0', '0');
INSERT INTO `smbms_user` VALUES ('526', 'Pers9', '戴思远', '00000000', '1', '2022-04-16 07:46:52', '14520041057', '渭南', '3', '1', '2022-10-16 17:06:28', null, '2022-09-09 11:51:32', '0', '0');
INSERT INTO `smbms_user` VALUES ('527', 'ksr', '任旭尧', '00000000', '1', '2022-07-14 05:41:14', '15777285951', '溧阳', '3', '1', '2022-01-05 04:15:25', null, '2022-11-26 02:05:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('528', 'VB', '李越彬', '00000000', '1', '2022-09-18 01:56:34', '15508587288', '北海', '3', '1', '2022-09-24 19:48:28', null, '2022-10-20 05:53:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('529', 'pvx', '冯伟宸', '00000000', '1', '2022-04-20 12:53:42', '17276132107', '本溪', '3', '1', '2022-12-14 13:52:50', null, '2022-10-03 22:43:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('530', 'cBm', '龙昊天', '00000000', '1', '2022-08-15 15:08:20', '17814313050', '吴江', '3', '1', '2022-07-02 17:40:10', null, '2022-09-13 18:35:37', '0', '0');
INSERT INTO `smbms_user` VALUES ('531', 'xDODU', '邹潇然', '00000000', '1', '2022-05-22 20:17:37', '15811962238', '清远', '3', '1', '2022-06-15 21:33:33', null, '2022-08-27 12:27:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('532', 'UR', '萧烨霖', '00000000', '1', '2022-12-24 19:08:30', '15004476224', '韶关', '3', '1', '2022-02-18 02:05:06', null, '2022-10-19 04:38:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('533', '7pZ', '沈鹭洋', '00000000', '1', '2022-11-21 05:35:56', '15897031528', '阳江', '3', '1', '2022-02-07 11:17:05', null, '2022-08-24 10:22:45', '0', '0');
INSERT INTO `smbms_user` VALUES ('534', 'JS', '莫苑博', '00000000', '1', '2022-10-31 09:58:33', '14574953107', '临安', '3', '1', '2022-10-11 16:02:55', null, '2022-06-04 04:03:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('535', 'SCQIv', '石语堂', '00000000', '1', '2022-08-23 09:43:26', '15130243055', '淄博', '3', '1', '2022-08-05 18:15:46', null, '2022-03-10 16:24:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('536', '5i', '萧驰', '00000000', '1', '2022-08-02 05:27:15', '14533804042', '石家庄', '3', '1', '2022-07-08 18:03:17', null, '2022-05-28 15:35:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('537', 'FUS5S', '薛胤祥', '00000000', '1', '2022-11-11 04:04:09', '17730496054', '阳江', '3', '1', '2022-05-01 16:24:39', null, '2022-02-12 20:15:57', '0', '0');
INSERT INTO `smbms_user` VALUES ('538', '77S', '覃鸿涛', '00000000', '1', '2022-07-17 04:32:25', '14717542603', '海口', '3', '1', '2022-06-26 02:18:27', null, '2022-08-29 06:45:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('539', 'x2uf', '徐绍齐', '00000000', '1', '2022-06-18 13:03:48', '17522523075', '昆明', '3', '1', '2022-04-08 07:10:15', null, '2022-09-13 22:59:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('540', 'deYW', '傅博涛', '00000000', '1', '2022-07-22 00:31:50', '17167371865', '东莞', '3', '1', '2022-02-10 00:11:38', null, '2022-10-30 12:06:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('541', 'qJx', '丁熠彤', '00000000', '1', '2022-04-04 14:07:38', '17164604591', '丹东', '3', '1', '2022-12-04 03:06:46', null, '2022-09-28 22:53:36', '0', '0');
INSERT INTO `smbms_user` VALUES ('542', 'bXfU', '郭鹏飞', '00000000', '1', '2022-05-12 00:59:52', '14543498773', '菏泽', '3', '1', '2022-06-24 17:35:40', null, '2022-08-01 14:16:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('543', '6Bss', '徐浩', '00000000', '1', '2022-01-12 00:45:52', '15559881096', '秦皇岛', '3', '1', '2022-06-04 17:06:18', null, '2022-06-22 00:16:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('544', 'UB', '萧熠彤', '00000000', '1', '2022-03-23 06:16:44', '17306624829', '西宁', '3', '1', '2022-05-04 07:04:07', null, '2022-08-23 22:35:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('545', 'Yj', '胡烨伟', '00000000', '1', '2022-06-21 23:42:58', '15180590203', '沧州', '3', '1', '2022-09-14 05:07:56', null, '2022-02-16 12:43:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('546', '95Cl', '沈金鑫', '00000000', '1', '2022-07-31 17:37:12', '15205887854', '聊城', '3', '1', '2022-08-01 10:06:51', null, '2022-09-07 11:38:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('547', 'ZN0SC', '于君浩', '00000000', '1', '2022-05-02 22:34:48', '17093398007', '岳阳', '3', '1', '2022-07-22 22:43:51', null, '2022-07-31 07:24:48', '0', '0');
INSERT INTO `smbms_user` VALUES ('548', 'eoG', '贾智辉', '00000000', '1', '2022-04-07 23:23:47', '14752485633', '东营', '3', '1', '2022-10-27 22:35:35', null, '2022-10-16 08:31:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('549', '1L', '程博超', '00000000', '1', '2022-04-10 21:25:50', '17267838338', '赤峰', '3', '1', '2022-05-18 10:04:14', null, '2022-10-21 05:44:41', '0', '0');
INSERT INTO `smbms_user` VALUES ('550', 'qbY', '覃旭尧', '00000000', '1', '2022-11-26 04:16:07', '18164956054', '河源', '3', '1', '2022-03-08 16:13:12', null, '2022-04-10 21:18:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('551', 'yfZ', '廖鑫鹏', '00000000', '1', '2022-09-21 09:37:06', '14720757680', '宿迁', '3', '1', '2022-01-02 01:18:13', null, '2022-02-05 16:04:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('552', '0y', '白果', '00000000', '1', '2022-08-14 22:28:18', '13905990737', '承德', '3', '1', '2022-05-16 00:21:56', null, '2022-02-02 23:29:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('553', 'BB', '刘嘉懿', '00000000', '1', '2022-07-17 06:16:32', '15840396293', '吉林', '3', '1', '2022-06-21 20:11:14', null, '2022-05-04 23:41:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('554', 'ZyL', '熊弘文', '00000000', '1', '2022-02-02 01:43:03', '17744958459', '蓬莱', '3', '1', '2022-04-14 18:43:31', null, '2022-07-30 18:40:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('555', 'U2rSW', '洪擎宇', '00000000', '1', '2022-06-12 04:01:32', '15665324556', '包头', '3', '1', '2022-06-27 07:51:22', null, '2022-03-29 01:37:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('556', 'Lg7In', '陈语堂', '00000000', '1', '2022-06-28 16:52:35', '14539287234', '莱州', '3', '1', '2022-02-08 13:21:31', null, '2022-02-23 16:21:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('557', 'bn7', '赵炎彬', '00000000', '1', '2022-06-26 01:57:38', '15123311872', '三门峡', '3', '1', '2022-06-02 22:04:23', null, '2022-01-14 07:37:10', '0', '0');
INSERT INTO `smbms_user` VALUES ('558', 'IQjh', '傅昊强', '00000000', '1', '2022-02-17 21:46:16', '17008208113', '太原', '3', '1', '2022-09-19 08:02:06', null, '2022-07-01 09:18:04', '0', '0');
INSERT INTO `smbms_user` VALUES ('559', '7dJK', '尹峻熙', '00000000', '1', '2022-11-04 22:16:46', '14789188628', '西宁', '3', '1', '2022-12-20 10:21:36', null, '2022-09-24 01:28:54', '0', '0');
INSERT INTO `smbms_user` VALUES ('560', '0Zap', '唐越彬', '00000000', '1', '2022-07-26 02:16:26', '15163377853', '镇江', '3', '1', '2022-02-04 05:44:10', null, '2022-05-20 13:00:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('561', 'my0V7', '苏熠彤', '00000000', '1', '2022-07-16 19:04:37', '17577672206', '开封', '3', '1', '2022-01-11 02:33:13', null, '2022-06-23 02:04:46', '0', '0');
INSERT INTO `smbms_user` VALUES ('562', 'QG', '史俊驰', '00000000', '1', '2022-08-12 00:23:33', '15513835838', '玉溪', '3', '1', '2022-02-13 06:46:14', null, '2022-03-14 09:00:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('563', 'fKGUk', '熊琪', '00000000', '1', '2022-10-11 10:38:51', '17898176499', '淄博', '3', '1', '2022-10-21 21:04:37', null, '2022-02-17 22:17:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('564', '4NHad', '薛智辉', '00000000', '1', '2022-10-08 11:17:59', '14709668456', '东营', '3', '1', '2022-10-20 08:45:20', null, '2022-09-21 11:22:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('565', 'Zux', '侯鹏飞', '00000000', '1', '2022-09-03 20:31:30', '15080998850', '汕尾', '3', '1', '2022-05-08 01:21:05', null, '2022-12-22 02:33:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('566', 'BX', '高擎宇', '00000000', '1', '2022-05-06 23:12:53', '18663886755', '乳山', '3', '1', '2022-10-18 05:05:55', null, '2022-10-26 07:16:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('567', '3Hb6a', '孔浩轩', '00000000', '1', '2022-12-24 01:00:19', '17195569541', '咸阳', '3', '1', '2022-04-11 13:05:13', null, '2022-03-13 04:07:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('568', 'iuU8', '陆志强', '00000000', '1', '2022-11-05 01:29:45', '17122839010', '湘潭', '3', '1', '2022-01-24 15:10:54', null, '2022-01-11 10:42:29', '0', '0');
INSERT INTO `smbms_user` VALUES ('569', 'MLep', '余钰轩', '00000000', '1', '2022-06-16 11:16:35', '15670392343', '梅州', '3', '1', '2022-10-11 16:25:22', null, '2022-02-01 14:11:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('570', 'LW2Mc', '孙昊天', '00000000', '1', '2022-10-18 03:54:02', '17749788678', '乌鲁木齐', '3', '1', '2022-11-05 19:08:43', null, '2022-04-09 07:04:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('571', 'nE1zC', '钟俊驰', '00000000', '1', '2022-04-04 14:33:30', '15002626420', '成都', '3', '1', '2022-03-29 05:41:33', null, '2022-12-04 13:43:49', '0', '0');
INSERT INTO `smbms_user` VALUES ('572', 'QO', '吕明辉', '00000000', '1', '2022-09-20 17:32:07', '18747114355', '南通', '3', '1', '2022-03-08 01:52:45', null, '2022-08-14 13:15:52', '0', '0');
INSERT INTO `smbms_user` VALUES ('573', 'DX', '阎梓晨', '00000000', '1', '2022-11-17 08:57:45', '18010747106', '湛江', '3', '1', '2022-12-27 22:42:11', null, '2022-09-24 18:27:25', '0', '0');
INSERT INTO `smbms_user` VALUES ('574', '3eFO', '于旭尧', '00000000', '1', '2022-08-04 04:46:14', '15732735421', '湘潭', '3', '1', '2022-04-16 12:00:51', null, '2022-03-30 22:40:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('575', 'ibc3', '邹晋鹏', '00000000', '1', '2022-04-02 20:05:12', '17070506855', '昆明', '3', '1', '2022-11-04 01:16:06', null, '2022-12-10 03:43:21', '0', '0');
INSERT INTO `smbms_user` VALUES ('576', 'TSc', '侯伟宸', '00000000', '1', '2022-09-08 05:00:37', '17733856082', '蓬莱', '3', '1', '2022-12-13 04:41:10', null, '2022-11-20 07:26:12', '0', '0');
INSERT INTO `smbms_user` VALUES ('577', 'sFSm', '邹昊然', '00000000', '1', '2022-06-03 07:26:43', '14588375460', '日照', '3', '1', '2022-08-24 14:19:15', null, '2022-05-13 03:21:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('578', 'CQJY', '韦雪松', '00000000', '1', '2022-09-15 17:50:05', '15341991849', '遵义', '3', '1', '2022-11-12 16:31:39', null, '2022-10-19 11:18:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('579', 'Qr', '袁鸿煊', '00000000', '1', '2022-01-28 06:47:21', '15067723216', '铜川', '3', '1', '2022-01-31 23:58:24', null, '2022-04-15 07:57:00', '0', '0');
INSERT INTO `smbms_user` VALUES ('580', 'xU2', '武凯瑞', '00000000', '1', '2022-08-16 22:07:35', '15669530679', '临沂', '3', '1', '2022-12-01 01:39:53', null, '2022-10-29 06:17:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('581', 'Ng3N', '林俊驰', '00000000', '1', '2022-05-01 19:26:15', '15729484919', '诸暨', '3', '1', '2022-03-12 19:31:49', null, '2022-08-10 18:54:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('582', 'KGW', '姚晓啸', '00000000', '1', '2022-07-13 12:47:34', '17014081035', '柳州', '3', '1', '2022-12-15 01:18:16', null, '2022-08-11 09:46:40', '0', '0');
INSERT INTO `smbms_user` VALUES ('583', 'tr1', '阎鑫鹏', '00000000', '1', '2022-06-11 04:56:31', '14719779616', '绵阳', '3', '1', '2022-07-18 08:52:31', null, '2022-09-10 04:51:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('584', 'EOd', '萧志强', '00000000', '1', '2022-05-22 04:24:07', '17753020490', '舟山', '3', '1', '2022-02-14 16:19:30', null, '2022-11-07 03:11:56', '0', '0');
INSERT INTO `smbms_user` VALUES ('585', 'IIZc', '唐智渊', '00000000', '1', '2022-08-11 18:26:58', '15342468029', '本溪', '3', '1', '2022-06-20 20:57:33', null, '2022-08-16 12:06:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('586', 'Pe5Ox', '罗文轩', '00000000', '1', '2022-10-24 04:30:49', '15244444828', '阳江', '3', '1', '2022-06-28 22:08:36', null, '2022-06-10 15:09:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('587', 'h61Uu', '许天磊', '00000000', '1', '2022-03-05 14:42:05', '13013209577', '上海', '3', '1', '2022-03-29 09:20:09', null, '2022-02-18 20:54:09', '0', '0');
INSERT INTO `smbms_user` VALUES ('588', 'AdkT', '戴凯瑞', '00000000', '1', '2022-05-04 15:04:24', '15233574078', '泉州', '3', '1', '2022-07-06 17:07:10', null, '2022-11-19 16:58:44', '0', '0');
INSERT INTO `smbms_user` VALUES ('589', '6w4a', '赖思源', '00000000', '1', '2022-08-10 10:10:39', '17381989034', '泰州', '3', '1', '2022-09-03 14:41:59', null, '2022-09-10 15:41:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('590', 'tA4A', '邱鹏飞', '00000000', '1', '2022-03-20 13:55:42', '15905417236', '海口', '3', '1', '2022-07-25 18:52:45', null, '2022-06-19 16:05:14', '0', '0');
INSERT INTO `smbms_user` VALUES ('591', 'me', '张俊驰', '00000000', '1', '2022-05-19 14:18:27', '15923456851', '福州', '3', '1', '2022-04-12 20:33:04', null, '2022-01-21 15:53:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('592', 'wRq', '陆正豪', '00000000', '1', '2022-05-11 13:17:28', '14774045066', '武汉', '3', '1', '2022-01-20 14:18:49', null, '2022-11-08 02:43:34', '0', '0');
INSERT INTO `smbms_user` VALUES ('593', 'dq', '黄越泽', '00000000', '1', '2022-05-13 02:59:47', '15968307019', '库尔勒', '3', '1', '2022-09-02 18:19:40', null, '2022-03-13 00:35:29', '0', '0');
INSERT INTO `smbms_user` VALUES ('594', 'WAOJV', '沈彬', '00000000', '1', '2022-08-02 07:25:07', '17604831021', '贵阳', '3', '1', '2022-09-26 15:05:06', null, '2022-05-08 20:51:42', '0', '0');
INSERT INTO `smbms_user` VALUES ('595', 'TpOtQ', '龙修洁', '00000000', '1', '2022-06-29 04:59:24', '17773466530', '金坛', '3', '1', '2022-07-16 03:43:04', null, '2022-12-06 20:00:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('596', 'B70X', '石煜城', '00000000', '1', '2022-07-10 21:40:52', '15723361457', '西宁', '3', '1', '2022-09-28 16:06:03', null, '2022-07-13 20:40:29', '0', '0');
INSERT INTO `smbms_user` VALUES ('597', 'oDq', '毛擎苍', '00000000', '1', '2022-11-02 05:01:09', '17658004425', '抚顺', '3', '1', '2022-11-20 14:49:31', null, '2022-02-14 14:20:55', '0', '0');
INSERT INTO `smbms_user` VALUES ('598', 'XW', '郑烨伟', '00000000', '1', '2022-09-08 04:30:56', '15342099946', '威海', '3', '1', '2022-02-18 17:48:15', null, '2022-10-30 19:20:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('599', 'tgSa', '余雨泽', '00000000', '1', '2022-01-16 20:23:26', '15188781615', '南宁', '3', '1', '2022-12-13 05:11:21', null, '2022-02-15 21:23:26', '0', '0');
INSERT INTO `smbms_user` VALUES ('600', 'TF', '陆博涛', '00000000', '1', '2022-06-09 20:19:50', '15727549897', '荣成', '3', '1', '2022-12-22 15:03:19', null, '2022-09-01 03:34:16', '0', '0');
INSERT INTO `smbms_user` VALUES ('601', 'RYO', '邓皓轩', '00000000', '1', '2022-07-21 05:04:25', '17752028405', '大庆', '3', '1', '2022-01-09 09:48:07', null, '2022-06-12 23:14:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('602', 'NSt', '沈鹏', '00000000', '1', '2022-09-10 07:14:44', '15938709484', '石嘴山', '3', '1', '2022-01-08 17:06:14', null, '2022-11-15 06:57:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('603', 'Gqo', '卢子默', '00000000', '1', '2022-08-04 20:59:37', '15040091415', '大庆', '3', '1', '2022-09-21 13:20:22', null, '2022-08-13 10:38:22', '0', '0');
INSERT INTO `smbms_user` VALUES ('604', 'Tk', '范天翊', '00000000', '1', '2022-04-24 15:27:52', '17045747293', '绍兴', '3', '1', '2022-08-13 06:48:11', null, '2022-11-22 21:09:01', '0', '0');
INSERT INTO `smbms_user` VALUES ('605', 'nB', '叶峻熙', '00000000', '1', '2022-11-27 10:27:18', '15270574202', '江阴', '3', '1', '2022-01-01 20:17:07', null, '2022-06-21 13:02:13', '0', '0');
INSERT INTO `smbms_user` VALUES ('606', '3UL8w', '沈梓晨', '00000000', '1', '2022-05-06 16:35:26', '15181255394', '鞍山', '3', '1', '2022-12-02 07:51:49', null, '2022-04-23 19:06:07', '0', '0');
INSERT INTO `smbms_user` VALUES ('607', 'DRN', '魏彬', '00000000', '1', '2022-02-07 06:25:55', '17355270294', '大连', '3', '1', '2022-01-10 19:25:20', null, '2022-06-12 08:10:33', '0', '0');
INSERT INTO `smbms_user` VALUES ('608', 'Z8CuL', '吴浩宇', '00000000', '1', '2022-05-20 17:23:40', '17317929562', '东营', '3', '1', '2022-04-03 23:03:08', null, '2022-10-22 01:58:18', '0', '0');
INSERT INTO `smbms_user` VALUES ('609', 'OuEr', '姚健雄', '00000000', '1', '2022-06-15 18:46:03', '14799371666', '济宁', '3', '1', '2022-08-31 05:35:10', null, '2022-04-08 21:40:23', '0', '0');
INSERT INTO `smbms_user` VALUES ('610', 'Dk', '胡嘉懿', '00000000', '1', '2022-01-11 06:56:05', '15938463421', '义乌', '3', '1', '2022-02-17 11:11:33', null, '2022-10-30 08:17:17', '0', '0');
INSERT INTO `smbms_user` VALUES ('611', 'BV8', '梁智辉', '00000000', '1', '2022-07-05 21:02:28', '15645820209', '衡水', '3', '1', '2022-05-27 22:04:00', null, '2022-03-14 23:50:19', '0', '0');
INSERT INTO `smbms_user` VALUES ('612', 'TVm', '黄天宇', '00000000', '1', '2022-01-26 07:45:14', '17714530700', '盐城', '3', '1', '2022-10-29 20:43:35', null, '2022-07-31 13:25:39', '0', '0');
INSERT INTO `smbms_user` VALUES ('613', 'EZKi', '石凯瑞', '00000000', '1', '2022-02-18 02:09:27', '15087527626', '海口', '3', '1', '2022-04-14 10:04:16', null, '2022-11-05 21:23:05', '0', '0');
INSERT INTO `smbms_user` VALUES ('614', 'Plus', '罗苑博', '00000000', '1', '2022-01-10 05:06:02', '15056922501', '广州', '3', '1', '2022-03-17 23:40:51', null, '2022-02-16 05:58:02', '0', '0');
INSERT INTO `smbms_user` VALUES ('615', '7BV0', '史黎昕', '00000000', '1', '2022-08-08 05:24:21', '17826956664', '烟台', '3', '1', '2022-07-08 15:06:34', null, '2022-12-22 13:52:30', '0', '0');
INSERT INTO `smbms_user` VALUES ('616', 'xsG', '张鑫磊', '00000000', '1', '2022-09-18 01:44:50', '14700154338', '泉州', '3', '1', '2022-08-30 13:44:41', null, '2022-03-05 01:03:03', '0', '0');
INSERT INTO `smbms_user` VALUES ('617', 'vW9E', '崔志泽', '00000000', '1', '2022-12-18 23:40:35', '17141007176', '抚顺', '3', '1', '2022-11-02 03:33:48', null, '2022-07-25 22:32:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('618', 'yr8lO', '董昊强', '00000000', '1', '2022-06-14 21:51:59', '15670960814', '聊城', '3', '1', '2022-09-13 21:06:46', null, '2022-07-18 04:31:11', '0', '0');
INSERT INTO `smbms_user` VALUES ('619', '1vX', '丁远航', '00000000', '1', '2022-12-11 15:04:07', '17191533146', '株洲', '3', '1', '2022-02-03 15:13:10', null, '2022-12-28 10:22:53', '0', '0');
INSERT INTO `smbms_user` VALUES ('620', 'd6ZA', '叶博涛', '00000000', '1', '2022-12-05 10:22:45', '14575388277', '平顶山', '3', '1', '2022-08-14 01:24:56', null, '2022-01-08 00:31:28', '0', '0');
INSERT INTO `smbms_user` VALUES ('621', '0KG', '杜睿渊', '00000000', '1', '2022-05-31 22:09:30', '17510846752', '海口', '3', '1', '2022-12-14 17:26:38', null, '2022-08-29 21:24:47', '0', '0');
INSERT INTO `smbms_user` VALUES ('622', 'Vp', '苏晓博', '00000000', '1', '2022-10-05 16:46:17', '17311729501', '泸州', '3', '1', '2022-03-25 04:41:50', null, '2022-10-16 16:21:27', '0', '0');
INSERT INTO `smbms_user` VALUES ('623', 'ey226', '冯泽洋', '00000000', '1', '2022-02-24 10:48:58', '15618897428', '临沂', '3', '1', '2022-10-20 11:32:17', null, '2022-10-04 19:59:20', '0', '0');
INSERT INTO `smbms_user` VALUES ('624', 'Q1ss', '袁子默', '00000000', '1', '2022-11-29 10:13:28', '15895292493', '淮安', '3', '1', '2022-09-28 08:51:05', null, '2022-02-18 02:09:15', '0', '0');
INSERT INTO `smbms_user` VALUES ('625', 'rnd', '陆绍齐', '00000000', '1', '2022-03-19 16:52:26', '17667984915', '北海', '3', '1', '2022-05-22 12:01:40', null, '2022-12-30 13:48:50', '0', '0');
INSERT INTO `smbms_user` VALUES ('626', 'b1fB', '洪明哲', '00000000', '1', '2022-12-17 04:27:49', '17631734628', '莱西', '3', '1', '2022-11-25 05:33:21', null, '2022-05-29 03:39:21', '0', '0');
INSERT INTO `smbms_user` VALUES ('627', 'Q7wIg', '张展鹏', '00000000', '1', '2022-08-24 16:26:08', '17824199076', '云浮', '3', '1', '2022-06-04 09:00:28', null, '2022-12-24 09:11:10', '0', '0');
