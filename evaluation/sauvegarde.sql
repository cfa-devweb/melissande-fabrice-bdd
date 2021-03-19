-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_reservation`
--

DROP TABLE IF EXISTS `book_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_reservation` (
  `id` int NOT NULL,
  `book_id_ref` int NOT NULL,
  `reservation_id_ref` int NOT NULL,
  PRIMARY KEY (`id`,`book_id_ref`,`reservation_id_ref`),
  KEY `fk_book_reservation_books1` (`book_id_ref`),
  KEY `fk_book_reservation_reservations1` (`reservation_id_ref`),
  CONSTRAINT `fk_book_reservation_books1` FOREIGN KEY (`book_id_ref`) REFERENCES `books` (`id_book`),
  CONSTRAINT `fk_book_reservation_reservations1` FOREIGN KEY (`reservation_id_ref`) REFERENCES `reservations` (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_reservation`
--

LOCK TABLES `book_reservation` WRITE;
/*!40000 ALTER TABLE `book_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id_book` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=1531 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id_book`, `title`, `author`, `genre`, `height`, `publisher`) VALUES (1276,'\"Fundamentals of Wavelets','\"\"Goswami',' Jaideva\"\"',0,'228'),(1277,'\"Data Smart','\"\"Foreman',' John\"\"',0,'235'),(1278,'\"God Created the Integers','\"\"Hawking',' Stephen\"\"',0,'197'),(1279,'\"Superfreakonomics','\"\"Dubner',' Stephen\"\"',0,'179'),(1280,'\"Orientalism','\"\"Said',' Edward\"\"',0,'197'),(1281,'\"Nature of Statistical Learning Theory',' The','\"\"Vapnik',0,'data_science'),(1282,'\"Integration of the Indian States','\"\"Menon',' V P\"\"',0,'217'),(1283,'\"Drunkard\'s Walk',' The','\"\"Mlodinow',0,'science'),(1284,'\"Image Processing & Mathematical Morphology','\"\"Shih',' Frank\"\"',0,'241'),(1285,'\"How to Think Like Sherlock Holmes','\"\"Konnikova',' Maria\"\"',0,'240'),(1286,'Data Scientists at Work','Sebastian Gutierrez','data_science',230,'Apress\r'),(1287,'\"Slaughterhouse Five','\"\"Vonnegut',' Kurt\"\"',0,'198'),(1288,'\"Birth of a Theorem','\"\"Villani',' Cedric\"\"',0,'234'),(1289,'\"Structure & Interpretation of Computer Progr','\"\"Sussman',' Gerald\"\"',0,'240'),(1290,'\"Age of Wrath',' The','\"\"Eraly',0,'history'),(1291,'\"Trial',' The','\"\"Kafka',0,'fiction'),(1292,'\"Statistical Decision Theory\'','\"\"Pratt',' John\"\"',0,'236'),(1293,'\"Data Mining Handbook','\"\"Nisbet',' Robert\"\"',0,'242'),(1294,'\"New Machiavelli',' The','\"\"Wells',0,'fiction'),(1295,'\"Physics & Philosophy','\"\"Heisenberg',' Werner\"\"',0,'197'),(1296,'\"Making Software','\"\"Oram',' Andy\"\"',0,'232'),(1297,'\"Analysis',' Vol I','\"\"Tao',0,'mathematics'),(1298,'\"Machine Learning for Hackers','\"\"Conway',' Drew\"\"',0,'233'),(1299,'\"Signal and the Noise',' The','\"\"Silver',0,'data_science'),(1300,'\"Python for Data Analysis','\"\"McKinney',' Wes\"\"',0,'233'),(1301,'\"Introduction to Algorithms','\"\"Cormen',' Thomas\"\"',0,'234'),(1302,'\"Beautiful and the Damned',' The','\"\"Deb',0,'nonfiction'),(1303,'\"Outsider',' The','\"\"Camus',0,'fiction'),(1304,'\"Complete Sherlock Holmes',' The - Vol I','\"\"Doyle',0,'fiction'),(1305,'\"Complete Sherlock Holmes',' The - Vol II','\"\"Doyle',0,'fiction'),(1306,'\"Wealth of Nations',' The','\"\"Smith',0,'economics'),(1307,'\"Pillars of the Earth',' The','\"\"Follett',0,'fiction'),(1308,'\"Mein Kampf','\"\"Hitler',' Adolf\"\"',0,'212'),(1309,'\"Tao of Physics',' The','\"\"Capra',0,'science'),(1310,'\"Surely You\'re Joking Mr Feynman','\"\"Feynman',' Richard\"\"',0,'198'),(1311,'\"Farewell to Arms',' A','\"\"Hemingway',0,'fiction'),(1312,'\"Veteran',' The','\"\"Forsyth',0,'fiction'),(1313,'\"False Impressions','\"\"Archer',' Jeffery\"\"',0,'177'),(1314,'\"Last Lecture',' The','\"\"Pausch',0,'nonfiction'),(1315,'\"Return of the Primitive','\"\"Rand',' Ayn\"\"',0,'202'),(1316,'\"Jurassic Park','\"\"Crichton',' Michael\"\"',0,'174'),(1317,'\"Russian Journal',' A','\"\"Steinbeck',0,'nonfiction'),(1318,'\"Tales of Mystery and Imagination','\"\"Poe',' Edgar Allen\"\"',0,'172'),(1319,'\"Freakonomics','\"\"Dubner',' Stephen\"\"',0,'197'),(1320,'\"Hidden Connections',' The','\"\"Capra',0,'science'),(1321,'\"Story of Philosophy',' The','\"\"Durant',0,'philosophy'),(1322,'\"Asami Asami','\"\"Deshpande',' P L\"\"',0,'205'),(1323,'\"Journal of a Novel','\"\"Steinbeck',' John\"\"',0,'196'),(1324,'\"Once There Was a War','\"\"Steinbeck',' John\"\"',0,'196'),(1325,'\"Moon is Down',' The','\"\"Steinbeck',0,'fiction'),(1326,'\"Brethren',' The','\"\"Grisham',0,'fiction'),(1327,'\"In a Free State','\"\"Naipaul',' V. S.\"\"',0,'196'),(1328,'\"Catch 22','\"\"Heller',' Joseph\"\"',0,'178'),(1329,'Complete Mastermind',' The','BBC',0,'178'),(1330,'\"Dylan on Dylan','\"\"Dylan',' Bob\"\"',0,'197'),(1331,'\"Soft Computing & Intelligent Systems','\"\"Gupta',' Madan\"\"',0,'242'),(1332,'\"Textbook of Economic Theory','\"\"Stonier',' Alfred\"\"',0,'242'),(1333,'\"Econometric Analysis','\"\"Greene',' W. H.\"\"',0,'242'),(1334,'\"Learning OpenCV','\"\"Bradsky',' Gary\"\"',0,'232'),(1335,'\"Data Structures Using C & C++','\"\"Tanenbaum',' Andrew\"\"',0,'235'),(1336,'\"Computer Vision',' A Modern Approach','\"\"Forsyth',0,'data_science'),(1337,'\"Principles of Communication Systems','\"\"Taub',' Schilling\"\"',0,'240'),(1338,'\"Let Us C','\"\"Kanetkar',' Yashwant\"\"',0,'213'),(1339,'\"Amulet of Samarkand',' The','\"\"Stroud',0,'fiction'),(1340,'\"Crime and Punishment','\"\"Dostoevsky',' Fyodor\"\"',0,'180'),(1341,'\"Angels & Demons','\"\"Brown',' Dan\"\"',0,'178'),(1342,'\"Argumentative Indian',' The','\"\"Sen',0,'nonfiction'),(1343,'\"Sea of Poppies','\"\"Ghosh',' Amitav\"\"',0,'197'),(1344,'\"Idea of Justice',' The','\"\"Sen',0,'nonfiction'),(1345,'\"Raisin in the Sun',' A','\"\"Hansberry',0,'fiction'),(1346,'\"All the President\'s Men','\"\"Woodward',' Bob\"\"',0,'177'),(1347,'\"Prisoner of Birth',' A','\"\"Archer',0,'fiction'),(1348,'\"Scoop!','\"\"Nayar',' Kuldip\"\"',0,'216'),(1349,'\"Ahe Manohar Tari','\"\"Deshpande',' Sunita\"\"',0,'213'),(1350,'\"Last Mughal',' The','\"\"Dalrymple',0,'history'),(1351,'Social Choice & Welfare',' Vol 39 No. 1','Various',0,'235'),(1352,'\"Radiowaril Bhashane & Shrutika','\"\"Deshpande',' P L\"\"',0,'213'),(1353,'\"Gun Gayin Awadi','\"\"Deshpande',' P L\"\"',0,'212'),(1354,'\"Aghal Paghal','\"\"Deshpande',' P L\"\"',0,'212'),(1355,'\"Maqta-e-Ghalib','\"\"Garg',' Sanjay\"\"',0,'221'),(1356,'Beyond Degrees','','nonfiction',222,'HarperCollins\r'),(1357,'\"Manasa','\"\"Kale',' V P\"\"',0,'213'),(1358,'\"India from Midnight to Milennium','\"\"Tharoor',' Shashi\"\"',0,'198'),(1359,'World\'s Greatest Trials',' The','',0,'210'),(1360,'\"Great Indian Novel',' The','\"\"Tharoor',0,'fiction'),(1361,'\"O Jerusalem!','\"\"Lapierre',' Dominique\"\"',0,'217'),(1362,'\"City of Joy',' The','\"\"Lapierre',0,'fiction'),(1363,'\"Freedom at Midnight','\"\"Lapierre',' Dominique\"\"',0,'167'),(1364,'\"Winter of Our Discontent',' The','\"\"Steinbeck',0,'fiction'),(1365,'\"On Education','\"\"Russell',' Bertrand\"\"',0,'203'),(1366,'\"Free Will','\"\"Harris',' Sam\"\"',0,'203'),(1367,'\"Bookless in Baghdad','\"\"Tharoor',' Shashi\"\"',0,'206'),(1368,'\"Case of the Lame Canary',' The','\"\"Gardner',0,'fiction'),(1369,'\"Theory of Everything',' The','\"\"Hawking',0,'science'),(1370,'\"New Markets & Other Essays','\"\"Drucker',' Peter\"\"',0,'176'),(1371,'\"Electric Universe','\"\"Bodanis',' David\"\"',0,'201'),(1372,'\"Hunchback of Notre Dame',' The','\"\"Hugo',0,'fiction'),(1373,'\"Burning Bright','\"\"Steinbeck',' John\"\"',0,'175'),(1374,'\"Age of Discontuinity',' The','\"\"Drucker',0,'economics'),(1375,'\"Doctor in the Nude','\"\"Gordon',' Richard\"\"',0,'179'),(1376,'\"Down and Out in Paris & London','\"\"Orwell',' George\"\"',0,'179'),(1377,'\"Identity & Violence','\"\"Sen',' Amartya\"\"',0,'219'),(1378,'\"Beyond the Three Seas','\"\"Dalrymple',' William\"\"',0,'197'),(1379,'World\'s Greatest Short Stories',' The','',0,'217'),(1380,'\"Talking Straight','\"\"Iacoca',' Lee\"\"',0,'175'),(1381,'\"Maugham\'s Collected Short Stories',' Vol 3','\"\"Maugham',0,'fiction'),(1382,'\"Phantom of Manhattan',' The','\"\"Forsyth',0,'fiction'),(1383,'\"Ashenden of The British Agent','\"\"Maugham',' William S\"\"',0,'160'),(1384,'\"Zen & The Art of Motorcycle Maintenance','\"\"Pirsig',' Robert\"\"',0,'172'),(1385,'\"Great War for Civilization',' The','\"\"Fisk',0,'history'),(1386,'\"We the Living','\"\"Rand',' Ayn\"\"',0,'178'),(1387,'\"Artist and the Mathematician',' The','\"\"Aczel',0,'science'),(1388,'\"History of Western Philosophy','\"\"Russell',' Bertrand\"\"',0,'213'),(1389,'Selected Short Stories','','fiction',215,'Jaico\r'),(1390,'\"Rationality & Freedom','\"\"Sen',' Amartya\"\"',0,'213'),(1391,'\"Clash of Civilizations and Remaking of the W','\"\"Huntington',' Samuel\"\"',0,'228'),(1392,'\"Uncommon Wisdom','\"\"Capra',' Fritjof\"\"',0,'197'),(1393,'\"One','\"\"Bach',' Richard\"\"',0,'172'),(1394,'Karl Marx Biography','','nonfiction',162,'\r'),(1395,'To Sir With Love','Braithwaite','fiction',197,'Penguin\r'),(1396,'\"Half A Life','\"\"Naipaul',' V S\"\"',0,'196'),(1397,'\"Discovery of India',' The','\"\"Nehru',0,'history'),(1398,'\"Apulki','\"\"Deshpande',' P L\"\"',0,'211'),(1399,'\"Unpopular Essays','\"\"Russell',' Bertrand\"\"',0,'198'),(1400,'\"Deceiver',' The','\"\"Forsyth',0,'fiction'),(1401,'\"Veil: Secret Wars of the CIA','\"\"Woodward',' Bob\"\"',0,'171'),(1402,'\"Char Shabda','\"\"Deshpande',' P L\"\"',0,'214'),(1403,'\"Rosy is My Relative','\"\"Durrell',' Gerald\"\"',0,'176'),(1404,'\"Moon and Sixpence',' The','\"\"Maugham',0,'fiction'),(1405,'Political Philosophers','','philosophy',162,'\r'),(1406,'\"Short History of the World',' A','\"\"Wells',0,'history'),(1407,'\"Trembling of a Leaf',' The','\"\"Maugham',0,'fiction'),(1408,'\"Doctor on the Brain','\"\"Gordon',' Richard\"\"',0,'204'),(1409,'\"Simpsons & Their Mathematical Secrets','\"\"Singh',' Simon\"\"',0,'233'),(1410,'\"Pattern Classification','\"\"Duda',' Hart\"\"',0,'241'),(1411,'\"From Beirut to Jerusalem','\"\"Friedman',' Thomas\"\"',0,'202'),(1412,'\"Code Book',' The','\"\"Singh',0,'science'),(1413,'\"Age of the Warrior',' The','\"\"Fisk',0,'history'),(1414,'Final Crisis','','comic',257,'\r'),(1415,'Killing Joke',' The','',0,'283'),(1416,'Flashpoint','','comic',265,'\r'),(1417,'Batman Earth One','','comic',265,'\r'),(1418,'Crisis on Infinite Earths','','comic',258,'\r'),(1419,'\"Numbers Behind Numb3rs',' The','\"\"Devlin',0,'science'),(1420,'Superman Earth One - 1','','comic',259,'\r'),(1421,'Superman Earth One - 2','','comic',258,'\r'),(1422,'Justice League: Throne of Atlantis','','comic',258,'\r'),(1423,'Justice League: The Villain\'s Journey','','comic',258,'\r'),(1424,'Death of Superman',' The','',0,'258'),(1425,'History of the DC Universe','','comic',258,'\r'),(1426,'Batman: The Long Halloween','','comic',258,'\r'),(1427,'\"Life in Letters',' A','\"\"Steinbeck',0,'nonfiction'),(1428,'\"Information',' The','\"\"Gleick',0,'science'),(1429,'Journal of Economics',' vol 106 No 3','',0,'235'),(1430,'\"Elements of Information Theory','\"\"Thomas',' Joy\"\"',0,'229'),(1431,'\"Power Electronics - Rashid','\"\"Rashid',' Muhammad\"\"',0,'235'),(1432,'\"Power Electronics - Mohan','\"\"Mohan',' Ned\"\"',0,'237'),(1433,'\"Neural Networks','\"\"Haykin',' Simon\"\"',0,'240'),(1434,'\"Grapes of Wrath',' The','\"\"Steinbeck',0,'fiction'),(1435,'\"Vyakti ani Valli','\"\"Deshpande',' P L\"\"',0,'211'),(1436,'\"Statistical Learning Theory','\"\"Vapnik',' Vladimir\"\"',0,'228'),(1437,'\"Empire of the Mughal - The Tainted Throne','\"\"Rutherford',' Alex\"\"',0,'180'),(1438,'\"Empire of the Mughal - Brothers at War','\"\"Rutherford',' Alex\"\"',0,'180'),(1439,'\"Empire of the Mughal - Ruler of the World','\"\"Rutherford',' Alex\"\"',0,'180'),(1440,'\"Empire of the Mughal - The Serpent\'s Tooth','\"\"Rutherford',' Alex\"\"',0,'180'),(1441,'\"Empire of the Mughal - Raiders from the Nort','\"\"Rutherford',' Alex\"\"',0,'180'),(1442,'\"Mossad','\"\"Baz-Zohar',' Michael\"\"',0,'236'),(1443,'\"Jim Corbett Omnibus','\"\"Corbett',' Jim\"\"',0,'223'),(1444,'\"20000 Leagues Under the Sea','\"\"Verne',' Jules\"\"',0,'190'),(1445,'Batatyachi Chal','Deshpande P L','fiction',200,'\r'),(1446,'Hafasavnuk','Deshpande P L','fiction',211,'\r'),(1447,'Urlasurla','Deshpande P L','fiction',211,'\r'),(1448,'\"Pointers in C','\"\"Kanetkar',' Yashwant\"\"',0,'213'),(1449,'\"Cathedral and the Bazaar',' The','\"\"Raymond',0,'computer_science'),(1450,'\"Design with OpAmps','\"\"Franco',' Sergio\"\"',0,'240'),(1451,'\"Think Complexity','\"\"Downey',' Allen\"\"',0,'230'),(1452,'\"Devil\'s Advocate',' The','\"\"West',0,'fiction'),(1453,'\"Ayn Rand Answers','\"\"Rand',' Ayn\"\"',0,'203'),(1454,'\"Philosophy: Who Needs It','\"\"Rand',' Ayn\"\"',0,'171'),(1455,'World\'s Great Thinkers',' The','',0,'189'),(1456,'\"Data Analysis with Open Source Tools','\"\"Janert',' Phillip\"\"',0,'230'),(1457,'\"Broca\'s Brain','\"\"Sagan',' Carl\"\"',0,'174'),(1458,'\"Men of Mathematics','\"\"Bell',' E T\"\"',0,'217'),(1459,'\"Oxford book of Modern Science Writing','\"\"Dawkins',' Richard\"\"',0,'240'),(1460,'\"Justice',' Judiciary and Democracy','\"\"Ranjan',0,'philosophy'),(1461,'Arthashastra',' The','Kautiyla',0,'214'),(1462,'We the People','Palkhivala','philosophy',216,'\r'),(1463,'We the Nation','Palkhivala','philosophy',216,'\r'),(1464,'Courtroom Genius',' The','Sorabjee',0,'217'),(1465,'\"Dongri to Dubai','\"\"Zaidi',' Hussain\"\"',0,'216'),(1466,'\"History of England',' Foundation','\"\"Ackroyd',0,'history'),(1467,'\"City of Djinns','\"\"Dalrymple',' William\"\"',0,'198'),(1468,'India\'s Legal System','Nariman','nonfiction',177,'\r'),(1469,'\"More Tears to Cry','\"\"Sassoon',' Jean\"\"',0,'235'),(1470,'\"Ropemaker',' The','\"\"Dickinson',0,'fiction'),(1471,'\"Angels & Demons','\"\"Brown',' Dan\"\"',0,'170'),(1472,'Judge',' The','',0,'170'),(1473,'Attorney',' The','',0,'170'),(1474,'Prince',' The','Machiavelli',0,'173'),(1475,'\"Eyeless in Gaza','\"\"Huxley',' Aldous\"\"',0,'180'),(1476,'\"Tales of Beedle the Bard','\"\"Rowling',' J K\"\"',0,'184'),(1477,'\"Girl with the Dragon Tattoo','\"\"Larsson',' Steig\"\"',0,'179'),(1478,'\"Girl who kicked the Hornet\'s Nest','\"\"Larsson',' Steig\"\"',0,'179'),(1479,'\"Girl who played with Fire','\"\"Larsson',' Steig\"\"',0,'179'),(1480,'Batman Handbook','','comic',270,'\r'),(1481,'Murphy\'s Law','','nonfiction',178,'\r'),(1482,'\"Structure and Randomness','\"\"Tao',' Terence\"\"',0,'252'),(1483,'\"Image Processing with MATLAB','\"\"Eddins',' Steve\"\"',0,'241'),(1484,'\"Animal Farm','\"\"Orwell',' George\"\"',0,'180'),(1485,'\"Idiot',' The','\"\"Dostoevsky',0,'fiction'),(1486,'\"Christmas Carol',' A','\"\"Dickens',0,'fiction');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrows`
--

DROP TABLE IF EXISTS `borrows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrows` (
  `clients_id` int NOT NULL,
  `books_id_book` int NOT NULL,
  `date_of_borrow` datetime DEFAULT NULL,
  `date_of_return` datetime DEFAULT NULL,
  `book_reservation_id` int NOT NULL,
  PRIMARY KEY (`clients_id`,`books_id_book`),
  KEY `fk_borrows_book_reservation1` (`book_reservation_id`),
  KEY `fk_clients_has_books_books1` (`books_id_book`),
  CONSTRAINT `fk_borrows_book_reservation1` FOREIGN KEY (`book_reservation_id`) REFERENCES `book_reservation` (`id`),
  CONSTRAINT `fk_clients_has_books_books1` FOREIGN KEY (`books_id_book`) REFERENCES `books` (`id_book`),
  CONSTRAINT `fk_clients_has_books_clients1` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrows`
--

LOCK TABLES `borrows` WRITE;
/*!40000 ALTER TABLE `borrows` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `reservations` (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id_reservation` int NOT NULL AUTO_INCREMENT,
  `date_of_reserve` datetime NOT NULL,
  PRIMARY KEY (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19 12:53:56
