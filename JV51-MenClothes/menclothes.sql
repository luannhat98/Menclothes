-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: menclothes
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'T-Shirt'),(2,'Jeans'),(3,'BlazersCoats'),(4,'HoodiesSweatshirt');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'red'),(2,'black'),(3,'navy');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `accountId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Hanh','quang ngai','999777897','luanlee1010@gmail.com',NULL),(2,'luan',NULL,'0921312232','luanlee1010@gmail.com',NULL),(3,'phuc',NULL,'0921789517','luanlee1010@gmail.com',NULL),(4,'user4',NULL,NULL,NULL,NULL),(5,'user5',NULL,NULL,NULL,NULL),(6,'user8',NULL,NULL,NULL,NULL),(7,'chin',NULL,'13123123123','luanlee1010@gmail.com',NULL),(8,'my hanh',NULL,'0912312332','luanlee1010@gmail.com',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageproduct`
--

DROP TABLE IF EXISTS `imageproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageproduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `represent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageproduct`
--

LOCK TABLES `imageproduct` WRITE;
/*!40000 ALTER TABLE `imageproduct` DISABLE KEYS */;
INSERT INTO `imageproduct` VALUES (1,'product1',1,1),(2,'product1a',1,0),(3,'product1b',1,0),(4,'product1c',1,0),(5,'product1d',1,0),(6,'product1e',1,0),(7,'product1f',1,0),(8,'product2',2,1),(9,'product2a',2,0),(10,'product2b',2,0),(11,'product2c',2,0),(12,'product2d',2,0),(13,'product3',3,1),(14,'product3a',3,0),(15,'product3b',3,0),(16,'product3d',3,0),(17,'product3e',3,0),(18,'product4',4,1),(19,'product4a',4,0),(20,'product4b',4,0),(21,'product4c',4,0),(22,'product4d',4,0),(23,'product5',5,1),(24,'product5a',5,0),(25,'product5c',5,0),(26,'product5b',5,0),(27,'product5d',5,0),(28,'product5e',5,0),(29,'product6',6,1),(30,'product6a',6,0),(31,'product6b',6,0),(32,'product6c',6,0),(33,'product6d',6,0),(34,'product6e',6,0),(35,'product6f',6,0),(36,'product7',7,1),(37,'product7a',7,0),(38,'product7b',7,0),(39,'product7c',7,0),(40,'product7d',7,0),(41,'product8',8,1),(42,'product8a',8,0),(43,'product8b',8,0),(44,'product8c',8,0),(45,'product8d',8,0),(46,'product10',10,1),(47,'product10a',10,0),(48,'product10b',10,0),(49,'product10c',10,0),(50,'product10d',10,0),(51,'product11',11,1),(52,'product11a',11,0),(53,'product11b',11,0),(54,'product11c',11,0),(55,'product11d',11,0),(56,'product12',12,1),(57,'product12a',12,0),(58,'product13',13,1),(59,'product13a',13,0),(60,'product13b',13,0),(61,'product13c',13,0),(62,'product13d',13,0),(63,'product14',14,1),(64,'product14a',14,0),(65,'product14b',14,0),(66,'product14c',14,0),(67,'product15',15,1),(68,'product15a',15,0),(69,'product15b',15,0),(70,'product16',16,1),(71,'product16a',16,0),(72,'product16b',16,0),(73,'product17',17,1),(74,'product17a',17,0),(75,'product17b',17,0),(76,'product17c',17,0);
/*!40000 ALTER TABLE `imageproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (9,2,7,90,2),(10,2,8,45,1),(11,2,9,45,1),(12,2,10,45,1),(13,2,11,135,3),(14,5,11,15,1),(15,3,11,50,1),(16,2,12,45,1),(17,2,13,45,1),(18,2,14,45,1),(19,2,15,135,3),(20,2,15,45,1),(21,2,16,135,3),(22,2,16,90,2),(23,6,16,10,1),(24,2,17,90,2),(25,2,18,45,1),(26,2,19,90,2),(27,2,21,45,1),(28,4,22,20,1),(29,2,23,45,1),(30,2,24,45,1),(31,3,25,50,1),(32,3,26,50,1),(33,3,27,50,1),(34,3,28,50,1),(35,7,29,30,1),(36,7,30,30,1),(37,6,31,10,1),(38,5,32,15,1),(39,2,33,45,1),(40,2,34,135,3),(41,6,35,30,3),(42,6,36,30,3),(43,3,37,150,3),(44,3,38,150,3),(45,6,39,20,2),(46,3,40,150,3),(47,3,41,50,1),(48,3,42,100,2),(49,6,43,30,3),(50,4,44,40,2),(51,2,45,45,1),(52,2,45,90,2),(53,2,46,90,2),(54,2,47,90,2),(55,2,48,90,2),(56,2,48,90,2),(57,2,49,45,1),(58,5,50,15,1),(59,1,51,40,1),(60,1,52,80,2),(61,1,53,80,2),(62,6,54,10,1),(63,3,55,150,3),(64,5,55,15,1),(65,17,55,400,2),(66,2,56,45,1),(67,5,56,15,1),(68,17,56,400,2),(69,2,57,45,1),(70,3,58,100,2),(71,4,58,20,1),(72,2,59,45,1);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderr`
--

DROP TABLE IF EXISTS `orderr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `shipmentId` int DEFAULT NULL,
  `promoId` int DEFAULT NULL,
  `paymentId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderr`
--

LOCK TABLES `orderr` WRITE;
/*!40000 ALTER TABLE `orderr` DISABLE KEYS */;
INSERT INTO `orderr` VALUES (7,2,'2023-03-05',90,7,NULL,1,3),(8,1,'2023-03-06',45,8,NULL,1,3),(9,1,'2023-03-10',45,9,NULL,1,3),(10,1,'2023-03-10',47.25,10,NULL,1,3),(11,1,'2023-03-10',200,11,NULL,1,1),(12,1,'2023-03-10',47.25,12,NULL,1,3),(13,2,'2023-03-13',45,13,NULL,2,2),(14,2,'2023-03-13',45,14,NULL,2,2),(15,2,'2023-03-13',180,15,NULL,2,2),(16,2,'2023-03-13',235,16,NULL,2,2),(17,2,'2023-03-13',90,17,NULL,2,2),(18,2,'2023-03-13',45,18,NULL,2,2),(19,2,'2023-03-13',90,19,NULL,2,2),(20,NULL,'2023-03-13',0,NULL,NULL,NULL,NULL),(21,2,'2023-03-13',47.25,20,NULL,1,1),(22,2,'2023-03-13',20,21,NULL,2,2),(23,2,'2023-03-20',47.25,22,NULL,1,1),(24,2,'2023-03-20',47.25,23,NULL,1,3),(25,2,'2023-03-21',52.5,24,NULL,1,1),(26,2,'2023-03-21',52.5,25,NULL,1,1),(27,2,'2023-03-21',52.5,26,NULL,1,3),(28,2,'2023-03-21',52.5,27,NULL,1,1),(29,1,'2023-03-21',31.5,28,NULL,1,1),(30,1,'2023-03-21',33.075,30,NULL,1,3),(31,1,'2023-03-21',11.025,32,NULL,1,1),(32,1,'2023-03-21',15.75,33,NULL,1,3),(33,1,'2023-03-22',47.25,34,NULL,1,3),(34,1,'2023-03-22',141.75,35,NULL,1,1),(35,2,'2023-03-22',31.5,36,NULL,1,1),(36,1,'2023-03-23',30,37,NULL,2,2),(37,1,'2023-03-23',150,38,NULL,2,2),(38,1,'2023-03-23',150,39,NULL,2,2),(39,1,'2023-03-23',20,40,NULL,2,2),(40,1,'2023-03-23',150,41,NULL,2,2),(41,1,'2023-03-23',52.5,42,NULL,1,1),(42,1,'2023-03-23',105,43,NULL,1,1),(43,1,'2023-03-23',31.5,44,NULL,1,1),(44,1,'2023-03-24',42,45,NULL,1,1),(45,1,'2023-03-24',94.5,46,NULL,1,1),(46,1,'2023-03-24',94.5,47,NULL,1,1),(47,1,'2023-03-24',94.5,48,NULL,1,1),(48,1,'2023-03-24',94.5,49,NULL,1,1),(49,1,'2023-03-24',47.25,50,NULL,1,1),(50,2,'2023-04-08',15.75,51,NULL,1,1),(51,7,'2023-04-08',42,52,NULL,1,3),(52,7,'2023-04-09',84,53,NULL,1,3),(53,1,'2023-04-10',84,54,NULL,1,1),(54,7,'2023-04-10',10.5,55,NULL,1,3),(55,8,'2023-04-12',420,56,NULL,1,1),(56,8,'2023-04-12',420,57,NULL,1,1),(57,1,'2023-04-12',45,58,NULL,2,2),(58,1,'2023-04-12',126,59,NULL,1,1),(59,1,'2023-04-12',47.25,60,NULL,1,1);
/*!40000 ALTER TABLE `orderr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethods`
--

DROP TABLE IF EXISTS `paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethods`
--

LOCK TABLES `paymentmethods` WRITE;
/*!40000 ALTER TABLE `paymentmethods` DISABLE KEYS */;
INSERT INTO `paymentmethods` VALUES (1,'direct payment'),(2,'online payment');
/*!40000 ALTER TABLE `paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `importPrice` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(9999) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 01316 - 77777',2,30,40,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',42),(2,'QUẦN JEAN NAM - STRAIGHT - TOTODAY - 01312',2,35,45,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',20),(3,'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 01308 - HGTWE22',2,40,50,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',25),(4,'ÁO LEN UNISEX - TOTODAY - ÁO LEN SỌC LỚN MÀU',1,15,20,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',17),(5,'ÁO LEN NAM - TOTODAY - ÁO LEN TRAFFIC - ACDH3434',1,10,15,'PRODUCT DESCRIPTION\nOversize Limita store men\'s and women\'s t-shirts, unisex style, with short sleeves,\nMade in Viet Nam\nMaterial: cotton spandex 65/35\nStyle: Men\'s and women\'s t-shirts with wide round neck, short-sleeve oversize men\'s and women\'s t-shirts\nTarget audience: oversize men\'s and women\'s t-shirts\n\n  - Oversize men\'s and women\'s t-shirts using 4-way stretch cotton 65/35 fabric. This is a fabric with characteristics of softness, high elasticity, good absorbency and is completely woven from natural cotton fibers. Cotton fabric is extremely skin-friendly.\n- Comfortable round neck men\'s and women\'s T-shirts\n- Wide form unisex t-shirt, easy to coordinate. You can combine it with jeans, skirts, ... combined with a pair of sneakers for you to confidently go down the street\n\n- SIZE TABLE OF PRODUCTS Limita store oversize men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, TNT-LAB blue heart shape of Limita store\n- Please see oversize t-shirts at Product Pictures or Size Conversion Table\n- Instructions for choosing the size of the short sleeve unisex t-shirt:\n+ Size M: 46-53kg\n+ Size L: 63-74kg\n+ Size XL: 75-84kg\n\n- INSTRUCTIONS FOR STORAGE OF T-shirts for men and women OVERSIZE Limita store\n- Turn men\'s and women\'s short-sleeved t-shirts inside out when washing, do not wash white unisex t-shirts with dark clothes.\n- Use neutral soap, do not use soap with strong detergents for oversized men\'s and women\'s t-shirts.\n- Do not use bleach, do not soak unisex t-shirts.\n- Hang horizontally, do not hang when the unisex t-shirt is wet, do not dry in direct sunlight.\n- Store Limita store wide form men\'s and women\'s T-shirts in a cool, dry place.\n\n\n- Products Oversize Limita store men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, blue heart shape, rich and fashionable. Guarantee 100% same as description.\n- Delivery of the correct size, 1 to 1 exchange error\n- Delivery of COD nationwide\n- Support to change size and change color within 7 days from the date of receipt of the goods, the exchange product must still have the original mac stamp and have not been used.\n- NOTE: When opening the product, please return to the video of the product opening process to be 100% guaranteed to exchange for a new product if the Limita store delivery is faulty.','2022-08-15',25),(6,'ÁO LEN NAM - TOTODAY - ÁO LEN NHIỀU MÀU',1,5,10,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',34),(7,'ÁO KHOÁC NAM - TOTODAY - IDEALS - 123123GDP',3,24,30,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',27),(8,'ÁO KHOÁC M1AKK12101FOSHT - A1231322 - DCDAAA',3,35,70,'PRODUCT DESCRIPTION\nOversize Limita store men\'s and women\'s t-shirts, unisex style, with short sleeves,\nMade in Viet Nam\nMaterial: cotton spandex 65/35\nStyle: Men\'s and women\'s t-shirts with wide round neck, short-sleeve oversize men\'s and women\'s t-shirts\nTarget audience: oversize men\'s and women\'s t-shirts\n\n  - Oversize men\'s and women\'s t-shirts using 4-way stretch cotton 65/35 fabric. This is a fabric with characteristics of softness, high elasticity, good absorbency and is completely woven from natural cotton fibers. Cotton fabric is extremely skin-friendly.\n- Comfortable round neck men\'s and women\'s T-shirts\n- Wide form unisex t-shirt, easy to coordinate. You can combine it with jeans, skirts, ... combined with a pair of sneakers for you to confidently go down the street\n\n- SIZE TABLE OF PRODUCTS Limita store oversize men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, TNT-LAB blue heart shape of Limita store\n- Please see oversize t-shirts at Product Pictures or Size Conversion Table\n- Instructions for choosing the size of the short sleeve unisex t-shirt:\n+ Size M: 46-53kg\n+ Size L: 63-74kg\n+ Size XL: 75-84kg\n\n- INSTRUCTIONS FOR STORAGE OF T-shirts for men and women OVERSIZE Limita store\n- Turn men\'s and women\'s short-sleeved t-shirts inside out when washing, do not wash white unisex t-shirts with dark clothes.\n- Use neutral soap, do not use soap with strong detergents for oversized men\'s and women\'s t-shirts.\n- Do not use bleach, do not soak unisex t-shirts.\n- Hang horizontally, do not hang when the unisex t-shirt is wet, do not dry in direct sunlight.\n- Store Limita store wide form men\'s and women\'s T-shirts in a cool, dry place.\n\n\n- Products Oversize Limita store men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, blue heart shape, rich and fashionable. Guarantee 100% same as description.\n- Delivery of the correct size, 1 to 1 exchange error\n- Delivery of COD nationwide\n- Support to change size and change color within 7 days from the date of receipt of the goods, the exchange product must still have the original mac stamp and have not been used.\n- NOTE: When opening the product, please return to the video of the product opening process to be 100% guaranteed to exchange for a new product if the Limita store delivery is faulty.','2022-08-15',34),(9,'ÁO SƠ MI SLIMFIT PHỐI HAI SỌC SM127 MÀU BE',1,45,80,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',32),(10,'ÁO SƠ MI SLIMFIT PHỐI HAI SỌC SM127 MÀU BE',1,45,56,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',31),(11,'ÁO HOODIE BELIEVE AK012 MÀU ĐEN - AABC7777',4,45,56,'PRODUCT DESCRIPTION\nOversize Limita store men\'s and women\'s t-shirts, unisex style, with short sleeves,\nMade in Viet Nam\nMaterial: cotton spandex 65/35\nStyle: Men\'s and women\'s t-shirts with wide round neck, short-sleeve oversize men\'s and women\'s t-shirts\nTarget audience: oversize men\'s and women\'s t-shirts\n\n  - Oversize men\'s and women\'s t-shirts using 4-way stretch cotton 65/35 fabric. This is a fabric with characteristics of softness, high elasticity, good absorbency and is completely woven from natural cotton fibers. Cotton fabric is extremely skin-friendly.\n- Comfortable round neck men\'s and women\'s T-shirts\n- Wide form unisex t-shirt, easy to coordinate. You can combine it with jeans, skirts, ... combined with a pair of sneakers for you to confidently go down the street\n\n- SIZE TABLE OF PRODUCTS Limita store oversize men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, TNT-LAB blue heart shape of Limita store\n- Please see oversize t-shirts at Product Pictures or Size Conversion Table\n- Instructions for choosing the size of the short sleeve unisex t-shirt:\n+ Size M: 46-53kg\n+ Size L: 63-74kg\n+ Size XL: 75-84kg\n\n- INSTRUCTIONS FOR STORAGE OF T-shirts for men and women OVERSIZE Limita store\n- Turn men\'s and women\'s short-sleeved t-shirts inside out when washing, do not wash white unisex t-shirts with dark clothes.\n- Use neutral soap, do not use soap with strong detergents for oversized men\'s and women\'s t-shirts.\n- Do not use bleach, do not soak unisex t-shirts.\n- Hang horizontally, do not hang when the unisex t-shirt is wet, do not dry in direct sunlight.\n- Store Limita store wide form men\'s and women\'s T-shirts in a cool, dry place.\n\n\n- Products Oversize Limita store men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, blue heart shape, rich and fashionable. Guarantee 100% same as description.\n- Delivery of the correct size, 1 to 1 exchange error\n- Delivery of COD nationwide\n- Support to change size and change color within 7 days from the date of receipt of the goods, the exchange product must still have the original mac stamp and have not been used.\n- NOTE: When opening the product, please return to the video of the product opening process to be 100% guaranteed to exchange for a new product if the Limita store delivery is faulty.','2022-08-15',38),(12,'ÁO SWEATSHIRT PHỐI SỌC XÁM MUỐI TIÊU AT811',4,34,90,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',32),(13,'ÁO POLO REGULAR PHỐI CỔ PO099 MÀU ĐEN - DDHHGG',1,34,100,'PRODUCT DESCRIPTION\nOversize Limita store men\'s and women\'s t-shirts, unisex style, with short sleeves,\nMade in Viet Nam\nMaterial: cotton spandex 65/35\nStyle: Men\'s and women\'s t-shirts with wide round neck, short-sleeve oversize men\'s and women\'s t-shirts\nTarget audience: oversize men\'s and women\'s t-shirts\n\n  - Oversize men\'s and women\'s t-shirts using 4-way stretch cotton 65/35 fabric. This is a fabric with characteristics of softness, high elasticity, good absorbency and is completely woven from natural cotton fibers. Cotton fabric is extremely skin-friendly.\n- Comfortable round neck men\'s and women\'s T-shirts\n- Wide form unisex t-shirt, easy to coordinate. You can combine it with jeans, skirts, ... combined with a pair of sneakers for you to confidently go down the street\n\n- SIZE TABLE OF PRODUCTS Limita store oversize men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, TNT-LAB blue heart shape of Limita store\n- Please see oversize t-shirts at Product Pictures or Size Conversion Table\n- Instructions for choosing the size of the short sleeve unisex t-shirt:\n+ Size M: 46-53kg\n+ Size L: 63-74kg\n+ Size XL: 75-84kg\n\n- INSTRUCTIONS FOR STORAGE OF T-shirts for men and women OVERSIZE Limita store\n- Turn men\'s and women\'s short-sleeved t-shirts inside out when washing, do not wash white unisex t-shirts with dark clothes.\n- Use neutral soap, do not use soap with strong detergents for oversized men\'s and women\'s t-shirts.\n- Do not use bleach, do not soak unisex t-shirts.\n- Hang horizontally, do not hang when the unisex t-shirt is wet, do not dry in direct sunlight.\n- Store Limita store wide form men\'s and women\'s T-shirts in a cool, dry place.\n\n\n- Products Oversize Limita store men\'s and women\'s t-shirts, unisex style, short sleeves, white round neck, blue heart shape, rich and fashionable. Guarantee 100% same as description.\n- Delivery of the correct size, 1 to 1 exchange error\n- Delivery of COD nationwide\n- Support to change size and change color within 7 days from the date of receipt of the goods, the exchange product must still have the original mac stamp and have not been used.\n- NOTE: When opening the product, please return to the video of the product opening process to be 100% guaranteed to exchange for a new product if the Limita store delivery is faulty.','2022-08-15',18),(14,'ÁO POLO IN SLIMFIT HÌNH LỤC GIÁC PO102 MÀU TRẮNG',1,34,100,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',25),(15,'ÁO VEST SLIMFIT TRƠN HAI NÚT AV036 MÀU ĐEN',3,100,200,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',25),(16,'ÁO VEST TRƠN REGULAR AV003 MÀU NÂU',3,125,150,'PRODUCT DESCRIPTION\n\nWith 5 years of experience specializing in Western and Western clothing designed exclusively for men, Shop is committed to selling prestige - quality products - Guaranteeing 5-star standard - Hope your experience in the shop is satisfactory!\n\nProduct information :\n\nMen\'s blazer jacket black Korean wide form, men\'s brown vest, young fashion style, white and gray\n\n- Men\'s blazer jacket uses cross-slide fabric to limit wrinkles, light stretch, sweat absorption, cool\n- Fashionable men\'s vest: Black, brown, cream white, gray\n- Men\'s blazer vest from Korean office fashion, modern trend\n- Suitable for all ages: Going to work, going out, coffee, dating are very polite and elegant.\n\nTuan Shop - Menswear Design COMMITMENT :\n\n- Item is the same as in the picture, there may be 5% difference in color due to lighting.\n- Refund immediately to the customer, if the product is not as described\n- If the customer does not like the product, the shop always supports changing the size and changing the model within 5 days\n- Fast nationwide delivery\n\nTerms of return warranty:\n\nfirst . Defective or damaged goods due to shipping or manufacturer\n2 . Item is new, full tags have not been used\n3 . The goods are not as ordered or the quantity is not enough as in the order, contact the shop immediately\n\nPROMOTION WHEN BUYING AT : - HAS\n- Click \"Follow\" the shop to receive the discount VOUCHER immediately.\n- Receive goods with 5 * evaluation with product photos and videos, text ???̂́? ???? - RED ??? right away to receive a GIFT!\n\nSize chart according to the standard form of the shop (there may be a difference of 1 2kg if the AE is fat and likes to wear loose, then take up 1 size)\n\n- Size M : Weight 45 - 55 kg Lower height > 1m68\n- Size L : Weight 56 - 60 kg Lower height > 1m72\n- Size XL: Weight 61 - 68 kg Lower height > 1m78\n- Size 2XL: Weight 69 - 75kg Height > 1m83\n- Size 3XL: Weight 76 - 1kg Height > 1m85\n- Size 4XL: Weight 82 - 89kg Height >1m87\n- Size 5XL: Weight 90-100kg Height >1m90','2022-08-15',32),(17,'ÁO VEST TRƠN REGULAR AV003 MÀU NÂU',3,130,200,'PRODUCT DESCRIPTION','2022-08-15',68);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productsizecolor`
--

DROP TABLE IF EXISTS `productsizecolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsizecolor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `colorId` int DEFAULT NULL,
  `sizeId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsizecolor`
--

LOCK TABLES `productsizecolor` WRITE;
/*!40000 ALTER TABLE `productsizecolor` DISABLE KEYS */;
INSERT INTO `productsizecolor` VALUES (1,1,1,1,3),(2,1,1,2,4),(3,1,1,3,5),(4,1,2,1,5),(5,1,2,2,5),(6,1,2,3,6),(7,1,3,1,5),(8,1,3,2,6),(9,1,3,3,3),(10,2,1,1,6),(11,2,1,2,2),(12,2,1,3,5),(13,2,2,1,0),(14,2,2,2,5),(15,2,2,3,2),(16,3,1,1,5),(17,3,1,2,4),(18,3,1,3,4),(19,3,2,1,2),(20,3,2,2,6),(21,3,2,3,4),(22,4,1,1,2),(23,4,1,2,0),(24,4,1,3,4),(25,4,2,1,2),(26,4,2,2,5),(27,4,2,3,4),(28,5,1,1,3),(29,5,1,2,3),(30,5,1,3,5),(31,5,2,1,4),(32,5,2,2,7),(33,5,2,3,3),(34,6,1,1,8),(35,6,1,2,4),(36,6,1,3,8),(37,6,2,1,5),(38,6,2,2,3),(39,6,2,3,6),(40,7,1,1,3),(41,7,1,2,7),(42,7,1,3,5),(43,7,2,1,6),(44,7,2,2,4),(45,7,2,3,2),(46,8,1,1,6),(47,8,1,2,7),(48,8,1,3,5),(49,8,2,1,6),(50,8,2,2,7),(51,8,2,3,3),(52,9,1,1,7),(53,9,1,2,9),(54,9,1,3,4),(55,9,2,1,5),(56,9,2,2,4),(57,9,2,3,3),(58,10,1,1,6),(59,10,1,2,4),(60,10,1,3,5),(61,10,2,1,5),(62,10,2,2,4),(63,10,2,3,7),(64,11,1,1,5),(65,11,1,2,6),(66,11,1,3,8),(67,11,2,1,5),(68,11,2,2,6),(69,11,2,3,8),(70,12,1,1,5),(71,12,1,2,7),(72,12,1,3,8),(73,12,2,1,5),(74,12,2,2,4),(75,12,2,3,3),(76,13,1,1,2),(77,13,1,2,4),(78,13,1,3,7),(79,13,2,1,2),(80,13,2,2,1),(81,13,2,3,2),(82,14,1,1,5),(83,14,1,2,2),(84,14,1,3,6),(85,14,2,1,2),(86,14,2,2,7),(87,14,2,3,3),(88,15,1,1,6),(89,15,1,2,3),(90,15,1,3,2),(91,15,2,1,7),(92,15,2,2,4),(93,15,2,3,3),(94,16,1,1,6),(95,16,1,2,3),(96,16,1,3,7),(97,16,2,1,4),(98,16,2,2,5),(99,16,2,3,7),(100,17,1,1,7),(101,17,1,2,9),(102,17,1,3,10),(103,17,2,1,12),(104,17,2,2,20),(105,17,2,3,10);
/*!40000 ALTER TABLE `productsizecolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `startDay` date DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `endDay` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (1,'supper promo','xds001','2023-02-28',0.1,'2023-02-25'),(2,'supper promo','xds002','2023-02-28',0.1,'2023-03-25'),(3,'supper promo','xds003','2023-02-28',0.1,'2023-03-25'),(4,'newbie','ads001','2023-02-28',0.1,'2023-03-25'),(5,'newbie','ads002','2023-02-28',0.1,'2023-03-25');
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `star` float DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,NULL,NULL,4,'nice',NULL),(2,1,5,5,'nice','2023-02-03 00:00:00'),(3,1,2,4,'nice Product, I love it',NULL),(4,1,5,1,'bad Product!!','2023-04-07 00:00:00'),(5,1,5,4,'Good Product <3 <3','2023-04-07 00:00:00'),(6,1,5,0,'I Love it','2023-04-07 02:03:49'),(7,1,5,3,'Good :)))','2023-04-07 02:49:06'),(8,7,1,4,'nice Product','2023-04-08 01:32:06'),(9,7,1,5,'I love it','2023-04-09 16:35:02'),(12,1,2,4,'good <3','2023-04-10 19:06:04'),(13,7,6,3,'niceeee','2023-04-10 19:11:10'),(14,1,2,2,'nicee','2023-04-12 02:33:29');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (7,'luan','quang nam','99999',0),(8,'luan','quang nam','12123',0),(9,'luan','quang nam','888888',0),(10,'luan','quang nam','99999',0),(11,'luan','quang nam','1231231',0),(12,'luan','quang nam','99999',0),(13,'luan','quang nam','99999',0),(14,'luan','quang nam','88888',0),(15,'luan','quang nam','9898989898989',0),(16,'luan','quang nam','898989',0),(17,'luan','quang nam','66666',0),(18,'luan','quang nam','99999',0),(19,'luan','quang nam','88888',0),(20,'luan','quang nam','1231',0),(21,'luan','quang nam','999999',0),(22,'luan','quang nam','9123123',0),(23,'luan','quang nam','9999999',0),(24,'luan','quang nam','9999999',0),(25,'luan','quang nam','99999',0),(26,'luan','quang nam','9999',0),(27,'hanh','quang nam','6666',0),(28,'phucc','da  nang','79890',0),(29,'loan','thanh pho hue mong mo','7878787',0),(30,'luan','quang nam','9999',0),(31,'phu','quang tri','0921789517',0),(32,'luan','quang nam','12312312',0),(33,'hoai','thanh pho hue mong mo','99999999',0),(34,'phu','862/113 Lê Đức Thọ, P15, quận Gò Vấp, tp HC','0921356434',0),(35,'Luan','862/113 Lê Đức Thọ, P15, quận Gò Vấp, tp HC','89898998',0),(36,'luan','quang nam','123123123',0),(37,'hoaithanh','da nang','7878772222',0),(38,'lggg','quang ninh','99999',0),(39,'truyen','ha noi','787878787',0),(40,'trang','phu tho','99999999',0),(41,'luanle','quanh binh','898988999',0),(42,'luannhat','862/113 Lê Đức Thọ, P15, quận Gò Vấp, tp HC','0999777888',0),(43,'leducnhatluan','Dien ban','0999777888',0),(44,'leducnhatluan','hang gian','0999777888',0),(45,'leducnhatluan','quang nam','0999777888',0),(46,'leducnhatluan','trung quoc','0999777888',0),(47,'leducnhatluan','khanh hoa','0999777888',0),(48,'leducnhatluan','binh dinh','0999777888',0),(49,'leducnhatluan','sao hoả','0999777888',0),(50,'leducnhatluan','luannn','0999777888',0),(51,'luan','quang nam','0921312232',0),(52,'userchin','quang nam','13123123123',0),(53,'Chinin','862/113 Lê Đức Thọ, P15, quận Gò Vấp, tp HC','13123123123',0),(54,'Hanh','quang ngai','0999777888',0),(55,'chin','862/113 Lê Đức Thọ, P15, quận Gò Vấp, tp HC','13123123123',0),(56,'my duyen','ha noi','0912312332',0),(57,'my hanh','tp hcm','0912312332',0),(58,'Hanh','quang ngai','0999777888',0),(59,'Hanh','quang ngai','0999777888',0),(60,'Hanh','quang ngai','0999777888',0);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'S'),(2,'M'),(3,'L');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'wait for confirmation'),(2,'being delivered'),(3,'delivered'),(4,'canceled');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enabled` int DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  `customer` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user2','{noop}luan123',1,NULL,NULL),(2,'user1','{noop}luan123',1,NULL,NULL),(3,'user3','{noop}Luan03101998',1,NULL,NULL),(4,'user4','{noop}Luan123@',1,NULL,NULL),(5,'user5','{noop}Luan03101998',1,NULL,NULL),(6,'user8','{noop}Luan0310@',1,NULL,NULL),(7,'user9','{noop}Luan19081998',1,NULL,NULL),(8,'user10','{noop}Luan12345678',1,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'ROLE_USER','user2'),(2,'ROLE_USER','user1'),(3,'ROLE_ADMIN','user3'),(4,'ROLE_USER','user4'),(5,'ROLE_USER','user5'),(6,'ROLE_USER','user8'),(7,'ROLE_USER','user9'),(8,'ROLE_USER','user10');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15  2:38:20
