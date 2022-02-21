-- MySQL dump 10.19  Distrib 10.2.38-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pakfarmer
-- ------------------------------------------------------
-- Server version	10.2.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(75) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(75) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `profilepic` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT 'avatar.png	',
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'umer','farooq','mumer.farooq89@gmail.com','avatar.png	','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `urdu_name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `picture` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `index_seq` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (5,'Grain Market','	غلّہ مندی','grains.jpg',2),(6,'Agricultural Land','	رقبہ جات','agri.jpg',12),(7,'Pesticides','زرعی ادویات','pesti.jpeg',3),(8,'Seeds','بیج','seeds.jpeg',4),(10,'Farm Machinery','ذرعی آلات','matchine.jpeg',1),(11,'Fish Farm','	ماہی پروری','fa08a150134e6ded49d162c7609bbe09.jpg',5),(12,'Poultry Farm','پولٹری فارم','bd5b928d37c90c4a0409a92cfaf4fff9.jpg',6),(13,'Livestock','مویشی پروری','6d01a65bd52a68bf89c95d9369a99ea9.jpg',8),(14,'Jobs','نوکریاں','Jobs.jpg',9),(15,'Forestry','جنگلات','Forestry.jpg',11),(16,'Fertilizers','کھادیں','6e7dfda8d7cf95bf51d6b7b00244f59f.jpg',10),(17,'Horticulture','باغبانی','Horticulture.jpg',7);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `parrent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,92,136,'hi','2021-02-16 22:49:19',NULL),(2,102,136,'hello','2021-02-16 22:57:08',NULL),(3,102,136,'test','2021-02-16 23:51:26',NULL),(4,102,136,'test3','2021-02-16 23:57:22',NULL),(5,102,136,'test4','2021-02-16 23:59:00',NULL),(6,102,136,'test5','2021-02-17 00:00:52',NULL),(7,102,136,'test6','2021-02-17 00:02:13',NULL),(8,102,136,'test6','2021-02-17 00:02:31',NULL),(9,102,136,'test7','2021-02-17 00:04:43',NULL),(10,102,136,'test8','2021-02-17 00:05:48',NULL),(11,102,136,'test11','2021-02-17 00:07:04',NULL),(12,102,136,'test123','2021-02-17 00:13:12',NULL),(13,102,136,'test22','2021-02-17 00:18:14',NULL),(14,102,136,'test33','2021-02-17 00:21:02',NULL),(15,102,136,'test44','2021-02-17 00:22:33',NULL),(16,102,136,'test55','2021-02-17 00:26:45',NULL),(17,102,136,'test66','2021-02-17 00:28:55',NULL),(18,102,136,'test77','2021-02-17 00:32:22',NULL),(19,102,136,'test88','2021-02-17 00:42:02',NULL),(20,102,136,'test99','2021-02-17 00:43:20',NULL),(21,102,135,'hi','2021-02-17 01:07:23',NULL),(22,96,120,'sbbs','2021-02-17 01:21:17',NULL),(23,96,120,'zbsn','2021-02-17 01:21:20',NULL),(24,94,136,'Mansoor I am putting the comments here ','2021-02-17 09:03:31',NULL),(25,96,88,'test','2021-02-18 01:56:36',NULL),(26,97,88,'hello','2021-02-22 12:09:56',NULL),(27,92,154,'hi','2021-03-08 11:50:03',NULL),(28,94,156,'best crop ','2021-03-10 12:27:40',NULL),(29,114,164,'Urgent Sale','2021-04-06 16:51:27',NULL),(30,114,164,'price','2021-04-06 16:51:42',NULL),(31,94,213,'nice crop manzoor','2021-04-16 23:01:23',NULL),(32,97,227,'good price????','2021-04-26 23:28:25',NULL),(33,97,200,'need price','2021-04-26 23:36:16',NULL),(34,97,209,'good','2021-04-26 23:56:02',NULL),(35,94,209,'not a very good tracfor','2021-05-05 01:06:37',NULL),(36,97,212,'price can be better','2021-05-08 23:37:08',NULL),(37,97,248,'this is good price','2021-11-27 21:17:28',NULL),(38,121,227,'interested','2021-12-05 07:22:03',NULL),(39,121,237,'Masha Allah','2021-12-07 15:11:55',NULL),(40,121,254,'need','2021-12-08 12:42:47',NULL),(41,121,253,'interested','2021-12-26 12:07:30',NULL),(42,121,253,'need','2021-12-26 12:08:03',NULL),(43,121,256,'need','2021-12-26 12:34:27',NULL),(44,121,256,'gggh','2021-12-28 15:06:17',NULL),(45,125,238,'nice','2022-01-25 05:26:11',NULL),(46,125,258,'hello test','2022-01-25 05:29:24',NULL),(47,124,247,'..','2022-01-25 06:29:15',NULL),(48,124,258,'test','2022-01-26 13:13:24',NULL),(49,124,247,'starter','2022-01-27 09:25:15',NULL),(50,125,199,'custom review','2022-01-27 09:38:10',NULL),(51,125,199,'hi','2022-01-27 09:40:23',NULL),(52,125,199,'post','2022-01-27 09:43:59',NULL),(53,124,215,'1/29/2022','2022-01-29 16:45:24',NULL),(54,121,247,'intersted','2022-02-14 15:38:47',NULL),(55,125,262,'Ahmed bin faisal is good','2022-02-18 16:59:57',NULL),(56,125,262,'Ahmed bin faisal is good','2022-02-21 16:16:59',NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_type`
--

DROP TABLE IF EXISTS `fields_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `urdu_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `type_field` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `multiple` tinyint(1) NOT NULL DEFAULT 0,
  `limit_multiple` int(10) unsigned DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 1,
  `type_query` varchar(25) COLLATE utf8mb4_bin NOT NULL DEFAULT 'detail',
  `squence` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_type`
--

LOCK TABLES `fields_type` WRITE;
/*!40000 ALTER TABLE `fields_type` DISABLE KEYS */;
INSERT INTO `fields_type` VALUES (5,'Product name','نام','Product name','text',5,0,NULL,1,'title',1),(6,'product type','قسم','product type','text',5,0,NULL,1,'',3),(8,'Location',' مقام','Product cultivated area ','text',5,0,NULL,1,'location',2),(11,'Total Quantity','کل مقدار','Total Quantity','qunatity',5,0,NULL,1,'qunatity',4),(13,'Description','تفصیل','Description','text_area',5,0,NULL,1,'description',5),(15,'Selling Quantity','مقدار یونٹ فروخت','Selling Quantity','selling_quantity',1,1,5,1,'',NULL),(17,'Gallery','تصویر','images','file',5,1,5,1,'gallery',8),(18,'Product Name','پروڈکٹ کا نام','Product Name','text',10,0,NULL,1,'title',1),(19,'Location','مقام','Location','text',10,0,NULL,1,'location',3),(20,'Model','ماڈل','Model','text',10,0,NULL,1,'',4),(21,'Condition','حالت','Condition','matchine_condition',10,0,NULL,1,'condition',5),(22,'Price','قیمت','Price','number',10,0,NULL,1,'price',6),(23,'Color','رنگ','Color','text',10,0,NULL,1,'',7),(24,'Manufacturing Year ','مینوفیکچرنگ سال','Manufacturing Year ','year',10,0,NULL,1,'',8),(27,'Status','حیثیت','Status','lease_status',10,0,NULL,1,'',9),(32,'Gallery','گیلری','Gallery','file',10,1,20,1,'gallery',11),(33,'Manufacturer','کارخانہ دار','Manufacturer','text',7,0,NULL,1,'',1),(34,'Brand','برانڈ','Brand','text',7,0,NULL,1,'',2),(35,'State','حالت','State','text_liq',7,0,NULL,1,'',6),(38,'Manufacturing Date','تیاری کی تاریخ','Date Released','year',7,0,NULL,1,'',8),(40,'Price','قیمت','Price','number',7,0,NULL,1,'price',7),(42,'Gallery','گیلری','Gallery','file',7,1,10,1,'gallery',10),(43,'Name','نام','Name','text',8,0,NULL,1,'title',1),(44,'Product Type','مصنوعات کی قسم','Prodcut Type','text',8,0,NULL,1,'',3),(46,'Location','مقام','Product cultivated area ','text',8,0,NULL,1,'location',4),(49,'Total Quantity','کل مقدار','Total Quantity','qunatity',8,0,NULL,1,'qunatity',5),(50,'Price','قیمت','Price','number',8,0,NULL,1,'price',6),(51,'Description','تفصیل','Description','text_area',8,0,NULL,1,'description',2),(53,'Gallery','گیلری','Gallery','file',8,1,10,1,'gallery',8),(54,'Manufacturer','کارخانہ دار','Manufacturer','text',10,0,NULL,1,'',2),(61,'Product Name','پروڈکٹ کا نام','Product Name','text',11,0,NULL,1,'title',1),(62,'Product type','مصنوع کی قسم','Product type','text',11,0,NULL,1,'',3),(63,'Description','تفصیل','Description','text_area',11,0,NULL,1,'description',2),(67,'Gallery','گیلری','Gallery','file',11,1,10,1,'gallery',8),(68,'Name','پروڈکٹ کا نام','Product Name','text',13,0,NULL,1,'title',1),(72,'Price','قیمت','Price','text',13,1,NULL,1,'price',5),(74,'Title','عنوان','Title','text',6,0,NULL,1,'title',1),(75,'Area','رقبہ','Area','qunatity',6,0,NULL,1,'qunatity',4),(76,'Price','قیمت','Price','number',6,0,NULL,1,'price',5),(77,'Description','تفصیل','Description','text_area',6,0,NULL,1,'detail',2),(79,'Gallery','گیلری','Gallery','file',6,1,10,1,'gallery',7),(80,'Title','عنوان','Title','text',12,0,NULL,1,'title',1),(82,'Description','تفصیل','Description','text_area',12,0,NULL,1,'detail',2),(84,'Location',' علاقہ','Facility Area','text',12,0,NULL,1,'location',4),(87,'Age','عمر','Age','number',13,0,NULL,1,'',2),(91,'Gallery','تصویر','Gallery','file',13,1,10,1,'gallery',7),(96,'Gallery','تصویر','Gallery','file',12,1,10,1,'gallery',8),(97,'Price','قیمت','Price','number',12,0,NULL,1,'price',6),(98,'Price','قیمت','Price','number',5,0,NULL,1,'price',7),(99,'Color','رنگ','Color','text',5,0,NULL,1,'color',6),(101,'Product Name','نام','Name','text',7,0,NULL,1,'title',3),(102,'Description','تفصیل','Description','text_area',7,0,NULL,1,'description',4),(103,'Expiry Date','خاتمے کی تاریخ','Expiry Date','date_expiry',7,0,NULL,1,'',11),(104,'Location','مقام','Location','text',11,0,NULL,1,'detail',4),(105,'Product Name','پروڈکٹ کا نام','Product Name','text',17,0,NULL,1,'title',1),(106,'Product type','مصنوع کی قسم','Product type','text',17,0,NULL,1,'',2),(107,'Description','تفصیل','Description','text_area',17,0,NULL,1,'description',3),(108,'Price per Unit','فی اکائی قیمت','Price','number',17,0,NULL,1,'price',4),(110,'Gallery','گیلری','Gallery','file',17,1,10,1,'gallery',7),(111,'Location','مقام','Location','text',17,0,NULL,1,'location',5),(112,'Product Name','پروڈکٹ کا نام','Product Name','text',14,0,NULL,1,'title',1),(113,'Description','تفصیل','Description','text_area',14,0,NULL,1,'description',2),(115,'Location','مقام','Location','text',14,0,NULL,1,'location',3),(116,'Product Name','پروڈکٹ کا نام','Product Name','text',16,0,NULL,1,'title',1),(117,'Description','تفصیل','Description','text_area',16,0,NULL,1,'description',2),(119,'Location','مقام','Location','text',16,0,NULL,1,'location',4),(120,'Brand','برانڈ','Brand','text',16,0,NULL,1,'',3),(121,'Expiry Date','خاتمے کی تاریخ','Expiry Date','date_expiry',16,0,NULL,1,'',5),(122,'Product Name','پروڈکٹ کا نام','Product Name','text',15,0,NULL,1,'title',1),(123,'Description','تفصیل','Description','text_area',15,0,NULL,1,'description',2),(125,'Location','مقام','Location','text',15,0,NULL,1,'location',3),(126,'Price','قیمت','number','number',16,0,NULL,1,'price',7),(127,'Location','مقام','Location','text',6,0,NULL,1,'location',3),(5456,'Location','مقام','Location','text',7,0,NULL,1,'location',5),(5457,'Total Quantity','کل مقدار','Total Quantity','qunatity',11,0,NULL,1,'qunatity',6),(5459,'Location',' مقام','Location','text',13,0,NULL,1,'location',4),(5460,'Area','رقبہ','Area','qunatity',15,0,NULL,1,'quantity',6),(5461,'Total Quantity','کل مقدار','qunatity','qunatity',12,0,NULL,1,'detail',7),(5462,'Price per Unit','فی اکائی قیمت','Price','number',11,0,NULL,1,'price',7),(5463,'Gallery','تصویر','images','file',15,1,5,1,'gallery',7),(5464,'Gallery','تصویر','images','file',16,1,5,1,'gallery',8),(5465,'Price','قیمت','price','number',15,0,NULL,1,'price',4),(5466,'Description','تفصیل','Description','text_area',10,0,NULL,1,'description',1),(5467,'Description','تفصیل','Description','text_area',13,0,NULL,1,'detail',1);
/*!40000 ALTER TABLE `fields_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_meta_data`
--

DROP TABLE IF EXISTS `post_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_meta_data` (
  `post_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `fields_type_id` int(10) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`post_meta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_meta_data`
--

LOCK TABLES `post_meta_data` WRITE;
/*!40000 ALTER TABLE `post_meta_data` DISABLE KEYS */;
INSERT INTO `post_meta_data` VALUES (1234,198,18,'latest harvesting equipment '),(1235,198,54,'Fiat'),(1236,198,19,'islamabad'),(1237,198,20,'old '),(1238,198,21,'Used'),(1239,198,22,'124500'),(1240,198,23,'green'),(1241,198,24,'2014'),(1242,198,27,'Owned'),(1243,198,32,'http://18.223.124.237/server/postimage/fbed5ed5db1b14a9a0ebd103423e785f.jpg'),(1244,198,32,'http://18.223.124.237/server/postimage/00a8e0968cb131b7f842173c7af025a0.jpg'),(1245,199,5,'fresh wheat'),(1246,199,8,'islamabad'),(1247,199,6,'crop'),(1248,199,13,'wah'),(1249,199,99,'natural'),(1250,199,98,'750'),(1251,199,17,'http://18.223.124.237/server/postimage/890d9f39774d869a3527ca2dec89e83d.jpg'),(1252,200,61,'fish farm fully available '),(1253,200,63,'latest texhnolovy'),(1254,200,62,'farm'),(1255,200,104,'islamabaf'),(1256,200,67,'http://18.223.124.237/server/postimage/5af2411f734855520bf9c5f846250bc1.jpg'),(1257,201,61,'another fish farm'),(1258,201,63,'best one '),(1259,201,62,'farm'),(1260,201,104,'rawalpindi'),(1261,201,67,'http://18.223.124.237/server/postimage/f9790430b9db35e8905d7fe7e945a93c.jpg'),(1262,202,80,'poultry farm '),(1263,202,82,'most clean in the area ity'),(1264,202,84,'islamabad'),(1265,202,97,'9999'),(1266,202,96,'http://18.223.124.237/server/postimage/58d9860cef614001d9cdc9bbc1dbec80.jpg'),(1267,203,105,'gardening and forestjng '),(1268,203,106,'hoti ultufe'),(1269,203,107,'testing xata'),(1270,203,108,'2580'),(1271,203,111,'islamabad'),(1272,203,110,'http://18.223.124.237/server/postimage/1c5cbe9d50c98fd41193b77f247c51da.jpg'),(1273,204,68,'goats '),(1274,204,87,'12'),(1275,204,5459,'lahore'),(1276,204,72,'12500'),(1277,204,91,'http://18.223.124.237/server/postimage/1c4eb22793590eea0a410629a8061e6b.jpg'),(1278,205,68,'cows'),(1279,205,87,'22'),(1280,205,5459,'thatta'),(1281,205,72,'600000'),(1282,205,91,'http://18.223.124.237/server/postimage/6421b423288e4098f9d1210c577217f4.jpg'),(1283,206,68,'hsh'),(1284,206,87,'15'),(1285,206,5459,'sbbsh'),(1286,206,72,'45'),(1287,206,91,'http://18.223.124.237/server/postimage/a9668d1fc357ecd13e4655003801cf6b.jpg'),(1288,207,61,'a fish farm '),(1289,207,63,'newly constructed '),(1290,207,62,'best water type'),(1291,207,104,'islamabad'),(1292,207,5462,'91230'),(1293,207,67,'http://18.223.124.237/server/postimage/1d11c59b02b2ff0211f80bebb0688fa7.jpg'),(1294,208,33,'manufacturer'),(1295,208,34,'brand'),(1296,208,101,'name'),(1297,208,102,'desc'),(1298,208,5456,'location'),(1299,208,35,'Liquid'),(1300,208,40,'1250'),(1301,208,38,'2015'),(1302,208,42,'http://18.223.124.237/server/postimage/dc0e67d0669a3c3015370694da3a71f2.jpg'),(1303,208,103,'April 17, 2021'),(1304,209,18,'Tractor'),(1305,209,54,'FIAT'),(1306,209,19,'Hafizwala'),(1307,209,20,'2010'),(1308,209,21,'Used'),(1309,209,22,'930000'),(1310,209,23,'Original'),(1311,209,24,'2009'),(1312,209,27,'Owned'),(1313,209,32,'http://18.223.124.237/server/postimage/aed9faad96ff66e50fc2584dda8041c6.jpg'),(1314,210,68,'australian cow'),(1315,210,87,'5'),(1316,210,5459,'bohray wala'),(1317,210,72,'123400'),(1318,211,18,'sFaisal Saleem spraying equipment by Faisal Saleem'),(1319,211,54,'Prifzer'),(1320,211,19,'Lodhran'),(1321,211,20,'fornoests'),(1322,211,21,'Used'),(1323,211,22,'12500'),(1324,211,23,'natural'),(1325,211,24,'2019'),(1326,211,27,'Owned'),(1327,211,32,'http://18.223.124.237/server/postimage/d35676cfe386695e0264143b0bc5e897.jpg'),(1328,212,5,'Rice by Faisal Saleem'),(1329,212,8,'Islamabad'),(1330,212,6,'crop'),(1331,212,13,'fresh crop'),(1332,212,99,'natural'),(1333,212,98,'250'),(1334,212,17,'http://18.223.124.237/server/postimage/4a9a68f4cf97a94a5fe2ab03745a48b4.jpg'),(1335,213,5,'Rice by manzoor'),(1336,213,8,'Gujranwala'),(1337,213,6,'fresh crop'),(1338,213,13,'poking for good selling options '),(1339,213,99,'natural'),(1340,213,98,'250'),(1341,213,17,'http://18.223.124.237/server/postimage/5d372867e36721e53640fa8ccaa02e13.jpg'),(1342,214,5,'Rice by Jmer'),(1343,214,8,'arifwala'),(1344,214,6,'crop'),(1345,214,13,'goodnone'),(1346,214,99,'white'),(1347,214,98,'750'),(1348,214,17,'http://18.223.124.237/server/postimage/e3bd67396dc07a45f71a1228c706342e.jpg'),(1349,215,18,'Tractor'),(1350,215,54,'Turkey'),(1351,215,19,'Hafizwala'),(1352,215,20,'2017'),(1353,215,21,'Used'),(1354,215,22,'7,60000'),(1355,215,23,'Grey'),(1356,215,24,'2017'),(1357,215,27,'Owned'),(1358,215,32,'http://18.223.124.237/server/postimage/715e10cd55bedcbe0789bfae91967007.jpg'),(1359,216,18,'Hearo'),(1360,216,54,'Itly'),(1361,216,19,'Hafizwala'),(1362,216,20,'2009'),(1363,216,21,'Used'),(1364,216,22,'50000'),(1365,216,23,'Steel Color'),(1366,216,24,'2009'),(1367,216,27,'Owned'),(1368,216,32,'http://18.223.124.237/server/postimage/d05a109158af5d55f3997bca8446633f.jpg'),(1369,217,68,'sahiwal buffalo'),(1370,217,87,'6'),(1371,217,5459,'kkara'),(1372,217,72,'250500'),(1373,217,91,'http://18.223.124.237/server/postimage/21b681dbccd3b5ff222ada6ec2412d6b.jpg'),(1374,218,122,'popular trees'),(1375,218,123,'tall trees 100% dry '),(1376,218,125,'murree'),(1377,219,74,'shops near fields'),(1378,219,77,'helpful for agri eqjipment'),(1379,219,127,'mian chanoon'),(1380,219,76,'987000'),(1381,219,79,'http://18.223.124.237/server/postimage/a6ffde4ab79464ccf4fd27561475fc97.jpg'),(1382,220,112,'labor for field work'),(1383,220,113,'hardworking'),(1384,220,115,'sahiwal'),(1385,221,74,'whh'),(1386,221,77,'shhhwb'),(1387,221,127,'ehhh'),(1388,221,76,'246'),(1389,221,79,'http://18.223.124.237/server/postimage/47c4a539a2e9e217b72f723c0fa9091b.jpg'),(1390,222,74,'agri land'),(1391,222,77,'agri land best option'),(1392,222,127,'jaranwala'),(1393,222,76,'25874'),(1394,222,79,'http://18.223.124.237/server/postimage/5cc1a2546ace7a8cdcd0690f82cefcd9.jpg'),(1395,223,122,'best forestry '),(1396,223,123,'I am adding a new post '),(1397,223,125,'malakand'),(1398,223,5465,'2580'),(1399,223,5463,'http://18.223.124.237/server/postimage/81a5f73ece24244e87fafc6ce63efd5d.jpg'),(1400,224,74,'best afriland'),(1401,224,77,'agri land for gou'),(1402,224,127,'patoki'),(1403,224,76,'25874123'),(1404,224,79,'http://18.223.124.237/server/postimage/19adc79a3457e77b5aad2880c15ecf00.jpg'),(1405,225,112,'baba ji'),(1406,225,113,'jinnat'),(1407,225,115,'koh qaaf'),(1408,226,43,'مونگ'),(1409,226,51,'ازری 2018'),(1410,226,44,'سرٹیفائیڈ'),(1411,226,46,'حافظ والا سیڈز پرائیویٹ لمیٹڈ 7کلومیٹر ‏ہرنولی ‏پپلاں ‏روڈ ‏حافظ ‏والا'),(1412,226,50,'2850'),(1413,226,53,'http://18.223.124.237/server/postimage/e878ba14756385341bfe56ad5a1ffa7f.jpg'),(1414,227,5,'white beans'),(1415,227,8,'asdf'),(1416,227,6,'asdf'),(1417,227,13,'asdf'),(1418,227,99,'sdf'),(1419,227,98,'150000'),(1420,227,17,'http://18.223.124.237/server/postimage/ffcf2b5861d87fff1b372674ad3bfb3a.jpg'),(1421,228,18,'Tractor'),(1422,228,54,'pakistan'),(1423,228,19,'Abbasianwala'),(1424,228,20,'2010'),(1425,228,21,'Used'),(1426,228,22,'870000'),(1427,228,23,'yellow'),(1428,228,24,'2010'),(1429,228,27,'Owned'),(1430,228,32,'http://18.223.124.237/server/postimage/b499fea74494cc8b776caf6ae183981c.jpg'),(1431,229,5,'wheat'),(1432,229,8,'Hafiz Wala'),(1433,229,6,'Spring Wheat'),(1434,229,13,'Good Quality'),(1435,229,99,'Golden Yellow'),(1436,229,98,'45000'),(1437,229,17,'http://18.223.124.237/server/postimage/b80c4e64968a04297e5f1d519ce5efd4.jpg'),(1438,230,43,'???????? Onion'),(1439,230,51,'???? Seed'),(1440,230,44,'Hybrid'),(1441,230,46,'Gujranwala '),(1442,230,50,'37000'),(1443,230,53,'http://18.223.124.237/server/postimage/d294a73f6d04d0fdb3d2a5210a4b1330.jpg'),(1444,231,18,'name'),(1445,231,54,'manufacturer'),(1446,231,19,'loc'),(1447,231,20,'model'),(1448,231,21,'New'),(1449,231,22,'2500'),(1450,231,23,'none'),(1451,231,24,'2018'),(1452,231,27,'Owned'),(1453,231,32,'http://18.223.124.237/server/postimage/97a5cb7d8440dae4cac6fae896cc6929.jpg'),(1454,232,5,'as'),(1455,232,8,'bb'),(1456,232,6,'type'),(1457,232,13,'desc'),(1458,232,99,'none'),(1459,232,98,'1250'),(1460,232,17,'http://18.223.124.237/server/postimage/94a868172666f68a25d89f1df14c0e70.jpg'),(1461,233,43,'seeds'),(1462,233,51,'desc'),(1463,233,44,'type'),(1464,233,46,'loc'),(1465,233,50,'250000'),(1466,234,5,'hsh'),(1467,234,8,'ehh'),(1468,234,6,'eheh'),(1469,234,13,'vshs'),(1470,234,99,'red'),(1471,234,98,'50'),(1472,234,17,'http://18.223.124.237/server/postimage/afc498e527a1c31741adef4a6f76cc2c.jpg'),(1473,235,80,'poultry checked by manzoor'),(1474,235,82,'this is a post added by Mansoor to test the posts adding '),(1475,235,84,'faisalabad'),(1476,235,97,'5000'),(1477,235,96,'http://18.223.124.237/server/postimage/48526644bfc0080317023ed01e0e7e53.jpg'),(1478,236,5,'qaz'),(1479,236,8,'Lahore '),(1480,236,6,'frsh'),(1481,236,13,'frsh'),(1482,236,99,'red'),(1483,236,98,'2500'),(1484,236,17,'http://18.223.124.237/server/postimage/fcbc482dc821110a3f90b53034979e0b.jpg'),(1485,237,43,'test seeds'),(1486,237,51,'desc'),(1487,237,44,'test type'),(1488,237,46,'loc'),(1489,237,50,'2500'),(1490,237,53,'http://18.223.124.237/server/postimage/19a369c96546c0f9801255dbcbae218b.jpg'),(1491,238,116,'name test'),(1492,238,117,'desc'),(1493,238,120,'brand'),(1494,238,119,'loc'),(1495,238,121,'May 12, 2021'),(1496,238,126,'2500'),(1497,239,18,'Hay and silage post put by mansoor'),(1498,239,54,'japan'),(1499,239,19,'kharian'),(1500,239,20,'1234'),(1501,239,21,'New'),(1502,239,22,'98000'),(1503,239,23,'red'),(1504,239,24,'2011'),(1505,239,27,'Owned'),(1506,239,32,'http://18.223.124.237/server/postimage/aee6fe1fb5d52dcb6e9017bdfaac6202.jpg'),(1507,240,18,'hay 2 by mansoor'),(1508,240,54,'japan'),(1509,240,19,'sanghar'),(1510,240,20,'retired'),(1511,240,21,'New'),(1512,240,22,'712000'),(1513,240,23,'wbite'),(1514,240,24,'2012'),(1515,240,27,'Owned'),(1516,240,32,'http://18.223.124.237/server/postimage/832fe0bccbf79210620f4cd40d0a0a60.jpg'),(1517,241,5,'barlay by mansoor'),(1518,241,8,'ghootki'),(1519,241,6,'fresh'),(1520,241,13,'Mansoor is posting this to test it '),(1521,241,99,'grey'),(1522,241,98,'650'),(1523,241,17,'http://18.223.124.237/server/postimage/73cf11a43ff1b1f23a529d02d5227b55.jpg'),(1524,241,17,'http://18.223.124.237/server/postimage/4d429c8664a0a93914d7895497f74bfb.jpg'),(1525,242,80,'broilers available'),(1526,242,82,'average weight is 1.75kg.. white color, healthy stock'),(1527,242,84,'Rawalpindi'),(1528,242,97,'175'),(1529,242,96,'http://18.223.124.237/server/postimage/c99b27b2a503a55ea6c5105a08e18975.jpg'),(1530,243,5,'Wheat'),(1531,243,8,'Hafizwala'),(1532,243,6,'grain'),(1533,243,13,'best Quality'),(1534,243,99,'red'),(1535,243,98,'25000'),(1536,243,17,'http://18.223.124.237/server/postimage/b8807ccf3e9aabfc18caaa5ede007898.jpg'),(1537,244,5,'Wheat'),(1538,244,8,'Abbasianwala'),(1539,244,6,'grain'),(1540,244,13,'Aala'),(1541,244,99,'Brown'),(1542,244,98,'200'),(1543,244,17,'http://18.223.124.237/server/postimage/5e1fb936c21f20e48210714494802662.jpg'),(1544,245,18,'Tractor'),(1545,245,54,'Itly'),(1546,245,19,'Kallurkot'),(1547,245,20,'2009'),(1548,245,21,'Used'),(1549,245,22,'6800000'),(1550,245,23,'Red'),(1551,245,24,'2009'),(1552,245,27,'Owned'),(1553,245,32,'http://18.223.124.237/server/postimage/343a8c150b9b111ec725ad73a338acb0.jpg'),(1554,246,33,'sigma'),(1555,246,34,'kotlin'),(1556,246,101,'pesticides testing by manzoor'),(1557,246,102,'test description by mansoor'),(1558,246,5456,'islamabad'),(1559,246,35,'Solid'),(1560,246,40,'800'),(1561,246,38,'2009'),(1562,246,42,'http://18.223.124.237/server/postimage/2b2ac6007aeb4b44250f525fdf6786cf.jpg'),(1563,246,103,'May 31, 2021'),(1564,247,18,'excavator added by manskor'),(1565,247,19,'islamabaf'),(1566,247,20,'latest'),(1567,247,21,'Used'),(1568,247,22,'6800'),(1569,247,23,'red'),(1570,247,24,'2014'),(1571,247,27,'Leased'),(1572,247,32,'http://18.223.124.237/server/postimage/32d309ecfbee6d7e224ff8ca2290e06e.jpg'),(1573,247,54,'fiat'),(1574,247,5466,'testing the dexcription '),(1575,248,68,'sheep for qurbani'),(1576,248,72,'30000'),(1577,248,87,'3'),(1578,248,91,'http://18.223.124.237/server/postimage/0c9263803e40ff2cfe53942160d8108d.jpg'),(1579,248,5459,'islamabad'),(1580,249,68,'goats forbqurbani'),(1581,249,72,'35000'),(1582,249,87,'22'),(1583,249,91,'http://18.223.124.237/server/postimage/c71286a2adfb32fd52fc1501d260068c.jpg'),(1584,249,5459,'rawalpinxi'),(1585,249,5467,'best for qurbani'),(1586,250,112,'agri job'),(1587,250,113,'agri jobs posted by Manaoor'),(1588,250,115,'sahiwal'),(1589,251,105,'rose plants'),(1590,251,106,'plants'),(1591,251,107,'rose plants '),(1592,251,108,'100'),(1593,251,110,'http://18.223.124.237/server/postimage/2bc88a0791fc0f0e8b2fe2441194cef4.jpg'),(1594,251,111,'Rawalpindi'),(1595,252,33,'Syngenta'),(1596,252,34,'Isabion'),(1597,252,35,'Liquid'),(1598,252,38,'2020'),(1599,252,40,'1200'),(1600,252,42,'http://18.223.124.237/server/postimage/e7de85dc792f1fb73ac39b80c4417c57.jpg'),(1601,252,101,'Amino acid'),(1602,252,102,'plant nutrient '),(1603,252,103,'June 30, 2022'),(1604,252,5456,'mianwali'),(1605,253,74,'200 Kanal'),(1606,253,76,'200000'),(1607,253,77,'Only Interested people contact'),(1608,253,79,'http://18.223.124.237/server/postimage/bf4e62fac81f04b60042cafe765449ca.jpg'),(1609,253,127,'Hafiz Wala'),(1610,254,74,'Shops  For Rent'),(1611,254,76,'10000'),(1612,254,77,'Best Location'),(1613,254,79,'http://18.223.124.237/server/postimage/9bf45127702951140d1a7f6b3eb9f4ab.jpg'),(1614,254,79,'http://18.223.124.237/server/postimage/e9c2773af720d31f07a58bd5eee7324f.jpg'),(1615,254,127,'Sargodha'),(1616,255,105,'Fruiter'),(1617,255,106,'Maltaa'),(1618,255,107,'Limited Stock'),(1619,255,108,'1000'),(1620,255,110,'http://18.223.124.237/server/postimage/e496ce8f1ca3070cbf28f32f40df1905.jpg'),(1621,255,111,'Hafiz Wala'),(1622,256,18,'Tractor'),(1623,256,19,'Piplan'),(1624,256,20,'2000'),(1625,256,21,'Used'),(1626,256,22,'800000'),(1627,256,23,'Red'),(1628,256,24,'2009'),(1629,256,27,'Owned'),(1630,256,32,'http://18.223.124.237/server/postimage/442b0139443c1113627e00338427676d.jpg'),(1631,256,54,'2010'),(1632,256,5466,'urgent sale'),(1633,257,74,'Shops For Sale'),(1634,257,76,'300000'),(1635,257,77,'limited shop'),(1636,257,79,'http://18.223.124.237/server/postimage/febfb7451b4e455ad12da97948fdcae9.jpg'),(1637,257,127,'Islamabad'),(1638,258,43,'grain'),(1639,258,44,'seeds'),(1640,258,46,'rawalpindi'),(1641,258,50,'5000'),(1642,258,51,'desc'),(1643,258,53,'http://18.223.124.237/server/postimage/e5c17e1e185b114f6e3e036d308022a8.jpg'),(1644,259,43,'Teren seeds'),(1645,259,44,'seeds'),(1646,259,46,'Rawalpindi'),(1647,259,50,'2580'),(1648,259,51,'desc'),(1649,259,53,'http://18.223.124.237/server/postimage/63cc26b513f48e46d1ed6d96ddfc30c8.jpg'),(1650,260,5,'sterik'),(1651,260,6,'Nation'),(1652,260,8,'Rawalpindi'),(1653,260,13,'describe'),(1654,260,17,'http://18.223.124.237/server/postimage/9d3c89a40d780f324effcea345387c30.jpg'),(1655,260,98,'370'),(1656,260,99,'yellow'),(1657,261,43,'testt'),(1658,261,44,'test'),(1659,261,46,'Rawalpindi'),(1660,261,50,'500'),(1661,261,51,'gasp'),(1662,261,53,'http://18.223.124.237/server/postimage/44c038f03e7b2edfd9c9eae6903d6210.jpg'),(1663,262,61,'salman'),(1664,262,62,'fish'),(1665,262,63,'test desc'),(1666,262,67,'http://18.223.124.237/server/postimage/687fbd4c2c8465030cecca368912beef.jpg'),(1667,262,104,'Rawalpindi'),(1668,262,5462,'500'),(1669,263,43,'Test buy omer'),(1670,263,44,'seed'),(1671,263,46,'Rawalpindi'),(1672,263,50,'800'),(1673,263,51,'desc'),(1674,263,53,'http://18.223.124.237/server/postimage/11e1770b9bad6895b347622cb90ff516.jpg'),(1675,264,43,'Red Hot'),(1676,264,44,'10 Gram'),(1677,264,46,'Hafizwala Seeds (Pvt) Ltd'),(1678,264,50,'2000'),(1679,264,51,'Available Stock'),(1680,264,53,'http://18.223.124.237/server/postimage/f7ed0008dbe760d3550f29f1e9b91294.jpg');
/*!40000 ALTER TABLE `post_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL,
  `subcat_id` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'active',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (198,10,6,94,'active','2021-04-12 18:05:26'),(199,5,3,94,'active','2021-04-12 18:18:35'),(200,11,31,94,'active','2021-04-12 18:29:07'),(201,11,31,94,'active','2021-04-12 18:30:44'),(202,12,32,94,'active','2021-04-12 18:33:50'),(203,17,54,94,'active','2021-04-12 18:38:39'),(204,13,24,94,'active','2021-04-12 18:40:16'),(205,13,22,94,'active','2021-04-12 18:41:13'),(206,13,22,103,'active','2021-04-12 19:31:19'),(207,11,31,94,'active','2021-04-12 19:38:53'),(208,7,12,92,'active','2021-04-13 16:53:04'),(209,10,6,114,'active','2021-04-13 17:54:48'),(210,13,22,97,'active','2021-04-14 06:54:46'),(211,10,9,94,'active','2021-04-14 06:59:56'),(212,5,2,94,'active','2021-04-14 07:05:39'),(213,5,2,94,'active','2021-04-14 07:33:36'),(214,5,2,94,'active','2021-04-14 07:35:07'),(215,10,7,114,'active','2021-04-14 13:10:46'),(216,10,7,114,'active','2021-04-14 13:15:21'),(217,13,27,94,'active','2021-04-16 17:22:42'),(218,15,33,94,'active','2021-04-16 18:03:11'),(219,6,52,94,'active','2021-04-16 18:09:25'),(220,14,35,94,'active','2021-04-16 18:12:39'),(221,6,30,103,'active','2021-04-16 20:43:21'),(222,6,51,94,'active','2021-04-19 11:12:33'),(223,15,33,94,'active','2021-04-19 11:20:10'),(224,6,30,94,'active','2021-04-19 11:23:59'),(225,14,35,115,'active','2021-04-26 13:14:51'),(226,8,49,115,'active','2021-04-26 13:22:45'),(227,5,45,115,'active','2021-04-26 13:35:49'),(228,10,7,114,'active','2021-04-26 13:39:20'),(229,5,3,100,'active','2021-04-30 00:14:02'),(230,8,17,100,'active','2021-04-30 00:19:52'),(231,10,6,92,'active','2021-05-05 18:39:17'),(232,5,3,92,'active','2021-05-07 08:44:41'),(233,8,17,92,'active','2021-05-08 19:33:24'),(234,5,3,103,'active','2021-05-08 19:36:25'),(235,12,32,94,'active','2021-05-08 19:51:16'),(236,5,38,94,'active','2021-05-08 19:59:03'),(237,8,16,92,'active','2021-05-08 20:10:08'),(238,16,34,92,'active','2021-05-08 21:37:24'),(239,10,8,94,'active','2021-05-08 22:48:25'),(240,10,8,94,'active','2021-05-08 22:51:29'),(241,5,41,94,'active','2021-05-08 22:56:14'),(242,12,32,97,'active','2021-05-09 10:13:44'),(243,5,3,114,'active','2021-05-18 16:57:04'),(244,5,3,114,'active','2021-05-18 16:59:44'),(245,10,7,114,'active','2021-05-18 17:01:47'),(246,7,13,94,'active','2021-05-24 07:03:52'),(247,10,5,94,'active','2021-05-30 11:17:17'),(248,13,23,94,'active','2021-05-30 11:22:27'),(249,13,24,94,'active','2021-05-30 11:28:13'),(250,14,36,94,'active','2021-06-03 06:44:38'),(251,17,54,97,'active','2021-11-24 08:34:12'),(252,7,12,100,'active','2021-11-24 08:40:00'),(253,6,30,121,'active','2021-12-05 06:00:54'),(254,6,52,121,'active','2021-12-08 07:41:49'),(255,17,54,121,'active','2021-12-14 15:49:38'),(256,10,11,121,'active','2021-12-26 07:31:11'),(257,6,52,121,'active','2022-01-11 10:40:42'),(258,8,18,125,'active','2022-01-25 00:27:39'),(259,8,16,124,'active','2022-01-26 14:37:40'),(260,5,2,124,'active','2022-01-26 14:54:01'),(261,8,16,126,'active','2022-01-27 05:08:42'),(262,11,31,125,'active','2022-01-27 08:21:03'),(263,8,16,124,'active','2022-01-31 08:53:16'),(264,8,17,121,'active','2022-02-19 08:58:45');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantity_sell`
--

DROP TABLE IF EXISTS `quantity_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantity_sell` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` float unsigned DEFAULT NULL,
  `description` text DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantity_sell`
--

LOCK TABLES `quantity_sell` WRITE;
/*!40000 ALTER TABLE `quantity_sell` DISABLE KEYS */;
INSERT INTO `quantity_sell` VALUES (5,87,'10',150000,'sahiwal buffalo with high quality.. gives 100liter milk daily',NULL),(6,88,'1',50000,'none',NULL),(7,89,'22',33,'none',NULL),(8,90,'22',33,'none',NULL),(9,91,'222',33,'none',NULL),(10,92,'11',99,'nnn',NULL),(11,93,'22',99,'nn',NULL),(12,94,'44',99,'nn',NULL),(13,95,'44',0,'uu',NULL),(14,96,'77',88,'none',NULL),(15,97,'11',22,'none',NULL),(16,98,'88',66,'none',NULL),(17,99,'22',55,'none',NULL),(18,100,'11',66,'none',NULL),(19,101,'11',58,'g',NULL),(20,102,'44',99,'ggg',NULL),(21,103,'88',55,'rr',NULL),(22,104,' 9',88,'c',NULL),(23,105,'55',55,'fg',NULL),(24,106,'88',99,'v',NULL),(25,107,'88',88,'cv',NULL),(26,108,'44',89,'dg',NULL),(27,109,'8585',56,'cg',NULL),(28,110,'44',69,'c',NULL),(29,111,'44',55,'c',NULL),(30,112,'44',99,'fx',NULL),(31,113,'444',999,'cv',NULL),(32,114,'300',50,'cnjcxxd',NULL),(33,115,'22',33,'none',NULL),(34,116,'22',33,'none',NULL),(35,117,'250',200,'total ',NULL),(36,118,'50',50,'I want to sell',NULL),(37,119,'500',800,'lorem ispem Dec tor lerct I am not sure about what you are looking for in your life and if you are not a good person and I am not a big w and I am not coming today for you to ',NULL),(38,120,'500',8000,'lorenmahaja ha aka aka shs hsbsha lorem I don\'t know what to do if I don\'t have a lot of time  I don\'t know what I want to do but it would be a good time to do this for me to be able to do it myself and then I will try to make it happen and I will make be the best I can make it to the next level I want to be in a good ',NULL),(39,123,'50',350,'better ',NULL),(40,123,'150',200,'good discount ',NULL),(41,123,'250',100,'whole crop',NULL),(42,124,'9',86,'c',NULL),(43,125,'300',900,'min',NULL),(44,125,'600',700,'half',NULL),(45,125,'1200',500,'whole ',NULL),(46,126,'11',22,'none',NULL),(47,127,'69',98,'v',NULL),(48,128,'75',88,'none',NULL),(49,129,'11',66,'c',NULL),(50,131,'4508',88,'dd',NULL),(51,132,'85',99,'j',NULL),(52,134,'250',250,'aaaads',NULL),(53,135,'11',22,'none',NULL),(54,136,'22',33,'none',NULL),(55,139,'5',150000,'wheat ????',NULL),(56,142,'22',66,'none',NULL),(57,143,'111',33,'none',NULL),(58,147,'25',NULL,NULL,'Kilo'),(59,147,'55',66,'xv',NULL),(60,148,'150',NULL,NULL,'Kilo'),(61,148,'150',10000,'none',NULL),(62,149,'55',NULL,NULL,'Kilo'),(63,149,'55',55,'cc',NULL),(64,150,'11',NULL,NULL,'Kilo'),(65,150,'55',99,'fg',NULL),(66,151,'55',NULL,NULL,'Kilo'),(67,151,'25',35,'none',NULL),(68,152,'25',NULL,NULL,'Kilo'),(69,152,'44',55,'none',NULL),(70,153,'150',NULL,NULL,'Kilo'),(71,153,'50',60,'none',NULL),(72,154,'250',NULL,NULL,'Kilo'),(73,154,'60',150,'no',NULL),(74,155,'25',NULL,NULL,'Kilo'),(75,155,'22',33,'none',NULL),(76,156,'500',NULL,NULL,'Man'),(77,156,'50',400,'minimum',NULL),(78,156,'100',300,'partial',NULL),(79,156,'250',250,'half',NULL),(80,156,'500',200,'full',NULL),(81,157,'25',NULL,NULL,'Kilo'),(82,158,'250',NULL,NULL,'Kilo'),(83,160,'10',NULL,NULL,'Kilo'),(84,161,'40',NULL,NULL,'Acres'),(85,165,'400000',NULL,NULL,'Kilo'),(86,166,'1000',NULL,NULL,'Kilo'),(87,167,'10',NULL,NULL,'Kilo'),(88,168,'10',NULL,NULL,'Kilo'),(89,169,'50',NULL,NULL,'Kilo'),(90,171,'40',NULL,NULL,'Acres'),(91,174,'10000',NULL,NULL,'Kilo'),(92,176,'2000',NULL,NULL,'Man'),(93,177,'1000',NULL,NULL,'Man'),(94,179,'40',NULL,NULL,'Acres'),(95,180,'8',NULL,NULL,'Marla'),(96,181,'12',NULL,NULL,'Marla'),(97,182,'120',NULL,NULL,'Marla'),(98,183,'25',NULL,NULL,'Marla'),(99,184,'100',NULL,NULL,'Man'),(100,185,'250',NULL,NULL,'Kilo'),(101,194,'10',NULL,NULL,'Marla'),(102,195,'10',NULL,NULL,'Marla'),(103,196,'25',NULL,NULL,'Kilo'),(104,197,'10',NULL,NULL,'Marla'),(105,199,'125',NULL,NULL,'Man'),(106,200,'741',NULL,NULL,'Kilo'),(107,201,'80',NULL,NULL,'Man'),(108,202,'450',NULL,NULL,'Man'),(109,207,'250',NULL,NULL,'Man'),(110,212,'500',NULL,NULL,'Mun'),(111,213,'1200',NULL,NULL,'Mun'),(112,214,'750',NULL,NULL,'Kg'),(113,218,'45',NULL,NULL,'Kanal'),(114,219,'45',NULL,NULL,'Marla'),(115,221,'24354',NULL,NULL,'Murabba'),(116,222,'288',NULL,NULL,'Marla'),(117,223,'12',NULL,NULL,'Marla'),(118,224,'10',NULL,NULL,'Marla'),(119,226,'10',NULL,NULL,'Kg'),(120,227,'1000',NULL,NULL,'Kg'),(121,229,'250',NULL,NULL,'Ton'),(122,230,'1',NULL,NULL,'Kg'),(123,232,'25',NULL,NULL,'Kg'),(124,233,'1200',NULL,NULL,'Kg'),(125,234,'2',NULL,NULL,'Kg'),(126,235,'450',NULL,NULL,'Kg'),(127,236,'78',NULL,NULL,'Kg'),(128,237,'25',NULL,NULL,'Kg'),(129,241,'80',NULL,NULL,'Kg'),(130,242,'1000',NULL,NULL,'Kg'),(131,243,'150',NULL,NULL,'Ton'),(132,244,'500000',NULL,NULL,'Kg'),(133,253,'5',NULL,NULL,'Marla'),(134,254,'1',NULL,NULL,'Marla'),(135,257,'1',NULL,NULL,'Marla'),(136,258,'5',NULL,NULL,'Kg'),(137,259,'2',NULL,NULL,'Kg'),(138,260,'2',NULL,NULL,'Kg'),(139,261,'2',NULL,NULL,'Kg'),(140,262,'5',NULL,NULL,'Kg'),(141,263,'5',NULL,NULL,'Kg'),(142,264,'0.10',NULL,NULL,'Kg');
/*!40000 ALTER TABLE `quantity_sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `sub_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `urdu_name` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_bin NOT NULL,
  `urdu_description` text COLLATE utf8mb4_bin NOT NULL,
  `picture` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `parrent_id` int(10) unsigned NOT NULL,
  `index_seq` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (2,'Rice','چاول','test description to show how it works','جانچنے کی تفصیل یہ ظاہر کرنے کے لئے کہ یہ کیسے کام کرتا ہے','rice.jpg',5,0),(3,'Wheat','گندم','test description to show how it works','جانچنے کی تفصیل یہ ظاہر کرنے کے لئے کہ یہ کیسے کام کرتا ہے','wheat.jpeg',5,0),(4,'Oats','جو','test description to show how it works','جانچنے کی تفصیل یہ ظاہر کرنے کے لئے کہ یہ کیسے کام کرتا ہے','oats.jpg',5,0),(5,'Excavator','کھدائی کرنے والا','Excavator','کھدائی کرنے والا\n','96d6d4fd5f5074b271330efcf2fa3f00.jpg',10,1),(6,'Harvesting','کٹائی','This is test description','یہ جانچ کی تفصیل ہے','f8b5e02e7ef0fbf1a35e6a361090def5.jpeg',10,2),(7,'Tillage & Seeding','کھیتی باڑی اور بوائ','This is test description','یہ جانچ کی تفصیل ہے','7b66c4fa1ff7ec507a5d2b248584991b.jpg',10,3),(8,'Hay & Silage','گھاس اور سیلاج','This is test description','یہ جانچ کی تفصیل ہے','6be31f28bbf3b33937c7dc75254be518.jpeg',10,5),(9,'Spraying','چھڑکنا','This is test description','یہ جانچ کی تفصیل ہے','e4d9de65b318f98f2eabc19e48779a65.gif',10,6),(10,'Irrigation Equipment','آبپاشی کا سامان','This is test description','یہ جانچ کی تفصیل ہے','41b8fd731f6a1810f73d0e6fb7ba29b9.jpg',10,6),(11,'Tractor','ٹریکٹر','Tractor','ٹریکٹر','e7a1a088f1a4b905c6f68710b5d49da1.jpg',10,7),(12,'Insecticides','کیڑے مار دوائیں','This is test description','یہ جانچ کی تفصیل ہے','b75a33ca58850bf9d3af5d0bf6c05059.jpg',7,1),(13,'Herbicides','جڑی بوٹیوں سے دوچار','This is test description','یہ جانچ کی تفصیل ہے','2337e2618a38e99d133a607895d1633b.jpg',7,6),(14,'Fungicides','فنگسائڈس','This is test description','یہ جانچ کی تفصیل ہے','d3083fd3ed516c9ed945b8fbbdc69583.jpeg',7,7),(16,'Flower Seeds','پھول کے بیج','This is test description','یہ جانچ کی تفصیل ہے','41432aa1757de21c8330413f20f1a5d1.jpg',8,1),(17,'Vegetable  Seeds','سبزیوں کے بیج','This is test description','یہ جانچ کی تفصیل ہے','769ba24bc8c80e5c15cf9475a07d1f4c.jpg',8,2),(18,'Grain Seeds','اناج کے بیج','Grain Seeds','اناج کے بیج','7dfaafd1b694bb9f37f42a7d4de0037a.jpg',8,3),(19,'Fruit seeds','پھلوں کے بیج','Fruit seeds','پھلوں کے بیج','390662191a63aa19be6523330c2f79e4.jpg',8,4),(20,'Fruit seeds','پھلوں کے بیج','this is test description','یہ جانچ کی تفصیل ہے','2bb0b623e678569c196f0393997bee25.jpg',8,5),(21,'Hot weather veg','گرم موسم کی سبزی','Hot weather veg','گرم موسم کی سبزی','3a27156b703eeca958a26e544504b4de.jpg',8,5),(22,'Cow','گائے','This is test description','یہ جانچ کی تفصیل ہے','5f3b5b78bb0013265f81b7a9944f6149.jpg',13,1),(23,'sheep','بھیڑ','This is test description','یہ جانچ کی تفصیل ہے','05d660112aceee72f83f392fefbcb242.jpg',13,2),(24,'goats','بکریاں','This is test description','یہ جانچ کی تفصیل ہے','06ebc46e312070a5696791affde9a929.jpg',13,3),(25,'horses','گھوڑے','This is test description','یہ جانچ کی تفصیل ہے','4faf89ccab7bf57ce1704d769b4ac647.jpg',13,4),(27,'buffalo','بھینس','This is test description','یہ جانچ کی تفصیل ہے','27cfacfd29c50f79825c598f3f2e8eee.jpg',13,8),(29,'camels','اونٹ','This is test description','یہ جانچ کی تفصیل ہے','321cf977f90049c277302221e0d3da88.jpg',13,10),(30,'Farm House','فارم ہاؤس','Farm House','فارم ہاؤس','49dbe498dfba91f876d239e3475f2da0.jpg',6,1),(31,'Fish Farm','فش فارم','Fish Farm','فش فارم','fa08a150134e6ded49d162c7609bbe09.jpg',11,1),(32,'Poultry Farm','پولٹری فارم','Poultry Farm','پولٹری فارم','bd5b928d37c90c4a0409a92cfaf4fff9.jpg',12,1),(33,'Forestry','جنگلات','Forestry','جنگلات','Forestry.jpg',15,1),(34,'Fertilizers','کھادیں','Fertilizers','کھادیں','39083544104566e9e63206709a4d427f.jpg',16,1),(35,'Field Worker / Labor','فیلڈ ورکر','Field Worker / Labor','فیلڈ ورکر','Jobs.jpg',14,1),(36,'Agri Machinery Mechanics / Drivers','ایگری مشینری میکینکس / ڈرائیور','Agri Machinery Mechanics / Drivers','ایگری مشینری میکینکس / ڈرائیور','Jobs.jpg',14,2),(37,'Farm Manager','فارم مینیجر','Farm Manager','فارم مینیجر','Jobs.jpg',14,3),(38,'Corn','مکئی','Corn','مکئی','f184633f9f9c8e9b3312096a0f403d93.jpg',5,4),(39,'Canola ','کینولا','Canola ','کینولا','7da85be4edc2273d1785e48eea6b1ed3.jpg',5,5),(40,'Sun Flower','سورج مکھی','Sun Flower','سورج مکھی','4607a96e4c4f23cf93d6a4758aa46312.jpg',0,6),(41,'Barlay','جَو','Barlay','جَو','f3686f48d8e457b2d8af14b578c8e9fb.jpg',5,7),(42,'Guar','گوار','Guar','گوار','ea4dba606a5e272d839e7e615162e44b.jpg',5,8),(44,'Millet','جوار','Millet','جوار','696ab82ebc2c76baa2ea9a4b0bdd4897.jpg',5,9),(45,'Pulses','دالیں','pulses','دالیں','7ad5aa55834716b669b6ae20416ac43b.jpg',5,10),(46,'Salad seeds','ترکاریاں بیج','Salad seeds','ترکاریاں بیج6','a92f04a8adebaad4fcd78906a7e12226.jpg',8,6),(47,'Tomato seeds','ٹماٹر کے بیج','Tomato seeds','ٹماٹر کے بیج','abba04eb854a2a618749fb912f659fe8.jpg',8,7),(48,'Herb Seeds','جڑی بوٹیوں کے بیج','Herb Seeds','جڑی بوٹیوں کے بیج','3a51295a5c4f6b511965e9d4ca6d9a98.jpg',8,8),(49,'Pulses','دالیں','Pulses','دالیں','c9e40c97d2f714a79a8c10a3c4d556cd.jpg',8,9),(50,'Other Seeds','دوسرے بیج','Other Seeds','دوسرے بیج','9be0ded66b98f8d4b290658f90581a1e.jpg',8,10),(51,'Agri Land','ایگری لینڈ','Agri Land','ایگری لینڈ','249e876ec5ba2b48e010ab4a05cc32ee.jpg',6,2),(52,'Shops','دکانیں','Shops','دکانیں','614662c19ab92ff6bb74a0af73ceede5.jpg',6,3),(53,'For Lease','لیز کے لئے','For Lease','لیز کے لئے','8c6f97afe5ec99ca417d315bb6910110.jpg',6,4),(54,'Hoticulture ','باغبانی','Hoticulture ','باغبانی','453502849cc857cda17dca36ade4c8f4.jpg',17,1),(56,'Others','علاوہ','Others','علاوہ','d78cc633c06a029cf35679a60a2b177b.jpg',5,10);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_relation`
--

DROP TABLE IF EXISTS `unit_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_relation` (
  `unit_red_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`unit_red_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_relation`
--

LOCK TABLES `unit_relation` WRITE;
/*!40000 ALTER TABLE `unit_relation` DISABLE KEYS */;
INSERT INTO `unit_relation` VALUES (5,7,5),(6,8,5),(7,9,5),(8,1,6),(9,2,6),(10,3,6),(11,4,6),(12,5,6),(13,6,6),(14,10,7),(15,7,8),(16,8,8),(17,9,8),(18,7,11),(19,8,11),(20,9,11),(24,7,12),(25,8,12),(26,9,12),(36,5,15),(37,1,15),(38,2,15),(39,3,15),(40,4,15);
/*!40000 ALTER TABLE `unit_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `unit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Marla'),(2,'Kanal'),(3,'Bigha'),(4,'Killa'),(5,'Acres'),(6,'Murabba'),(7,'Kg'),(8,'Mun'),(9,'Ton'),(10,'Liters');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `profilepic` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT 'http://18.223.124.237/categoryimage/default-user.png',
  `password` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `fcm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (92,'Khadija','Altaf','khadijaltaf@gmail.com','03235726083','http://18.223.124.237/server/profilepics/http://18.223.124.237/server/profilepics/http://18.223.124.237/categoryimage/default-user.png','827ccb0eea8a706c4c34a16891f84e7b','ekgKCfOcS1i6z1z4cGq60E:APA91bFhz5e2wX10wLD2iihsN3diHpnX2uUfStjIuwBCVUA5LXnXGevfHDy9PY9ARx3Hzqr2YG1SjRHeXIhNy5wMK_oXiokOzgiFoZgPZrNMNzl3iFKOBczhyYP_9uz72yt1CN07UuTT'),(93,'Khadija Altaf',NULL,'ztagdev@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14GjquokvqyVaXYNUqnsM8nzaYGd1sQfD1tvkem-W=s96-c',NULL,'egn8xd40SC2uYZg-PuYjAc:APA91bGkfgbMyrjLjlrvNR96kcqzQkNNLMSf5l8MyqfmLbBOJ-pXDLtT_EOza3NYiOPodhZwZSVcSPX-hmW5i-eGnCf45KDVKXp4YXrffXoXUwKxPFBs6Lw8fe5RoYAgaJee_M3rujFX'),(94,'Mansoor','Sadiq','mansoorsadiq@gmail.com',' 03028557277','http://18.223.124.237/server/profilepics/2e57dd3adc1732c76f27a60ed6151bdd.jpg',NULL,'f4JtoxJ7Tui2fAegshEOg-:APA91bH38EgooF_ThY9HOQkdrdUnpbHi4atqUhFIn0Y4OC299INyiqPcu9ElYEVpaQba2KcY7DwxRJ-5p8QpBHkZkHFg__miFJFABr38rV89oWB6W1h2XC2Bk84DnalXkwdgy_5pIjkH'),(95,'Mansoor','Sadiq',NULL,'03028557277','http://18.223.124.237/categoryimage/default-user.png','81dc9bdb52d04dc20036dbd8313ed055','fJR9cgAKSqOhWj7B2q0GCZ:APA91bGcKGA3ZX-EDo8RzwzAQCjDMrznVK9N0qI1wwu0UVs4BRKihFqP5BTBnaeMVTn_fu26dFcMZITVEPVaqUWNlSTpWIe0Gy68KaoW6Zptyex-kuLALTy38K6OgFN8uXkiwCGnk61A'),(96,'Muhammad Umer Farooq',NULL,'mumer.farooq89@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14Gg8MMzQBTx0PY3V8mtV8DfmeDzDH2bR2cBTG02j=s96-c',NULL,'d6FyULr3T9KMjvHTH1OW3G:APA91bGkKTH5njMf6or7ufPON8Rid7SWIMB2YaW7TawF2OmInt5qUQD7HjcNPs0sZZB8EBRi-2h20uH0LeH3-wojOFjZxwFvYKqwlndA6iCNQURG4HORcdiR4k2PiEEHy-yhv53gkDMd'),(97,'Fasial','Saleem','faisy1972@gmail.com',NULL,'http://18.223.124.237/server/profilepics/e75309a3a822a45432c18d34b8f91084.jpg',NULL,'dNxVeyhCT0WlyMYlwQETOB:APA91bEUV95eSuFGbx57OxL6FtuW3v-yNQGhqSQXVzV2EFgO-z6cH27J8g6nE_CNW62mPUxtxRoVoFavAdNx3R1diGWYAL82q1KtD3gNi_Ul77s2r-iluaDdLn_ylUY_qjytRhb45mG-'),(99,'Abd ur Rehman',NULL,'manikhan5353@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14GjMMAICol4aI9P9clA8MAwpVZpImCnGTcyRxm5_Wg=s96-c',NULL,'dHxxe484TEun7RlKELodVO:APA91bHUg0Cw4LXQ45u9gTeezdz4kPUR4pfOFunElp8OjCRi0rmdYHF7L71zQY-nx7uN103WBS7k892KGRaQmwPWadXKYOozwJCUfJgh5nyWo-_F2sS-RfRci6nXcxnSnFDNPXSnOlKs'),(100,'M B Naeem Khan',NULL,'mbnk44@gmail.com',NULL,'https://lh6.googleusercontent.com/-C1hZsBi8RoU/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck1S_DqfRRx-jC6rV2ZIgePZB-lJw/s96-c/photo.jpg',NULL,'f70eAq7VQ4KMbkBN6Nala6:APA91bHvhClo5YMNIdYm7wOiZAy5gx6uZ4veFyrQSDOP5oVe5qD7F6yh_wUZuIquPGf4zma_LRbtHquBN9r0-QdAiWxmTQQcvumdNfnXAc0rN1oCrBbOpKNzJwae1_jKvVKythNld1D0'),(101,'raja','usama','usaman@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14GjLknZaARZXbxmvuKt33YvJXnQ9iVxnu2RV2XpRcA=s96-c',NULL,'eu6LVJLBQsqDtMeGY7LuJr:APA91bGHaL9UT3WPpXc6Chbw_uH-2KV2YshNg6JZnpH76s1Y2QmD6uuimaRugEGiOfDqexG3zZEgqWUt7m0k2nbPo-F6YxH2BAF7VAIVkpo4ISfMrJLLLPeJGbPme5U-pXtu3SGPZKGn'),(102,'Khadija Altaf',NULL,'khadijaltaf@gmail.com',NULL,'https://lh5.googleusercontent.com/-RKzpTwdmkfI/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmMqw3kxVbN-RiLbHSSqQ0KyD9l1Q/s96-c/photo.jpg',NULL,'eM2JmyImSTGkicjTMe0-qn:APA91bHSK5Nlz7ABEdj_YzYYzV3Tpzs6CmD84z3YF7uK7-WMGeoYmUTxji3hRUByInDer0YqKAmbPpmdw6TcHJlK5h5PNXJ1mW6iM_Qz11IaLvO-RWMAFNixUuhYlX3jiVUuEkpIPSTa'),(103,'umet','farooq',NULL,'03087130163','http://18.223.124.237/categoryimage/default-user.png','81dc9bdb52d04dc20036dbd8313ed055','cplyUccNSQe7blSw77Nl8n:APA91bE0PM77UhlXZs26zJL-pKHvBqxz6dsVFedu5P1d3deS44oBvflsU2IycsRr0by6FAjp90mUfXoU7LOEy2r3MIWPugmsUsTwBe8nk3NAfh06hjC_OhN5gPFVvgbWzrbJXBO36w6-'),(104,'mani','khan',NULL,'03100800892','http://18.223.124.237/categoryimage/default-user.png','58b4e38f66bcdb546380845d6af27187','dHxxe484TEun7RlKELodVO:APA91bHUg0Cw4LXQ45u9gTeezdz4kPUR4pfOFunElp8OjCRi0rmdYHF7L71zQY-nx7uN103WBS7k892KGRaQmwPWadXKYOozwJCUfJgh5nyWo-_F2sS-RfRci6nXcxnSnFDNPXSnOlKs'),(105,'zubair ','azam','usma@gmail.com','03055963771','http://18.223.124.237/server/profilepics/','3fc0a7acf087f549ac2b266baf94b8b1','c7_B-tbcRkOq0SFB_8wo3U:APA91bHM3q4Yz3zHmFvHTYJUs66eB1rFXepUfn-JCMwyNyD_Yrygs3-yJjH3LhClrcPRyXZ-4AZdl8puiac_pKBbZEC23-FEwA_Dj9gQYmf2MVKGat6fCZSBHOGV5B4ix0lQsc1sAKi2'),(106,'uamama','kahan',NULL,'03305475437','http://18.223.124.237/categoryimage/default-user.png','3fc0a7acf087f549ac2b266baf94b8b1','c7_B-tbcRkOq0SFB_8wo3U:APA91bHM3q4Yz3zHmFvHTYJUs66eB1rFXepUfn-JCMwyNyD_Yrygs3-yJjH3LhClrcPRyXZ-4AZdl8puiac_pKBbZEC23-FEwA_Dj9gQYmf2MVKGat6fCZSBHOGV5B4ix0lQsc1sAKi2'),(107,'asif','khan',NULL,'03095410253','http://18.223.124.237/categoryimage/default-user.png','d8578edf8458ce06fbc5bb76a58c5ca4','fVWp0BANTEyVWSL9l_nark:APA91bHaFAGFK6rA9eJ6UbCy6Q5dLNIj8dfPGyKB-f0TkOoiWaEIvsZW8zjMZgplRzSOI1X4szewZDHfy7RQeBCCEWFuIz2MOxsDV-lD253PJpP5LL6EZwXLooiZZSh3dBeK7ViqiaWy'),(108,'Angie Horton',NULL,'angiehorton.30249@gmail.com',NULL,'https://lh4.googleusercontent.com/-U1-yyK1wKBk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnXG47adPWrCDGz2C1dV6zYiKY6_Q/s96-c/photo.jpg',NULL,NULL),(109,'raja usama',NULL,'rajausama8421@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14GjLknZaARZXbxmvuKt33YvJXnQ9iVxnu2RV2XpRcA=s96-c',NULL,'eu6LVJLBQsqDtMeGY7LuJr:APA91bGHaL9UT3WPpXc6Chbw_uH-2KV2YshNg6JZnpH76s1Y2QmD6uuimaRugEGiOfDqexG3zZEgqWUt7m0k2nbPo-F6YxH2BAF7VAIVkpo4ISfMrJLLLPeJGbPme5U-pXtu3SGPZKGn'),(110,'usama','raja','rajausama8421@gmail.com','03066426461','http://18.223.124.237/server/profilepics/e6056bc0edc65c844731467e4cb64bc1.jpg','3fc0a7acf087f549ac2b266baf94b8b1','eu6LVJLBQsqDtMeGY7LuJr:APA91bGHaL9UT3WPpXc6Chbw_uH-2KV2YshNg6JZnpH76s1Y2QmD6uuimaRugEGiOfDqexG3zZEgqWUt7m0k2nbPo-F6YxH2BAF7VAIVkpo4ISfMrJLLLPeJGbPme5U-pXtu3SGPZKGn'),(111,'Vivian Barber',NULL,'vivianbarber.66672@gmail.com',NULL,'https://lh3.googleusercontent.com/-sl0qZwCCzo0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckKQq9ZvEvzEtLXSsYx0-QGzVl0HQ/s96-c/photo.jpg',NULL,NULL),(112,'Ross Austin',NULL,'rossaustin.89022@gmail.com',NULL,'https://lh4.googleusercontent.com/-sKnRNf9kfyM/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclPYCuViGaMSikHRbH7j8XxI5AWIw/s96-c/photo.jpg',NULL,NULL),(113,'Ruth Garrett',NULL,'ruthgarrett.26322@gmail.com',NULL,'https://lh4.googleusercontent.com/-ukEZJvSgRbI/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucl17Q60a9jGMTUjb_YUBRMFctCnrQ/s96-c/photo.jpg',NULL,NULL),(114,'Naseem Hasan',NULL,'nasimhasankhan@gmail.com',NULL,'https://lh6.googleusercontent.com/-Fqw1wufaXWk/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnfNr9v9huodEuiX81c4stRwjm25Q/s96-c/photo.jpg',NULL,'cDb9MWOEQsKL6IyfsRoIqY:APA91bFsL1StjPwj8DNYH8jJWmfJ7-DC0EJ_FcSs693ffoXssAczwYBe1Jqgpp5CCUszMEF1KfD1l0eiDEkD8i1CH5Dki1LlGc5ZWigSrjA7SjVmKeZ8ITYZ87R6JE1qss4b1hyvQOiP'),(115,'jamaal abdulnasir','jamal','greenglobe85@gmail.com',NULL,'http://18.223.124.237/server/profilepics/https://lh4.googleusercontent.com/-Bv1iCQRgTbw/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckWBBiecy8PMhyA32rTRdjjIkmSGA/s96-c/photo.jpg',NULL,'fJgYvCfYRIqPqg2kXMwgLp:APA91bH5bkkZnUO5-ch48enGnxCOWXDKkXCcfqktPiToWKOmqf-wA59ALTNr7j921vPwQUQfUL16cSP_oqrDMvS1ZLJpcIgR3ho_-EBkkUOtVrD4bJYUIKiVWj07ZrmN0wl21D9vPoeS'),(116,'Johnnie Fernandez',NULL,'johnniefernandez.39365@gmail.com',NULL,'https://lh5.googleusercontent.com/-7pYmO_TrnuA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmX2z_fa50TwsEYEi2YKdSnnhpAAw/s96-c/photo.jpg',NULL,NULL),(117,'Aniqa Batool',NULL,'aniqabatool12@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14GjIz1IFZsQAAljAVw53g27stxLg1rMgoua2PcNrzg=s96-c',NULL,'dQz1yYorRTeIw5KjJGjU2z:APA91bEa-E2iOMjfBGqRxyvxC7yBHqTMOpF87nzAezzzMVb6C8XQF75m8pCb4G-8sa8hyqV05mqBl1Xs0-05cLmEOAwdtKkqY_Mfy3_e98ZGmg_krQVVFCoVUYhSio41G667JkMwq_Qk'),(118,'amir ayat',NULL,'amirchampion30@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14GgRmHBf9_gEHaNVdt9R7nrPGWgDmVVVviG9GMaS=s96-c',NULL,'f37l8pgRT6aWZQ6xX-aHnF:APA91bFoYObmzeFH3tmdUvNqV6G86UsH9_j1jHhhhBFjkRdqkBuCCfn5ZK4_ZTCZ86MacANoys4dJO8RbrmH5M3MTmHMnZi56d4YlqdnJu1_sNSXobpw2ICEtXKu2nL61I9vKMI_5qYY'),(119,'Vicky Singleton',NULL,'vickysingleton.61523@gmail.com',NULL,'https://lh6.googleusercontent.com/-rMj4P2yHA0Y/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclG3txgFRlJto0WCeRgPhgy20d2pQ/s96-c/photo.jpg',NULL,NULL),(120,'ناصر','جمال','greenglobe85@gmail.com','03001270900','http://18.223.124.237/server/profilepics/http://18.223.124.237/server/profilepics/http://18.223.124.237/categoryimage/default-user.png','d902c3ce47124c66ce615d5ad9ba304f','dt9aJAr4T4-NmgEgiTjo4s:APA91bFuHXZKUP7W0VqE8L27P2CwjV5drUOLrQ8H3qpJS1Yy9WdCFizTeCPXBziuZ8r0hz1yw4fUaQv0zCZYykOE9WVlhinQQsD6vMHeiWmiY74q-t8esyMTrI5LAL11uSve0eFwWCLw'),(121,'Nasir','Abbas','nasirabbasforextrader@gmail.com','03157999212','http://18.223.124.237/server/profilepics/88027d63b579c4f553dded9e8c27b1c8.jpg','f152e6a8223805e63b6537bf8e02eed9','dgiHdnI1Svqfm7vjDZyqpZ:APA91bEv1DDSwdEfHfqBP0eOwtXrlx_2rg-ilVwkABwWylcT3tH7L_jI-Eh69vMT3n0rTAg0-sOKciLwtunQDEjvVDTgAvEg-mvHM7mPDaV0l2XKZgp1lZkWFxvbqMuwXLDT0Jy-ZF-0'),(122,'Qaiser Abbas',NULL,'qaisar.abbasnews@gmail.com',NULL,'https://lh3.googleusercontent.com/a-/AOh14GhlTA19AVMW2I7vdyTsPgvE80LofyVR4xnrjRKn5g=s96-c',NULL,'dgiHdnI1Svqfm7vjDZyqpZ:APA91bEv1DDSwdEfHfqBP0eOwtXrlx_2rg-ilVwkABwWylcT3tH7L_jI-Eh69vMT3n0rTAg0-sOKciLwtunQDEjvVDTgAvEg-mvHM7mPDaV0l2XKZgp1lZkWFxvbqMuwXLDT0Jy-ZF-0'),(123,'amba','singh',NULL,'03460222272','http://18.223.124.237/categoryimage/default-user.png','25d55ad283aa400af464c76d713c07ad','dNxVeyhCT0WlyMYlwQETOB:APA91bEUV95eSuFGbx57OxL6FtuW3v-yNQGhqSQXVzV2EFgO-z6cH27J8g6nE_CNW62mPUxtxRoVoFavAdNx3R1diGWYAL82q1KtD3gNi_Ul77s2r-iluaDdLn_ylUY_qjytRhb45mG-'),(124,'omer','faisal','jacksonfriend12@gmail.com','03115380875','http://18.223.124.237/server/profilepics/de66fcc69c7c34c1f2fbedbd4b327801.jpg','e10adc3949ba59abbe56e057f20f883e',NULL),(125,'03214','03354','jacksonfriend11@gmail.com','03355401689','http://18.223.124.237/server/profilepics/2fb920ca3269371a1419519d8a0630ed.jpg','467b617fec4d9fcb63505734ee224851',NULL),(126,'Ahmed ','faisal','ahmedbinfaisal555@gmail.com',' 03055356670','http://18.223.124.237/server/profilepics/ba0e7cec0fb156d1e802467f1f870ea5.jpg',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-21 11:25:08
