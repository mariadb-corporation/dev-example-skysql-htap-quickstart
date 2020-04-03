CREATE DATABASE travel;

USE travel;

CREATE TABLE `airlines` (
  `iata_code` char(2) DEFAULT NULL,
  `airline` varchar(30) DEFAULT NULL,
  UNIQUE KEY `idx_iata_code` (`iata_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `airports` (
  `iata_code` char(3) DEFAULT NULL,
  `airport` varchar(80) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `flights` (
  `year` smallint(6) DEFAULT NULL,
  `month` tinyint(4) DEFAULT NULL,
  `day` tinyint(4) DEFAULT NULL,
  `day_of_week` tinyint(4) DEFAULT NULL,
  `fl_date` date DEFAULT NULL,
  `carrier` char(2) DEFAULT NULL,
  `tail_num` char(6) DEFAULT NULL,
  `fl_num` smallint(6) DEFAULT NULL,
  `origin` varchar(5) DEFAULT NULL,
  `dest` varchar(5) DEFAULT NULL,
  `crs_dep_time` char(4) DEFAULT NULL,
  `dep_time` char(4) DEFAULT NULL,
  `dep_delay` smallint(6) DEFAULT NULL
) ENGINE=InnoDB;