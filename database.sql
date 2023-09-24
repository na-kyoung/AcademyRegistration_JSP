-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.42-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- jsp.db 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jsp.db` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;
USE `jsp.db`;

-- 테이블 jsp.db.mp_login 구조 내보내기
CREATE TABLE IF NOT EXISTS `mp_login` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- 테이블 데이터 jsp.db.mp_login:~10 rows (대략적) 내보내기
DELETE FROM `mp_login`;
INSERT INTO `mp_login` (`num`, `name`, `id`, `password`, `tel`, `email`) VALUES
	(1, '김아영', 'ayoung090', 'aa980805', '010-6514-6489', 'ayoung@naver.com'),
	(2, '홍길동', 'hong88', 'gildong88', '010-9865-6598', 'hong@letsit.ac.kr'),
	(3, '이민정', 'min084', 'min84615', '010-3514-3258', 'minmin@gmail.com'),
	(4, '윤지영', 'jiyoung54', 'yoon8954', '010-9584-5455', 'yoon641@email.com'),
	(5, '신유미', 'you54', '3654mimi', '010-6545-1145', '0mimi0@gmail.com'),
	(6, '김유정', 'ujeong03', 'jjyou351', '010-3448-0799', 'ujeong@letsis.ac.kr'),
	(7, '김민준', 'minyoon99', 'joon12394', '010-7815-6515', 'kimjoon@naver.com'),
	(8, '장주미', 'jumi0005', '000512jumi', '010-8945-6516', 'jumi@letis.ac.kr'),
	(9, '김주현', 'juhyeon95', 'kim950825', '010-2778-9415', 'juhyeon35@naver.com'),
	(10, '박주현', 'juhyeon95', 'kim950825', '010-3514-3258', 'juhyeon35@naver.com');

-- 테이블 jsp.db.mp_register 구조 내보내기
CREATE TABLE IF NOT EXISTS `mp_register` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `payment` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- 테이블 데이터 jsp.db.mp_register:~3 rows (대략적) 내보내기
DELETE FROM `mp_register`;
INSERT INTO `mp_register` (`num`, `name`, `tel`, `email`, `subject`, `payment`) VALUES
	(1, '김아영', '010-6514-6489', 'ayoung@naver.com', 'C, C++ 정복하기 Python으로 배우는 알고리즘 ', '무통장입금'),
	(2, '이민정', '010-3514-3258', 'minmin@gmail.com', 'MS-SQL 마스터 Notion 100% 활용하기 ', '무통장입금'),
	(3, '신유미', '010-6545-1145', '0mimi0@gmail.com', '웹개발자 JSP (심화) Python으로 배우는 알고리즘 ', '현장결제');

-- 테이블 jsp.db.mp_sub 구조 내보내기
CREATE TABLE IF NOT EXISTS `mp_sub` (
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- 테이블 데이터 jsp.db.mp_sub:~6 rows (대략적) 내보내기
DELETE FROM `mp_sub`;
INSERT INTO `mp_sub` (`name`, `lang`, `teacher`, `price`) VALUES
	('C, C++ 정복하기', 'C', '권나경', '300,000'),
	('MS-SQL 마스터', 'MS-SQL', '곽문기', '400,000'),
	('웹개발자 JSP (기본)', 'JSP', '하호진', '550,000'),
	('웹개발자 JSP (심화)', 'JSP', '하호진', '570,000'),
	('Python과 알고리즘', 'Python', '박혜영', '480,000'),
	('Notion 100% 활용하기', 'Notion', '권나경', '320,000');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
