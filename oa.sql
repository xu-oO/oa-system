/*
Navicat MySQL Data Transfer

Source Server         : oa
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-05-05 17:00:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for claim_voucher
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher`;
CREATE TABLE `claim_voucher` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `cause` varchar(255) DEFAULT NULL,
  `create_id` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `next_deal_id` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_voucher
-- ----------------------------
INSERT INTO `claim_voucher` VALUES ('1', '出差', '202151311', '2020-04-13 22:33:43', '202151311', '1600', '新创建');
INSERT INTO `claim_voucher` VALUES ('2', '出差', 'yusheng', '2020-05-03 16:45:22', null, '576', '已打款');
INSERT INTO `claim_voucher` VALUES ('3', '陪客户', 'chenbm', '2020-05-03 19:23:15', 'chencw', '1287', '已审核');
INSERT INTO `claim_voucher` VALUES ('4', '打车', 'yusheng', '2020-05-03 22:23:19', 'chenbm', '92', '已提交');
INSERT INTO `claim_voucher` VALUES ('5', '日本出差', 'yusheng', '2020-05-05 16:23:53', 'chencw', '8300', '已审核');

-- ----------------------------
-- Table structure for claim_voucher_item
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher_item`;
CREATE TABLE `claim_voucher_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claim_voucher_item
-- ----------------------------
INSERT INTO `claim_voucher_item` VALUES ('1', '1', '住宿', '900', '住的');
INSERT INTO `claim_voucher_item` VALUES ('2', '1', '交通', '200', '出行');
INSERT INTO `claim_voucher_item` VALUES ('3', '1', '饮食', '500', '吃的');
INSERT INTO `claim_voucher_item` VALUES ('6', '2', '住宿', '288', '');
INSERT INTO `claim_voucher_item` VALUES ('7', '2', '饮食', '288', '');
INSERT INTO `claim_voucher_item` VALUES ('8', '3', '饮食', '888', '吃酒');
INSERT INTO `claim_voucher_item` VALUES ('9', '3', '住宿', '399', '开房');
INSERT INTO `claim_voucher_item` VALUES ('10', '4', '交通', '92', '加班太晚，打车回家');
INSERT INTO `claim_voucher_item` VALUES ('11', '5', '交通', '1000', '打车');
INSERT INTO `claim_voucher_item` VALUES ('12', '5', '住宿', '3800', '宾馆');
INSERT INTO `claim_voucher_item` VALUES ('13', '5', '饮食', '1500', '吃饭');
INSERT INTO `claim_voucher_item` VALUES ('14', '5', '办公', '2000', '电脑配件');

-- ----------------------------
-- Table structure for deal_record
-- ----------------------------
DROP TABLE IF EXISTS `deal_record`;
CREATE TABLE `deal_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `deal_type` varchar(255) DEFAULT NULL,
  `deal_result` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_record
-- ----------------------------
INSERT INTO `deal_record` VALUES ('1', '1', '202151311', '2020-04-13 22:33:43', '创建', '新创建', '无');
INSERT INTO `deal_record` VALUES ('2', '2', 'yusheng', '2020-05-03 16:45:22', '创建', '新创建', '无');
INSERT INTO `deal_record` VALUES ('3', '2', 'yusheng', '2020-05-03 17:20:49', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES ('4', '2', 'chenbm', '2020-05-03 17:34:21', '通过', '已审核', '已确认');
INSERT INTO `deal_record` VALUES ('5', '2', 'chencw', '2020-05-03 17:34:58', '打款', '已打款', '已通过现金发放');
INSERT INTO `deal_record` VALUES ('6', '3', 'chenbm', '2020-05-03 19:23:15', '创建', '新创建', '无');
INSERT INTO `deal_record` VALUES ('7', '3', 'chenbm', '2020-05-03 19:23:20', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES ('8', '3', 'chenbm', '2020-05-03 19:23:32', '通过', '已审核', '');
INSERT INTO `deal_record` VALUES ('9', '4', 'yusheng', '2020-05-03 22:23:19', '创建', '新创建', '无');
INSERT INTO `deal_record` VALUES ('10', '4', 'yusheng', '2020-05-03 22:24:36', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES ('11', '5', 'yusheng', '2020-05-05 16:23:53', '创建', '新创建', '无');
INSERT INTO `deal_record` VALUES ('12', '5', 'yusheng', '2020-05-05 16:23:56', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES ('13', '5', 'chenbm', '2020-05-05 16:27:20', '通过', '待复审', '');
INSERT INTO `deal_record` VALUES ('14', '5', 'chencp', '2020-05-05 16:28:07', '通过', '已审核', '');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('CW', '财务部', '江苏省南京市江宁区南京工程学院东7A412');
INSERT INTO `department` VALUES ('KF', '开发部', '江苏省南京市江宁区南京工程学院东7A506');
INSERT INTO `department` VALUES ('XZ', '行政部', '江苏省南京市江宁区南京工程学院东7A411');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(16) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `department_id` varchar(20) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('202151311', '111111', '陈长鹏', 'XZ', '总经理');
INSERT INTO `employee` VALUES ('202151312', '111111', '部门经理', 'KF', '部门经理');
INSERT INTO `employee` VALUES ('202151313', '111111', '财务', 'CW', '财务');
INSERT INTO `employee` VALUES ('202151314', '111111', '余生', 'KF', '员工');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('2', '202151311', '2020-04-13 22:30:09', 'login');
INSERT INTO `log` VALUES ('3', '202151311', '2020-04-13 22:31:47', 'login');
INSERT INTO `log` VALUES ('4', 'yusheng', '2020-04-19 18:36:22', 'login');
INSERT INTO `log` VALUES ('5', 'yusheng', '2020-05-03 12:02:52', 'login');
INSERT INTO `log` VALUES ('6', 'yusheng', '2020-05-03 16:44:17', 'login');
INSERT INTO `log` VALUES ('7', 'yusheng', '2020-05-03 16:48:45', 'login');
INSERT INTO `log` VALUES ('8', 'chencp', '2020-05-03 17:21:24', 'login');
INSERT INTO `log` VALUES ('9', 'chenbm', '2020-05-03 17:32:58', 'login');
INSERT INTO `log` VALUES ('10', 'chencw', '2020-05-03 17:33:35', 'login');
INSERT INTO `log` VALUES ('11', 'chenbm', '2020-05-03 17:34:09', 'login');
INSERT INTO `log` VALUES ('12', 'chencw', '2020-05-03 17:34:31', 'login');
INSERT INTO `log` VALUES ('13', 'chencp', '2020-05-03 17:35:09', 'login');
INSERT INTO `log` VALUES ('14', 'yusheng', '2020-05-03 17:47:45', 'login');
INSERT INTO `log` VALUES ('15', 'chencp', '2020-05-03 17:49:37', 'login');
INSERT INTO `log` VALUES ('16', 'yusheng', '2020-05-03 17:52:08', 'login');
INSERT INTO `log` VALUES ('17', 'yusheng', '2020-05-03 18:31:47', 'login');
INSERT INTO `log` VALUES ('18', 'chencp', '2020-05-03 18:33:52', 'login');
INSERT INTO `log` VALUES ('19', 'chenbm', '2020-05-03 18:36:45', 'login');
INSERT INTO `log` VALUES ('20', 'chenbm', '2020-05-03 18:40:33', 'login');
INSERT INTO `log` VALUES ('21', 'chencp', '2020-05-03 18:57:22', 'login');
INSERT INTO `log` VALUES ('22', 'chenbm', '2020-05-03 18:57:53', 'login');
INSERT INTO `log` VALUES ('23', 'chenbm', '2020-05-03 19:01:23', 'login');
INSERT INTO `log` VALUES ('24', 'chencp', '2020-05-03 19:23:48', 'login');
INSERT INTO `log` VALUES ('25', 'chenbm', '2020-05-03 19:24:15', 'login');
INSERT INTO `log` VALUES ('26', 'yusheng', '2020-05-03 19:29:21', 'login');
INSERT INTO `log` VALUES ('27', 'yusheng', '2020-05-03 22:13:29', 'login');
INSERT INTO `log` VALUES ('28', 'yusheng', '2020-05-04 08:28:18', 'login');
INSERT INTO `log` VALUES ('29', 'chenbm', '2020-05-04 12:59:45', 'login');
INSERT INTO `log` VALUES ('30', 'yusheng', '2020-05-04 13:02:29', 'login');
INSERT INTO `log` VALUES ('31', 'yusheng', '2020-05-04 13:05:14', 'login');
INSERT INTO `log` VALUES ('32', 'yusheng', '2020-05-04 15:01:04', 'login');
INSERT INTO `log` VALUES ('33', 'yusheng', '2020-05-04 15:02:49', 'login');
INSERT INTO `log` VALUES ('34', 'yusheng', '2020-05-04 15:06:45', 'login');
INSERT INTO `log` VALUES ('35', 'yusheng', '2020-05-04 17:24:26', 'login');
INSERT INTO `log` VALUES ('36', 'yusheng', '2020-05-04 19:40:01', 'login');
INSERT INTO `log` VALUES ('37', 'yusheng', '2020-05-04 19:48:53', 'login');
INSERT INTO `log` VALUES ('38', 'yusheng', '2020-05-04 20:22:10', 'login');
INSERT INTO `log` VALUES ('39', 'yusheng', '2020-05-04 20:35:05', 'login');
INSERT INTO `log` VALUES ('40', 'yusheng', '2020-05-04 21:00:04', 'login');
INSERT INTO `log` VALUES ('41', 'yusheng', '2020-05-04 21:02:20', 'login');
INSERT INTO `log` VALUES ('42', 'yusheng', '2020-05-04 21:26:24', 'login');
INSERT INTO `log` VALUES ('43', 'yusheng', '2020-05-04 21:47:57', 'login');
INSERT INTO `log` VALUES ('44', 'yusheng', '2020-05-05 10:36:45', 'login');
INSERT INTO `log` VALUES ('45', 'yusheng', '2020-05-05 10:52:56', 'login');
INSERT INTO `log` VALUES ('46', 'yusheng', '2020-05-05 11:24:52', 'login');
INSERT INTO `log` VALUES ('47', 'yusheng', '2020-05-05 13:35:48', 'login');
INSERT INTO `log` VALUES ('48', 'yusheng', '2020-05-05 13:59:30', 'login');
INSERT INTO `log` VALUES ('49', 'chenbm', '2020-05-05 13:59:53', 'login');
INSERT INTO `log` VALUES ('50', 'yusheng', '2020-05-05 14:11:27', 'login');
INSERT INTO `log` VALUES ('51', 'chenbm', '2020-05-05 14:11:41', 'login');
INSERT INTO `log` VALUES ('52', 'yusheng', '2020-05-05 14:13:40', 'login');
INSERT INTO `log` VALUES ('53', 'chenbm', '2020-05-05 14:14:10', 'login');
INSERT INTO `log` VALUES ('54', 'yusheng', '2020-05-05 14:14:57', 'login');
INSERT INTO `log` VALUES ('55', 'yusheng', '2020-05-05 14:54:52', 'login');
INSERT INTO `log` VALUES ('56', 'yusheng', '2020-05-05 15:14:07', 'login');
INSERT INTO `log` VALUES ('57', 'chenbm', '2020-05-05 15:21:57', 'login');
INSERT INTO `log` VALUES ('58', 'chenbm', '2020-05-05 15:28:54', 'login');
INSERT INTO `log` VALUES ('59', 'chenbm', '2020-05-05 15:54:51', 'login');
INSERT INTO `log` VALUES ('60', 'yusheng', '2020-05-05 16:05:02', 'login');
INSERT INTO `log` VALUES ('61', 'chenbm', '2020-05-05 16:05:14', 'login');
INSERT INTO `log` VALUES ('62', 'chenbm', '2020-05-05 16:09:23', 'login');
INSERT INTO `log` VALUES ('63', 'yusheng', '2020-05-05 16:11:20', 'login');
INSERT INTO `log` VALUES ('64', 'chenbm', '2020-05-05 16:18:00', 'login');
INSERT INTO `log` VALUES ('65', 'yusheng', '2020-05-05 16:22:55', 'login');
INSERT INTO `log` VALUES ('66', 'chenbm', '2020-05-05 16:27:11', 'login');
INSERT INTO `log` VALUES ('67', 'chencw', '2020-05-05 16:27:43', 'login');
INSERT INTO `log` VALUES ('68', 'chencp', '2020-05-05 16:27:59', 'login');
INSERT INTO `log` VALUES ('69', 'chencw', '2020-05-05 16:28:15', 'login');
INSERT INTO `log` VALUES ('70', 'yusheng', '2020-05-05 16:32:18', 'login');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `name` varchar(20) DEFAULT '' COMMENT '任务名称',
  `task_content` varchar(50) DEFAULT '' COMMENT '任务内容',
  `employee_id` varchar(20) DEFAULT '' COMMENT '指派人',
  `status` varchar(10) DEFAULT '' COMMENT '任务状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('1', '全局异常处理', '增加全局异常处理逻辑', 'yusheng', '完成');
INSERT INTO `task` VALUES ('2', 'OA系统测试', '测试OA系统是否存在问题', 'yusheng', '新建');

-- ----------------------------
-- Table structure for work_attendance
-- ----------------------------
DROP TABLE IF EXISTS `work_attendance`;
CREATE TABLE `work_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_type` varchar(10) DEFAULT '考勤' COMMENT '考勤类型',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注',
  `employee_id` varchar(255) DEFAULT '' COMMENT '审批人',
  `result` varchar(255) DEFAULT '' COMMENT '审批结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_attendance
-- ----------------------------
INSERT INTO `work_attendance` VALUES ('1', '考勤', '2020-05-04 08:00:00', '2020-05-04 18:00:00', '完成OA系统CRUD操作', 'yusheng', '通过');
INSERT INTO `work_attendance` VALUES ('2', '考勤', '2020-05-03 08:00:00', '2020-05-03 18:00:00', '完成OA系统CRUD操作', 'yusheng', '拒绝');
INSERT INTO `work_attendance` VALUES ('5', '考勤', '2020-05-05 08:00:00', '2020-05-05 17:00:00', 'OA系统添加时间控件', 'yusheng', '已提交');
INSERT INTO `work_attendance` VALUES ('6', '请假', '2020-05-06 08:00:00', '2020-05-06 17:00:00', '医院体检', 'yusheng', '通过');
