/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : asistencias

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-07-08 22:43:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asistencia
-- ----------------------------
DROP TABLE IF EXISTS `asistencia`;
CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `h_inicio` time DEFAULT NULL,
  `h_fin` time DEFAULT NULL,
  `empleado_id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of asistencia
-- ----------------------------
INSERT INTO `asistencia` VALUES ('1', '08:00:00', '16:00:00', '1', '2018-06-24', 'HORARIO NORMAL');
INSERT INTO `asistencia` VALUES ('3', '16:00:00', '20:00:00', '3', '2018-06-24', 'HORAS EXTRA');
INSERT INTO `asistencia` VALUES ('4', '08:00:00', '16:00:00', '2', '2018-06-24', 'HORARIO NORMAL');
INSERT INTO `asistencia` VALUES ('6', '10:23:51', null, '1', '2018-07-08', null);
INSERT INTO `asistencia` VALUES ('7', '10:23:51', null, '2', '2018-07-08', null);
INSERT INTO `asistencia` VALUES ('8', '10:25:14', null, '3', '2018-07-08', null);
INSERT INTO `asistencia` VALUES ('9', '10:25:21', null, '4', '2018-07-08', null);
INSERT INTO `asistencia` VALUES ('10', '10:40:03', null, '1', '2018-07-07', null);
INSERT INTO `asistencia` VALUES ('11', '10:40:03', null, '2', '2018-07-07', null);
INSERT INTO `asistencia` VALUES ('12', '10:39:55', null, '3', '2018-07-07', null);
INSERT INTO `asistencia` VALUES ('13', '10:39:55', null, '4', '2018-07-07', null);
INSERT INTO `asistencia` VALUES ('14', null, null, '1', '2018-07-02', null);
INSERT INTO `asistencia` VALUES ('15', null, null, '2', '2018-07-02', null);
INSERT INTO `asistencia` VALUES ('16', null, null, '3', '2018-07-02', null);
INSERT INTO `asistencia` VALUES ('17', null, null, '4', '2018-07-02', null);

-- ----------------------------
-- Table structure for asistencias
-- ----------------------------
DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE `asistencias` (
  `id_asistencia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `fecha_asistencia` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_asistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of asistencias
-- ----------------------------
INSERT INTO `asistencias` VALUES ('31', 'Entrada', '12-03-2018', '07:58:12 am', '2341209');
INSERT INTO `asistencias` VALUES ('32', 'Salida', '12-03-2018', '12:30:42 pm', '2341209');
INSERT INTO `asistencias` VALUES ('34', 'Entrada', '12-03-2018', '07:54:04 am', '2314592');
INSERT INTO `asistencias` VALUES ('35', 'Salida', '12-03-2018', '06:02:52 pm', '2314592');
INSERT INTO `asistencias` VALUES ('36', 'Entrada', '12-03-2018', '07:58:09 am', '3400902');
INSERT INTO `asistencias` VALUES ('37', 'Salida', '12-03-2018', '07:59:25 am', '3400902');
INSERT INTO `asistencias` VALUES ('39', 'Entrada', '22-05-2018', '04:06:32 pm', '4567899');
INSERT INTO `asistencias` VALUES ('40', 'Salida', '22-05-2018', '10:07:23 pm', '4567899');
INSERT INTO `asistencias` VALUES ('41', 'Entrada', '09-06-2018', '02:18:54 am', '1803465614');
INSERT INTO `asistencias` VALUES ('42', 'Salida', '09-06-2018', '02:21:20 am', '1803465614');
INSERT INTO `asistencias` VALUES ('43', 'Entrada', '09-06-2018', '02:33:15 am', '1702540706');
INSERT INTO `asistencias` VALUES ('44', 'Salida', '09-06-2018', '02:33:46 am', '1702540706');
INSERT INTO `asistencias` VALUES ('45', 'Entrada', '09-06-2018', '04:44:54 am', '1722546676');
INSERT INTO `asistencias` VALUES ('46', 'Entrada', '09-06-2018', '05:17:49 am', '1803465614');

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES ('1', 'Email Template Forgot Password Backend', 'forgot_password_backend', null, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', null, '2018-06-24 23:53:24', null);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES ('1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', '1', '2018-06-24 23:56:29', null);
INSERT INTO `cms_logs` VALUES ('2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/logout', 'admin@crudbooster.com se desconectó', '', '1', '2018-06-25 00:09:43', null);
INSERT INTO `cms_logs` VALUES ('3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', '1', '2018-06-25 00:20:33', null);
INSERT INTO `cms_logs` VALUES ('4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/logout', 'admin@crudbooster.com se desconectó', '', '1', '2018-06-25 00:23:03', null);
INSERT INTO `cms_logs` VALUES ('5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', '1', '2018-06-25 00:29:45', null);
INSERT INTO `cms_logs` VALUES ('6', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/logout', 'admin@crudbooster.com se desconectó', '', '1', '2018-06-25 00:31:13', null);
INSERT INTO `cms_logs` VALUES ('7', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', '1', '2018-06-25 00:31:38', null);
INSERT INTO `cms_logs` VALUES ('8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/logout', 'admin@crudbooster.com se desconectó', '', '1', '2018-06-25 00:32:34', null);
INSERT INTO `cms_logs` VALUES ('9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', '1', '2018-06-25 01:34:54', null);
INSERT INTO `cms_logs` VALUES ('10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 1 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:08:32', null);
INSERT INTO `cms_logs` VALUES ('11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 3 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:08:32', null);
INSERT INTO `cms_logs` VALUES ('12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 2 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:08:32', null);
INSERT INTO `cms_logs` VALUES ('13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 4 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:08:32', null);
INSERT INTO `cms_logs` VALUES ('14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 5 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:08:32', null);
INSERT INTO `cms_logs` VALUES ('15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/action-selected', 'Eliminar información 5,4,3,2,1 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:09:19', null);
INSERT INTO `cms_logs` VALUES ('16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 1 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:11:32', null);
INSERT INTO `cms_logs` VALUES ('17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/edit-save/1', 'Actualizar información  en REGISTRO DE ASISTENCIA', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>h_fin</td><td></td><td>2018-06-24 16:00:00</td></tr></tbody></table>', '1', '2018-06-25 02:14:50', null);
INSERT INTO `cms_logs` VALUES ('18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 2 en REGISTRO DE ASISTENCIA', '', '1', '2018-06-25 02:20:27', null);
INSERT INTO `cms_logs` VALUES ('19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/users/edit-save/1', 'Actualizar información Super Admin en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-06/foto_carnet.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>letr-leo@hotmail.es</td></tr><tr><td>password</td><td>$2y$10$wnfWwir.gWyM7GCg3cQ.J.tcoEj3zL4Ht6tmTmDopON5ZzpwiJ.Li</td><td>$2y$10$Ru3rrkYN7fg4ZRCM8WdDL.253aRFxdWvalG5Ukx7AviBG020ONIB6</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', '1', '2018-06-25 02:37:10', null);
INSERT INTO `cms_logs` VALUES ('20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/users/add-save', 'Añadir nueva información Mario Álvarez en Users Management', '', '1', '2018-06-25 02:43:05', null);
INSERT INTO `cms_logs` VALUES ('21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/logout', 'letr-leo@hotmail.es se desconectó', '', '1', '2018-06-25 02:43:18', null);
INSERT INTO `cms_logs` VALUES ('22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de marioam@outlook.com desde la Dirección IP ::1', '', '2', '2018-06-25 02:43:36', null);
INSERT INTO `cms_logs` VALUES ('23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/logout', 'marioam@outlook.com se desconectó', '', '2', '2018-06-25 02:43:53', null);
INSERT INTO `cms_logs` VALUES ('24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de letr-leo@hotmail.es desde la Dirección IP ::1', '', '1', '2018-06-25 02:44:11', null);
INSERT INTO `cms_logs` VALUES ('25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/menu_management/edit-save/1', 'Actualizar información EMPLEADOS en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', '1', '2018-06-25 02:44:49', null);
INSERT INTO `cms_logs` VALUES ('26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/menu_management/edit-save/2', 'Actualizar información REGISTRO DE ASISTENCIA en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', '1', '2018-06-25 02:45:08', null);
INSERT INTO `cms_logs` VALUES ('27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de marioam@outlook.com desde la Dirección IP ::1', '', '2', '2018-06-25 02:46:26', null);
INSERT INTO `cms_logs` VALUES ('28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/logout', 'marioam@outlook.com se desconectó', '', '2', '2018-06-25 02:46:50', null);
INSERT INTO `cms_logs` VALUES ('29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de marioam@outlook.com desde la Dirección IP ::1', '', '2', '2018-06-25 02:47:28', null);
INSERT INTO `cms_logs` VALUES ('30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/empleado/edit-save/3', 'Actualizar información  en EMPLEADOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombres</td><td>Luis Enrique</td><td>Luis Enrique Toapanta Rodríguez</td></tr></tbody></table>', '1', '2018-06-25 02:53:06', null);
INSERT INTO `cms_logs` VALUES ('31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/empleado/edit-save/1', 'Actualizar información  en EMPLEADOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombres</td><td>Hugo</td><td>Hugo Ricardo Álvares</td></tr></tbody></table>', '1', '2018-06-25 02:53:43', null);
INSERT INTO `cms_logs` VALUES ('32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/empleado/edit-save/2', 'Actualizar información  en EMPLEADOS', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nombres</td><td>Nancy</td><td>Nancy Zurita</td></tr></tbody></table>', '1', '2018-06-25 02:54:03', null);
INSERT INTO `cms_logs` VALUES ('33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 3 en REGISTRO DE ASISTENCIA', '', '2', '2018-06-24 22:29:01', null);
INSERT INTO `cms_logs` VALUES ('34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/asistencia/add-save', 'Añadir nueva información 4 en REGISTRO DE ASISTENCIA', '', '2', '2018-06-24 22:40:39', null);
INSERT INTO `cms_logs` VALUES ('35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de letr-leo@hotmail.es desde la Dirección IP ::1', '', '1', '2018-07-08 09:14:50', null);
INSERT INTO `cms_logs` VALUES ('36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de letr-leo@hotmail.es desde la Dirección IP ::1', '', '1', '2018-07-08 09:14:51', null);
INSERT INTO `cms_logs` VALUES ('37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/login', 'Ingreso de letr-leo@hotmail.es desde la Dirección IP ::1', '', '1', '2018-07-08 18:05:30', null);
INSERT INTO `cms_logs` VALUES ('38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/module_generator/delete/14', 'Eliminar información Configuración en Module Generator', '', '1', '2018-07-08 18:11:15', null);
INSERT INTO `cms_logs` VALUES ('39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/configuracion15/add-save', 'Añadir nueva información 1 en Configuración', '', '1', '2018-07-08 18:12:22', null);
INSERT INTO `cms_logs` VALUES ('40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/configuracion15/edit-save/1', 'Actualizar información  en Configuración', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>hora_entrada</td><td>18:00:00</td><td>08:00:00</td></tr><tr><td>hora_salida</td><td>18:00:00</td><td>05:00:00</td></tr><tr><td>fraccion_hora_extra</td><td>18:00:00</td><td>01:00:00</td></tr></tbody></table>', '1', '2018-07-08 18:12:51', null);
INSERT INTO `cms_logs` VALUES ('41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/configuracion15/edit-save/1', 'Actualizar información  en Configuración', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>hora_salida</td><td>05:00:00</td><td>17:00:00</td></tr></tbody></table>', '1', '2018-07-08 18:13:04', null);
INSERT INTO `cms_logs` VALUES ('42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'http://localhost/controlAsistencia/public/admin/empleado/add-save', 'Añadir nueva información 4 en EMPLEADOS', '', '1', '2018-07-08 21:56:01', null);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES ('1', 'EMPLEADOS', 'Route', 'AdminEmpleadoControllerGetIndex', 'normal', 'fa fa-star', '0', '1', '0', '1', '1', '2018-06-25 01:42:03', '2018-06-25 02:44:48');
INSERT INTO `cms_menus` VALUES ('2', 'REGISTRO DE ASISTENCIA', 'Route', 'AdminAsistenciaControllerGetIndex', 'normal', 'fa fa-th', '0', '1', '0', '1', '2', '2018-06-25 02:04:29', '2018-06-25 02:45:07');
INSERT INTO `cms_menus` VALUES ('4', 'Configuración', 'Route', 'AdminConfiguracion15ControllerGetIndex', null, 'fa fa-cog', '0', '1', '0', '1', '3', '2018-07-08 18:11:45', null);

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES ('3', '1', '2');
INSERT INTO `cms_menus_privileges` VALUES ('4', '1', '1');
INSERT INTO `cms_menus_privileges` VALUES ('5', '2', '2');
INSERT INTO `cms_menus_privileges` VALUES ('6', '2', '1');
INSERT INTO `cms_menus_privileges` VALUES ('7', '3', '1');
INSERT INTO `cms_menus_privileges` VALUES ('8', '4', '1');

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES ('1', 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('2', 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('3', 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('4', 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', '0', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('5', 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('6', 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('7', 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('8', 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('9', 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('10', 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('11', 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', '1', '1', '2018-06-24 23:53:22', null, null);
INSERT INTO `cms_moduls` VALUES ('12', 'EMPLEADOS', 'fa fa-star', 'empleado', 'empleado', 'AdminEmpleadoController', '0', '0', '2018-06-25 01:42:03', null, null);
INSERT INTO `cms_moduls` VALUES ('13', 'REGISTRO DE ASISTENCIA', 'fa fa-th', 'asistencia', 'asistencia', 'AdminAsistenciaController', '0', '0', '2018-06-25 02:04:29', null, null);
INSERT INTO `cms_moduls` VALUES ('14', 'Configuración', 'fa fa-cog', 'configuracion', 'configuracion', 'AdminConfiguracionController', '0', '0', '2018-07-08 18:08:29', null, '2018-07-08 18:11:15');
INSERT INTO `cms_moduls` VALUES ('15', 'Configuración', 'fa fa-cog', 'configuracion15', 'configuracion', 'AdminConfiguracion15Controller', '0', '0', '2018-07-08 18:11:45', null, null);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES ('1', 'Super Administrator', '1', 'skin-red', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges` VALUES ('2', 'Encargado', '0', 'skin-green-light', null, null);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES ('1', '1', '0', '0', '0', '0', '1', '1', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges_roles` VALUES ('2', '1', '1', '1', '1', '1', '1', '2', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges_roles` VALUES ('3', '0', '1', '1', '1', '1', '1', '3', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges_roles` VALUES ('4', '1', '1', '1', '1', '1', '1', '4', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges_roles` VALUES ('5', '1', '1', '1', '1', '1', '1', '5', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges_roles` VALUES ('6', '1', '1', '1', '1', '1', '1', '6', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges_roles` VALUES ('7', '1', '1', '1', '1', '1', '1', '7', '2018-06-24 23:53:22', null);
INSERT INTO `cms_privileges_roles` VALUES ('8', '1', '1', '1', '1', '1', '1', '8', '2018-06-24 23:53:23', null);
INSERT INTO `cms_privileges_roles` VALUES ('9', '1', '1', '1', '1', '1', '1', '9', '2018-06-24 23:53:23', null);
INSERT INTO `cms_privileges_roles` VALUES ('10', '1', '1', '1', '1', '1', '1', '10', '2018-06-24 23:53:23', null);
INSERT INTO `cms_privileges_roles` VALUES ('11', '1', '0', '1', '0', '1', '1', '11', '2018-06-24 23:53:23', null);
INSERT INTO `cms_privileges_roles` VALUES ('12', '1', '1', '1', '1', '1', '1', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('13', '1', '1', '1', '1', '1', '1', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('14', '1', '1', '1', '1', '1', '2', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('15', '1', '1', '1', '1', '1', '2', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('16', '1', '1', '1', '1', '1', '1', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('17', '1', '1', '1', '1', '1', '1', '15', null, null);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES ('1', 'login_background_color', null, 'text', null, 'Input hexacode', '2018-06-24 23:53:23', null, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES ('2', 'login_font_color', null, 'text', null, 'Input hexacode', '2018-06-24 23:53:23', null, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES ('3', 'login_background_image', 'uploads/2018-06/6a223c1f08548de1509b8708261841d1.jpg', 'upload_image', null, null, '2018-06-24 23:53:23', null, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES ('4', 'email_sender', 'support@crudbooster.com', 'text', null, null, '2018-06-24 23:53:23', null, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES ('5', 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', null, '2018-06-24 23:53:23', null, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES ('6', 'smtp_host', '', 'text', null, null, '2018-06-24 23:53:23', null, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES ('7', 'smtp_port', '25', 'text', null, 'default 25', '2018-06-24 23:53:23', null, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES ('8', 'smtp_username', '', 'text', null, null, '2018-06-24 23:53:23', null, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES ('9', 'smtp_password', '', 'text', null, null, '2018-06-24 23:53:23', null, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES ('10', 'appname', 'Control de asistencia', 'text', null, null, '2018-06-24 23:53:23', null, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES ('11', 'default_paper_size', 'Legal', 'text', null, 'Paper size, ex : A4, Legal, etc', '2018-06-24 23:53:23', null, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES ('12', 'logo', 'uploads/2018-06/8fb8bf8b0ef47597a857fc1dd3151aa9.png', 'upload_image', null, null, '2018-06-24 23:53:23', null, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES ('13', 'favicon', null, 'upload_image', null, null, '2018-06-24 23:53:23', null, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES ('14', 'api_debug_mode', 'true', 'select', 'true,false', null, '2018-06-24 23:53:23', null, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES ('15', 'google_api_key', null, 'text', null, null, '2018-06-24 23:53:23', null, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES ('16', 'google_fcm_key', null, 'text', null, null, '2018-06-24 23:53:23', null, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES ('1', 'Super Admin', 'uploads/1/2018-06/foto_carnet.jpg', 'letr-leo@hotmail.es', '$2y$12$yk6MryPKtci3Ir8EjlE7a.fMplpzxBkCuG0LNt8xHBec7YPMSWY6m', '1', '2018-06-24 23:53:22', '2018-06-25 02:37:10', 'Active');
INSERT INTO `cms_users` VALUES ('2', 'Mario Álvarez', 'uploads/1/2018-06/mario.jpg', 'marioam@outlook.com', '$2y$10$bxUNVOq9VN2MWEiNpMosXeP77LuTtNVAYs/W4KCblD/mtjz/Rn.a2', '2', '2018-06-25 02:43:04', null, null);

-- ----------------------------
-- Table structure for configuracion
-- ----------------------------
DROP TABLE IF EXISTS `configuracion`;
CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hora_entrada` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `fraccion_hora_extra` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of configuracion
-- ----------------------------
INSERT INTO `configuracion` VALUES ('1', '08:00:00', '17:00:00', '01:00:00');

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ci` varchar(10) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` varchar(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ci` (`ci`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES ('1', '1702540706', 'Hugo Ricardo Álvares', '15/06/1976', 'Masculino', '0997327912', 'Cdla.Arcadia-lote 14', 'Tapicero');
INSERT INTO `empleado` VALUES ('2', '1801635515', 'Nancy Zurita', '11/05/1978', 'Femenino', '0987654321', 'Chillogallo', 'Costura');
INSERT INTO `empleado` VALUES ('3', '1803465614', 'Luis Enrique Toapanta Rodríguez', '11/09/1983', 'Masculino', '0987361723', 'Quito/Chillogallo', 'Tapicero');
INSERT INTO `empleado` VALUES ('4', '0503561235', 'Andres Heredia', '13-09-1985', 'masculino', '0987461234', 'Ejercito', 'Tapicero');

-- ----------------------------
-- Table structure for extra_laboral
-- ----------------------------
DROP TABLE IF EXISTS `extra_laboral`;
CREATE TABLE `extra_laboral` (
  `id_extra` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `hora_inicio` varchar(50) DEFAULT NULL,
  `hora_termino` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `f_laboral` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_extra`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of extra_laboral
-- ----------------------------
INSERT INTO `extra_laboral` VALUES ('1', 'Horas Extra', '03:00:00 Pm', '05:00:00 Pm', '2314592', '22/05/2018');

-- ----------------------------
-- Table structure for horario_laboral
-- ----------------------------
DROP TABLE IF EXISTS `horario_laboral`;
CREATE TABLE `horario_laboral` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `hora_inicio` varchar(50) DEFAULT NULL,
  `hora_termino` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `f_laboral` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of horario_laboral
-- ----------------------------
INSERT INTO `horario_laboral` VALUES ('6', 'Secretaria ', '08:00:00 Am', '03:00:00 Pm', '2314592', '22/05/2018');
INSERT INTO `horario_laboral` VALUES ('7', 'Axuliar', '08:00:00 Am', '03:00:00 Pm', '2341209', '22/05/2018');
INSERT INTO `horario_laboral` VALUES ('8', 'Director', '08:00:00 Am', '03:00:00 Pm', '3400902', '22/05/2018');
INSERT INTO `horario_laboral` VALUES ('9', 'Supervisor', '04:10:00 Pm', '10:00:00 Pm', '4567899', '22/05/2018');

-- ----------------------------
-- Table structure for inasistencia_laboral
-- ----------------------------
DROP TABLE IF EXISTS `inasistencia_laboral`;
CREATE TABLE `inasistencia_laboral` (
  `id_inasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `f_laboral` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_inasistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inasistencia_laboral
-- ----------------------------
INSERT INTO `inasistencia_laboral` VALUES ('3', 'Falto', 'Salud', 'Pidio Permiso', '2314592', '21/05/2018');
INSERT INTO `inasistencia_laboral` VALUES ('4', 'Falto', 'Familiar', 'Pidio Permiso', '2341209', '21/05/2018');
INSERT INTO `inasistencia_laboral` VALUES ('5', 'Falto', 'Injustificado', 'No Pidio Permiso', '3400902', '21/05/2018');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_08_07_145904_add_table_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('2', '2016_08_07_150834_add_table_cms_dashboard', '1');
INSERT INTO `migrations` VALUES ('3', '2016_08_07_151210_add_table_cms_logs', '1');
INSERT INTO `migrations` VALUES ('4', '2016_08_07_151211_add_details_cms_logs', '1');
INSERT INTO `migrations` VALUES ('5', '2016_08_07_152014_add_table_cms_privileges', '1');
INSERT INTO `migrations` VALUES ('6', '2016_08_07_152214_add_table_cms_privileges_roles', '1');
INSERT INTO `migrations` VALUES ('7', '2016_08_07_152320_add_table_cms_settings', '1');
INSERT INTO `migrations` VALUES ('8', '2016_08_07_152421_add_table_cms_users', '1');
INSERT INTO `migrations` VALUES ('9', '2016_08_07_154624_add_table_cms_menus_privileges', '1');
INSERT INTO `migrations` VALUES ('10', '2016_08_07_154624_add_table_cms_moduls', '1');
INSERT INTO `migrations` VALUES ('11', '2016_08_17_225409_add_status_cms_users', '1');
INSERT INTO `migrations` VALUES ('12', '2016_08_20_125418_add_table_cms_notifications', '1');
INSERT INTO `migrations` VALUES ('13', '2016_09_04_033706_add_table_cms_email_queues', '1');
INSERT INTO `migrations` VALUES ('14', '2016_09_16_035347_add_group_setting', '1');
INSERT INTO `migrations` VALUES ('15', '2016_09_16_045425_add_label_setting', '1');
INSERT INTO `migrations` VALUES ('16', '2016_09_17_104728_create_nullable_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('17', '2016_10_01_141740_add_method_type_apicustom', '1');
INSERT INTO `migrations` VALUES ('18', '2016_10_01_141846_add_parameters_apicustom', '1');
INSERT INTO `migrations` VALUES ('19', '2016_10_01_141934_add_responses_apicustom', '1');
INSERT INTO `migrations` VALUES ('20', '2016_10_01_144826_add_table_apikey', '1');
INSERT INTO `migrations` VALUES ('21', '2016_11_14_141657_create_cms_menus', '1');
INSERT INTO `migrations` VALUES ('22', '2016_11_15_132350_create_cms_email_templates', '1');
INSERT INTO `migrations` VALUES ('23', '2016_11_15_190410_create_cms_statistics', '1');
INSERT INTO `migrations` VALUES ('24', '2016_11_17_102740_create_cms_statistic_components', '1');
INSERT INTO `migrations` VALUES ('25', '2017_06_06_164501_add_deleted_at_cms_moduls', '1');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Admin', '123', 'Administrador', '2343212', 'Luis', 'Medina Torres');
INSERT INTO `usuarios` VALUES ('2', 'Carlos', '123456', 'Administrador', '1722546676', 'Isabel', 'TituaÃ±a');
