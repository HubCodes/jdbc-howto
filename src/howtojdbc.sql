-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.20-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for howtojdbc
DROP DATABASE IF EXISTS `howtojdbc`;
create DATABASE IF NOT EXISTS `howtojdbc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `howtojdbc`;

-- Dumping structure for table howtojdbc.article
DROP TABLE IF EXISTS `article`;
create TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '0',
  `body` text NOT NULL DEFAULT '0',
  `writer` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `WriterFK` (`writer`),
  CONSTRAINT `WriterFK` FOREIGN KEY (`writer`) REFERENCES `user` (`id`) ON delete CASCADE ON update CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table howtojdbc.article: ~2 rows (approximately)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
insert into `article` (`id`, `title`, `body`, `writer`) values
	(1, 'Example article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget nisi semper, interdum arcu tincidunt, posuere ligula. Phasellus sagittis ultrices justo vitae cursus. Maecenas in nibh pellentesque, varius nibh eget, pulvinar urna. Sed interdum finibus metus, quis rhoncus sem mattis nec. Cras aliquet ante eu dolor euismod, sed gravida neque tincidunt. Mauris tincidunt, sapien sit amet iaculis semper, justo neque condimentum dui, ac eleifend quam elit vel sapien. Integer sagittis scelerisque purus, in fermentum sem accumsan at. Praesent nec magna quis massa finibus semper vel quis felis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis nisl urna, mattis feugiat porttitor nec, faucibus sed ex. Ut non sapien ac leo venenatis eleifend.', 1),
	(2, 'good day', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam iaculis sed mi a vehicula. Proin sodales diam vel sem euismod lobortis. Aenean sed semper lacus, non imperdiet nisi. Aenean tellus metus, pulvinar nec felis non, placerat dignissim ipsum. Vivamus eget purus ipsum. Nam vel vestibulum magna. Vestibulum sed mattis nibh. Etiam nibh eros, consectetur eu lectus a, ornare tristique ipsum.', 2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- Dumping structure for table howtojdbc.user
DROP TABLE IF EXISTS `user`;
create TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `desc` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table howtojdbc.user: ~4 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
insert into `user` (`id`, `name`, `desc`) values
	(1, 'Test 1', 'Hello'),
	(2, 'Test 2', 'ipsum'),
	(3, 'Test 3', 'dolor'),
	(4, 'New', 'Etiam eget');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
