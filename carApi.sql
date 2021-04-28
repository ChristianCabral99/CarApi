-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.12-MariaDB-1:10.4.12+maria~bionic-log - mariadb.org binary distribution
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para myfirstdb
CREATE DATABASE IF NOT EXISTS `myfirstdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `myfirstdb`;

-- Volcando estructura para tabla myfirstdb.articulos
CREATE TABLE IF NOT EXISTS `articulos` (
  `id_articulo` int(20) NOT NULL,
  `nombre_articulo` varchar(20) DEFAULT NULL,
  `precio` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.articulos: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` (`id_articulo`, `nombre_articulo`, `precio`) VALUES
	(1, 'Galletas Emperador', '12.50'),
	(2, 'Coca-Cola', '10.50'),
	(3, 'Coca-Cola', '10.50'),
	(4, 'Sprite', '12.00');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.auth_permission: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add articulos', 7, 'add_articulos'),
	(26, 'Can change articulos', 7, 'change_articulos'),
	(27, 'Can delete articulos', 7, 'delete_articulos'),
	(28, 'Can view articulos', 7, 'view_articulos'),
	(29, 'Can add bitacora', 8, 'add_bitacora'),
	(30, 'Can change bitacora', 8, 'change_bitacora'),
	(31, 'Can delete bitacora', 8, 'delete_bitacora'),
	(32, 'Can view bitacora', 8, 'view_bitacora'),
	(33, 'Can add paciente', 9, 'add_paciente'),
	(34, 'Can change paciente', 9, 'change_paciente'),
	(35, 'Can delete paciente', 9, 'delete_paciente'),
	(36, 'Can view paciente', 9, 'view_paciente');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.auth_user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.bitacora
CREATE TABLE IF NOT EXISTS `bitacora` (
  `id_bitacora` int(30) NOT NULL AUTO_INCREMENT,
  `id_articulo` int(20) DEFAULT NULL,
  `nombre_nuevo` varchar(20) DEFAULT NULL,
  `nombre_viejo` varchar(20) DEFAULT NULL,
  `precio_nuevo` varchar(20) DEFAULT NULL,
  `precio_viejo` varchar(20) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `accion` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.bitacora: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` (`id_bitacora`, `id_articulo`, `nombre_nuevo`, `nombre_viejo`, `precio_nuevo`, `precio_viejo`, `usuario`, `fecha`, `accion`) VALUES
	(1, 1, 'Galletas Emperador', NULL, '12.50', NULL, 'root@172.18.0.1', '2020-10-30 02:03:51', 'Inserto'),
	(2, 1, 'Galletas Emperador', 'Galletas Emperador', '15.90', '12.50', 'root@172.18.0.1', '2020-10-30 02:08:18', 'Modifico'),
	(3, 1, NULL, 'Galletas Emperador', NULL, '15.90', 'root@172.18.0.1', '2020-10-30 02:10:40', 'Elimino'),
	(4, 1, 'Galletas Emperador', NULL, '12.50', NULL, 'root@172.18.0.1', '2020-10-30 02:11:06', 'Inserto'),
	(5, 2, 'Coca-Cola', NULL, '10.50', NULL, 'myfirstuser@172.18.0.1', '2021-03-25 00:44:43', 'Inserto'),
	(6, 2, 'Coca-Cola', 'Coca-Cola', '10.50', '10.50', 'myfirstuser@172.18.0.1', '2021-03-25 00:45:07', 'Modifico'),
	(7, 3, 'Coca-Cola', NULL, '10.50', NULL, 'myfirstuser@172.18.0.1', '2021-03-25 00:45:27', 'Inserto'),
	(8, 4, 'Sprite', NULL, '12.00', NULL, 'myfirstuser@172.18.0.1', '2021-03-25 00:48:05', 'Inserto'),
	(9, 5, 'Bonafont 500ml', NULL, '14.50', NULL, 'myfirstuser@172.18.0.1', '2021-03-25 00:49:04', 'Inserto'),
	(10, 5, NULL, 'Bonafont 500ml', NULL, '14.50', 'myfirstuser@172.18.0.1', '2021-03-25 21:52:33', 'Elimino');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.car
CREATE TABLE IF NOT EXISTS `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `version` varchar(100) NOT NULL,
  `country_of_origin` varchar(50) NOT NULL,
  `body_style` varchar(50) NOT NULL,
  `engine_location` varchar(50) NOT NULL,
  `engine_cylinders` int(11) NOT NULL,
  `engine_hp` int(11) NOT NULL,
  `engine_nm` int(11) NOT NULL,
  `drive` varchar(50) NOT NULL,
  `transmission` varchar(50) NOT NULL,
  `doors` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `rating` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.car: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` (`id`, `brand`, `model`, `year`, `version`, `country_of_origin`, `body_style`, `engine_location`, `engine_cylinders`, `engine_hp`, `engine_nm`, `drive`, `transmission`, `doors`, `weight`, `rating`) VALUES
	(1, 'Volkswagen', 'Jetta', 2014, 'Sedan', 'Germany', 'Compact Cars', 'Front', 4, 113, 125, 'Front Wheel Drive', 'Manual', 4, 1272, 9),
	(2, 'Lamborghini', 'Aventador', 2018, 'LP 700-4 Coupe AWD', 'Italy', 'Two Seaters', 'Front', 12, 690, 507, 'All Wheel Drive', 'Automated Manual', 2, 3472, 10),
	(3, 'Rolls Royce', 'Wraith', 2014, 'Coupe', 'United Kingdom', 'Coupe', 'Front', 12, 615, 780, 'Rear Wheel Drive', 'Automatic', 2, 2360, 10),
	(4, 'BMW', 'M4', 2018, 'Convertible', 'Germany', 'Compact Cars', 'Front', 6, 419, 406, 'Rear Wheel Drive', 'Manual', 2, 4055, 6.5),
	(5, 'Ford', 'F-150', 2019, 'King Ranch SuperCrew 4WD', 'USA', 'Standard Pickup Trucks', 'Front', 8, 380, 387, 'Four Wheel Drive', 'Automatic', 4, 3175, 9),
	(6, 'Jaguar', 'E-Type', 1964, 'S1', 'United Kingdom', 'Coupe', 'Front', 6, 265, 385, 'Rear Wheel Drive', 'Manual', 2, 1170, 9.5),
	(7, 'Volkswagen', 'Beetle', 1950, '1200 Cabriolet', 'Germany', 'Convertible', 'Rear', 4, 34, 60, 'Front Wheel Drive', 'Manual', 2, 800, 8),
	(8, 'McLaren', 'F1', 1994, 'none', 'United Kingdom', 'Coupe', 'Middle', 12, 627, 881, 'Rear Wheel Drive', 'Manual', 2, 1120, 8),
	(9, 'Ford', 'GT-40', 1966, 'MK II', 'USA', 'Coupe', 'Middle', 8, 350, 85, 'Rear Wheel Drive', 'Manual', 2, 1136, 6.5),
	(10, 'Ferrari', 'F40', 1987, '2.9', 'Italy', 'Coupe', 'Middle', 8, 472, 575, 'Rear Wheel Drive', 'Manual', 2, 1104, 9.5),
	(11, 'Bugatti', 'Chiron', 2021, 'Standard', 'France', 'Coupe', 'Middle', 16, 1578, 1600, 'All Wheel Drive', 'Automatic', 2, 1996, 10),
	(12, 'Mercedes-Benz', 'G-Class', 2015, 'G63 AMG SUV 4WD', 'Germany', 'Sport Utility Vehicles', 'Front', 8, 529, 560, 'Four Wheel Drive', 'Automatic', 4, 5622, 10),
	(13, 'Audi', 'TT', 2011, '2.0 TDI Coupe Quattro', 'Germany', 'Coupe', 'Front', 4, 168, 350, 'All Wheel Drive', 'Automated Manual', 2, 1515, 9),
	(14, 'Subaru', 'Impreza', 2019, '2.0i Limited PZEV Sedan', 'Japan', 'Compact Cars', 'Front', 4, 146, 145, 'All Wheel Drive', 'Automatic', 4, 3109, 10),
	(15, 'Bentley', 'Continental GT', 2018, 'Coupe AWD', 'United Kingdom', 'Compact Cars', 'Front', 12, 559, 516, 'All Wheel Drive', 'Automatic', 2, 5115, 10),
	(31, 'Jeep', 'Cherokee', 2019, 'Sport SUV', 'USA', 'Sport Utility Vehicles', 'Front', 4, 181, 171, 'Front Wheel Drive', 'Automatic', 4, 4044, 9);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.django_admin_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.django_content_type: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'firstapp', 'articulos'),
	(8, 'firstapp', 'bitacora'),
	(9, 'firstapp', 'paciente'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.django_migrations: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2021-03-20 01:52:53.446852'),
	(2, 'auth', '0001_initial', '2021-03-20 01:52:53.733923'),
	(3, 'admin', '0001_initial', '2021-03-20 01:52:54.468761'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2021-03-20 01:52:54.632251'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-20 01:52:54.659232'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2021-03-20 01:52:54.787768'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2021-03-20 01:52:54.876887'),
	(8, 'auth', '0003_alter_user_email_max_length', '2021-03-20 01:52:54.926133'),
	(9, 'auth', '0004_alter_user_username_opts', '2021-03-20 01:52:54.948217'),
	(10, 'auth', '0005_alter_user_last_login_null', '2021-03-20 01:52:55.023358'),
	(11, 'auth', '0006_require_contenttypes_0002', '2021-03-20 01:52:55.039798'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2021-03-20 01:52:55.058826'),
	(13, 'auth', '0008_alter_user_username_max_length', '2021-03-20 01:52:55.103540'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2021-03-20 01:52:55.151281'),
	(15, 'auth', '0010_alter_group_name_max_length', '2021-03-20 01:52:55.204986'),
	(16, 'auth', '0011_update_proxy_permissions', '2021-03-20 01:52:55.239691'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2021-03-20 01:52:55.285418'),
	(18, 'firstapp', '0001_initial', '2021-03-20 01:52:55.299453'),
	(19, 'firstapp', '0002_apiusers_movie', '2021-03-20 01:52:55.315070'),
	(20, 'firstapp', '0003_auto_20210303_1608', '2021-03-20 01:52:55.329057'),
	(21, 'firstapp', '0004_articulos_bitacora_paciente', '2021-03-20 01:52:55.353586'),
	(22, 'sessions', '0001_initial', '2021-03-20 01:52:55.409297');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.django_session: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.paciente
CREATE TABLE IF NOT EXISTS `paciente` (
  `clave` varchar(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.paciente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` (`clave`, `nombre`, `apellidos`, `telefono`, `email`) VALUES
	('1', 'Christian', 'Cabral', 911, 'c@hotmail.com');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.rating
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__car` (`car_id`),
  KEY `FK_rating_user` (`user_id`),
  CONSTRAINT `FK__car` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`),
  CONSTRAINT `FK_rating_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.rating: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`id`, `car_id`, `rating`, `user_id`) VALUES
	(3, 9, 8, 1),
	(4, 9, 5, 1),
	(5, 1, 9, 1),
	(7, 6, 10, 1),
	(8, 11, 10, 1),
	(9, 14, 10, 1),
	(13, 5, 9, 2);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;

-- Volcando estructura para tabla myfirstdb.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `api_key` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla myfirstdb.user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `surname`, `email`, `password`, `api_key`) VALUES
	(1, 'Christian', 'Cabral', 'christian-cabral-p@hotmail.com', '12345', 'cdb030999'),
	(2, 'Cristell', 'Naranjo', 'cristellnaranjoesponda@gmail.com', '54321', 'cdb310800');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Volcando estructura para disparador myfirstdb.actualizar
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE trigger actualizar after update
    on articulos
    for each row
    insert into bitacora (id_articulo, nombre_nuevo, nombre_viejo, precio_nuevo, precio_viejo, usuario, fecha, accion) values (old.id_articulo, new.nombre_articulo, old.nombre_articulo, new.precio, old.precio, user(), now(), 'Modifico')//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador myfirstdb.eliminar
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE trigger eliminar after delete
    on articulos
    for each row
    insert into bitacora (id_articulo, nombre_viejo, precio_viejo, usuario, fecha, accion) values (old.id_articulo, old.nombre_articulo, old.precio, user(), now(), 'Elimino')//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador myfirstdb.insertar
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE trigger insertar after insert
    on articulos
    for each row
    insert into bitacora (id_articulo, nombre_nuevo, precio_nuevo, usuario, fecha, accion) values (new.id_articulo, new.nombre_articulo, new.precio, user(), now(), 'Inserto')//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador myfirstdb.rating_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `rating_after_insert` AFTER INSERT ON `rating` FOR EACH ROW UPDATE car set rating = (SELECT avg(rating) FROM rating WHERE car_id = NEW.car_id) WHERE id=NEW.car_id//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
