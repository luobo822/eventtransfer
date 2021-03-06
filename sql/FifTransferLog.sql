DROP TABLE IF EXISTS FifTransferLog;
CREATE TABLE `FifTransferLog` (
  `MessageNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `Status` char(2) NOT NULL,
  `UserID` char(7) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `EventID` char(10) NOT NULL,
  `TeamID` char(6) NOT NULL,
  `GroupID` char(2) DEFAULT '',
  `CircleID` char(6) DEFAULT '',
  `CircleLocation` varchar(10) DEFAULT '',
  `CircleName` varchar(30) DEFAULT '',
  `GoodsID` char(2) DEFAULT '',
  `GoodsName` varchar(20) DEFAULT '',
  `Num` int(11) DEFAULT 0,
  `GoodsStatus` char(2) DEFAULT '',
  `UpdatePrice` int(11) DEFAULT 0,
  `Info` varchar(40) DEFAULT '',
  `DeleteFlag` char(1) DEFAULT 'N',
  PRIMARY KEY (`MessageNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000000001 DEFAULT CHARSET=utf8;
