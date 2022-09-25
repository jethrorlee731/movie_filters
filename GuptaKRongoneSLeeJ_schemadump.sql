CREATE DATABASE  IF NOT EXISTS `entertainment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `entertainment`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: entertainment
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Omar Sy',0),(2,'Laurent Lafitte',0),(3,'Izia Higelin',0),(4,'Rebel Wilson',0),(5,'Zoe Chao',0),(6,'Sam Richardson',0),(7,'Taylor Swift',0),(8,'Max Schimmelpfennig',0),(9,'Lea van Acken',0),(10,'Tijan Marei',0),(11,'Viggo Mortensen',0),(12,'Lea Seydoux',0),(13,'Kristen Stewart',0),(14,'Sam Rockwell',0),(15,'Marc Maron',0),(16,'Awkwafina',0),(17,'Craig Robinson',0),(18,'Anthony Ramos',0),(19,'Richard Ayoade',0),(20,'Zazie Beetz',0),(21,'Alex Borstein',0),(22,'Lilly Singh',0),(23,'Michelle Yeoh',0),(24,'Stephanie Hsu',0),(25,'Ke Huy Quan',0),(26,'Jenny Slate',0),(27,'Harry Shum Jr.',0),(28,'James Hong',0),(29,'James Lee Curtis',0),(30,'Tom Cruise',0),(31,'Jennifer Connelly',0),(32,'Miles Teller',0),(33,'Nicolas Cage',0),(34,'Laurence Fishburne',0),(35,'Barry Pepper',0),(36,'Adam Goldberg',0),(37,'Leslie Bibb',0),(38,'Alec Baldwin',0),(39,'James Marsden',0),(40,'Eva Longoria',0),(41,'Jeff Goldblum',0),(42,'Ariana Greenblatt',0),(43,'Meryl Streep',0),(44,'Anne Hathaway',0),(45,'Adrian Grenier',0),(46,'AJ Bowen',0),(47,'Jocelin Donahue',0),(48,'Scott Poythress',0),(49,'Susan Burke',0),(50,'Chris Sullivan',0),(51,'Drew Van Acker',0),(52,'Alicia Silverstone',0),(53,'Stephen Moyer',0),(54,'Michael Ealy',0),(55,'Jerry Ferrara',0),(56,'Meagan Good',0),(57,'Regina Hall',0),(58,'Kevin Hart',0),(59,'Samara Weaving',0),(60,'Loren Gray',0),(61,'Jai Courtney',0),(62,'Jane Lynch',0),(63,'Ilai Swindells',0),(64,'Connie Nielsen',0),(65,'Hermione Corfield',0),(66,'Dougray Scott',0),(67,'Olwen Fouere',0),(68,'Ardalan Esmaili',0),(69,'Alice Isaaz',0),(70,'Kevin Janssens',0),(71,'Deborah Francois',0),(72,'Bruno Todeschini',0),(73,'Constance Dolle',0),(74,'Queen Latifah',0),(75,'Dennis Quaid',0),(76,'Christian Convery',0),(77,'Madalen Mills',0),(78,'Sam Trammell',0),(79,'Ryan Reynolds',0),(80,'Mark Ruffalo',0),(81,'Jennifer Garner',0),(82,'Mirai Shida',0),(83,'Natuski Hanae',0),(84,'Hiroaki Ogi',0),(85,'Leighton Meester',0),(86,'Christina Wolfe',0),(87,'Ziad Bakri',0),(88,'Joey King',0),(89,'Joel Courtney',0),(90,'Jacob Elordi',0),(91,'Benedict Cumberbatch',0),(92,'Kirsten Dunst',0),(93,'Jesse Plemons',0),(94,'Noomi Rapace',0),(95,'Jakob Oftebro',0),(96,'Erik Enge',0),(97,'Romain Duris',0),(98,'Emma Mackey',0),(99,'Pierre Deladonchamps',0),(100,'Armande Boulanger',0),(101,'Chris Pratt',0),(102,'Bryce Dallas Howard',0),(103,'Laura Dern',0),(104,'Sam Neill',0),(105,'Jeff Goldblum',0);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Louis Leterrier',0),(2,'Alex Hardcastle',0),(3,'Lana Wilson',0),(4,'Katharina Schode',0),(5,'Felix Fuchsstein',0),(6,'David Cronenburg',0),(7,'Pierre Perifel',0),(8,'Daniel Kwan',0),(9,'Daniel Scheinert',0),(10,'Joseph Kosinski',0),(11,'Jason Cabell',0),(12,'Tom McGrath',0),(13,'David Frankel',0),(14,'Josh Lobo',0),(15,'Drew Mylrea',0),(16,'Tim Story',0),(17,'Alexa Stadermann',0),(18,'Neasa Hardiman',0),(19,'David Perrault',0),(20,'Ray Giarratana',0),(21,'Shawn Levy',0),(22,'Vince Marcello',0),(23,'Junchi Sato',0),(24,'Tomotaka Sjibayama',0),(25,'Kim Farrant',0),(26,'Jane Campion',0),(27,'Adam Berg',0),(28,'Martin Bourboulon',0),(29,'Colin Trevorrow',0);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_name_id` varchar(36) NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`genre_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('Action',0),('Adventure',0),('Comedy',0),('Drama',0),('Fantasy',0),('Horror',0),('Romance',0),('Sci-Fi',0),('Thriller',0),('Western',0);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(36) NOT NULL,
  `year_released` int NOT NULL,
  `length` varchar(9) NOT NULL,
  `synopsis` mediumtext,
  `age_rating` varchar(20) DEFAULT NULL,
  `average_star_rating` float DEFAULT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'The Takedown',2022,'1:59:00','Ousmane and Francois are two cops with very different styles. The unlikely pair are reunited once again for a new investigation. What seemed to be a simple drug deal turns out to be a high scale criminal case wrapped in danger.',NULL,NULL,0),(2,'Senior Year',2022,'1:51:00','A high school cheerleader falls into a coma before her prom. Twenty years later, she awakens and wants to return to high school to reclaim her status and become prom queen.','R',NULL,0),(3,'Miss Americana',2020,'1:25:00','Pop singer Taylor Swift reveals intimate details of her life while showcasing backstage and onstage concert footage.',NULL,NULL,0),(4,'The Privilege',2022,'1:47:00','A wealthy teen and his friends attending an elite private school uncover a dark conspiracy while looking into a series of strange supernatural events.','R',NULL,0),(5,'Crimes of the Future',2022,'1:47:00','As the human species adapts to a synthetic environment, the body undergoes new transformations and mutations. Accompanied by his partner, celebrity performance artist Saul Tenser showcases the metamorphosis of his organs. Meanwhile, a mysterious group tries to use Sauls notoriety to shed light on the next phase of human evolution.','PG 13',NULL,0),(6,'The Bad Guys',2022,'1:40:00','After a lifetime of legendary heists, notorious criminals Mr. Wolf, Mr. Snake, Mr. Piranha, Mr. Shark and Ms. Tarantula are finally caught. To avoid a prison sentence, the animal outlaws must pull off their most challenging con yet  becoming model citizens. Under the tutelage of their mentor, Professor Marmalade, the dubious gang sets out to fool the world that theyre turning good.','PG',NULL,0),(7,'Everything Everywhere All At Once',2022,'2:19:00','When an interdimensional rupture unravels reality, an unlikely hero must channel her newfound powers to fight bizarre and bewildering dangers from the multiverse as the fate of the world hangs in the balance.','R',NULL,0),(8,'Top Gun: Maverick',2022,'2:11:00','After more than 30 years of service as one of the Navys top aviators, Pete Maverick Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. Training a detachment of graduates for a special assignment, Maverick must confront the ghosts of his past and his deepest fears, culminating in a mission that demands the ultimate sacrifice from those who choose to fly it.','PG 13',NULL,0),(9,'Running With the Devil',2019,'1:40:00','When a cocaine shipment is compromised, a drug cartels CEO, known as The Boss orders his most trusted henchman, The Cook, and his partner, another master drug trafficker known as The Man, on a dangerous journey to audit the companys supply chain.','R',NULL,0),(10,'The Boss Baby: Family Business',2021,'1:47:00','To stop a dastardly plot to turn the worlds babies into brats, itll take more than one Boss Baby! The entire Templeton family joins up for a wildly outrageous adventure!','PG',NULL,0),(11,'The Devil Wears Prada',2006,'1:50:00','Meryl Streep and Anne Hathaway star in this film about a college graduate who goes to work for the boss from hell at a fashion magazine.','PG 13',NULL,0),(12,'I Trapped the Devil',2019,'1:24:00','After trapping what he believes to be the devil, a man caught in a spiral of paranoia, trauma and evil unravels when his estranged family shows up for Christmas.',NULL,NULL,0),(13,'Last Survivors',2021,'1:39:00','A father and son, who have been living off grid for 20 years, encounter an outsider who threatens to destroy the utopia they have built.',NULL,NULL,0),(14,'Think Like A Man',2012,'2:02:00','When a group of friends find out their women have been using Steve Harveys book, Act Like A Lady, Think Like A Man, to manipulate them in relationships, they respond by using this knowledge to regain the upper hand.','PG 13',NULL,0),(15,'100% Wolf',2020,'1:36:00','Freddy Lupin cant wait to become a werewolf, just like his legendary father. But when the big day arrives, something goes awry and Freddy transforms into a ferocious poodle.','TVPG',NULL,0),(16,'Sea Fever',2019,'1:35:00','A solitary marine biology student, doing research on a fishing trawler, struggles to gain the trust of the close knit crew when they encounter an unfathomable creature that threatens their lives.',NULL,NULL,0),(17,'Savage State',2019,'2:01:00','American Civil War breaks out and a family of French colonists decides to go back to France. Edmond, Madeleine, and their three daughters have to cross the whole country to reach New York, led by the mysterious and dangerous mercenary, Victor.',NULL,NULL,0),(18,'The Tiger Rising',2022,'1:43:00','A 10 year old boy whos recently lost his mother discovers how to conquer his fear and pain through the power of his imagination, the help of a feisty new girl at school, a simple yet mysterious hotel maid, and a 300 pound tiger he finds in the woods.','PG',NULL,0),(19,'The Adam Project',2022,'1:46:00','After accidentally crash landing in 2022, time traveling fighter pilot Adam Reed teams up with his 12 year old self for a mission to save the future.','PG 13',NULL,0),(20,'The Kissing Booth',2018,'1:45:00','A high school student finds herself face to face with her long term crush when she signs up to run a kissing booth at the spring carnival.',NULL,NULL,0),(21,'A Whisker Away',2020,'1:44:00','The line between human and animal starts to blur after a girl transforms herself into a cat.',NULL,NULL,0),(22,'The Weekend Away',2022,'1:29:00','When her best friend vanishes during a girls trip to Croatia, a woman races to figure out what happened. However, each clue yields another unsettling deception.','TV 14',NULL,0),(23,'The Power of the Dog',2021,'2:06:00','A domineering rancher responds with mocking cruelty when his brother brings home a new wife and her son, until the unexpected comes to pass.','R',NULL,0),(24,'Black Crab',2022,'1:52:00','In a post apocalyptic world, six soldiers on a covert mission must transport a mysterious package across a frozen archipelago.','R',NULL,0),(25,'Eiffel',2021,'1:48:00','The government is asking Eiffel to design something spectacular for the 1889 Paris World Fair, but Eiffel simply wants to design the subway. ','R',NULL,0),(26,'Jurassic World Dominion',2022,'2:26:00','Four years after the destruction of Isla Nublar, dinosaurs now live and hunt alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with historys most fearsome creatures.','PG 13',NULL,0);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_character`
--

DROP TABLE IF EXISTS `movie_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_character` (
  `character_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_character`
--

LOCK TABLES `movie_character` WRITE;
/*!40000 ALTER TABLE `movie_character` DISABLE KEYS */;
INSERT INTO `movie_character` VALUES (1,'The Cook',0),(2,'The Man',0),(3,'The Boss',0),(4,'The Snitch',0),(5,'The Agent in Charge',0),(6,'Theodore Templeton',0),(7,'Tim Templeton ',0),(8,'Carol Templeton',0),(9,'Dr. Armstrong',0),(10,'Tabitha Templeton',0),(11,'Miranda Priestly',0),(12,'Andy Sachs',0),(13,'Nate',0),(14,'Matt',0),(15,'Sarah',0),(16,'Steve',0),(17,'Karen',0),(18,'The Man',0),(19,'Jake',0),(20,'Henrietta',0),(21,'Troy',0),(22,'Dominic',0),(23,'Jeremy Kern',0),(24,'Mya',0),(25,'Candace Hall',0),(26,'Cedric Ward',0),(27,'Batty',0),(28,'Twitchy',0),(29,'Flasheart ',0),(30,'The Commander',0),(31,'Freddy Lupin',0),(32,'Freya',0),(33,'Siobhan',0),(34,'Gerard',0),(35,'Ciara',0),(36,'Omid',0),(37,'Esther',0),(38,'Victor',0),(39,'Justine',0),(40,'Edmond',0),(41,'Madeleine',0),(42,'Willie May',0),(43,'Beauchamp',0),(44,'Rob Horton',0),(45,'Sistine Bailey',0),(46,'Robert Horton Sr.',0),(47,'Ousmane Diakite',0),(48,'Francois Monge',0),(49,'Alice Gautier',0),(50,'Stephanie Conway',0),(51,'Tiffany Blanchette-Balbo',0),(52,'Seth Novacelik',0),(53,'Taylor Swift',0),(54,'Finn Bergmann',0),(55,'Lena',0),(56,'Samira Shirvani',0),(57,'Saul Tenser',0),(58,'Caprice',0),(59,'Timlin',0),(60,'Mr. Wolf',0),(61,'Mr. Snake',0),(62,'Ms. Tarantula',0),(63,'Mr. Shark',0),(64,'Mr. Piranha',0),(65,'Professor Marmalade',0),(66,'Diane Foxington',0),(67,'Misty Luggins',0),(68,'Tiffany Fluffit',0),(69,'Evelyn Quan Wang',0),(70,'Joy Wang',0),(71,'Waymond Wang',0),(72,'Dog Mom',0),(73,'Chad',0),(74,'Gong Gong',0),(75,'Deirdre Beaubeirdre',0),(76,'Adam Reed',0),(77,'Louis Reed',0),(78,'Ellie Reed',0),(79,'Miyo Sasaki',0),(80,'Kento Hinode',0),(81,'Kusugi',0),(82,'Beth',0),(83,'Kate',0),(84,'Zain',0),(85,'Elle Evans',0),(86,'Lee Flynn',0),(87,'Noah Flynn',0),(88,'Phil Burbank',0),(89,'Rose Gordon',0),(90,'George Burbank',0),(91,'Caroline Edh',0),(92,'Nylund',0),(93,'Granvik',0),(94,'Capt. Pete Mitchell',0),(95,'Penny Benjamin',0),(96,'Lt. Bradley Bradshaw',0),(97,'Gustave Eiffel',0),(98,'Adrienne Bourges',0),(99,'Antoine de Restac',0),(100,'Claire Eiffel',0),(101,'Owen Grady',0),(102,'Claire Dearing',0),(103,'Ellie Sattler',0),(104,'Alan Grant',0),(105,'Ian Malcolm',0);
/*!40000 ALTER TABLE `movie_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_character_actor`
--

DROP TABLE IF EXISTS `movie_character_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_character_actor` (
  `movie_id` int NOT NULL,
  `character_id` int NOT NULL,
  `actor_id` int NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`,`character_id`,`actor_id`),
  KEY `movie_character_actor_character_id_fk` (`character_id`),
  KEY `movie_character_actor_actor_id_fk` (`actor_id`),
  CONSTRAINT `movie_character_actor_actor_id_fk` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `movie_character_actor_character_id_fk` FOREIGN KEY (`character_id`) REFERENCES `movie_character` (`character_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `movie_character_actor_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_character_actor`
--

LOCK TABLES `movie_character_actor` WRITE;
/*!40000 ALTER TABLE `movie_character_actor` DISABLE KEYS */;
INSERT INTO `movie_character_actor` VALUES (1,47,1,0),(1,48,2,0),(1,49,3,0),(2,50,4,0),(2,51,5,0),(2,52,6,0),(3,53,7,0),(4,54,8,0),(4,55,9,0),(4,56,10,0),(5,57,11,0),(5,58,12,0),(5,59,13,0),(6,60,14,0),(6,61,15,0),(6,62,16,0),(6,63,17,0),(6,64,18,0),(6,65,19,0),(6,66,20,0),(6,67,21,0),(6,68,22,0),(7,69,23,0),(7,70,24,0),(7,71,25,0),(7,72,26,0),(7,73,27,0),(7,74,28,0),(7,75,29,0),(8,94,30,0),(8,95,31,0),(8,96,32,0),(9,1,33,0),(9,2,34,0),(9,3,35,0),(9,4,36,0),(9,5,37,0),(10,6,38,0),(10,7,39,0),(10,8,40,0),(10,9,41,0),(10,10,42,0),(11,11,43,0),(11,12,44,0),(11,13,45,0),(12,14,46,0),(12,15,47,0),(12,16,48,0),(12,17,49,0),(12,18,50,0),(13,19,51,0),(13,20,52,0),(13,21,53,0),(14,22,54,0),(14,23,55,0),(14,24,56,0),(14,25,57,0),(14,26,58,0),(15,27,59,0),(15,28,60,0),(15,29,61,0),(15,30,62,0),(15,31,63,0),(16,32,64,0),(16,33,65,0),(16,34,66,0),(16,35,67,0),(16,36,68,0),(17,37,69,0),(17,38,70,0),(17,39,71,0),(17,40,72,0),(17,41,73,0),(18,42,74,0),(18,43,75,0),(18,44,76,0),(18,45,77,0),(18,46,78,0),(19,76,70,0),(19,77,80,0),(19,78,81,0),(20,85,88,0),(20,86,89,0),(20,87,90,0),(21,79,82,0),(21,80,83,0),(21,81,84,0),(22,82,85,0),(22,83,86,0),(22,84,87,0),(23,88,91,0),(23,89,92,0),(23,90,93,0),(24,91,94,0),(24,92,95,0),(24,93,96,0),(25,97,97,0),(25,98,98,0),(25,99,99,0),(25,100,100,0),(26,101,101,0),(26,102,102,0),(26,103,103,0),(26,104,104,0),(26,105,105,0);
/*!40000 ALTER TABLE `movie_character_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_director`
--

DROP TABLE IF EXISTS `movie_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_director` (
  `director_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`director_id`,`movie_id`),
  KEY `movie_director_movie_id_fk` (`movie_id`),
  CONSTRAINT `movie_director_director_id_fk` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `movie_director_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_director`
--

LOCK TABLES `movie_director` WRITE;
/*!40000 ALTER TABLE `movie_director` DISABLE KEYS */;
INSERT INTO `movie_director` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,4,0),(6,5,0),(7,6,0),(8,7,0),(9,7,0),(10,8,0),(11,9,0),(12,10,0),(13,11,0),(14,12,0),(15,13,0),(16,14,0),(17,15,0),(18,16,0),(19,17,0),(20,18,0),(21,19,0),(22,20,0),(23,21,0),(24,21,0),(25,22,0),(26,23,0),(27,24,0),(28,25,0),(29,26,0);
/*!40000 ALTER TABLE `movie_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genre` (
  `movie_id` int NOT NULL,
  `genre_name_id` varchar(36) NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_name_id`),
  KEY `movie_genre_genre_name_id_fk` (`genre_name_id`),
  CONSTRAINT `movie_genre_genre_name_id_fk` FOREIGN KEY (`genre_name_id`) REFERENCES `genre` (`genre_name_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `movie_genre_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,'Action',0),(1,'Comedy',0),(2,'Comedy',0),(3,'Drama',0),(4,'Drama',0),(4,'Horror',0),(4,'Thriller',0),(5,'Drama',0),(5,'Fantasy',0),(5,'Horror',0),(5,'Sci-fi',0),(5,'Thriller',0),(6,'Adventure',0),(6,'Comedy',0),(7,'Action',0),(7,'Adventure',0),(7,'Comedy',0),(7,'Fantasy',0),(7,'Sci-fi',0),(8,'Action',0),(8,'Adventure',0),(9,'Drama',0),(9,'Thriller',0),(10,'Comedy',0),(11,'Comedy',0),(11,'Drama',0),(12,'Horror',0),(13,'Sci-Fi',0),(13,'Thriller',0),(14,'Comedy',0),(14,'Drama',0),(15,'Comedy',0),(15,'Fantasy',0),(16,'Horror',0),(16,'Thriller',0),(17,'Adventure',0),(17,'Drama',0),(17,'Western',0),(18,'Adventure',0),(18,'Drama',0),(19,'Adventure',0),(19,'Sci-Fi',0),(20,'Romance',0),(21,'Fantasy',0),(21,'Romance',0),(22,'Thriller',0),(23,'Romance',0),(23,'Western',0),(24,'Action',0),(25,'Romance',0),(26,'Adventure',0);
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_movie_theatre`
--

DROP TABLE IF EXISTS `movie_movie_theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_movie_theatre` (
  `movie_id` int NOT NULL,
  `display_place_id` int NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`,`display_place_id`),
  KEY `movie_movie_theatre_display_place_id_fk` (`display_place_id`),
  CONSTRAINT `mmovie_movie_theatre_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movie_movie_theatre_display_place_id_fk` FOREIGN KEY (`display_place_id`) REFERENCES `movie_theatre` (`display_place_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_movie_theatre`
--

LOCK TABLES `movie_movie_theatre` WRITE;
/*!40000 ALTER TABLE `movie_movie_theatre` DISABLE KEYS */;
INSERT INTO `movie_movie_theatre` VALUES (5,4,0),(5,5,0),(5,7,0),(6,4,0),(7,4,0),(8,4,0),(8,5,0),(8,6,0),(8,7,0),(25,8,0),(25,9,0),(26,6,0),(26,7,0),(26,8,0),(26,9,0);
/*!40000 ALTER TABLE `movie_movie_theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_producer`
--

DROP TABLE IF EXISTS `movie_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_producer` (
  `producer_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`producer_id`,`movie_id`),
  KEY `movie_producer_movie_id_fk` (`movie_id`),
  CONSTRAINT `movie_producer_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `movie_producer_producer_id_fk` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`producer_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_producer`
--

LOCK TABLES `movie_producer` WRITE;
/*!40000 ALTER TABLE `movie_producer` DISABLE KEYS */;
INSERT INTO `movie_producer` VALUES (1,1,0),(2,1,0),(3,2,0),(4,2,0),(5,2,0),(6,2,0),(7,3,0),(8,3,0),(9,3,0),(10,4,0),(11,5,0),(12,6,0),(13,6,0),(14,7,0),(15,7,0),(16,7,0),(17,7,0),(18,7,0),(19,7,0),(20,8,0),(21,8,0),(22,8,0),(23,8,0),(23,19,0),(24,19,0),(25,19,0),(26,19,0),(27,19,0),(28,20,0),(29,20,0),(30,20,0),(31,20,0),(32,21,0),(33,22,0),(34,22,0),(35,22,0),(36,23,0),(37,23,0),(38,23,0),(39,23,0),(40,23,0),(41,24,0),(42,24,0),(43,25,0),(44,26,0),(45,26,0),(46,14,0),(47,15,0),(48,16,0),(49,16,0),(50,17,0),(51,17,0),(52,18,0),(53,9,0),(54,10,0),(55,11,0),(56,12,0),(57,12,0),(58,12,0),(59,13,0),(60,13,0),(61,13,0);
/*!40000 ALTER TABLE `movie_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_streaming_service`
--

DROP TABLE IF EXISTS `movie_streaming_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_streaming_service` (
  `movie_id` int NOT NULL,
  `display_place_id` int NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`,`display_place_id`),
  KEY `movie_streaming_service_display_place_id_fk` (`display_place_id`),
  CONSTRAINT `movie_streaming_service_display_place_id_fk` FOREIGN KEY (`display_place_id`) REFERENCES `streaming_service` (`display_place_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movie_streaming_service_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_streaming_service`
--

LOCK TABLES `movie_streaming_service` WRITE;
/*!40000 ALTER TABLE `movie_streaming_service` DISABLE KEYS */;
INSERT INTO `movie_streaming_service` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,0),(9,2,0),(9,3,0),(10,2,0),(10,3,0),(11,2,0),(11,3,0),(12,2,0),(12,3,0),(13,2,0),(13,3,0),(14,2,0),(14,3,0),(15,2,0),(15,3,0),(16,2,0),(16,3,0),(17,2,0),(17,3,0),(18,2,0),(18,3,0),(19,1,0),(20,1,0),(21,1,0),(22,1,0),(23,1,0),(24,1,0);
/*!40000 ALTER TABLE `movie_streaming_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_theatre`
--

DROP TABLE IF EXISTS `movie_theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_theatre` (
  `display_place_id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `street` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` char(2) NOT NULL,
  `zipcode` int NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`display_place_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_theatre`
--

LOCK TABLES `movie_theatre` WRITE;
/*!40000 ALTER TABLE `movie_theatre` DISABLE KEYS */;
INSERT INTO `movie_theatre` VALUES (4,'Regal Colonie Center & Rpx','131 Colonie Center','Albany','NY',12205,'Cinema'),(5,'Hollywood Drive-In Theatre','9720 NY-66','Averill Park','NY',12018,'Drive-In'),(6,'Showcase Cinemas Warwick, Quaker Lane','1200 Quaker Ln','Warwick','RI',2886,'Cinema'),(7,'Rustic Tri Drive-In','1195 Eddie Dowling Hwy','North Smithfield','RI',2896,'Drive-In'),(8,'AMC Braintree 10','121 Grandview Rd','Braintree','MA',2184,'Cinema'),(9,'Mendon Twin Drive-in','35 Milford St','Milford','MA',1756,'Drive-In');
/*!40000 ALTER TABLE `movie_theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_ticket`
--

DROP TABLE IF EXISTS `movie_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_ticket` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `display_place_id` int NOT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `movie_ticket_display_place_id_fk` (`display_place_id`),
  KEY `movie_ticket_movie_id_fk` (`movie_id`),
  CONSTRAINT `movie_ticket_display_place_id_fk` FOREIGN KEY (`display_place_id`) REFERENCES `movie_theatre` (`display_place_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `movie_ticket_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_ticket`
--

LOCK TABLES `movie_ticket` WRITE;
/*!40000 ALTER TABLE `movie_ticket` DISABLE KEYS */;
INSERT INTO `movie_ticket` VALUES (1,15,'2022-06-12','04:20:00',4,7),(2,15,'2022-06-12','07:30:00',4,7),(3,15,'2022-06-12','11:35:00',4,6),(4,15,'2022-06-12','14:45:00',4,6),(5,15,'2022-06-12','11:05:00',4,8),(6,15,'2022-06-12','12:20:00',4,8),(7,10,'2022-06-12','13:10:00',4,8),(8,15,'2022-06-12','14:10:00',4,8),(9,15,'2022-06-12','15:50:00',4,8),(10,15,'2022-06-12','16:40:00',4,8),(11,15,'2022-06-12','17:25:00',4,8),(12,15,'2022-06-12','18:15:00',4,8),(13,15,'2022-06-12','19:15:00',4,8),(14,15,'2022-06-12','20:15:00',4,8),(15,15,'2022-06-12','20:50:00',4,8),(16,15,'2022-06-12','18:10:00',4,5),(17,20,'2022-06-12','14:10:00',8,25),(18,20,'2022-06-12','15:50:00',8,25),(19,20,'2022-06-12','16:10:00',8,25),(20,18,'2022-06-12','17:25:00',9,25),(21,18,'2022-06-12','18:15:00',9,25),(22,18,'2022-06-12','19:15:00',9,25),(23,20,'2022-06-12','20:15:00',8,26),(24,20,'2022-06-12','20:45:00',8,26),(25,18,'2022-06-12','18:25:00',8,26),(26,18,'2022-06-12','20:15:00',9,26),(27,18,'2022-06-12','20:50:00',9,26),(28,12,'2022-06-20','15:50:00',6,8),(29,12,'2022-06-20','16:15:00',6,8),(30,14,'2022-06-20','18:15:00',6,8),(31,12,'2022-06-20','12:20:00',6,26),(32,12,'2022-06-20','13:10:00',6,26),(33,12,'2022-06-20','14:50:00',6,26),(34,30,'2022-06-19','20:30:00',7,8),(35,30,'2022-06-20','20:30:00',7,26),(36,20,'2022-06-12','17:25:00',5,8),(37,20,'2022-06-12','18:15:00',5,8),(38,20,'2022-06-12','19:15:00',5,8),(39,18,'2022-06-12','20:15:00',7,8),(40,18,'2022-06-12','20:50:00',7,8),(41,18,'2022-06-12','18:10:00',7,8),(42,20,'2022-06-12','14:10:00',5,5),(43,20,'2022-06-12','15:50:00',5,5),(44,20,'2022-06-12','16:10:00',5,5),(45,18,'2022-06-12','17:25:00',7,5),(46,18,'2022-06-12','18:15:00',7,5),(47,15,'2022-06-12','20:45:00',7,5);
/*!40000 ALTER TABLE `movie_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producer` (
  `producer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `production_company` varchar(36) DEFAULT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`producer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer`
--

LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
INSERT INTO `producer` VALUES (1,'Eric Altmayer','Mandarin et Compagnie',0),(2,'Nicolas Altmayer','Mandarin et Compagnie',0),(3,'Todd Garner','Paramount Pictures',0),(4,'Rebel Wilson','Paramount Pictures',0),(5,'Timothy M. Bourne','Paramount Pictures',0),(6,'Chris Bender','Paramount Pictures',0),(7,'Morgan Neville','Tremolo Productions',0),(8,'Caitrin Rogers','Tremolo Productions',0),(9,'Christine OMalley','Tremolo Productions',0),(10,'Markus Zimmer','Bavaria Fiction',0),(11,'Robert Lantos','Argonauts Productions S.A.',0),(12,'Damon Ross','DreamWorks Animation',0),(13,'Rebecca Huntley','DreamWorks Animation',0),(14,'Anthony Russo','A24',0),(15,'Joe Russo','A24',0),(16,'Mike Larocca','A24',0),(17,'Daniel Kwan','A24',0),(18,'Daniel Scheinert','A24',0),(19,'Jonathan Wang','A24',0),(20,'Jerry Bruckheimer','Skydance Media',0),(21,'Tom Cruise','Skydance Media',0),(22,'Christopher McQuarrie','Skydance Media',0),(23,'David Ellison','Skydance Media',0),(24,'Dana Goldberg','Skydance Media',0),(25,'Don Granger','Skydance Media',0),(26,'Shawn Levy','Skydance Media',0),(27,'Ryan Reynods','Skydance Media',0),(28,'Ed Glauser','Komixx Entertainment',0),(29,'Andrew Cole Bulgin','Komixx Entertainment',0),(30,'Vince Marcello','Komixx Entertainment',0),(31,'Michele Weisler','Komixx Entertainment',0),(32,'Studio Colorido','Studio Colorido',0),(33,'Erica Steinberg','42',0),(34,'Charlie Morrison','42',0),(35,'Ben Pugh','42',0),(36,'Emile Sherman','New Zealand Film Commission',0),(37,'Iain Canning','New Zealand Film Commission',0),(38,'Roger Frappier','New Zealand Film Commission',0),(39,'Jane Campion','New Zealand Film Commission',0),(40,'Tanya Seghatcian','New Zealand Film Commission',0),(41,'Malin Idevall','Indio Productions',0),(42,'Mattias Montero','Indio Productions',0),(43,'Vanessa van Zuylen','VVZ Production',0),(44,'Frank Marshall','Amblin Entertainment',0),(45,'Patrick Crowley',NULL,0),(46,'Glenn S Gainor',NULL,0),(47,'Hans Bourlon',NULL,0),(48,'Eddie Dick',NULL,0),(49,'Borje Hansson',NULL,0),(50,'Sylvain Corbeil',NULL,0),(51,'Fares Ladjimi',NULL,0),(52,'Deborah Giarratana',NULL,0),(53,'Yvan Gautheir',NULL,0),(54,'Jeff Hermann',NULL,0),(55,'Wendy Finerman',NULL,0),(56,'Josh Lobo',NULL,0),(57,'Spence Nicholson',NULL,0),(58,'Scott Weinberg',NULL,0),(59,'Akaash Yadav',NULL,0),(60,'Sunil Perkash',NULL,0),(61,'Michael Jefferson',NULL,0);
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `length` varchar(9) NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Opening Title (From The Netflix Film The Takedown)','0:01:20',0),(2,'Underground Battle','0:02:32',0),(3,'Ousman & Francois Theme','0:00:52',0),(4,'Welcome to Valergne','0:02:12',0),(5,'Crime Scene with Alice','0:02:50',0),(6,'Miss Marchal','0:01:25',0),(7,'Cherry Club','0:05:50',0),(8,'Fitness Club','0:01:23',0),(9,'Sons of Clovis','0:03:15',0),(10,'Walking Free','0:00:47',0),(11,'Karting Chase Groove','0:01:55',0),(12,'Tracking Captain Mercier','0:01:27',0),(13,'Brunner Rally','0:02:23',0),(14,'Drugged Army','0:02:08',0),(15,'Hummer Chase Groove','0:02:49',0),(16,'Bomb Countdown','0:03:18',0),(17,'End Credit Groove','0:02:56',0),(18,'Sk8er Boi','0:03:38',0),(19,'She\'s So High','0:08:05',0),(20,'Hot In Herre','0:14:36',0),(21,'Falling ','0:26:01',0),(22,'Candy','0:32:43',0),(23,'Lover (Remix) (ft. Shawn Mendes)','0:03:41',0),(24,'Blank Space','0:03:51',0),(25,'Wish You Were Here','0:04:35',0),(26,'Piano Relax','0:02:59',0),(27,'Delicate','0:03:52',0),(28,'You Need to Calm Down','0:02:51',0),(29,'Shake It Off','0:03:39',0),(30,'Somebody','0:18:00',0),(31,'Wenn ich ein Voglein war','1:10:00',0),(32,'Crimes of the Future','0:02:10',0),(33,'A Novel Organ','0:01:29',0),(34,'Caprice','0:02:08',0),(35,'Sark Lust','0:00:30',0),(36,'Body Is Reality','0:02:58',0),(37,'The Big Bad Wold','0:01:05',0),(38,'Meet The Bad Guys','0:03:39',0),(39,'Lets Bounce','0:03:08',0),(40,'Push Pop','0:03:28',0),(41,'Step 3','0:03:17',0),(42,'This Is A Life - Extended','0:03:35',0),(43,'Wang Family Portrait','0:01:47',0),(44,'Very Busy','0:05:08',0),(45,'Vvvery Busy','0:02:06',0),(46,'What Are You Thinking About?','0:02:02',0),(47,'Danger Zone - From Top Gun Original Soundtrack','0:03:36',0),(48,'Take My Breath Away - Love Theme from Top Gun','0:04:15',0),(49,'I Aint Worried','0:02:28',0),(50,'Hold My Hand','0:03:45',0),(51,'All My Heroes - Radio Edit','0:03:48',0),(52,'Foreplay/Long Time','0:07:47',0),(53,'The Adam Project','0:04:55',0),(54,'Hallway','0:00:38',0),(55,'Gimme Some Lovin','0:02:56',0),(56,'Time After Time','0:04:01',0),(57,'Shut Up and Dance','0:03:19',0),(58,'You + Me Together','0:03:30',0),(59,'Feeling Good','0:02:15',0),(60,'Welcome Home, Son','0:04:47',0),(61,'Help Me Run Away','0:04:47',0),(62,'Mugendai Nazo Ningen','0:01:45',0),(63,'Taro and Hinode','0:02:04',0),(64,'Delusional Wonderland','0:00:36',0),(65,'Boring Days','0:01:32',0),(66,'Bizzare Summer Festival','0:00:42',0),(67,'U Plavu Zoru','0:06:01',0),(68,'Thinking of You','0:02:34',0),(69,'All About You (feat. Foster The People)','0:03:36',0),(70,'Samo Jednom Se Ljubi','0:02:25',0),(71,'Samba de mon coeur qui bat','0:03:53',0),(72,'25 Years','0:02:17',0),(73,'Requiem For Phil','0:02:25',0),(74,'So Soft','0:03:03',0),(75,'Detuned Mechanical Piano','0:01:33',0),(76,'Prelude','0:01:42',0),(77,'Black Crab Theme','0:02:08',0),(78,'Welcome Home','0:03:18',0),(79,'The Base','0:02:53',0),(80,'The Staircase','0:01:17',0),(81,'On The Border','0:01:27',0),(82,'Jurassi-logos/Dinow this','0:02:30',0),(83,'A Dinosaur in the Ranching Business','0:03:07',0),(84,'Its Like Herding Parasaurolophous','0:02:45',0),(85,'Upsy-Maisie','0:01:41',0),(86,'Clonely You','0:02:36',0),(87,'The Campfire In Her Soul','0:01:44',0),(88,'Hay Of The Locusts','0:01:11',0),(89,'Derniere Danse','0:03:32',0),(90,'Bambola','0:03:34',0),(91,'House Of The Rising Sun','0:05:22',0),(92,'Some Say','0:03:56',0),(93,'Another Love','0:04:07',0),(94,'Battle Flag (Lo Fidelity Allstars Remix)','0:05:31',0),(95,'Take a Peek','0:01:29',0),(96,'Mi Cielo','0:00:40',0),(97,'Let It Flow','0:03:00',0),(98,'Let Me See It','0:03:52',0),(99,'Bedtime','0:00:57',0),(100,'Ted Comes Home','0:02:57',0),(101,'To Baby Corp','0:02:01',0),(102,'Crisis At Baby Corp','0:01:53',0),(103,'The Secret Formula','0:00:57',0),(104,'Suddenly I See','0:03:20',0),(105,'Suite from the Devil Wears Prada','0:06:24',0),(106,'How Come','0:04:31',0),(107,'Jump','0:03:57',0),(108,'Time Will Tell','0:04:24',0),(109,'I Trapped the Devil','0:02:57',0),(110,'Not Expecting Company','0:01:47',0),(111,'Whatever Hurts You the Most','0:03:17',0),(112,'A Brief Philosophy of the Abyss','0:02:36',0),(113,'Something Feels Wrong','0:01:36',0),(114,'Lullaby','0:03:00',0),(115,'Perfectly Out of Place','0:03:37',0),(116,'Heartless Kind of Love','0:03:30',0),(117,'Over It','0:03:57',0),(118,'Its a Mans Mans Mans World (Live In Tampa, FL, 1966)','0:02:47',0),(119,'Tonight (Best You Ever Had) [feat. Ludacris]','0:03:58',0),(120,'Need a Reason (feat. Future & Bei Maejor)','0:04:14',0),(121,'Won\'t Make a Fool Out of You','0:04:11',0),(122,'Baby Be Mine','0:04:15',0),(123,'100% WOLF','0:03:16',0),(124,'Get Going','0:02:20',0),(125,'Working Alone','0:01:08',0),(126,'Bioluminescent Phytoplankton','0:01:06',0),(127,'Siobhan Investigates','0:01:25',0),(128,'They Dont Like The Noise','0:00:43',0),(129,'Plaisir damour','0:02:42',0),(130,'Intutition','0:02:38',0),(131,'Trips','0:02:48',0),(132,'Heat Waves','0:03:55',0),(133,'Only One','0:02:17',0),(134,'Eye of the Tiger','0:04:04',0);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_soundtrack`
--

DROP TABLE IF EXISTS `song_soundtrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_soundtrack` (
  `song_id` int NOT NULL,
  `soundtrack_id` int NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`song_id`,`soundtrack_id`),
  KEY `song_soundtrack_soundtrack_id_fk` (`soundtrack_id`),
  CONSTRAINT `song_soundtrack_song_id_fk` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `song_soundtrack_soundtrack_id_fk` FOREIGN KEY (`soundtrack_id`) REFERENCES `soundtrack` (`soundtrack_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_soundtrack`
--

LOCK TABLES `song_soundtrack` WRITE;
/*!40000 ALTER TABLE `song_soundtrack` DISABLE KEYS */;
INSERT INTO `song_soundtrack` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,0),(5,1,0),(6,1,0),(7,1,0),(8,1,0),(9,1,0),(10,1,0),(11,1,0),(12,1,0),(13,1,0),(14,1,0),(15,1,0),(16,1,0),(17,1,0),(18,2,0),(19,2,0),(20,2,0),(21,2,0),(22,2,0),(23,3,0),(24,3,0),(25,3,0),(26,3,0),(27,3,0),(28,3,0),(29,3,0),(30,4,0),(31,4,0),(32,5,0),(33,5,0),(34,5,0),(35,5,0),(36,5,0),(37,6,0),(38,6,0),(39,6,0),(40,6,0),(41,6,0),(42,7,0),(43,7,0),(44,7,0),(45,7,0),(46,7,0),(47,8,0),(48,8,0),(49,8,0),(50,8,0),(51,8,0),(52,9,0),(53,9,0),(54,9,0),(55,9,0),(56,9,0),(57,10,0),(58,10,0),(59,10,0),(60,10,0),(61,10,0),(62,11,0),(63,11,0),(64,11,0),(65,11,0),(66,11,0),(67,12,0),(68,12,0),(69,12,0),(70,12,0),(71,12,0),(72,13,0),(73,13,0),(74,13,0),(75,13,0),(76,13,0),(77,14,0),(78,14,0),(79,14,0),(80,14,0),(81,14,0),(82,15,0),(83,15,0),(84,15,0),(85,15,0),(86,15,0),(87,15,0),(88,15,0),(89,16,0),(90,16,0),(91,16,0),(92,16,0),(93,16,0),(93,17,0),(94,17,0),(95,17,0),(96,17,0),(97,17,0),(98,17,0),(99,18,0),(100,18,0),(101,18,0),(102,18,0),(103,18,0),(104,19,0),(105,19,0),(106,19,0),(107,19,0),(108,19,0),(109,20,0),(110,20,0),(111,20,0),(112,20,0),(113,20,0),(114,21,0),(115,21,0),(116,21,0),(117,21,0),(118,22,0),(119,22,0),(120,22,0),(121,22,0),(122,22,0),(123,23,0),(124,24,0),(125,24,0),(126,24,0),(127,24,0),(128,24,0),(129,25,0),(130,26,0),(131,26,0),(132,26,0),(133,26,0),(134,26,0);
/*!40000 ALTER TABLE `song_soundtrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundtrack`
--

DROP TABLE IF EXISTS `soundtrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soundtrack` (
  `soundtrack_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `user_entered` tinyint(1) NOT NULL,
  PRIMARY KEY (`soundtrack_id`),
  KEY `soundtrack_movie_id_fk` (`movie_id`),
  CONSTRAINT `soundtrack_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundtrack`
--

LOCK TABLES `soundtrack` WRITE;
/*!40000 ALTER TABLE `soundtrack` DISABLE KEYS */;
INSERT INTO `soundtrack` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,19,0),(10,20,0),(11,21,0),(12,22,0),(13,23,0),(14,24,0),(15,25,0),(16,26,0),(17,9,0),(18,10,0),(19,11,0),(20,12,0),(21,13,0),(22,14,0),(23,15,0),(24,16,0),(25,17,0),(26,18,0);
/*!40000 ALTER TABLE `soundtrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streaming_service`
--

DROP TABLE IF EXISTS `streaming_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streaming_service` (
  `display_place_id` int NOT NULL,
  `name` varchar(36) NOT NULL,
  `url` varchar(100) NOT NULL,
  `monthly_price` double NOT NULL,
  PRIMARY KEY (`display_place_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streaming_service`
--

LOCK TABLES `streaming_service` WRITE;
/*!40000 ALTER TABLE `streaming_service` DISABLE KEYS */;
INSERT INTO `streaming_service` VALUES (1,'Netflix','https://www.netflix.com/browse',9.99),(2,'Hulu','https://www.hulu.com/hub/home',6.99),(3,'Prime Video','https://www.amazon.com/Amazon-Video/b?ie=UTF8&node=2858778011',8.99);
/*!40000 ALTER TABLE `streaming_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer`
--

DROP TABLE IF EXISTS `viewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewer` (
  `username` varchar(20) NOT NULL,
  `name` varchar(36) NOT NULL,
  `age` int DEFAULT NULL,
  `sex` enum('Male','Female','Non-binary','Unknown') DEFAULT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `viewer_chk_1` CHECK ((`age` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer`
--

LOCK TABLES `viewer` WRITE;
/*!40000 ALTER TABLE `viewer` DISABLE KEYS */;
INSERT INTO `viewer` VALUES ('a','test name',18,'Male'),('b','test name',60,'Female'),('c','test name',43,'Non-binary'),('d','test name',84,'Unknown'),('e','test name',1,'Male'),('f','test name',45,'Female'),('g','test name',9,'Non-binary'),('h','test name',57,'Unknown'),('i','test name',34,'Male'),('j','test name',234,'Female'),('k','test name',78,'Non-binary'),('l','test name',13,'Unknown'),('m','test name',22,'Male'),('n','test name',20,'Female'),('o','test name',80,'Non-binary'),('p','test name',77,'Unknown'),('q','test name',76,'Male'),('r','test name',58,'Female'),('s','test name',32,'Non-binary'),('t','test name',43,'Unknown'),('u','test name',10,'Male'),('v','test name',4,'Female'),('w','test name',38,'Non-binary'),('x','test name',77,'Unknown'),('y','test name',99,'Male'),('z','test name',36,'Female');
/*!40000 ALTER TABLE `viewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_movie_streaming_service`
--

DROP TABLE IF EXISTS `viewer_movie_streaming_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewer_movie_streaming_service` (
  `username` varchar(20) NOT NULL,
  `movie_id` int NOT NULL,
  `display_place_id` int NOT NULL,
  PRIMARY KEY (`username`,`movie_id`,`display_place_id`),
  KEY `viewer_movie_streaming_service_movie_id_fk` (`movie_id`),
  KEY `viewer_movie_streaming_service_display_place_id_fk` (`display_place_id`),
  CONSTRAINT `viewer_movie_streaming_service_display_place_id_fk` FOREIGN KEY (`display_place_id`) REFERENCES `streaming_service` (`display_place_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `viewer_movie_streaming_service_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `viewer_movie_streaming_service_viewer_id_fk` FOREIGN KEY (`username`) REFERENCES `viewer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_movie_streaming_service`
--

LOCK TABLES `viewer_movie_streaming_service` WRITE;
/*!40000 ALTER TABLE `viewer_movie_streaming_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_movie_streaming_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_movie_theatre`
--

DROP TABLE IF EXISTS `viewer_movie_theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewer_movie_theatre` (
  `username` varchar(20) NOT NULL,
  `movie_id` int NOT NULL,
  `display_place_id` int NOT NULL,
  PRIMARY KEY (`username`,`movie_id`,`display_place_id`),
  KEY `viewer_movie_theatre_movie_id_fk` (`movie_id`),
  KEY `viewer_movie_theatre_display_place_id_fk` (`display_place_id`),
  CONSTRAINT `viewer_movie_theatre_display_place_id_fk` FOREIGN KEY (`display_place_id`) REFERENCES `movie_theatre` (`display_place_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `viewer_movie_theatre_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `viewer_movie_theatre_viewer_id_fk` FOREIGN KEY (`username`) REFERENCES `viewer` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_movie_theatre`
--

LOCK TABLES `viewer_movie_theatre` WRITE;
/*!40000 ALTER TABLE `viewer_movie_theatre` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_movie_theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_rates_movie`
--

DROP TABLE IF EXISTS `viewer_rates_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewer_rates_movie` (
  `username` varchar(20) NOT NULL,
  `movie_id` int NOT NULL,
  `star_rating` int DEFAULT NULL,
  `review` mediumtext,
  PRIMARY KEY (`username`,`movie_id`),
  KEY `viewer_rates_movie_movie_id_fk` (`movie_id`),
  CONSTRAINT `viewer_rates_movie_movie_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `viewer_rates_movie_username_fk` FOREIGN KEY (`username`) REFERENCES `viewer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `viewer_rates_movie_chk_1` CHECK (((0 < `star_rating`) < 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_rates_movie`
--

LOCK TABLES `viewer_rates_movie` WRITE;
/*!40000 ALTER TABLE `viewer_rates_movie` DISABLE KEYS */;
INSERT INTO `viewer_rates_movie` VALUES ('a',1,5,'fantastic'),('a',2,1,'frustrated'),('a',3,5,'fantastic'),('a',4,3,'captivating'),('a',5,3,'captivating'),('b',2,4,'good'),('b',3,0,'annoying'),('b',4,4,'good'),('b',5,2,'bad'),('b',6,2,'bad'),('c',3,3,'captivating'),('c',4,5,'fantastic'),('c',5,3,'captivating'),('c',6,1,'frustrated'),('c',7,1,'frustrated'),('d',4,2,'bad'),('d',5,4,'good'),('d',6,2,'bad'),('d',7,0,'annoying'),('d',8,0,'annoying'),('e',5,1,'frustrated'),('e',6,3,'captivating'),('e',7,1,'frustrated'),('e',8,5,'fantastic'),('e',9,5,'fantastic'),('f',6,0,'annoying'),('f',7,2,'bad'),('f',8,0,'annoying'),('f',9,4,'good'),('f',10,4,'good'),('g',7,5,'fantastic'),('g',8,1,'frustrated'),('g',9,5,'fantastic'),('g',10,3,'captivating'),('g',11,3,'captivating'),('h',8,4,'good'),('h',9,0,'annoying'),('h',10,4,'good'),('h',11,2,'bad'),('h',12,2,'bad'),('i',9,3,'captivating'),('i',10,5,'fantastic'),('i',11,3,'captivating'),('i',12,1,'frustrated'),('i',13,1,'frustrated'),('j',10,2,'bad'),('j',11,4,'good'),('j',12,2,'bad'),('j',13,0,'annoying'),('j',14,0,'annoying'),('k',11,1,'frustrated'),('k',12,3,'captivating'),('k',13,1,'frustrated'),('k',14,5,'fantastic'),('k',15,5,'fantastic'),('l',12,0,'annoying'),('l',13,2,'bad'),('l',14,0,'annoying'),('l',15,4,'good'),('l',16,4,'good'),('m',13,5,'fantastic'),('m',14,1,'frustrated'),('m',15,5,'fantastic'),('m',16,3,'captivating'),('m',17,3,'captivating'),('n',14,4,'good'),('n',15,0,'annoying'),('n',16,4,'good'),('n',17,2,'bad'),('n',18,2,'bad'),('o',15,3,'captivating'),('o',16,5,'fantastic'),('o',17,3,'captivating'),('o',18,1,'frustrated'),('o',19,1,'frustrated'),('p',16,2,'bad'),('p',17,4,'good'),('p',18,2,'bad'),('p',19,0,'annoying'),('p',20,0,'annoying'),('q',17,1,'frustrated'),('q',18,3,'captivating'),('q',19,1,'frustrated'),('q',20,5,'fantastic'),('q',21,5,'fantastic'),('r',18,0,'annoying'),('r',19,2,'bad'),('r',20,0,'annoying'),('r',21,4,'good'),('r',22,4,'good'),('s',19,5,'fantastic'),('s',20,1,'frustrated'),('s',21,5,'fantastic'),('s',22,3,'captivating'),('s',23,3,'captivating'),('t',20,4,'good'),('t',21,0,'annoying'),('t',22,4,'good'),('t',23,2,'bad'),('t',24,2,'bad'),('u',21,3,'captivating'),('u',22,5,'fantastic'),('u',23,3,'captivating'),('u',24,1,'frustrated'),('u',25,1,'frustrated'),('v',22,2,'bad'),('v',23,4,'good'),('v',24,2,'bad'),('v',25,0,'annoying'),('v',26,0,'annoying'),('w',1,5,'fantastic'),('w',23,1,'frustrated'),('w',24,3,'captivating'),('w',25,1,'frustrated'),('w',26,5,'fantastic'),('x',1,4,'good'),('x',2,4,'good'),('x',24,0,'annoying'),('x',25,2,'bad'),('x',26,0,'annoying'),('y',1,5,'fantastic'),('y',2,3,'captivating'),('y',3,3,'captivating'),('y',25,5,'fantastic'),('y',26,1,'frustrated'),('z',1,0,'annoying'),('z',2,4,'good'),('z',3,2,'bad'),('z',4,2,'bad'),('z',26,4,'good');
/*!40000 ALTER TABLE `viewer_rates_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'entertainment'
--

--
-- Dumping routines for database 'entertainment'
--
/*!50003 DROP FUNCTION IF EXISTS `check_rating_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_rating_exists`(username_p VARCHAR(20), movie_id_p INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE rating_exists_count_var INT;
    SELECT COUNT(*) INTO rating_exists_count_var FROM viewer_rates_movie WHERE username = username_p AND movie_id = movie_id_p;    
    RETURN(rating_exists_count_var);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_viewer_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_viewer_exists`(username_p VARCHAR(20)) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE username_exists_count_var INT;
    SELECT COUNT(*) INTO username_exists_count_var FROM viewer WHERE username = username_p;    
    RETURN(username_exists_count_var);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_viewer_movie_ss_existence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_viewer_movie_ss_existence`(username_p VARCHAR(20), movie_id_p INT, display_place_id_p INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE viewer_movie_ss_exists_count_var INT;
    SELECT COUNT(*) INTO viewer_movie_ss_exists_count_var FROM viewer_movie_streaming_service WHERE username = username_p AND movie_id = movie_id_p AND display_place_id = display_place_id_p;    
    RETURN(viewer_movie_ss_exists_count_var);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_viewer_movie_theatre_existence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_viewer_movie_theatre_existence`(username_p VARCHAR(20), movie_id_p INT, display_place_id_p INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE viewer_movie_theatre_exists_count_var INT;
    SELECT COUNT(*) INTO viewer_movie_theatre_exists_count_var FROM viewer_movie_theatre WHERE username = username_p AND movie_id = movie_id_p AND display_place_id = display_place_id_p;    
    RETURN(viewer_movie_theatre_exists_count_var);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actor_stats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actor_stats`()
BEGIN 
	SELECT actor.name, COUNT(*) AS movies_played_in FROM actor NATURAL JOIN movie_character_actor 
    GROUP BY actor.name
    ORDER BY movies_played_in DESC
    LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_characters` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_characters`(IN movie_id_p INT, IN character_p VARCHAR(50), IN actor_p VARCHAR(50), IN entered_by_user BOOLEAN)
BEGIN
    DECLARE character_id_new INT;
    DECLARE actor_id_new INT;
	
	INSERT INTO movie_character (character_id, name, user_entered) VALUES (NULL, character_p, entered_by_user);
	SELECT MAX(mc.character_id) INTO character_id_new FROM movie_character AS mc;
	INSERT INTO actor (actor_id, name, user_entered) VALUES (NULL, actor_p, entered_by_user);
	SELECT MAX(a.actor_id) INTO actor_id_new FROM actor AS a;
	INSERT INTO movie_character_actor (movie_id, character_id, actor_id, user_entered) VALUES
		(movie_id_p, character_id_new, actor_id_new, entered_by_user);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_song` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_song`(IN movie_id_p INT, IN song_p VARCHAR(50), IN length_p VARCHAR(9), IN entered_by_user BOOLEAN)
BEGIN
	DECLARE soundtrack_id_new INT;
	DECLARE song_id_new INT;

	INSERT INTO soundtrack (soundtrack_id, movie_id, user_entered) VALUES (NULL, movie_id_p, entered_by_user);
	SELECT MAX(soundtrack_id) INTO soundtrack_id_new FROM soundtrack;
	INSERT INTO song (song_id, title, length, user_entered) VALUES (NULL, song_p, length_p, entered_by_user);
	SELECT MAX(song_id) INTO song_id_new FROM song;
	INSERT INTO song_soundtrack (song_id, soundtrack_id, user_entered) VALUES (song_id_new, soundtrack_id_new, entered_by_user);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `average_stars` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `average_stars`(IN movie_id_p INT)
BEGIN 
	DECLARE average_star_rating FLOAT;

	SELECT AVG(star_rating) INTO average_star_rating FROM viewer_rates_movie WHERE movie_id = movie_id_p;
	
    UPDATE movie 
    SET average_star_rating = average_star_rating
    WHERE movie_id = movie_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_average_age` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_average_age`(IN movie_id_p INT)
BEGIN
	SELECT AVG(age) FROM viewer_rates_movie INNER JOIN viewer 
		USING (username)
			WHERE movie_id = movie_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classify_movie_with_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `classify_movie_with_genre`(IN genre_p VARCHAR(36), IN movie_id_p INT, IN entered_by_user BOOLEAN)
BEGIN
	DECLARE genre_count INT;
    
    SELECT movie_id, title FROM movie;
    
	SELECT COUNT(*) INTO genre_count FROM genre
			WHERE genre_name_id = genre_p;
		
	IF genre_count = 0 THEN
		IF genre_p != "Done" THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The genre you have entered does not exist.';
		END IF;
	ELSE
		INSERT INTO movie_genre (movie_id, genre_name_id, user_entered) VALUES (movie_id_p, genre_p, entered_by_user);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_director` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_director`(IN movie_id_p INT, IN director_name_p VARCHAR(50), IN user_entered_p BOOLEAN)
BEGIN
    DECLARE new_director_id INT;
	
    INSERT INTO director (director_id, name, user_entered) VALUES (NULL, director_name_p, user_entered_p);
    SELECT MAX(director_id) INTO new_director_id FROM director;
    INSERT INTO movie_director (director_id, movie_id, user_entered) VALUES (new_director_id, movie_id_p, user_entered_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_genre`(IN genre_name_p VARCHAR(50), IN entered_by_user BOOLEAN)
BEGIN
	DECLARE genre_name_count INT;
        
	SELECT COUNT(*) INTO genre_name_count FROM genre WHERE genre_name_id = genre_name_p;
        
	IF genre_name_count = 0 THEN
		INSERT INTO genre (genre_name_id, user_entered) VALUES (genre_name_p, entered_by_user);
	ELSE
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = 'The genre you have entered already exists.', 
		MYSQL_ERRNO = 1062;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_movie`(IN title_p VARCHAR(36), IN release_year_p INT, IN length_p VARCHAR(9), IN synopsis_p MEDIUMTEXT, IN theater_p INT, IN streaming_service_p INT, IN entered_by_user BOOLEAN)
BEGIN
	DECLARE movie_id_new INT;
    
    IF (release_year_p) < 1888 OR (release_year_p) > 2022 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The release year is not valid.';
    END IF;
        
	INSERT INTO movie (movie_id, title, year_released, length, synopsis, user_entered) VALUES (NULL, title_p, release_year_p, length_p, synopsis_p, entered_by_user);
	SELECT MAX(movie_id) INTO movie_id_new FROM movie;

	IF theater_p IS NOT NULL THEN 
    INSERT INTO movie_movie_theatre (movie_id, display_place_id, user_entered) VALUES (movie_id_new, theater_p, entered_by_user);
	END IF;
    
	IF streaming_service_p IS NOT NULL THEN 
    INSERT INTO movie_streaming_service (movie_id, display_place_id, user_entered) VALUES (movie_id_new, streaming_service_p, entered_by_user);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_producer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_producer`(IN movie_id_p INT, IN producer_name_p VARCHAR(50), IN user_entered_p BOOLEAN)
BEGIN
		
	DECLARE new_producer_id INT;
    
	INSERT INTO producer (producer_id, name, user_entered) VALUES (NULL, producer_name_p, user_entered_p);
	SELECT MAX(producer_id) INTO new_producer_id FROM producer;
	INSERT INTO movie_producer (producer_id, movie_id, user_entered) VALUES (new_producer_id, movie_id_p, user_entered_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_rating`(IN username_p VARCHAR(20), IN movie_id_p INT, IN star_rating_p INT, IN review_p TEXT)
BEGIN
    IF (SELECT check_rating_exists(username_p, movie_id_p)) >= 1 THEN
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = 'A rating for this movie, under this username, already exists.', 
        MYSQL_ERRNO = 1062;
	END IF;
    IF (0 > star_rating_p > 5) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The star rating provided is invalid. It must be between 0 and 5.';
	END IF;
	INSERT INTO viewer_rates_movie(username, movie_id, star_rating, review) VALUES (username_p, movie_id_p, star_rating_p, review_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_viewer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_viewer`(IN username_new_p VARCHAR(20), IN name_p VARCHAR(36), IN age_p INT, IN sex_p VARCHAR(10))
BEGIN
    IF (SELECT check_viewer_exists(username_new_p)) >= 1 THEN
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = 'A viewer with this username already exists.', 
        MYSQL_ERRNO = 1062;
	END IF;
    IF (age_p < 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The age provided is invalid. It must be larger than or 0.';
	END IF;
    IF (sex_p NOT IN('Male', 'Female', 'Non-binary', 'Unknown')) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The sex provided is invalid. It must be Male, Female, Non-binary, or Unknown.';
	END IF;
    INSERT INTO viewer(username, name, age, sex) VALUES (username_new_p, name_p, age_p, sex_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_rating`(IN username_p VARCHAR(20), IN movie_id_p INT)
BEGIN
    IF (SELECT check_rating_exists(username_p, movie_id_p)) = 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A rating for this movie, created under this username, does not exist.';
	ELSE 
		DELETE FROM viewer_rates_movie WHERE movie_id = movie_id_p;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_viewer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_viewer`(IN username_original_p VARCHAR(20))
BEGIN
    IF (SELECT check_viewer_exists(username_original_p)) < 1 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The viewer that you are trying to delete does not exist.';
	ELSE
		DELETE FROM viewer WHERE username = username_original_p;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edit_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_rating`(IN username_p VARCHAR(20), IN movie_id_p INT, IN star_rating_p INT, IN review_p TEXT)
BEGIN
    IF (SELECT check_rating_exists(username_p, movie_id_p)) = 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A rating for this movie, created under this username, does not exist.';
	END IF;
	IF (0 > star_rating_p > 5) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The star rating provided is invalid. It must be between 0 and 5, inclusive.';
	END IF;
    UPDATE viewer_rates_movie SET star_rating = star_rating_p, review = review_p WHERE movie_id = movie_id_p AND username = username_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_all_averages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_all_averages`()
BEGIN
    DECLARE movieid_var INT;
    DECLARE action_completed INT;
    DECLARE sql_error INT DEFAULT FALSE;
    DECLARE find_all_averages CURSOR FOR
		SELECT movie_id FROM movie;
	DECLARE CONTINUE HANDLER
		FOR NOT FOUND SET action_completed = 1;
    
    OPEN find_all_averages;
    retrieve_averages: LOOP
		FETCH find_all_averages INTO movieid_var;
	IF action_completed = 1
		THEN LEAVE retrieve_averages;
	END IF;

	CALL average_stars(movieid_var);
	END LOOP retrieve_averages;
	CLOSE find_all_averages;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login_viewer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_viewer`(IN username_p VARCHAR(20))
BEGIN
     IF (SELECT check_viewer_exists(username_p)) < 1 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A viewer with this username does not exist.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movies_in_streaming_services` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movies_in_streaming_services`(IN ss_id_p INT)
BEGIN
	SELECT * FROM movie INNER JOIN movie_streaming_service USING (movie_id) WHERE display_place_id = ss_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movies_not_rated` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movies_not_rated`(IN username_p VARCHAR(50))
BEGIN 
	SELECT movie_id, title, year_released FROM movie WHERE movie_id NOT IN 
		(SELECT movie_id FROM movie INNER JOIN viewer_rates_movie 
			USING(movie_id) WHERE username = username_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movies_rated` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movies_rated`(IN username_p VARCHAR(50))
BEGIN 
	SELECT movie_id, title, year_released FROM movie INNER JOIN viewer_rates_movie USING(movie_id) WHERE username = username_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movies_with_ratings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movies_with_ratings`()
BEGIN 
	SELECT DISTINCT movie_id, title, year_released FROM movie INNER JOIN viewer_rates_movie USING(movie_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movie_tickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movie_tickets`(IN theatre_id_p INT)
BEGIN
	SELECT ticket_id, price, date, time, display_place_id, movie.title, movie_id FROM movie_ticket INNER JOIN movie USING(movie_id) WHERE display_place_id = theatre_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_movies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_movies`(IN genre_p VARCHAR(36), IN actor_p INT, IN director_p INT, IN producer_p INT)
BEGIN
IF genre_p IS NULL AND actor_p IS NOT NULL AND director_p IS NOT NULL AND producer_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE 
        actor_id = actor_p AND
        producer_id = producer_p AND
        director_id = director_p;

ELSEIF actor_p IS NULL AND genre_p IS NOT NULL AND director_p IS NOT NULL AND producer_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p AND
        producer_id = producer_p AND
        director_id = director_p;

ELSEIF director_p IS NULL AND genre_p IS NOT NULL AND actor_p IS NOT NULL AND producer_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p AND
        actor_id = actor_p AND
        producer_id = producer_p;

ELSEIF producer_p IS NULL AND genre_p IS NOT NULL AND actor_p IS NOT NULL AND director_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p AND
        actor_id = actor_p AND
        director_id = director_p;
	
ELSEIF genre_p IS NULL AND actor_p IS NULL AND director_p IS NOT NULL AND producer_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE 
        producer_id = producer_p AND
        director_id = director_p;

ELSEIF genre_p IS NULL AND director_p IS NULL AND actor_p IS NOT NULL AND producer_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE 
        actor_id = actor_p AND
        producer_id = producer_p;
	
ELSEIF genre_p IS NULL AND producer_p IS NULL AND actor_p IS NOT NULL AND director_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE 
        actor_id = actor_p AND
        director_id = director_p;

ELSEIF actor_p IS NULL and director_p IS NULL AND genre_p IS NOT NULL AND producer_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p AND
        producer_id = producer_p;
	
ELSEIF actor_p IS NULL AND producer_p IS NULL AND genre_p IS NOT NULL AND director_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p AND
        director_id = director_p;

ELSEIF director_p IS NULL and producer_p IS NULL AND genre_p IS NOT NULL AND actor_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p AND
        actor_id = actor_p;

ELSEIF genre_p IS NULL AND actor_p IS NULL AND director_p IS NULL AND producer_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE 
        producer_id = producer_p;
	
ELSEIF actor_p IS NULL AND director_p IS NULL AND producer_p IS NULL AND genre_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p;
	
ELSEIF genre_p IS NULL AND director_p IS NULL AND producer_p IS NULL AND actor_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE 
        actor_id = actor_p;

ELSEIF genre_p IS NULL AND actor_p IS NULL AND producer_p IS NULL AND director_p IS NOT NULL THEN
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE 
        director_id = director_p;

ELSE 
	SELECT DISTINCT movie.* FROM movie NATURAL JOIN movie_genre NATURAL JOIN movie_character_actor NATURAL JOIN movie_producer NATURAL JOIN movie_director
		WHERE genre_name_id = genre_p AND
        actor_id = actor_p AND
        producer_id = producer_p AND
        director_id = director_p;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_actors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_actors`()
BEGIN
	SELECT actor_id, name FROM actor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_comments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_comments`(IN movie_id_p INT)
BEGIN
	SELECT review FROM viewer_rates_movie WHERE movie_id = movie_id_p;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_directors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_directors`()
BEGIN
	SELECT director_id, name FROM director;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_genres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_genres`()
BEGIN
	SELECT genre_name_id FROM genre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_max_movie_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_max_movie_id`()
BEGIN
	SELECT MAX(movie_id) FROM movie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_movies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_movies`()
BEGIN
	SELECT movie_id, title, year_released, length, synopsis, age_rating, average_star_rating FROM movie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_movie_theatres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_movie_theatres`()
BEGIN
	SELECT * FROM movie_theatre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_producers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_producers`()
BEGIN
	SELECT producer_id, name, production_company FROM producer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_ratings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_ratings`(IN movie_id_p INT)
BEGIN
	SELECT star_rating, review FROM viewer_rates_movie WHERE movie_id = movie_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retrieve_streaming_services` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retrieve_streaming_services`()
BEGIN
	SELECT * FROM streaming_service;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `theatre_filter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `theatre_filter`(IN zipcode_p INT, IN state_p VARCHAR(50))
BEGIN
	SELECT * FROM movie_theatre WHERE zipcode_p = zipcode AND state_p = state;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top_five_movies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_five_movies`()
BEGIN
	CALL find_all_averages();
	SELECT title FROM movie ORDER BY average_star_rating LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top_five_movies_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_five_movies_genre`(IN genre_p VARCHAR(50))
BEGIN
    SELECT title FROM movie INNER JOIN movie_genre USING (movie_id) 
            WHERE genre_name_id = genre_p
				ORDER BY average_star_rating
					LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_movie`(IN movie_id_p VARCHAR(36), IN theater_p INT, IN streaming_service_p INT, IN user_entered_data BOOLEAN)
BEGIN

	IF theater_p IS NOT NULL THEN 
		INSERT INTO movie_movie_theatre (movie_id, display_place_id, user_entered) VALUES (movie_id_p, theater_p, user_entered_data);
	END IF;
    
	IF streaming_service_p IS NOT NULL THEN 
		INSERT INTO movie_streaming_service (movie_id, display_place_id, user_entered) VALUES (movie_id_p, streaming_service_p, user_entered_data);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_movies_watched_ss` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_movies_watched_ss`(IN username_p VARCHAR(20), IN movie_id_p INT, IN display_place_id_p INT)
BEGIN
IF (SELECT check_viewer_movie_ss_existence(username_p, movie_id_p, display_place_id_p)) >= 1 THEN
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = 'This movie has already been watched at this display place under this username.', MYSQL_ERRNO = 1062;
	END IF;
IF display_place_id_p IN (SELECT display_place_id FROM streaming_service) THEN
	INSERT INTO viewer_movie_streaming_service (username, movie_id, display_place_id)
		VALUES (username_p, movie_id_p, display_place_id_p);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_movies_watched_theatre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_movies_watched_theatre`(IN username_p VARCHAR(20), IN movie_id_p INT, IN display_place_id_p INT)
BEGIN
IF (SELECT check_viewer_movie_theatre_existence(username_p, movie_id_p, display_place_id_p)) >= 1 THEN
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = 'This movie has already been watched at this display place under this username.', MYSQL_ERRNO = 1062;
	END IF;
IF display_place_id_p IN (SELECT display_place_id FROM movie_theatre) THEN
	INSERT INTO viewer_movie_theatre (username, movie_id, display_place_id)
		VALUES (username_p, movie_id_p, display_place_id_p);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_viewer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_viewer`(IN username_original_p VARCHAR(20), IN username_new_p VARCHAR(20), IN name_p VARCHAR(36), IN age_p INT, IN sex_p VARCHAR(10))
BEGIN
    IF (SELECT check_viewer_exists(username_original_p)) < 1 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The viewer you are trying to modify does not exist.';
	END IF;
	IF (SELECT check_viewer_exists(username_new_p)) >= 1 AND (username_original_p != username_new_p) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The username you are trying to update to is already taken.';
	END IF;
	IF (age_p < 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The age provided is invalid. It must be larger than or 0.';
	END IF;
    IF (sex_p NOT IN('Male', 'Female', 'Non-binary', 'Unknown')) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The sex provided is invalid. It must be Male, Female, Non-binary, or Unknown.';
	END IF;
    UPDATE viewer SET username = username_new_p, name = name_p, age = age_p, sex = sex_p WHERE username = username_original_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-23 23:34:27
