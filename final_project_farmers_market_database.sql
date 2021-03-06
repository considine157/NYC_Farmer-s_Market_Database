CREATE DATABASE  IF NOT EXISTS `nyc_farmers_market` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nyc_farmers_market`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nyc_farmers_market
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clothing_donation`
--

DROP TABLE IF EXISTS `clothing_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothing_donation` (
  `clothing_don_id` int NOT NULL,
  `market_id` int NOT NULL,
  `clothing_type` varchar(100) NOT NULL,
  `textile_type` varchar(100) NOT NULL,
  PRIMARY KEY (`clothing_don_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `clothing_donation_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothing_donation`
--

LOCK TABLES `clothing_donation` WRITE;
/*!40000 ALTER TABLE `clothing_donation` DISABLE KEYS */;
INSERT INTO `clothing_donation` VALUES (2,1,'Outerwear','Cotton'),(8,7,'Jacket','Polyester'),(17,19,'Shirt','Cotton'),(18,16,'Pants','Cotton'),(20,20,'Pants','Cotton'),(26,14,'Coat','Cotton'),(27,12,'Sweatshirt','Wool'),(30,6,'Jeans','Cotton'),(31,18,'Pants','Cotton'),(32,10,'Shirt','Cotton'),(38,4,'Sweatshirt','Cotton'),(45,8,'Scarf','Cotton'),(47,11,'Jeans','Cotton'),(67,17,'Shirt','Cotton'),(74,13,'Sweater','Cotton'),(77,9,'Skullcap','Cotton'),(78,5,'Pants','Cotton'),(87,2,'Loungewear','Cotton'),(89,3,'Sweater','Wool'),(98,15,'Coat','Polyester');
/*!40000 ALTER TABLE `clothing_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diets`
--

DROP TABLE IF EXISTS `diets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diets` (
  `diet_id` int NOT NULL,
  `diet_name` varchar(100) NOT NULL,
  `produce_id` int NOT NULL,
  PRIMARY KEY (`diet_id`),
  KEY `produce_id` (`produce_id`),
  CONSTRAINT `diets_ibfk_1` FOREIGN KEY (`produce_id`) REFERENCES `produce` (`produce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diets`
--

LOCK TABLES `diets` WRITE;
/*!40000 ALTER TABLE `diets` DISABLE KEYS */;
INSERT INTO `diets` VALUES (1,'Vegeterian',1),(2,'Vegan',2),(3,'Mediterranean',3),(4,'Vegan',4),(5,'Vegeterian',5),(6,'Mediterranen',6),(7,'Low fat',7),(8,'Low Carbs',8),(9,'Low fat',9),(10,'Mediterranean',10),(11,'Vegeterian',11),(12,'Vegan',12),(13,'Low fat',13),(14,'Low Carbs',14),(15,'Vegan',15),(16,'Vegeterian',16),(17,'Low fat',17),(18,'Low carb',18),(19,'Low fat',19),(20,'Vegan',20);
/*!40000 ALTER TABLE `diets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `farm_at_market`
--

DROP TABLE IF EXISTS `farm_at_market`;
/*!50001 DROP VIEW IF EXISTS `farm_at_market`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `farm_at_market` AS SELECT 
 1 AS `farm_name`,
 1 AS `farm_address`,
 1 AS `market_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `farmer`
--

DROP TABLE IF EXISTS `farmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmer` (
  `farmer_id` int NOT NULL,
  `farm_name` varchar(100) NOT NULL,
  `farm_address` varchar(100) NOT NULL,
  `farm_phone_number` varchar(100) NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmer`
--

LOCK TABLES `farmer` WRITE;
/*!40000 ALTER TABLE `farmer` DISABLE KEYS */;
INSERT INTO `farmer` VALUES (101,'Evergreen Farm','678 Randolph Ave, Utica, NY, 13599','621-543-9876'),(102,'Pickleberry Farm','567 Gallant Ave, Monsey, NY, 10298','745-823-0098'),(103,'Evergreen Farm','123 Olive Ave, Nanuet, NY, 10954','987-333-4377'),(104,'Grants Farm','823 Bentwood, Otisville, NY, 10963','555-333-2345'),(105,'Solaris Farm','56 Mickwood, Orangeburg, NY, 10962','456-209-0011'),(106,'Abstract Farm','696 Woodland Streer, North Tonawanda, NY, 14120','834-524-2523'),(107,'Santiago Farm','8741 Old Peg Shop St, Woodside, NY, 11377','311-567-0987'),(108,'Bradley Farm','263 Golden Star St, Woodside, NY, 11377','777-834-0934'),(109,'Brooke Haven Farm','99 Helen St, Jamestown, NY, 14701','607-207-1783'),(110,'Crooked Creek Farm','8261 Lookout St, Massapequa, NY, 11220','212-200-3268'),(111,'Lost Cove Farm','7959 Bridge St, South Richmond Hill, NY, 11419','607-258-6474'),(112,'Riverlands Farm','73 Nut Swamp St, Buffalo, NY, 14224','607-284-4500'),(113,'Fox Run Farm','431 Shirley Ave, Elmont, NY, 11003','607-285-1985'),(114,'Black Acres Farm','16 Shipley St, Buffalo, NY, 14224','607-299-3229'),(115,'Almosta Farm','71 Lakewood St, Poughkeepsie, NY, 12603','607-298-4452'),(116,'Whispering Willow Farm','9179 San Pablo Road, Jamaica, NY, 11434','637-286-4650'),(117,'Batman Farm','40 Hanover, North Town, NY, 11224','631-277-2344'),(118,'Cedar Tree Farm','69 Arrowhead Ave, Freeport, NY, 11520','646-517-1819'),(119,'Wits End Farm','4 Vernon Ave, Brooklyn, NY, 11218','646-531-7806'),(120,'Falling Leaves Farm','234 Glover Ave, Brooklyn, NY, 11239','878-904-2233');
/*!40000 ALTER TABLE `farmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmers_market`
--

DROP TABLE IF EXISTS `farmers_market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmers_market` (
  `market_id` int NOT NULL,
  `market_name` varchar(100) NOT NULL,
  `market_address` varchar(200) NOT NULL,
  `reg_num` int NOT NULL,
  `manager_id` int NOT NULL,
  `days_open` varchar(100) NOT NULL,
  `hours` varchar(100) NOT NULL,
  `borough` varchar(100) NOT NULL,
  PRIMARY KEY (`market_id`),
  KEY `reg_num` (`reg_num`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `farmers_market_ibfk_1` FOREIGN KEY (`reg_num`) REFERENCES `registration_form` (`reg_num`),
  CONSTRAINT `farmers_market_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `market_manager` (`manager_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmers_market`
--

LOCK TABLES `farmers_market` WRITE;
/*!40000 ALTER TABLE `farmers_market` DISABLE KEYS */;
INSERT INTO `farmers_market` VALUES (1,'Wideleaf Bamboo','97 Forest Dale Center, Brooklyn, NY, 1123',89,588225,'Sunday and Monday','10am to 6pm','Brooklyn'),(2,'San Bernardino Beardtongue Market','1 Blue Bill Park Terrace, Manhattan, NY, 10089',20,2035770,'Sunday','9am to 6pm','Manhattan'),(3,'Island Lacefern Market','01 Lukken Hill, Queens, NY, 10955',27,7835243,'Saturday and Sunday','9am to 6pm','Queens'),(4,'Hairtip Clubmoss Market','3 Drewry Junction, Staten Island, NY, 10987',79,1709153,'Sunday','9am to 6pm','Staten Island'),(5,'Pina Cortadora Market','863 Scoville Terrace, Bronx, NY, 19870',95,3706394,'Saturday and Sunday','9am to 6pm','Bronx'),(6,'Gongylia Lichen Market','3529 Superior Drive Bronx, NY, 19923',15,4546779,'Sunday','9am to 6pm','Bronx'),(7,'Naranjilla Market','54774 Anhalt Point, Brooklyn, NY, 11245',81,4816164,'Monday','9am to 6pm','Brooklyn'),(8,'Plantainleaf Sedge Market','68644 Helena Court, Brooklyn, NY, 11567',85,8024820,'Tuesday and Saturday','9am to 6pm','Brooklyn'),(9,'Canyon Sage Market','5 Stone Corner Lane, Staten Island, NY, 11907',88,8849424,'Saturday','9am to 6pm','Staten Island'),(10,'Bandanna Of The Everglades Market','923 Muir Trail,Queens, NY, 19028',80,659240,'Sunday','10am to 5pm','Queens'),(11,'Bigflower Pawpaw Market','147 Hauk Place, Brooklyn, NY, 10456',96,7983567,'Monday','9am to 4pm','Brooklyn'),(12,'Downy Prairie Clover Market','16601 Northridge Trail, Queens, NY, 19034',10,5085300,'Friday','9am to 5pm','Queens'),(13,'Texas Signalgrass Market','03 Londonderry Junction, Manhattan, New York, 10098',60,2810949,'Sunday','9am to 6pm','Manhattan'),(14,'Libertia Market','912 Garrison Center, Manhattan, NY, 11984',11,1643731,'Saturday and Sunday','9am to 6pm','Manhattan'),(15,'Holacantha Market','7826 Shopko Drive, Brooklyn, NY, 19043',38,4170598,'Saturday','9am to 5pm','Brooklyn'),(16,'Tansymustard Market','00353 Pleasure Center, Manhattan, NY, 10034',70,3763608,'Sunday and Monday','9am to 5pm','Manhattan'),(17,'Hartz\'s Bluegrass Market','6573 Ridge Oak Plaza, Manhattan,NY, 10024',97,3367985,'Sunday','9am to 5pm','Manhattan'),(18,'Donner Lake Lupine Market','93485 Scott Plaza, Queens, NY, 10934',58,6936556,'Sunday','9am to 5pm','Queens'),(19,'Peach Palm Market','07 Dakota Trail, Brookyn, NY, 10089',49,8812045,'Sunday','9am to 5pm','Brooklyn'),(20,'Merry Times Market','2345 Montrose Ave, Brooklyn, NY, 11239',99,9998756,'Sunday','9am to 6pm','Brooklyn');
/*!40000 ALTER TABLE `farmers_market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_event`
--

DROP TABLE IF EXISTS `market_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market_event` (
  `event_id` int NOT NULL,
  `market_id` int NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `market_event_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_event`
--

LOCK TABLES `market_event` WRITE;
/*!40000 ALTER TABLE `market_event` DISABLE KEYS */;
INSERT INTO `market_event` VALUES (1,1,'Produce Class','Class','2020-09-08','04:00:21'),(2,2,'Learn About Agriculture','Workshop','2020-05-15','04:26:21'),(3,3,'Kids Learn Produce','Class','2020-02-23','01:52:20'),(4,4,'Learn About Food Day','Workshop','2020-07-25','13:16:57'),(5,5,'Kids Play Day','Class','2020-06-22','16:16:12'),(6,6,'Fun Day for Parents and Kids','Workshop','2020-09-17','11:14:26'),(7,7,'Recipe Class','Class','2020-07-11','13:43:51'),(8,8,'Movie Day','Workshop','2020-06-16','17:18:49'),(9,9,'Food Discussion','Workshop','2020-01-03','23:18:00'),(10,10,'Sustainability','Workshop','2020-03-29','04:29:00'),(11,11,'Learn about Sustainability','Class','2020-09-25','06:46:22'),(12,12,'Food and Produce Discussion','Workshop','2020-05-14','06:16:19'),(13,13,'Eat Healthy','Class','2019-12-18','04:19:12'),(14,14,'Food and Your Body','Workshop','2019-12-25','05:11:58'),(15,15,'Food Loss','Workshop','2020-05-19','03:04:08'),(16,16,'Eating Right Today','Workshop','2020-05-18','04:37:33'),(17,17,'Food Days','Class','2020-08-25','16:23:56'),(18,18,'Family Dinner Done Right','Workshop','2020-01-27','23:44:10'),(19,19,'Eat The Best','Workshop','2020-10-06','08:38:26'),(55,1,'food for kids','Workshop','2020-11-28','12:30:00'),(209,20,'Kids Learn Food','Workshop','2020-12-15','12:30:00');
/*!40000 ALTER TABLE `market_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `market_information`
--

DROP TABLE IF EXISTS `market_information`;
/*!50001 DROP VIEW IF EXISTS `market_information`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `market_information` AS SELECT 
 1 AS `market_name`,
 1 AS `market_address`,
 1 AS `produce_type`,
 1 AS `hours`,
 1 AS `days_open`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `market_location`
--

DROP TABLE IF EXISTS `market_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market_location` (
  `location_id` int NOT NULL,
  `market_id` int NOT NULL,
  `location_space` varchar(100) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `market_location_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_location`
--

LOCK TABLES `market_location` WRITE;
/*!40000 ALTER TABLE `market_location` DISABLE KEYS */;
INSERT INTO `market_location` VALUES (2,19,'outdoors'),(6,8,'outdoors'),(8,3,'indoors'),(10,4,'outdoors'),(17,10,'outdoors'),(20,20,'outdoors'),(32,14,'outdoors'),(36,11,'outdoors'),(41,5,'outdoors'),(43,2,'outdoors'),(44,16,'outdoors'),(51,12,'outdoors'),(54,13,'indoors'),(65,1,'indoors'),(67,15,'outdoors'),(74,17,'outdoors'),(75,7,'indoors'),(79,9,'outdoors'),(80,6,'outdoors'),(84,18,'outdoors');
/*!40000 ALTER TABLE `market_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_manager`
--

DROP TABLE IF EXISTS `market_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market_manager` (
  `manager_id` int NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `phone_num` varchar(100) NOT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_manager`
--

LOCK TABLES `market_manager` WRITE;
/*!40000 ALTER TABLE `market_manager` DISABLE KEYS */;
INSERT INTO `market_manager` VALUES (411791,'Alvira','McIleen','295-943-2093'),(588225,'Darius','Arthurs','113-921-3316'),(659240,'Bebe','McKaile','160-157-7174'),(845690,'Manuel','Diaz','945-934-0034'),(1643731,'Cariotta','Foxon','327-190-5192'),(1709153,'Elwyn','Bowden','650-542-1500'),(2035770,'Alonso','Beasant','569-481-2609'),(2810949,'Cinda','Brasse','721-524-3760'),(3367985,'Cher','Boggon','929-132-0434'),(3706394,'Imojean','Gentry','179-998-2146'),(3763608,'Benetta','Wagstaff','407-131-8256'),(4170598,'Bourke','Joynt','135-955-4914'),(4546779,'Henrietta','Tudbald','928-918-0201'),(4816164,'Arlan','Standell','303-474-9547'),(5085300,'Erl','Rasher','718-532-2908'),(6936556,'Terri','Ithell','326-620-2942'),(7835243,'Paulette','Moralee','799-249-1853'),(7983567,'Andriana','McCurlye','667-214-7828'),(8024820,'Loralyn','Larrosa','714-332-1508'),(8812045,'Floris','Tesmond','442-269-5569'),(8849424,'Sigfried','Greenman','881-662-5615'),(9534895,'Jose','Rodriguez','945-934-0034'),(9998756,'Jose','Rodriguez','458-222-9923');
/*!40000 ALTER TABLE `market_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `market_produce`
--

DROP TABLE IF EXISTS `market_produce`;
/*!50001 DROP VIEW IF EXISTS `market_produce`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `market_produce` AS SELECT 
 1 AS `market_name`,
 1 AS `produce_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `monetary_donation`
--

DROP TABLE IF EXISTS `monetary_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monetary_donation` (
  `money_don_id` int NOT NULL,
  `market_id` int NOT NULL,
  `currency_type` varchar(100) NOT NULL,
  `currency_amount` decimal(5,2) NOT NULL,
  `donator_name` varchar(100) NOT NULL,
  PRIMARY KEY (`money_don_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `monetary_donation_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monetary_donation`
--

LOCK TABLES `monetary_donation` WRITE;
/*!40000 ALTER TABLE `monetary_donation` DISABLE KEYS */;
INSERT INTO `monetary_donation` VALUES (1,1,'cash',1.09,'Shandra Towsie'),(5,2,'cash',8.50,'Elvera Whilder'),(18,14,'cash',4.90,'Helli Fidgin'),(20,20,'credit',10.50,'Jackson Pollack'),(21,9,'cash',9.68,'Vasily Albone'),(28,8,'cash',5.76,'Randy Firidolfi'),(32,4,'cash',4.62,'Dolorita Cossor'),(35,18,'cash',0.60,'Pavel Swaine'),(43,15,'cash',7.01,'Tammie Medlar'),(48,16,'cash',9.42,'Barron Rose'),(54,13,'cash',3.33,'Wenda Ferrers'),(57,5,'cash',2.05,'Uri Gilchrist'),(61,19,'cash',6.90,'Ottilie Wolfers'),(62,6,'cash',2.39,'Diandra Wastie'),(68,10,'cash',3.14,'Julie Westall'),(71,3,'check',9.73,'Roman Chrystie'),(74,12,'cash',3.33,'Anatola Abrey'),(80,11,'cash',6.81,'Jennilee Mackness'),(89,17,'cash',9.69,'Darsie McGlue'),(99,7,'cash',5.69,'Blinnie Cometson');
/*!40000 ALTER TABLE `monetary_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutrition_programs`
--

DROP TABLE IF EXISTS `nutrition_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutrition_programs` (
  `program_id` int NOT NULL,
  `market_id` int NOT NULL,
  `program_type` varchar(100) NOT NULL,
  PRIMARY KEY (`program_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `nutrition_programs_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrition_programs`
--

LOCK TABLES `nutrition_programs` WRITE;
/*!40000 ALTER TABLE `nutrition_programs` DISABLE KEYS */;
INSERT INTO `nutrition_programs` VALUES (6,8,'Community Food Projects Competitive Grant Program'),(9,7,'Community Food Projects Competitive Grant Program'),(17,5,'Community Food Projects Competitive Grant Program'),(20,20,'NYC Affordable Nutrition Program'),(24,15,'Community Food Projects Competitive Grant Program'),(25,11,'Community Food Projects Competitive Grant Program'),(28,3,'Agriculture and Food Research Initiative'),(33,10,'Community Food Projects Competitive Grant Program'),(38,6,'Regional Nutrition Education'),(52,12,'Community Food Projects Competitive Grant Program'),(53,1,'Community Food Projects Competitive Grant Program'),(55,18,'Community Food Projects Competitive Grant Program'),(61,14,'Community Food Projects Competitive Grant Program'),(71,9,'Community Food Projects Competitive Grant Program'),(78,16,'Community Food Projects Competitive Grant Program'),(79,13,'Community Food Projects Competitive Grant Program'),(88,19,'Community Food Projects Competitive Grant Program'),(89,4,'Community Food Projects Competitive Grant Program'),(90,17,'Community Food Projects Competitive Grant Program'),(96,2,'The Expanded Food and Nutrition Education Program');
/*!40000 ALTER TABLE `nutrition_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pantries`
--

DROP TABLE IF EXISTS `pantries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pantries` (
  `pantry_id` int NOT NULL,
  `market_id` int NOT NULL,
  `pantry_name` varchar(100) NOT NULL,
  `pantry_address` varchar(200) NOT NULL,
  `pantry_phone_num` varchar(25) NOT NULL,
  `pantry_contact` varchar(100) NOT NULL,
  PRIMARY KEY (`pantry_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `pantries_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantries`
--

LOCK TABLES `pantries` WRITE;
/*!40000 ALTER TABLE `pantries` DISABLE KEYS */;
INSERT INTO `pantries` VALUES (4,8,'Moore, Huels and Rutherford','81866 Dexter Alley','907-662-6406','Stefanie Idwal Evans'),(5,6,'Frami Inc','1667 Muir Street','804-464-7674','Aviva Tzarkov'),(7,7,'Hahn-Zulauf','11 Jenna Drive','710-712-2184','Rodd Pitrelli'),(9,14,'Grimes, Jacobs and Rau','7833 Jenifer Alley','959-968-1736','Anderea Lyste'),(10,3,'Gusikowski Group','817 Longview Alley','665-293-1714','Bevvy Allward'),(12,18,'Smitham, Ratke and Kreiger','60 Westport Pass','123-647-8688','Hansiain Elecum'),(19,17,'Wiegand, Block and Blanda','9107 Crowley Terrace','803-758-1471','Gilbert Popple'),(20,20,'Happy Life Pantry','340 Williams St, Brooklyn, NY, 11945','784-948-0033','Miguel Hermanez'),(22,4,'Gerhold-Beer','0940 Steensland Drive','699-123-8789','Wesley Maliphant'),(24,13,'Gleason LLC','37 Bonner Lane','597-185-7028','Guglielma Oneile'),(30,19,'Kris and Sons','72 Meadow Vale Drive','412-614-0982','Fernanda Joppich'),(31,10,'Mann-Kreiger','8664 Myrtle Lane','308-344-6968','Caril Edland'),(36,2,'Schneider-Strosin','9642 Starling Plaza','148-502-3394','Ashley Pechan'),(51,12,'Prohaska-Bashirian','205 Canary Court','425-126-7622','Kristos Matusson'),(67,15,'Hilll, Schroeder and Lemke','3422 Armistice Park','526-704-2087','Allison Dummer'),(73,16,'Deckow, McGlynn and O\'Kon','65351 Russell Junction','464-246-7005','Dannie Turrell'),(77,11,'Goyette-Gulgowski','3923 Michigan Junction','152-681-6085','Trip Berzins'),(82,1,'Dietrich-Crist','9 Quincy Plaza','363-946-0761','Nealson Rumbellow'),(86,5,'Harber LLC','81 Welch Terrace','364-894-6973','Deane Stansell'),(87,9,'Farrell Inc','8582 Dexter Pass','763-269-1747','Westleigh O\'Kielt');
/*!40000 ALTER TABLE `pantries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `currency_type` varchar(100) NOT NULL,
  `sale_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `sale_id` (`sale_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (8,'cash',58),(9,'cash',82),(16,'cash',36),(20,'cash',102),(21,'cash',53),(22,'cash',96),(23,'credit',88),(37,'cash',35),(43,'cash',16),(48,'cash',47),(56,'cash',99),(61,'cash',59),(69,'credit',11),(74,'cash',20),(81,'cash',52),(82,'cash',50),(84,'cash',44),(85,'cash',77),(97,'cash',79),(99,'cash',55);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produce`
--

DROP TABLE IF EXISTS `produce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produce` (
  `produce_id` int NOT NULL,
  `season_id` int NOT NULL,
  `produce_type` varchar(100) NOT NULL,
  PRIMARY KEY (`produce_id`),
  KEY `season_id` (`season_id`),
  CONSTRAINT `produce_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `season` (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produce`
--

LOCK TABLES `produce` WRITE;
/*!40000 ALTER TABLE `produce` DISABLE KEYS */;
INSERT INTO `produce` VALUES (1,1,'Scotch - Queen Anne'),(2,2,'Cabbage - Red'),(3,3,'Bread - Triangle White'),(4,4,'Kellogs Raisan Bran Bars'),(5,5,'Celery Root'),(6,6,'Cookies - Englishbay Chochip'),(7,7,'Gin - Gilbeys London; Dry'),(8,8,'Beans - Green'),(9,9,'Corn Kernels - Frozen'),(10,10,'Pork - Back Ribs'),(11,11,'Olives'),(12,12,'Dried Cranberries'),(13,13,'Tumeric'),(14,14,'Bread - Pumpernickle; Rounds'),(15,15,'Calypso - Lemonade'),(16,16,'Bar Energy Chocchip'),(17,17,'Muffin Mix - Carrot'),(18,18,'Cheese - St. Andre'),(19,19,'Sauce - Hoisin'),(20,20,'Red Kidney Beans');
/*!40000 ALTER TABLE `produce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipe_id` int NOT NULL,
  `recipe_name` varchar(100) NOT NULL,
  `diet_id` int NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `diet_id` (`diet_id`),
  CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `diets` (`diet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Pan Fried Tilapia',1),(2,'Stuffed Cabbage',2),(3,'Caprese Zoodles',3),(4,'Taco Tomatoes',4),(5,'Skinny Alfredo',5),(6,'Blackened Tilapia',6),(7,'Zucchini Lattice Lasagna',7),(8,'Cauliflower Grilled Cheese',8),(9,'Burrito Zucchini Boats',9),(10,'Spinach Artichoke Stuffed Peppers',10),(11,'Eggplant Lasagna',11),(12,'Seared Scallops',12),(13,'Zucchini Manicotti',13),(14,'Zucchini Enchiladas',14),(15,'Bell Pepper Meatloaves',15),(16,'Vegan Pizza',16),(17,'Cauliflower Baked Ziti',17),(19,'Vegan Lasagna',19),(20,'Vegan Pizza',20);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_form`
--

DROP TABLE IF EXISTS `registration_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_form` (
  `reg_num` int NOT NULL,
  `farmer_id` int NOT NULL,
  PRIMARY KEY (`reg_num`),
  KEY `farmer_id` (`farmer_id`),
  CONSTRAINT `registration_form_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmer` (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_form`
--

LOCK TABLES `registration_form` WRITE;
/*!40000 ALTER TABLE `registration_form` DISABLE KEYS */;
INSERT INTO `registration_form` VALUES (49,101),(89,102),(20,103),(27,104),(79,105),(95,106),(15,107),(81,108),(85,109),(88,110),(80,111),(96,112),(10,113),(60,114),(11,115),(38,116),(70,117),(97,118),(58,119),(99,120);
/*!40000 ALTER TABLE `registration_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `sale_id` int NOT NULL,
  `market_id` int NOT NULL,
  `sale_amount` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (11,15,9.50),(16,4,1.33),(20,5,9.54),(35,7,5.46),(36,16,3.07),(44,18,10.94),(47,19,3.97),(50,14,4.60),(52,8,8.64),(53,12,0.55),(55,11,5.48),(58,1,3.59),(59,17,8.34),(77,6,7.43),(79,10,5.56),(82,9,2.48),(88,2,2.47),(96,3,1.14),(99,13,10.44),(102,20,20.50);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season` (
  `season_id` int NOT NULL,
  `season_name` varchar(25) DEFAULT NULL,
  `market_id` int NOT NULL,
  PRIMARY KEY (`season_id`),
  KEY `market_id` (`market_id`),
  CONSTRAINT `season_ibfk_1` FOREIGN KEY (`market_id`) REFERENCES `farmers_market` (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (1,'Fall',1),(2,'Spring',2),(3,'Summer',3),(4,'Winter',4),(5,'Fall',5),(6,'Spring',6),(7,'Summer',7),(8,'Winter',8),(9,'Fall',9),(10,'Spring',10),(11,'Summer',11),(12,'Winter',12),(13,'Fall',13),(14,'Spring',14),(15,'Summer',15),(16,'Winter',16),(17,'Fall',17),(18,'Spring',18),(19,'Summer',19),(20,'Fall',20);
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `farm_at_market`
--

/*!50001 DROP VIEW IF EXISTS `farm_at_market`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `farm_at_market` AS select `f`.`farm_name` AS `farm_name`,`f`.`farm_address` AS `farm_address`,`d`.`market_name` AS `market_name` from ((`farmer` `f` join `registration_form` `r` on((`f`.`farmer_id` = `r`.`farmer_id`))) join `farmers_market` `d` on((`r`.`reg_num` = `d`.`reg_num`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `market_information`
--

/*!50001 DROP VIEW IF EXISTS `market_information`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `market_information` AS select `e`.`market_name` AS `market_name`,`e`.`market_address` AS `market_address`,`d`.`produce_type` AS `produce_type`,`e`.`hours` AS `hours`,`e`.`days_open` AS `days_open` from ((`farmers_market` `e` join `season` `r` on((`e`.`market_id` = `r`.`market_id`))) join `produce` `d` on((`r`.`season_id` = `d`.`season_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `market_produce`
--

/*!50001 DROP VIEW IF EXISTS `market_produce`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `market_produce` AS select `e`.`market_name` AS `market_name`,`d`.`produce_type` AS `produce_type` from ((`farmers_market` `e` join `season` `r` on((`e`.`market_id` = `r`.`market_id`))) join `produce` `d` on((`r`.`season_id` = `d`.`season_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 13:42:06
