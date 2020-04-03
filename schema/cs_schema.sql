CREATE DATABASE travel_history;

USE travel_history;

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
) engine=columnstore default character set=utf8;

