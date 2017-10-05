/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.19 : Database - ib
*********************************************************************
Server version : 5.5.19
*/


create database if not exists `ib`;

USE `ib`;

/*Table structure for table `accbal` */

DROP TABLE IF EXISTS `accbal`;

CREATE TABLE `accbal` (
  `balance` double(10,2) DEFAULT NULL,
  `accno` varchar(15) DEFAULT NULL,
  `acctype` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accbal` */

insert into `accbal` values 
(2000.00,'sb39056','sb','Shiva'),
(596.00,'sb65464','sb','Ram'),
(2500.00,'sb79915','sb','Indresh'),
(2900.00,'ca73349','ca','sita'),
(3004.00,'sb17590','sb','Chakrapanni'),
(2000.00,'sb57246','sb','gfdgfd'),
(2000.00,'sb76958','sb','hgfhgf'),
(2000.00,'sb43952','sb','gdfdgfdgdgfdg'),
(2000.00,'sb17065','sb','asfasasa'),
(2000.00,'sb27662','sb','Arun'),
(2000.00,'sb67612','sb','sridhar'),
(2000.00,'sb15882','sb','bharath');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `birthday` varchar(15) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `pin` int(6) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `pan` varchar(12) NOT NULL,
  `account_typ` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `accountno` varchar(10) DEFAULT NULL,
  `custid` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert into `register` values 
('sridhar','r s','AndraPradesh','slidfh','10/5/1990','male',22,'2342342342',562222,'123','123123','sb','sri@123','sb67612','sri507'),
('Shiva','J','JammuKashmir','himalaya','8/1/1989','male',23,'9876543210',999999,'iii','1234567890','sb','siva@himalya.com','sb39056','shi766'),
('asfasasa','B','Karnataka','myotherhome','2/2/1978','female',34,'5465465454',560060,'qw','1243432232','sb','goa.com','sb17065','asf856'),
('gfdgfd','fdsfds','Sikkim','4343434sfdsdfsf','23/12/1978','female',34,'6757658787',887787,'qwer','5454545454','sb','dfgdf6545fd','sb57246','gfd375'),
('Arun','A','Karnataka','jhgasj','31/10/1987','male',25,'5435453434',560060,'aurso','564654tfrt','sb','jhaksh','sb27662','aru894'),
('Indresh','S','Karnataka','kengeri','12/6/1989','male',23,'9620427529',560060,'ind','6543343434','sb','ind_re@rediffmail.com','sb79915','ind062'),
('Ram','D','Uttar Pradesh','ayodya','1/4/1988','male',24,'9620427529',687678,'ram','6556557667','sb','ram217@gmailcom','sb65464','ram217'),
('Chakrapanni','P','AndraPradesh','jhghgujhgjgjhgdg','27/9/1982','male',30,'6758766888',698989,'ddd','67gjhu8798','sb','chakra','sb17590','cha945'),
('gdfdgfdgdgfdg','a .s','Gujarat','90io;o;op','12/3/1986','male',26,'7657655',878878,'qwe','9879897788','sb','olilfl','sb43952','gdf987'),
('bharath','b','Karnataka','#jhgsad','16/10/1991','male',21,'8904652246',560060,'qwer','hgajshg','sb','basgh@gmail.com','sb15882','bha803'),
('hgfhgf','fdsfdsfd','Nagaland','bfdfgdgfd','23/2/1984','male',28,'7676767777',677677,'QQQ','HJGFHG','sb','HGFGFDGDGFDG','sb76958','hgf750'),
('sita','s','Goa','sdfsdfs','12/1/1990','female',22,'5675675675',675676,'111','t566675656','ca','sesdfse','ca73349','sit040');

/*Table structure for table `state_tbl` */

DROP TABLE IF EXISTS `state_tbl`;

CREATE TABLE `state_tbl` (
  `StateID` int(3) NOT NULL AUTO_INCREMENT,
  `States` varchar(45) NOT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `state_tbl` */

insert into `state_tbl` values 
(1,'Karnataka'),
(2,'AndraPradesh'),
(3,'Assam'),
(4,'Bihar'),
(5,'Chhattisgarh'),
(6,'Goa'),
(7,'Gujarat'),
(8,'Haryana'),
(9,'Himachal Pradesh'),
(10,'JammuKashmir'),
(11,'Jharkhand'),
(12,'Kerala'),
(13,'MadhyaPradesh'),
(14,'Rajasthan'),
(15,'Punjab'),
(16,'Orissa'),
(17,'Nagaland'),
(18,'Arunachal Pradesh'),
(19,'Meghalaya'),
(20,'Manipur'),
(21,'Maharashtra'),
(22,'Sikkim'),
(23,'Tamil Nadu'),
(24,'Tripura'),
(25,'Uttar Pradesh'),
(26,'Uttarakhand'),
(27,'West Bengal'),
(28,'Mizoram');

/*Table structure for table `transac` */

DROP TABLE IF EXISTS `transac`;

CREATE TABLE `transac` (
  `DateofTrans` varchar(15) DEFAULT NULL,
  `TransId` varchar(20) NOT NULL,
  `MyAccno` varchar(20) DEFAULT NULL,
  `discription` varchar(100) DEFAULT NULL,
  `Amount` double(10,2) DEFAULT NULL,
  `Accno` varchar(20) DEFAULT NULL,
  `toname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`TransId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transac` */

insert into `transac` values 
('9/1/12','34641','sb65464','poi',100.00,'sb17590','Chakrapanni'),
('3/1/12','44058','sb65464','kihik',1000.00,'sb17590','Chakrapanni'),
('3/1/12','47716','sb65464','jhg',500.00,'ca73349','sita'),
('1/1/12','72799','sb65464','nghjghjdfgrdter',500.00,'sb79915','Indresh'),
('6/1/12','93283','sb17590','iutyiuyi',50.00,'sb65464','Ram'),
('2/1/12','98811','sb65464','nghjghj',400.00,'ca73349','sita');
