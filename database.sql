-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: oldversion
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_pub` datetime NOT NULL,
  `date_edition` datetime NOT NULL,
  `miniature` varchar(255) NOT NULL,
  `posterID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-11 21:47:39','2017-07-13 00:34:29','1.jpg',10);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bible verse`
--

DROP TABLE IF EXISTS `bible verse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bible verse` (
  `contenu` text NOT NULL,
  `ref` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bible verse`
--

LOCK TABLES `bible verse` WRITE;
/*!40000 ALTER TABLE `bible verse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bible verse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `userID` int(11) NOT NULL,
  `date_pub` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,' ',10,'2017-07-11 14:35:37'),(2,'lol',10,'2017-07-11 14:36:27'),(3,'ton site est cool mais ennuiant pour l\'instant esk tu peux ajouter des fonctionnalite un peu interessante parck la je sens que je vais carement partir',10,'2017-07-11 14:37:25'),(4,'salut',10,'2017-07-15 14:12:07'),(5,'dj;ajakd;k',10,'2018-04-18 22:12:40'),(6,'salut tout le monde',10,'2018-04-18 22:13:05'),(7,'salut tout le monde',10,'2018-04-18 22:13:12'),(8,'l vie est belle',10,'2018-05-14 22:30:22');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` text NOT NULL,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date_pub` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaire`
--

LOCK TABLES `commentaire` WRITE;
/*!40000 ALTER TABLE `commentaire` DISABLE KEYS */;
INSERT INTO `commentaire` VALUES (1,'lo',1,0,10,'2017-07-11 21:47:57'),(2,'lo',1,0,10,'2017-07-11 21:48:01'),(3,'lo',1,0,10,'2017-07-11 21:48:03'),(4,'lo',1,0,10,'2017-07-11 21:48:06'),(5,'lo\r\n',1,0,10,'2017-07-11 21:48:11');
/*!40000 ALTER TABLE `commentaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dislikes`
--

DROP TABLE IF EXISTS `dislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dislikes`
--

LOCK TABLES `dislikes` WRITE;
/*!40000 ALTER TABLE `dislikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `following`
--

DROP TABLE IF EXISTS `following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `following` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `followerID` int(11) NOT NULL,
  `followingID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `following`
--

LOCK TABLES `following` WRITE;
/*!40000 ALTER TABLE `following` DISABLE KEYS */;
INSERT INTO `following` VALUES (1,10,11),(2,10,12);
/*!40000 ALTER TABLE `following` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galerie`
--

DROP TABLE IF EXISTS `galerie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galerie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `date_pub` datetime NOT NULL,
  `tags` text NOT NULL,
  `nom` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galerie`
--

LOCK TABLES `galerie` WRITE;
/*!40000 ALTER TABLE `galerie` DISABLE KEYS */;
INSERT INTO `galerie` VALUES (1,10,'2017-07-13 00:41:36','','Ngpictures_IMG_5537.JPG'),(2,10,'2017-07-13 00:42:35','','Ngpictures_IMG_5537.JPG'),(3,10,'2017-07-13 22:09:19','meta','Ngpictures_IMG_5537.JPG'),(4,10,'2018-01-22 03:12:25','rapha','Ngpictures_13 (2).jpg'),(5,10,'2018-05-15 06:58:57','v','Ngpictures_Ambiances_digital_painting_Alena_Aenami_10.jpg');
/*!40000 ALTER TABLE `galerie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idees`
--

DROP TABLE IF EXISTS `idees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idees` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `idee` text NOT NULL,
  `date_pub` datetime NOT NULL,
  `confirme` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idees`
--

LOCK TABLES `idees` WRITE;
/*!40000 ALTER TABLE `idees` DISABLE KEYS */;
/*!40000 ALTER TABLE `idees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre_dor`
--

DROP TABLE IF EXISTS `livre_dor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livre_dor` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `date_pub` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre_dor`
--

LOCK TABLES `livre_dor` WRITE;
/*!40000 ALTER TABLE `livre_dor` DISABLE KEYS */;
INSERT INTO `livre_dor` VALUES (1,10,'clean ton site \r\n','2017-07-16 21:03:23'),(2,10,'vraiemnt','2017-07-17 23:50:44'),(3,10,'heee','2018-01-22 10:22:47'),(4,10,'ldl','2018-05-14 22:21:29');
/*!40000 ALTER TABLE `livre_dor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `love`
--

DROP TABLE IF EXISTS `love`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `love` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `love`
--

LOCK TABLES `love` WRITE;
/*!40000 ALTER TABLE `love` DISABLE KEYS */;
/*!40000 ALTER TABLE `love` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membres`
--

DROP TABLE IF EXISTS `membres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `nom_complet` varchar(255) NOT NULL,
  `mdp` text NOT NULL,
  `num` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `statut` text NOT NULL,
  `confirme` int(11) NOT NULL,
  `date_ins` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membres`
--

LOCK TABLES `membres` WRITE;
/*!40000 ALTER TABLE `membres` DISABLE KEYS */;
INSERT INTO `membres` VALUES (10,'#Ngpictures','Bernard Ngandu','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',973141132,'','10.jpg','clean...',1,'2017-06-23 08:21:26'),(12,'ng2','ng2','1234',0,'','ng.png','',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `membres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngarticle`
--

DROP TABLE IF EXISTS `ngarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_pub` datetime NOT NULL,
  `date_edition` datetime NOT NULL,
  `miniature` varchar(255) NOT NULL,
  `posterID` int(11) NOT NULL,
  `confirme` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngarticle`
--

LOCK TABLES `ngarticle` WRITE;
/*!40000 ALTER TABLE `ngarticle` DISABLE KEYS */;
INSERT INTO `ngarticle` VALUES (4,'Balloy Birthday','Comme dit le psaume 23: 1 &quot;l?Eternel est mon Berger je ne manquerai de rien&quot;\r\nje reconnais que j\'ai pass? une bonne journ?e en compagnie de meilleures personnes; Ces personnes qui ont su rendre cette journ?e m?morable et inoubliable et je tiens ? les remercier du plus profond de mon c?ur, pas seulement eux mais aussi toutes ces personnes qui de loin ou de pr?s ont pu penser ? moi durant cette journ?e enti?re.\r\nEncore merci pour les v?ux , les souhaits , les d?dicaces,... j?esp?re qu\'ils apporteront grandes joie ? ma nouvelle vie.\r\nle moment que j\'ai pr?f?r? durant cette journ?e, c\'est celui du &quot;g?teau&quot; parce que c\'est cet instant qui a permit ? ce que je voie sur sur les l?vres de chacune des personnes qui ?taient avec moi des sourires et des rires cela m\'a fait voir que mon bonheur je ne l\'ai pas garde pour moi seule mais au moins j\'ai pu le partager avec ces meilleures personnes\r\npour finir je tiens aussi ? remercier @bernard_ng qui a pu merveilleusement immortalis? ce moment gr?ce ? des magnifiques captures\r\n\r\n#naomi_balloy','2017-06-27 00:25:23','2017-07-18 17:26:25','4.jpg',10,1),(5,'L\'enfance en afrique','&quot;l\'enfance&quot; \r\nc\'est la premi?re partie de la vie de l??tre humain et qui s?appr?te ? accueillir cette grande phase de la vie &quot;adolescence&quot;. Etre enfant c\'est jouir pleinement de la vie en tant qu??tre humain en faisant tout ce qui nous passe par la t?te sans d?pendre des conditions sociales: riche, pauvre ou modeste, tout ces enfants grandissent de la m?me fa?on en ayant les m?mes envies, les m?mes caprices, les m?mes r?ves qui sont plus souvent de r?ussir dans la vie et d?honorer la famille.\r\nTout enfants ne re?oit pas la m?me ?ducation et c\'est l? o? la diff?rence demeure entre ces gamins. la vie n\'est pas toujours rose pour ces petits anges africains, il y a certains qui ont ?t? abandonnes depuis le jour ou ils ont vu la lumi?re du jour, d\'autre dont les parents se sont d?barrasses pour plusieurs raisons (polygamie,ivrognerie,sorcellerie,...) et souvent ce sont ces enfants qui quittent le foyer familial pour les raisons cit?es ci-haut parfois pour maltraitance, manque des soins vis a vis des tuteurs...\r\nNe croyons pas seulement que l\'enfance en Afrique est p?nible pour un enfant ayant grandi dans une famille &quot;pauvre&quot;, celui qui grandi dans une famille &quot;riche&quot; aussi se bute ? des s?rieuses souffrances psychologiques: cet enfant a tout  ce qu\'il d?sir financi?rement, mat?riellement  mais pas souvent moralement car il a besoin d\'une affection venant de ses parents, il a besoin d??tre consol?, d??tre soign? mais c\'est rarement le cas. \r\nen bref l\'enfance est une merveilleuse ?tape de la vie o? l\'enfant ? la chance de d?couvrir plusieurs m?tiers et pouvoir les mettre en pratique ? l\'?ge propice... \r\n\r\n#enfance_en_afrique','2017-06-29 02:36:05','2018-01-23 07:46:31','5.jpg',10,1),(9,'Proclamation de fin d\'ann?e scolaire 2017','La proclamation de fin d?ann?e au complexe scolaire imani/mgr nsolotshy s\'est d?roul?e un certain premier, juillet 2017 aux environs de 11h.\r\nCette proclamation a commenc?e par une pri?re introduite par la R?v?rende s?ur administrateur puis est venu le moment de la s?ance culturelle avec au rendez-vous chant,po?me,d?clamation,danse etc...\r\nPuis est arrive la moment de la proclamation qui a d?but?e avec les classes des premi?res ann?es , jusqu?? celle de la troisi?me et ladite proclamation  a ?t? interrompu juste apr?s l?arriv?e de monseigneur le promoteur, qui s?enchantait avec le discours des finalistes 2016-2017, apr?s ce discours est venu celui du pr?fet des ?tudes qui a ?voque durant celui-ci les activit?s et le bilan  de l?ann?e scolaire enfin achev?e, ? la fin de son discours il a demand? qui l?Assembl?e garde une minute de silence en m?moire de la mort de la m?re d\'une ?l?ve de premi?re secondaire A.\r\nAvec l\'autorisation de Mgr le promoteur, le pr?fet poursuivi la proclamation ? partir des ?l?ves de quatri?me  jusqu?? ceux de cinqui?me h?tellerie et restauration. Apres cette proclamation est venue la &quot;c?r?monie de la coupe&quot;, celle-ci consiste ? remettre une coupe aux nouveaux finalistes avant de s\'approprier de cette coupe les anciens finalistes on fait un challenge qui leur demandait d?ex?cuter obligatoirement des pas de danses afin de r?cup?rer cette coupe qui symbolise leur entr?e dans la classe terminal et la r?ussite ? la fin de celle-ci.\r\n\r\n#proclamation_2017','2017-07-11 15:12:11','2017-07-14 15:18:52','9.jpg',10,1),(15,'Finalistes Du Complexe Scolaire Imani 2016-2017','Tout au long de l?ann?e scolaire 2016-2017, les ?l?ves de sixi?me terminal (toutes) ont pass? des instants inoubliables et en tant que galerie d?art nous nous sommes fait l?obligeance de garder en m?moire tout ces souvenirs et de les partager avec le reste du monde.\r\n\r\nDarlah kissimba: Enfin j?ai fini une grande partie des mes ?tudes, elles ont ?t? long : 15ans.\r\n\r\nJe me sens lib?r?, parce que c??tait dure souvent et amusant parfois, l??cole m?a aid? ? apprendre, comprendre les r?alit?s de la vie, c??tait int?ressant et ennuyant, et il avait parfois de cours que je n?aimais pas : moi et les maths on ?tait deux droites parall?les, \r\n\r\nBref,  J?ai connus des personnes : des amis, des ennemis? apr?s toute cette longue lutte je suis vraiment contente de finir cette phase et tr?s enthousiaste pour passer ? la suivante : l?universit?\r\n\r\nPhotos: #finalistes_2017','2017-07-14 14:53:22','2017-07-14 14:54:39','15.jpg',10,1),(18,'Bienvenue ? vous !','Salut tout le monde et bienvenue sur ngpictures je suis vraiment heureux de vous savoir nombreux, car aujourd?hui l?un de mes r?ves se r?alis? et continu ? se r?aliser gr?ce ? vous.\r\n\r\npour historique , l?id?e est venu quand j?ai commenc? la photographie il y a presqu?un  an, la plupart des mes photos ?taient belles et mes amis voulaient que je les partages avec eux mais comme ils sont nombreux et que s??tait vraiment difficile de partager mes photos avec tout le monde, J?ai eu l?id?e de faire un site o? ils pourraient non seulement les t?l?charger mais aussi publier, commenter, aimer, partager leur propres photos.\r\n\r\nVu que je programmait d?j? je commence ? d?velopper mon id?e seul, puis avec le temps j?ai du l?am?liorer et travailler dure ? la fin de l?ann?e 2016, la phase de r?alisation a commenc?e , j?ai travaill? sur le design , les fonctionnements avec mon Fr?re Scolary Ngandu qui m?a beaucoup aid? dans ce projet, au d?but du mois de mars 2017 la phase du responsive design a d?but?e c?est-?-dire que je devais faire un site qui s?adapterait sur les diff?rent types d??crans: mobile , tablette , et pc... En avril 2017, je suis pass? au fonctionnement et au rajout des fonctionnalit?s tel que les \"following\" et \"like et dislike\" bref en mai 2017, la premi?re annonce du site a ?t? faite pour mettre l?eau ? la bouche de nos futurs utilisateurs. En juin 2017, les finitions ont ?t? ?tablies.\r\n \r\nJuillet 2017, la derni?re phase celle de l?annonce a ?t? bien faite voil? pourquoi on se retrouve ici, nombreux et j?en suis ravi. Vos id?es, vos commentaire, nous aiderons ? am?liorer notre site afin de faire peut ?tre une application mobile, tout de d?pend de vous, construisons la premi?re application social de la RDC ensemble, j?attends vos id?es merci pour tout, le soutient et votre pr?sence.\r\n\r\n\r\n','2017-07-14 15:00:20','2017-07-18 00:51:23','18.jpg',10,1),(19,'Jeux sal?siens 2017','Chaque ann?e les sal?siens de don bosco organise des jeux dit sal?sien enfin de r?unir les jeunes dans une ambiance totalement sportive, toutes les ?coles sal?siennes s\'affrontent sur diff?rent sport : foot , basket , volley et autres...\r\n\r\nDans le but d?immortaliser ces instants magiques, nous nous fait l?obligeance de les captures en photo vous pourrais voir toutes les photo en cliquant sur l?hashtag  #Jeux_salesiens','2017-07-14 15:17:37','0000-00-00 00:00:00','19.jpg',10,1),(20,'Gretta mpunga','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 22:49:11','2017-07-17 22:57:43','20.jpg',10,1),(42,'Une amiti?','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 22:54:39','2017-07-18 00:50:52','42.jpg',10,1),(43,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 22:56:29','2017-07-18 00:51:11','43.jpg',10,1),(45,'Du d?clin ? l\'apog?e','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:05:55','2017-07-18 01:02:23','45.jpg',10,1),(47,'L\'shi tour','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:07:58','2017-07-18 01:03:49','47.jpg',10,1),(48,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:09:14','2017-07-18 01:04:41','48.jpg',10,1),(50,'RDC mon pays','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:10:06','2017-07-18 01:05:08','50.jpg',10,1),(51,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:13:28','2017-07-18 01:40:45','51.jpg',10,1),(52,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:16:16','2017-07-18 01:41:04','52.jpg',10,1),(53,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:16:51','2017-07-18 01:41:19','53.jpg',10,1),(54,'Un Fr?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:17:42','2017-07-18 01:40:22','54.jpg',10,1),(59,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:23:17','2017-07-18 01:39:58','59.jpg',10,1),(63,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:29:05','2017-07-18 01:39:43','63.jpg',10,1),(65,'25 pens?es sur la foi','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:32:38','2017-07-18 01:39:13','65.jpg',10,1),(69,'...','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:40:31','2017-07-18 01:06:58','69.jpg',10,1),(70,'...','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:41:59','2017-07-18 01:07:12','70.jpg',10,1),(71,'L\'innocence d\'un enfant','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:42:50','2017-07-18 01:04:19','71.jpg',10,1),(72,'L??glise, maison de Dieu','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:43:29','2017-07-18 01:03:05','72.jpg',10,1),(74,'L\'amour d\'une m?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:45:45','2017-07-17 23:46:14','74.jpg',10,1),(77,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:48:44','2017-07-18 01:00:49','77.jpg',10,1),(78,'Au couch? du soleil','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:51:40','2017-07-18 01:00:25','78.jpg',10,1),(80,'La premi?re experience','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:53:45','2017-07-18 01:00:02','80.jpg',10,1),(81,'Bernard Ng','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:54:59','2017-07-18 00:58:38','81.jpg',10,1),(84,'A ma m?re','Femme noire, femme africaine, ? toi ma m?re, je pense ? toi...\r\n? daman, ? ma m?re , toi qui me portas sur le dos , toi qui , m\'allaitas , toi qui gouvernas mes premiers pas, toi qui la premi?re m\'ouvris les yeux aux prodiges de la vie, je pense ? toi...\r\nFemme des champs, femme des rivi?res, femme du grand fleuve, ? toi , ma m?re je pense ? toi... \r\n? toi , daman , ? ma m?re , toi qui essuyais mes larmes , toi qui me r?jouissais le c?ur, toi qui , patiemment, supportais mes caprices, comme j\'aimerais encore ?tre pr?s de toi , ?tre enfant pr?s de toi !\r\nFemme simple, femme de la r?signation, ? toi , ma m?re , je pense ? toi...\r\n? Daman, Daman de la grande famille des forgerons, ma pens?e toujours se tourne vers toi , la tienne ? chaque pas m\'accompagne: ? Daman, ma m?re, comme j\'aimerais encore ?tre dans ta chaleur, ?tre enfant pr?s de toi...\r\nFemme noire, femme africaine, ? toi , ma m?re , merci ; merci pour tout ce que tu fis pour moi, ton fils , si loin , si pr?s de toi !\r\n\r\n#maman\r\n#camara_laye','2017-07-17 23:57:38','2017-07-18 17:52:03','84.jpg',10,1),(85,'Ma destin?e','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-17 23:59:04','2017-07-17 23:59:25','85.jpg',10,1),(87,'Face ? la lumi?re','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-18 00:00:47','2017-07-18 00:57:53','87.jpg',10,1),(91,'Kazadi mwamba : Un homme , un avenir','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-07-18 00:02:50','2017-07-18 00:08:29','91.jpg',10,1);
/*!40000 ALTER TABLE `ngarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngcommentaire`
--

DROP TABLE IF EXISTS `ngcommentaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngcommentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` text NOT NULL,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date_pub` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngcommentaire`
--

LOCK TABLES `ngcommentaire` WRITE;
/*!40000 ALTER TABLE `ngcommentaire` DISABLE KEYS */;
INSERT INTO `ngcommentaire` VALUES (1,'http://127.0.0.1:8080/ngarticle/miniature/640-640/19.jpg',19,0,10,'2017-07-14 15:30:33');
/*!40000 ALTER TABLE `ngcommentaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngdislikess`
--

DROP TABLE IF EXISTS `ngdislikess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngdislikess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngdislikess`
--

LOCK TABLES `ngdislikess` WRITE;
/*!40000 ALTER TABLE `ngdislikess` DISABLE KEYS */;
/*!40000 ALTER TABLE `ngdislikess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nggalerie`
--

DROP TABLE IF EXISTS `nggalerie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nggalerie` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `date_pub` datetime NOT NULL,
  `tags` text NOT NULL,
  `nom` varchar(500) NOT NULL,
  `confirme` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nggalerie`
--

LOCK TABLES `nggalerie` WRITE;
/*!40000 ALTER TABLE `nggalerie` DISABLE KEYS */;
INSERT INTO `nggalerie` VALUES (7,10,'2017-06-26 20:42:12','free chilling day\r\n\r\ntags: Naomie , Rachel , Benitha et Yria','Ngpictures_IMG_5247.JPG',1),(8,10,'2017-06-26 20:43:30','free chilling day\r\n\r\ntags: jonathan , maria\r\n','Ngpictures_IMG_5288.JPG',1),(9,10,'2017-06-26 20:44:32','free chilling day\r\n\r\ntags: jonathan , maria','Ngpictures_IMG_5287.JPG',1),(10,10,'2017-06-26 20:48:14','free chilling day\r\n\r\ntags: gretha , prince , naomie , jay','Ngpictures_IMG_5277.JPG',1),(11,10,'2017-06-26 20:49:38','free chilling day\r\n\r\ntags: maria, justicia , gretta , prince , naomi , jay','Ngpictures_IMG_5278.JPG',1),(12,10,'2017-06-26 20:50:20','free chilling day\r\n\r\ntags: jonathan','Ngpictures_IMG_5274.JPG',1),(13,10,'2017-06-26 20:52:25','free chilling day \r\n\r\ntags: junior Smith , dry  ','Ngpictures_IMG_5261.JPG',1),(14,10,'2017-06-26 20:53:40','free chilling day\r\n\r\ntags: Benitha , Yria','Ngpictures_IMG_5250.JPG',1),(15,10,'2017-06-26 20:54:39','free chilling day\r\n\r\ntags: naomie','Ngpictures_IMG_5248.JPG',1),(16,10,'2017-06-26 20:55:38','free chilling day\r\n\r\ntags: Benitha','Ngpictures_IMG_5249.JPG',1),(17,10,'2017-06-26 21:01:28','Ngpictures: nous sommes tous victorieux dans le nom de J?sus, pour atteindre nos objectifs, il faut travailler et ne jamais laisser tomb?, c\'est avec une telle discipline que ce site a vu le jour.','Ngpictures_img (74).JPG',1),(18,10,'2017-06-26 21:04:30','journ?e culturelle d?cembre 2016\r\n\r\n\r\ntags: bob , endi , elyon , strat','Ngpictures_img (116).JPG',1),(19,10,'2017-06-26 21:08:55','Ngpictures: l\'expression est propre ? l\'homme, il cherche toujours un moyen pour y arriver et cela ? travers, la photo, le dessin et la musique etc...','Ngpictures_img (4).JPG',1),(20,10,'2017-06-26 21:14:52','Ngpictures: quand tu te sens libre, quand tu as des ailes, tu oublies tout et tu vis..\r\n','Ngpictures_img (261).JPG',1),(21,10,'2017-06-26 21:19:47','Blanche birthday\r\n\r\ntags: Blanche , aldy','Ngpictures_IMG_6137.JPG',1),(22,10,'2017-06-26 21:21:41','blanche birthday\r\n\r\ntags: jonathan','Ngpictures_IMG_6325.JPG',1),(23,10,'2017-06-26 21:24:00','blanche birthday\r\n\r\ntags: blanche','Ngpictures_IMG_6174.JPG',1),(24,10,'2017-06-26 21:30:37','blanche birthday\r\n\r\ntags: blanche','Ngpictures_img (299).JPG',1),(25,10,'2017-06-26 21:38:21','Ngpicutres: Tu peux toujours compter sur ton fr?re, quand tu tends la main, il la prend...\r\n\r\ntags: peter ng','Ngpictures_IMG_5969.JPG',1),(26,10,'2017-06-26 21:40:15','Viste Polyclinique imani\r\n\r\ntags: jessy , emmanuel , kenan , jean','Ngpictures_IMG_5739.JPG',1),(27,10,'2017-06-26 21:42:19','Shooting : Gretta mpunga','Ngpictures_IMG_7099.JPG',1),(28,10,'2017-06-26 21:44:02','Shooting: Gretta mpunga','Ngpictures_IMG_7122.JPG',1),(29,10,'2017-06-26 21:44:55','Shooting: Gretta mpunga','Ngpictures_IMG_7129.JPG',1),(30,10,'2017-06-26 21:46:32','Shooting: Gretta mpunga','Ngpictures_IMG_7035.JPG',1),(31,10,'2017-06-26 21:48:42','Shooting: Gretta mpunga','Ngpictures_IMG_7052.JPG',1),(32,10,'2017-06-26 21:51:16','Concert chorale mala?ka day\r\n\r\ntags: sephora , angel','Ngpictures_img (120).JPG',1),(33,10,'2017-06-26 21:53:08','journ?e culturelle d?cembre 2016\r\n\r\ntags: endi , elyon , jobab , dieu-merci','Ngpictures_IMG_2693.JPG',1),(34,10,'2017-06-26 21:54:03','journ?e culturelle d?cembre 2016\r\n\r\ntags: naomie , jean','Ngpictures_IMG_2696.JPG',1),(36,10,'2017-06-26 21:57:39','journ?e culturelle d?cembre 2016\r\n\r\ntags: Ketsia , aurelie , dorcas , lys','Ngpictures_IMG_2802.JPG',1),(37,10,'2017-06-26 21:59:02','jeux salesiens 2017\r\n\r\ntags: team salama','Ngpictures_IMG_8065.JPG',1),(38,10,'2017-06-26 22:02:53','Ngpictures: A la suite de Don Bosco, les sal?siens ont continu?s a promouvoir les diff?rents jeux lors de manifestations sal?siennes\r\n\r\njeux sal?siens 2017\r\n','Ngpictures_IMG_7993.JPG',1),(39,10,'2017-06-26 22:05:10','jeux sal?siens 2017','Ngpictures_IMG_8389.JPG',1),(40,10,'2017-06-26 22:06:13','jeux sal?siens 2017','Ngpictures_IMG_8614.JPG',1),(41,10,'2017-06-26 22:07:51','jeux sal?siens 2017','Ngpictures_IMG_8492.JPG',1),(42,10,'2017-06-26 22:09:29','jeux sal?siens 2017','Ngpictures_IMG_8878.JPG',1),(43,10,'2017-06-26 22:11:00','jeux sal?siens 2017','Ngpictures_IMG_8534.JPG',1),(44,10,'2017-06-26 22:15:42','jeux sal?siens 2017','Ngpictures_IMG_8784.JPG',1),(45,10,'2017-06-26 22:16:38','jeux sal?siens 2017','Ngpictures_IMG_8887.JPG',1),(46,10,'2017-06-26 22:18:31','jeux sal?siens 2017\r\n\r\ntags: gracia kant','Ngpictures_IMG_8997.JPG',1),(47,10,'2017-06-26 22:26:38','jeux sal?siens 2017','Ngpictures_IMG_9149.JPG',1),(48,10,'2017-06-26 22:28:42','jeux sal?siens 2017','Ngpictures_IMG_9432.JPG',1),(49,10,'2017-06-26 22:31:29','jeux sal?siens 2017','Ngpictures_IMG_9807.JPG',1),(50,10,'2017-06-26 22:32:20','jeux sal?siens 2017','Ngpictures_IMG_9366.JPG',1),(51,10,'2017-06-26 22:36:24','jeux sal?siens 2017','Ngpictures_IMG_9426.JPG',1),(52,10,'2017-06-26 22:38:55','jeux sal?siens 2017','Ngpictures_IMG_9750.JPG',1),(53,10,'2017-06-26 22:40:49','jeux sal?siens 2017','Ngpictures_IMG_9555.JPG',1),(54,10,'2017-06-26 22:49:31','jeux sal?siens 2017','Ngpictures_IMG_9562.JPG',1),(55,10,'2017-06-26 22:53:30','jeux sal?siens 2017','Ngpictures_IMG_9485.JPG',1),(56,10,'2017-06-26 23:02:06','Monsieur Nsolotshy birthday\r\n\r\ntags: endi','Ngpictures_IMG_5081.JPG',1),(57,10,'2017-06-26 23:04:25','Monsieur Nsolosthy birthday\r\n\r\ntags: david , jay','Ngpictures_IMG_5022.JPG',1),(58,10,'2017-06-26 23:06:49','shooting: sport','Ngpictures_IMG_1554.JPG',1),(59,10,'2017-06-26 23:08:56','shooting: sport\r\n\r\ntags: bob ','Ngpictures_IMG_1561.JPG',1),(60,10,'2017-06-26 23:10:14','shooting: sport','Ngpictures_IMG_1568.JPG',1),(61,10,'2017-06-26 23:14:45','shooting: sport\r\n\r\ntags: glodi mutebwa','Ngpictures_IMG_1624.JPG',1),(62,10,'2017-06-26 23:18:06','shooting: Mr tr?sor jibik','Ngpictures_IMG_5921.JPG',1),(63,10,'2017-06-26 23:23:07','Naomi fane birthday\r\n\r\ntags: naomi fane','Ngpictures_IMG_3222.JPG',1),(64,10,'2017-07-06 00:37:00','','Ngpictures_IMG_9802.JPG',1),(65,10,'2017-07-06 00:38:00','','Ngpictures_IMG_8785.JPG',1),(66,10,'2017-07-18 01:46:33','#bernard_ng\r\n#donciel','Ngpictures_bernard_ng (4).JPG',1),(67,10,'2017-07-18 01:47:52','#bernard_ng','Ngpictures_bernard_ng (6).JPG',1),(68,10,'2017-07-18 01:48:32','#bernard_ng\r\n#david\r\n#dina','Ngpictures_bernard_ng (2).JPG',1),(69,10,'2017-07-18 01:49:11','#lushi_tout\r\n#bernard_ng','Ngpictures_bernard_ng (9).JPG',1),(70,10,'2017-07-18 01:49:54','#bernard_ng\r\n#face_a_lumiere\r\n#meta','Ngpictures_bernard_ng (14).JPG',1);
/*!40000 ALTER TABLE `nggalerie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nglikes`
--

DROP TABLE IF EXISTS `nglikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nglikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nglikes`
--

LOCK TABLES `nglikes` WRITE;
/*!40000 ALTER TABLE `nglikes` DISABLE KEYS */;
INSERT INTO `nglikes` VALUES (1,19,0,10);
/*!40000 ALTER TABLE `nglikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nglove`
--

DROP TABLE IF EXISTS `nglove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nglove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nglove`
--

LOCK TABLES `nglove` WRITE;
/*!40000 ALTER TABLE `nglove` DISABLE KEYS */;
/*!40000 ALTER TABLE `nglove` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online`
--

DROP TABLE IF EXISTS `online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `time_actu` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online`
--

LOCK TABLES `online` WRITE;
/*!40000 ALTER TABLE `online` DISABLE KEYS */;
INSERT INTO `online` VALUES (12,1526503458,10);
/*!40000 ALTER TABLE `online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problemes`
--

DROP TABLE IF EXISTS `problemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problemes` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `probleme` text NOT NULL,
  `date_pub` datetime NOT NULL,
  `statut` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problemes`
--

LOCK TABLES `problemes` WRITE;
/*!40000 ALTER TABLE `problemes` DISABLE KEYS */;
/*!40000 ALTER TABLE `problemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verset`
--

DROP TABLE IF EXISTS `verset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(25) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verset`
--

LOCK TABLES `verset` WRITE;
/*!40000 ALTER TABLE `verset` DISABLE KEYS */;
INSERT INTO `verset` VALUES (1,'Jo?.2:23','Et vous, enfants de Sion, soyez dans l\'all?gresse'),(2,'Ps.73:28','Pour moi, m\'approcher de Dieu, c\'est mon bien'),(3,'1Co.13:13','Maintenant donc ces trois choses demeurent: la foi, l\'esp?rance, la charit?'),(4,'H?.3:4','Celui qui a construit toutes choses, c\'est Dieu'),(5,'Job 34:32','Montre-moi ce que je ne vois pas'),(6,'La.3:25','L\'?ternel a de la bont? pour qui esp?re en lui'),(7,'Ec.8:12','Le bonheur est pour ceux qui craignent Dieu'),(8,'2Co.9:1','Gr?ces soient rendues ? Dieu pour son don ineffable!'),(9,'2Co.9:15','Gr?ces soient rendues ? Dieu pour son don ineffable!'),(10,'1Co.15:57','Gr?ces soient rendues ? Dieu, qui nous donne la victoire par notre Seigneur J?sus-Christ! '),(11,'N?.1:11','Donne aujourd\'hui du succ?s ? ton serviteur'),(12,'Ps.68:20','B?ni soit le Seigneur chaque jour! Quand on nous accable, Dieu nous d?livre'),(13,'Ge.12:2','Je te b?nirai; ... et tu seras une source de b?n?dictions'),(14,'Ps.115:13','Il b?nira ceux qui craignent l\'?ternel'),(15,'Ja.1:12','Heureux l\'homme qui supporte patiemment la tentation'),(16,'Ps.32:1','Heureux celui ? qui la transgression est remise, ? qui le p?ch? est pardonn?!'),(17,'Lu.6:21','Heureux vous qui pleurez maintenant, car vous serez dans la joie!'),(18,'Ro.10:8','La parole est pr?s de toi, dans ta bouche et dans ton c?ur\r\n'),(19,'1Pi.4:7','La fin de toutes choses est proche\r\n'),(20,'2Co.5:19','Dieu ?tait en Christ, r?conciliant le monde avec lui-m?me\r\n'),(21,'1Jn.5:11','Dieu ?tait en Christ, r?conciliant le monde avec lui-m?meDieu nous a donne la vie ?ternellement,...et cette vie ?ternelle est dans son Fils'),(22,'1Jn.4:8','Dieu est amour'),(23,'1Jn.1:5','Dieu est lumi?re et il n\'y a point en lui de t?n?bres'),(24,'2Co.9:8','Dieu peut vous combler de toutes sortes de gr?ces '),(25,'Ph.4:19','Et mon Dieu pourvoira ? tous vos besoins '),(28,'Ps.62:9','Dieu est notre refuge'),(29,'Da.3:17','Voici, notre Dieu que nous servons peut nous d?livrer de la fournaise ardente'),(30,'Ph.2:13','Car c\'est Dieu qui produit en vous le vouloir et le faire, selon son bon plaisir'),(31,'?s.48:17','Moi, l\'?ternel, ton Dieu, je t\'instruis pour ton bien'),(32,'Job 35:10','O? est Dieu, mon cr?ateur, qui inspire des chants d\'all?gresse pendant la nuit\r\n'),(33,'Ro.15:5','Que le Dieu de la pers?v?rance.. vous donne d\'avoir les m?mes sentiments...'),(34,'Mt.26:41','Veillez et priez, afin que vous ne tombiez pas dans la tentation\r\n'),(35,'1Co.16:13','Veillez, demeurez fermes dans la foi\r\n'),(36,'Pr.4:23','Garde ton coeur plus que toute autre chose'),(37,'Ps.77:12','Je rappellerai les oeuvres de l\'?ternel, Car je me souviens de tes merveilles d\'autrefois\r\n'),(38,'J?.32:41','Je prendrai plaisir ? leur faire du bien'),(39,'?z.34:26','Je ferai d\'elle un sujet de b?n?diction'),(40,'Ap.2:10','Sois fid?le jusqu\'? la mort, et je te donnerai la couronne de vie'),(41,'Ro.12:10','Soyez pleins d\'affection les uns pour les autres; par honneur, usez de pr?venances r?ciproques'),(42,'2Co.13:11','Ayez un m?me sentiment, vivez en paix'),(43,'Ja.1:22','Mettez en pratique la parole'),(44,'1Pi.1:15','Soyez saints dans toute votre conduite, selon qu\'il est ?crit '),(45,'1Pi.1:16','Vous serez saints, car je suis saint'),(46,'Ti.3:1','Rappelle-leur d\'?tre soumis ..., d\'?tre pr?ts ? toute bonne oeuvre\r\n'),(47,'Ja.1:21','Recevez avec douceur la parole qui a ?t? plant? en vous, et qui peut sauver vos ?mes '),(48,'1Co.1:5','En lui vous avez ?t? combl?s de toutes les richesses '),(49,'Ps.17:8','Prot?ge-moi, ? l\'ombre de tes ailes'),(50,'Ps.119:165','Il y a beaucoup de paix pour ceux qui aiment ta loi, et il ne leur arrive aucun malheur'),(51,'2Pi.1:4','Les plus grandes et les plus pr?cieuses promesses'),(52,'Ja.2:26','La foi sans ?uvres est morte'),(53,'Ro.10:17','Ainsi la foi vient de ce qu\'on entend, et ce qu\'on entend vient de la parole de Christ '),(54,'Mt.9:28','Croyez-vous que je puisse faire cela? '),(55,'1Pi.2:6','Celui qui croit en elle ne sera point confus'),(56,'?s.61:7','Leur joie sera ?ternelle'),(57,'De.12:18','C\'est devant l\'?ternel ton Dieu que tu feras servir ? ta joie tous les biens que tu poss?deras'),(58,'Am.5:4','Cherchez-moi, et vous vivrez!'),(59,'2Co.4:18','Les choses visibles sont passag?res, et les invisibles sont ?ternelles'),(60,'Ca.1:4','Entra?ne-moi apr?s toi! Nous courrons! '),(61,'?s.63:9','Dans toutes leurs d?tresses ils n\'ont pas ?t? sans secours'),(62,'Ps.134:2','Qui vous tenez dans la maison de l\'?ternel, dans les parvis de la maison de notre Dieu! '),(63,'J?.33:3','Invoque-moi, et je te r?pondrai'),(64,'Ps.57:3','Je crie au Dieu Tr?s Haut, au Dieu qui agit en ma faveur'),(65,'Ps.55:23','Remets ton sort ? l\'?ternel, et il te soutiendra '),(66,'1Jn.3:2','Bien-aim?, nous sommes maintenant enfant de Dieu '),(67,'2Pi.3:18','Croissez dans la gr?ce '),(68,'1Pi.1:3,4','B?ni soit Dieu et notre Seigneur J-C...qui nous a r?g?n?r?s,...pour un h?ritage...'),(69,'Lu.9:23','Si quelqu\'un veut venir apr?s moi, qu\'il renonce ? lui-m?me, qu\'il se charge chaque jour de sa croix, et qu\'il me suive'),(70,'Ps.71:16','Je dirai tes oeuvres puissantes, Seigneur ?ternel! '),(71,'Ro.12:2','Que vous discerniez quelle est la volont? de Dieu, ce qui est bon, agr?able et parfait'),(72,'Ja.1:18','Il nous a engendr?s selon sa volont?, par la parole de v?rit?'),(73,'2Co.6:2','Voici maintenant le jour du salut'),(74,'Ga.3:28','Tous vous ?tes un en J?sus-Christ'),(75,'1Co.10:31','Faites tout pour la gloire de Dieu '),(76,'1Pi.5:7','D?chargez-vous sur lui de tous vos soucis, car lui-m?me prend soin de vous'),(77,'Jn.17:10','Tout ce qui est ? moi est ? toi, et ce qui est ? toi est ? moi'),(78,'Ro.8:37','Mais dans toutes ces choses nous sommes plus que vainqueurs '),(79,'1Co.16:14','Que tout ce que vous faites se fasse avec charit?! '),(80,'Mc.7:37','Il fait tout ? merveille'),(81,'Ro.8:14','Tous ceux qui sont conduits par l\'Esprit de Dieu sont fils de Dieu'),(82,'Ec.3:14','Tout ce que Dieu fait durera toujours'),(83,'Mc.1:35','Pendant qu\'il faisait encore tr?s sombre, il se leva, et sortit pour aller dans un lieu d?sert, o? il pria'),(84,'Ro.10:13','Car quiconque invoquera le nom du Seigneur sera sauv?'),(85,'Ja.1:17','Toute gr?ce excellente... descend d\'en haut '),(86,'2Co.3:3','Vous ?tes manifestement une lettre de Christ'),(87,'1Pi.2:3','Vous avez go?t? que le Seigneur est bon'),(88,'1Co.3:23','Tout est ? vous; et vous ?tes ? Christ, et Christ est ? Dieu '),(89,'1Co.6:20','Vous avez ?t? rachet?s ? un grand prix'),(90,'1Pi.5:4','Vous obtiendrez la couronne incorruptible de la gloire'),(91,'1Co.2:12','Or nous, nous n\'avons pas re?u l\'esprit du monde, mais l\'Esprit qui vient de Dieu'),(92,'?p.2:13','Vous avez ?t? rapproch?s par le sang de Christ\r\n'),(93,'Ps.105:43','Il fit sortir son peuple dans l\'all?gresse, ses ?lus au milieu des cris de joie'),(94,'2Co.3:17','L? o? est l\'Esprit du Seigneur, l? est la libert?'),(95,'Jn.12:26','L? o? je suis, l? aussi sera mon Serviteur'),(96,'Ac.4:31','Ils annon?aient la parole de Dieu avec assurance'),(97,'1Pi.4:11','Si quelqu\'un parle, que ce soit comme annon?ant les oracles de Dieu'),(98,'1Pi.3:15','Sanctifiez dans vos c?urs Christ le Seigneur'),(99,'Ps.38:10','Seigneur! tous mes d?sirs sont devant toi '),(100,'Ha.3:2','Accomplis ton ?uvre dans le cours des ann?es, ? ?ternel!'),(101,'Mt.4:10','Tu adoreras le Seigneur, ton Dieu, et tu le serviras lui seul '),(102,'?s.12:2','L\'?ternel est ma force et le sujet de mes louanges'),(103,'Ps.29:11','L\'?ternel b?nit son peuple et le rend heureux'),(104,'Ps.84:12','Car l\'?ternel Dieu est un soleil et un bouclier... '),(105,'Ps.27:4','L\'?ternel est le rocher des si?cles'),(106,'?s.60:20','L\'?ternel sera ta lumi?re ? toujours'),(107,'Jo?.3:16','L\'?ternel est refuge pour son peuple'),(109,'Ja.5:11','Le Seigneur est plein de mis?ricorde et de compassion'),(110,'?s.53:6','L\'?ternel a fait retomber sur lui l\'iniquit? de nous tous'),(111,'Ps.84:12','L\'?ternel donne la gr?ce et la gloire'),(112,'Na.1:7','L\'?ternel est bon,... Il conna?t ceux qui se confient en lui'),(113,'Ps.138:8','L\'?ternel agira en ma faveur'),(114,'Ex.34:6','L\'?ternel, l\'?ternel, Dieu mis?ricordieux et compatissant'),(115,'J?.31:34','Je ne me souviendrai plus de leur p?ch?'),(116,'Ps.50:3','Il vient, notre Dieu, il ne reste pas en silence'),(117,'Ac.21:14','Que la volont? du Seigneur se fasse!'),(118,'Ps.119:76','Que ta bont? soit ma consolation, Comme tu l\'as promis ? ton serviteur!'),(119,'Ps.119:173','Que ta main me soit en aide! '),(120,'Ps.61:5','Je voudrais s?journer ?ternellement dans ta tente'),(121,'Ro.7:4','Que nous portions des fruits pour Dieu '),(122,'Ja.1:6','Qu\'il demandent avec foi, sans douter'),(123,'Ja.1:5','Qu\'il l\'a demande (la sagesse) ? Dieu, qui donne ? tous simplement et sans reproche '),(124,'Ga.4:5','Afin que nous re?ussions l\'adoption'),(125,'Ro.6:23','Le don gratuit de Dieu, c\'est la vie ?ternelle en J?sus-Christ notre Seigneur'),(126,'Mt.10:8','Vous avez re?u gratuitement, donnez gratuitement'),(127,'Ro.11:29','Dieu ne se repent pas de ses dons et de son appel '),(128,'Ja.2:22','Par les oeuvres la foi fut rendue parfaite '),(129,'?s.32:17','L\'?uvre de la justice sera la paix'),(130,'Mt.9:2','Prends courage, mon enfant, tes p?ch?s te sont pardonn?s'),(131,'2Pi.3:15','Croyez que la patience de notre Seigneur est votre salut'),(132,'Ja.5:8','Vous aussi, soyez patients, affermissez vos c?urs'),(133,'Ps.49:9','Le rachat de leur ?me est cher, et n\'aura jamais lieu'),(134,'?p.5:16','Rachetez le temps, car les jours sont mauvais'),(135,'1Co.14:1','Recherchez la charit?. Aspirez aussi aux dons spirituels'),(136,'Ap.5:12','L\'agneau qui a ?t? immol? est digne de recevoir la puissance,... et la louange'),(137,'2Co.5:17','Les choses anciennes sont pass?es; voici, toutes choses sont devenues nouvelles '),(138,'1Pi.4:14','L\'Esprit de gloire, l\'Esprit de Dieu, repose sur vous'),(139,'Ro.12:11','Soyez fervents d\'esprit. Servez le Seigneur'),(140,'1Ti.2:5','Il y a un seul Dieu ... un Seul m?diateur entre Dieu et les hommes, J?sus-Christ homme'),(141,'Ro.8:31','Si Dieu est pour nous, qui sera contre nous?'),(142,'1Ch.28:9','Si tu le cherches, il se laissera trouver par toi'),(143,'H?.10:37','Encore un peu, ... celui qui doit venir viendra et  il ne tardera pas'),(144,'Col.3:3','Votre vie est cach?e avec Christ en Dieu'),(145,'Pr.3:33','Il b?nit la demeure des justes'),(146,'2S.23:5','Il a fait avec moi une alliance ?ternelle'),(147,'?p.1:13','Vous avez ?t? scell?s du Saint-esprit'),(149,'Ps.1:6','Car l\'?ternel conna?t la voie des justes, et la voie des p?cheurs m?ne ? la ruine'),(150,'Mt.6:8','Votre P?re sait de quoi vous avez besoin, avant que vous le lui demandiez'),(151,'1Co.8:1','La connaissance enfle, mais la charit? ?difie'),(152,'2Co.6:18','Je serai pour vous un p?re, et vous serez pour moi des fils et des filles'),(153,'Ac.13:39','Et que quiconque crois est justifi? par lui de toutes les choses'),(154,'Ps.138:5','Ils c?l?breront les voies de l\'?ternel'),(155,'J?.3:19','Je disais: Tu m\'appelleras: Mon p?re!'),(156,'?z.36:26','Je vous donnerai un c?ur nouveau'),(157,'Jn.1:4','En elle ?tait la vie, et la vie ?tait la lumi?re des hommes'),(158,'Mc.6:56','Et tous ceux qui le touchaient ?taient gu?ris.'),(159,'1Jn.4:16','Et nous, nous avons connu l\'amour que Dieu a pour nous '),(160,'Lu.2:14','Gloire ? Dieu dans les lieux tr?s hauts, et paix sur la terre parmi les hommes qu\'Il agr?e! '),(161,'1Th.1:10','Et pour attendre des cieux son Fils'),(162,'L?.26:11','J\'?tablirai ma demeure au milieu de vous'),(163,'1Co.2:4','Et ma parole et ma pr?dication ... une d?monstration d\'Esprit et de puissance'),(164,'H?.6:15','Et c\'est ainsi qu\'Abraham, ayant pers?v?r?, obtint l\'effet de la promesse.'),(165,'Mt.25:40','Et le roi leur r?pondra: ... c\'est ? moi que vous les avez faites. '),(166,'Ap.7:17','Car l\'agneau qui est au milieu du tr?ne les pa?tra et les conduira aux sources des eaux de la vie'),(167,'Ps.149:4','Car l\'?ternel prend plaisir ? son peuple'),(168,'So.1:7','Le jour de l\'?ternel est proche'),(169,'Ps.117:2','Car sa bont? pour nous est grande, et sa fid?lit? dure ? toujours. '),(170,'?s.65:17','Car je vais cr?er des nouveaux cieux et une nouvelle terre\r\n'),(171,'2Co.1:20','C\'est pourquoi encore l\'Amen par lui est prononc? par nous ? sa gloire.'),(172,'1Jn.1:2','Car la vie a ?t? manifest?e '),(173,'Mt.11:30','Car mon joug est doux, et mon fardeau l?ger. '),(174,'?s.49:10','Car celui qui a piti? d\'eux sera leur guide'),(175,'1Co.3:9','Car nous sommes ouvriers avec Dieu.'),(176,'2Co.2:15','Nous sommes, en effet, pour Dieu la bonne odeur de Christ'),(177,'Jn.16:27','Car le P?re lui-m?me vous aime'),(178,'1Co.1:18','Car la pr?dication de la croix est... une puissance de Dieu.'),(179,'J?.50:5','Venez et attachez-vous ? l\'?ternel'),(180,'?s.45:23','La v?rit? sort de ma bouche et ma parole ne sera point r?voqu?e'),(181,'H?.7:22,25','J?sus ... toujours vivant pour interc?der en leur faveur'),(182,'Ja.5:17','?lie ?tait un homme de la m?me nature que nous '),(183,'2Co.7:1','Ayant donc de telles promesses, bien-aim?s, purifions-nous '),(184,'Pr.18:10','Le nom de l\'?ternel est une tour forte'),(185,'H?.4:15','Il a ?t? tent? comme nous en toutes choses, sans commettre de p?ch?.'),(186,'1Jn.2:17','Celui qui fait la volont? de Dieu demeure ?ternellement. '),(187,'Ps.100:5','Car l\'?ternel est bon; sa bont? dure toujours... '),(189,'Ps.36:6','?ternel! ta bont? atteint jusqu\'aux cieux'),(190,'1Jn.2:28','Et maintenant, petits enfants, demeurez en lui'),(191,'Pr.8:17','Ceux qui me cherchent me trouvent.'),(192,'Ps.63:9','Mon ?me est attach?e ? toi; ta droite me soutient.'),(193,'Jo?.1:19','C\'est vers toi que je crie, ? ?ternel'),(194,'1Co.3:8','Chacun recevra sa propre r?compense selon son propre travail.'),(195,'Ps.8:10','Que ton nom est magnifique sur toute la terre! '),(196,'Ps.139:17','Que tes pens?es, ? Dieu, me semblent imp?n?trables! '),(197,'Ro.11:33','Que ses jugements sont insondables, et ses voies incompr?hensibles! '),(198,'?s.40:11','Comme un berger, il pa?tra son troupeau'),(199,'Ro.10:15','Qu\'ils sont beaux les pieds de ceux qui annoncent la paix'),(200,'Ps.56:4','Quand je suis dans la crainte, en toi je me confie.'),(201,'No.22:6','Celui que tu b?nis est b?ni, et que celui que tu maudis est maudit. '),(202,'1Co.1:8','Il nous affermira aussi jusqu\'? la fin'),(203,'Ga.1:4','J-C s\'est donn? lui-m?me pour nos p?ch?'),(204,'1Jn.1:7','Le sang de J?sus son fils nous purifie de tout p?ch?.'),(205,'2Co.5:17','Si quelqu\'un est en Christ, il est une nouvelle cr?ature. '),(206,'Jn.10:9','Si quelqu\'un entre par moi il sera sauv?'),(207,'Jn.7:37','Si quelqu\'un a soif, qu\'il vienne ? moi, et qu\'il boive. '),(208,'1Co.8:3','Mais si quelqu\'un aime Dieu, celui-l? est connu de lui. \r\n'),(209,'Mt.24:45','Quel est donc le serviteur fid?le et prudent?'),(210,'Jn.12:26','Si quelqu\'un me sert, qu\'il me suive'),(211,'Ps.34:6','Quand on tourne vers lui les regards, on est rayonnant de joie'),(212,'Jn.8:12','Celui qui me suit...aura la lumi?re de la vie.'),(213,'2Co.9:6','Celui qui s?me peu moissonnera peu, et celui qui s?me abondamment moissonnera abondamment.'),(214,'Pr.28:18','Les hommes int?gres h?ritent le bonheur'),(215,'?p.3:20,21','Celui qui peut faire par la puissance qui agit en nous, ... ? lui soit la gloire'),(216,'Ps.118:8','Mieux vaut chercher un refuge en l\'?ternel que de se confier ? l\'homme'),(217,'Ro.5:5','L\'amour de Dieu est r?pandu dans nos c?urs par le Saint Esprit qui nous a ?t? donn?. '),(218,'1Jn.4:9','L\'Amour de Dieu a ?t? manifest? envers nous'),(219,'Ro.8:28','Toutes choses concourent au bien de ceux qui aiment Dieu'),(220,'Pr.22:9','L\'homme dont le regard est bienveillant sera b?ni '),(221,'?s.54:10','Mon amour ne s\'?loignera point de toi'),(222,'Ja.2:13','La mis?ricorde triomphe du jugement. '),(223,'Ps.18:36','Ta droite me soutient, Et je deviens grand par ta bont?.'),(224,'Ja.5:16','La pri?re fervente du juste a une grande efficace. '),(225,'2Ch.25:9','L\'?ternel peut te donner bien plus que cela.'),(226,'Ja.5:15','La pri?re de la foi sauvera le malade'),(227,'Pr.15:29','Il ?coute la pri?re des justes.'),(229,'?s.42:16','Je changerai les devant eux les t?n?bres en lumi?re'),(230,'1Co.4:10','Nous sommes fous ? cause de Christ'),(231,'Mi.4:5','Nous marcherons, nous, au nom de l\'?ternel, notre Dieu, ? toujours et ? perp?tuit?.'),(232,'1Th.5:8','Nous qui sommes des jours, soyons sobres'),(233,'2Co.5:1','Nous avons dans le ciel un ?difice qui est l\'ouvrage de Dieu'),(234,'1Co.1:23','Nous, nous pr?chons Christ crucifi?'),(235,'2Co.5:7','Car nous marchons par la foi et non par la vue'),(236,'Ps.30:6','Sa col?re dure un instant, Mais sa gr?ce toute la vie'),(237,'Ps.11:1','C\'est en l\'?ternel que je cherche un refuge. '),(238,'Ps.28:7','En lui mon coeur se confie, et je suis secouru'),(239,'Ge.49:18','J\'esp?re en ton secours, ? ?ternel!'),(240,'Ps.3:9','Que ta b?n?diction soit sur ton peuple!'),(241,'Ap.3:12','J\'?crirai sur lui le nom de mon Dieu,... et mon nom nouveau.'),(242,'Ps.139:24','Regarde si je suis sur une mauvaise voie, et conduis-moi sur la voie de l\'?ternit?! '),(243,'?s.9:5','On l\'appellera Admirable, Conseiller, Dieu puissant'),(244,'?s.32:18','Mon peuple demeurera dans le s?jour de la paix'),(245,'Za.14:1','Voici, le jour de l\'?ternel arrive'),(246,'Ro.13:11','C\'est l\'heure de vous r?veiller enfin du sommeil'),(247,'Ps.27:11','?ternel! enseigne-moi ta voie '),(248,'Ps.143:10','Enseigne-moi ? faire ta volont?! Car tu es mon Dieu. '),(249,'?s.2:3','Venez, et montons...afin qu\'il nous enseigne ses voies'),(250,'?s.1:17','Apprenez ? faire le bien'),(251,'1Jn.1:3','Notre communion est avec le P?re et avec son Fils J?sus-Christ. '),(252,'?s.41:13','Ne crains rien, je viens ? ton secours.'),(253,'Za.8:13','Ne craignez pas, et que vos mains se fortifient!'),(254,'Ac.20:24','Mais je ne fais pour moi-m?me aucun cas de ma vie'),(255,'Ps.103:2','Mon ?me, b?nis l\'?ternel, Et n\'oublie aucun de ses bienfaits! '),(256,'2Co.5:21','Celui qui n\'a point connu le p?ch?, il l\'a fait devenir p?ch? pour nous'),(257,'2Pi.3:9','Le Seigneur ne tarde pas dans l\'accomplissement de la promesse'),(258,'Ps.9:19','L\'esp?rance des mis?rables ne p?rit pas ? toujours.'),(259,'?p.4:30','N\'attristez pas le Saint-esprit de Dieu '),(260,'Pr.11:4','La richesse ne sert ? rien; mais la justice d?livre de la mort. '),(261,'Mt.7:1','Ne jugez point, afin que vous ne soyez point jug?s. '),(262,'Mt.4:4','L\'homme ne vivra pas de pain seulement, mais de toute parole qui sort de la bouche de Dieu.'),(263,'Jos.24:21','Non! Nous servirons l\'?ternel.'),(264,'Ps.85:7','Ne nous rendras-tu pas ? la vie, afin que ton peuple se r?jouisse en toi? '),(265,'1Th.5:15','Poursuivez toujours le bien'),(266,'1Pi.3:14','D\'ailleurs, quand vous souffririez pour la justice, vous seriez heureux. '),(267,'2Ch.15:4','Mais au sein de leur d?tresse ils sont retournes ? l\'Eternel ... ils l\'ont trouv?'),(268,'De.7:8','Mais, par ce que l\'?ternel vous aime '),(269,'2Co.4:7','Nous portons ce tr?sor dans des vases de terre '),(270,'Ps.22:20','Et toi, ?ternel, ne t\'?loigne pas! Toi qui es ma force, viens en h?te ? mon secours! '),(271,'1Co.15:20','Mais maintenant, Christ est ressuscit? des morts'),(272,'Ge.6:8','Mais No? trouva gr?ce aux yeux de l\'?ternel.'),(273,'Ro.11:33','O profondeur de la richesse, de la sagesse et de la science de Dieu!'),(274,'Ps.89:17','Il se r?jouit sans cesse de ton nom, et il se glorifie de ta justice.'),(275,'Ro.13:14','Mais rev?tez-vous du Seigneur J?sus-Christ '),(276,'Ro.13:14','Mais rev?tez-vous du Seigneur J?sus-Christ '),(277,'?p.6:10','Fortifiez-vous dans le Seigneur et par sa force toute puissante.'),(278,'Ro.13:12','Rev?tons les armes de la lumi?re.'),(279,'?s.44:22','Reviens ? moi, car je t\'ai rachet?.'),(280,'Ps.119:63','Je suis l\'ami de tous ceux qui te craignent'),(281,'Ro.10:12','Il n\'y a aucune diff?rence, en effet, entre le Juif et le Grec, puisqu\'ils ont tous un m?me Seigneur'),(282,'H?.5:8','Bien qu\'Il f?t fils, l\'ob?issance par les choses qu\'il a souffertes'),(283,'Pr.10:28','L\'attente des justes n\'est que joie, mais l\'esp?rance des m?chants p?rira. '),(284,'Jude.21','Maintenez-vous dans l\'amour de Dieu, en attendant la mis?ricorde de notre Seigneur J?sus-Christ'),(285,'1Pi.2:24','Lui qui a port? lui-m?me nos p?ch?s en son corps sur le bois '),(286,'2Ch.31:21','Il agit de tout son c?ur, et il r?ussit dans tout ce qu\'il entreprit'),(287,'H?.9:15','Il est le m?diateur d\'une nouvelle alliance'),(288,'Ps.130:8','C\'est lui qui rach?tera Isra?l de toutes ses iniquit?s.'),(289,'Ps.72:12','Car il d?livrera le pauvre qui crie, et le malheureux qui n\'a point d\'aide.'),(290,'Ps.107:9','Il a satisfait l\'?me alt?r?e, Il a combl? de biens l\'?me affam?e.'),(291,'H?.2:11','Il n\'a pas honte de les appeler fr?res.'),(292,'Ps.23:2','Il me fait reposer dans de verts p?turages, Il me dirige pr?s des eaux paisibles.'),(293,'Ap.14:5','Dans leur bouche il ne s\'est point trouv? de mensonge, car ils sont irr?pr?hensibles.'),(294,'Ps.102:27','Ils p?riront, mais tu subsisteras'),(295,'Ps.89:16','Heureux le peuple qui conna?t le son de la trompette; Il marche ? la clart? de ta face'),(296,'Ap.7:14 ','Ils ont lav? leurs robes, et ils les ont blanchies dans le sang de l\'agneau.'),(297,'Ro.5:1','?tant donc justifi?s par la foi, nous avons la paix avec Dieu par notre Seigneur J?sus-Christ '),(298,'?s.30:15','C\'est dans la tranquillit? et le repos que sera votre salut'),(299,'Ps.19:3','Pardonne-moi ceux que j\'ignore. '),(300,'2Co.4:8','Nous sommes press?s de toute mani?re, mais non r?duits ? l\'extr?mit? '),(301,'1Jn.4:14','Nous attestons que le P?re a envoy? le Fils comme Sauveur du monde. '),(302,'Ps.119:130','La r?v?lation de tes paroles ?claire, elle donne de l\'intelligence aux simples. '),(303,'1Pi.3:12','Les yeux du Seigneur sont sur les justes'),(304,'1Co.5:7','Christ, notre P?que ?t? immol?'),(305,'Ps.132:15','Je rassasierai de pain ses indigents'),(306,'Ps.25:7','Souviens-toi de moi selon ta mis?ricorde, ? cause de ta bont?, ? ?ternel!'),(307,'Ap.21:7','Celui qui vaincra h?ritera ces choses; je serai son Dieu, et il sera mon fils.'),(309,'2Ti.4:7','J\'ai combattu le bon combat'),(310,'Ps.119:117','Je suis bien humili?: ?ternel, rends-moi la vie selon ta parole!'),(311,'2Ti.2:19','Le Seigneur conna?t ceux qui lui appartiennent'),(312,'Ps.96:9','Prosternez-vous devant l\'?ternel avec des ornements sacr?s. '),(313,'Ja.4:7','Soumettez-vous donc ? Dieu; r?sistez au diable, et il fuira loin de vous. '),(314,'Ja.3:17','La sagesse d\'en haut est ... pleine de mis?ricorde et de bons fruits'),(315,'Ps.16:11','Il y a d\'abondantes joies devant ta face, des d?lices ?ternelles ? ta droite. '),(316,'De.11:18','Mettez dans votre c?ur et dans votre ?me ces paroles que je vous dis.'),(317,'Ps.124:8','Notre secours est dans le nom de l\'?ternel, qui a fait les cieux et la terre. '),(318,'N?.13:31','Souviens-toi favorablement de moi, ? mon Dieu!'),(319,'J?.38:20','?coute la voix de l\'?ternel dans ce que je te dis'),(320,'Jn.3:21','Celui qui agit selon la v?rit? vient de ? la lumi?re'),(321,'Ps.43:3','Envoie ta lumi?re et ta fid?lit?! '),(322,'Ps.37:5','Recommande ton sort ? l\'?ternel, Mets en lui ta confiance, et il agira. '),(323,'Pr.20:22','Esp?re en l\'?ternel, et il te d?livrera.'),(324,'2Ch.6:41','Que tes bien-aim?s jouissent du bonheur!'),(325,'Mt.24:13','Mais celui qui pers?v?rera jusqu\'? la fin sera sauv?'),(326,'Ps.91:2','Je dis ? l\'?ternel: mon refuge et ma forteresse, mon Dieu en qui je me confie! '),(327,'Ja.4:8','Approchez-vous de Dieu, et il s\'approchera de vous. '),(328,'Jn.14:3','Je reviendrai, et je vous prendrai avec moi'),(329,'Da.9:18','Mon Dieu, pr?te l\'oreille et ?coute!'),(330,'2Co.5:20','Soyez r?concili?s avec Dieu!'),(331,'?z.20:41','Je vous recevrai comme un parfum d\'une agr?able odeur'),(332,'Jn.6:35','Celui qui vient ? moi n\'aura jamais faim'),(333,'Ja.5:8','L\'av?nement du Seigneur est proche.'),(334,'?s.35:6','Les eaux jailliront dans le d?sert'),(335,'1Co.6:20','Glorifiez donc Dieu dans votre corps et dans votre esprit'),(336,'1Jn.2:12','Vos p?ch?s vous sont pardonn?s ? cause de son nom. '),(337,'Ps.31:4','? cause de ton nom tu me conduiras, tu me dirigeras. '),(339,'N?.8:10','La joie de l\'?ternel sera votre force.'),(340,'2Co.13:11','Soyez dans la joie, perfectionnez-vous, consolez-vous, ayez un m?me sentiment, vivez en paix'),(341,'1Co.3:16','Ne sachez-vous pas que vous ?tes le temple de Dieu?'),(342,'Pr.17:27','Celui qui a l\'esprit calme est un homme intelligent.'),(343,'1Pi.2:24','Lui par les meurtrissures duquel vous avez ?t? gu?ris. '),(344,'J?.6:16','Placez-vous sur les chemins, regardez, et demandez quel sont les anciens sentiers'),(345,'1Jn.5:4','Tout ce qui est n? de Dieu triomphe du monde'),(346,'2Th.3:16','Que le Seigneur de la paix vous donne lui-m?me la paix en tout temps, de toute mani?re'),(347,'Ap.4:8','Saint, saint, saint est le Seigneur Dieu, le Tout Puisant, qui ?tait, qui est, et qui vient! '),(348,'?s.6:3','Saint, saint, saint est l\'?ternel des arm?es!'),(349,'Mt.21:5','Voici, ton roi vient ? toi, plein de douceur, et mont? sur un ?ne, sur un ?non, le petit d\'une ?nesse. '),(350,'Ac.1:11','Ce J?sus, ... reviendras de la m?me fa?on'),(351,'H?.7:24-25','Mais lui, ... peut sauver parfaitement...'),(352,'2Co.12:9','Ma puissance s\'accomplit dans la faiblesse'),(353,'Col.4:6','Que votre parole soit toujours accompagn?e de gr?ce'),(354,'1Pi.1:25','Mais la parole du Seigneur demeure ?ternellement.'),(355,'Ps.119:105','Ta parole est une lampe ? mes pieds, et une lumi?re sur mon sentier.'),(356,'Ja.4:6','Dieu r?siste aux l\'orgueilleux, Mais il fait gr?ce aux humbles. '),(357,'Ja.4:10','Humiliez-vous devant le Seigneur, et il vous ?l?vera. '),(358,'1Jn.3:1','Voyez quel amour le P?re nous a t?moign?'),(359,'2Co.7:1','En achevant notre sanctification dans la crainte de Dieu'),(360,'1Co.6:17','Mais celui qui s\'attache au Seigneur est avec lui un seul esprit. '),(361,'2Co.7:1','En achevant notre sanctification dans la crainte de Dieu'),(362,'1Co.6:17','Mais celui qui s\'attache au Seigneur est avec lui un seul esprit. '),(363,'Jude.21','Maintenez-vous dans l\'amour de Dieu'),(364,'2Ti.1:9','Dieu nous a sauv?s, et nous a adress? une sainte vocation'),(365,'2Co.3:5','Notre capacit? vient de Dieu'),(366,'H?.12:14','Recherchez la paix avec tous, et la sanctification, sans laquelle personne ne verra le Seigneur'),(367,'Ph.1:27','Demeurez fermes dans un m?me esprit'),(368,'1S.2:9','Il gardera les pas de ses bien-aim?s.'),(369,'H?.11:13','Ils ?taient ?trangers et voyageurs sur la terre'),(370,'Pr.14:27','La crainte de l\'?ternel est une source de vie '),(371,'Job 28:28','La crainte du Seigneur, c\'est  la sagesse'),(372,'Pr.7:1','Mon fils, retiens mes paroles, et garde avec toi mes pr?ceptes.'),(373,'Ps.25:14','L\'amiti? de l\'?ternel est pour ceux qui le craignent'),(374,'1Co.9:24','Courez de mani?re ? remporter'),(375,'Mt.5:16','Que votre lumi?re luise ainsi devant les hommes'),(376,'Ro.6:4','Comme Christ est ressuscit? des morts par la gloire du P?re, de m?me nous aussi nous marchions en nouveaut? de vie.'),(377,'Ro.8:26','De m?me aussi l\'Esprit nous aide dans notre faiblesse '),(379,'?s.51:16','Je te couvre de l\'ombre de ma main'),(380,'1S.12:24','Craignez seulement le l\'?ternel et servez-le fid?lement'),(381,'2 R.17:39','Mais vous craindrez l\'?ternel votre Dieu'),(382,'1Jn.4:4','Celui qui est en vous est plus grand que celui qui est dans le monde. '),(383,'Mt.12:20','Il ne brisera point le roseau cass?'),(384,'?s.58:11','Tu seras comme un jardin arros?'),(385,'Jn.5:14','Tu as ?t? gu?ri; ne p?che plus'),(386,'Ps.7:10','Toi qui sondes les c?urs et les reins, Dieu juste!'),(387,'Ps.86:5','Car tu es bon, Seigneur, tu pardonnes, Tu es plein d\'amour pour tous ceux qui t\'invoquent. '),(388,'1Jn.2:8','Les t?n?bres se dissipent et la lumi?re v?ritable para?t d?j?. '),(389,'Jon.2:10','Le salut vient de l\'?ternel. '),(390,'Ac.14:22','Ils retourn?rent ... les exhortant ? pers?v?rer dans la foi'),(391,'Ps.69:33','Les malheureux le voient et se r?jouissent'),(392,'Lu.20:36','Car ils ne pourront plus mourir,... ?tant fils de la r?surrection. '),(393,'2Co.1:5','Notre consolation abonde par Christ'),(394,'Ps.52:10','Je me confie dans la bont? de Dieu, ?ternellement et ? jamais.'),(395,'Ro.10:10','C\'est en confessant de la bouche qu\'on parvient au salut'),(396,'Ps.119:38','Accomplis envers ton serviteur ta promesse'),(397,'1Co.3:17','Le temple de Dieu est saint, et c\'est ce que vous ?tes. '),(398,'Ja.1:27','La religion pure consiste .. ? se pr?server des souillures du monde. '),(399,'1Co.4:20','Car le royaume de Dieu ne consiste pas en paroles, mais en puissance.'),(400,'1S.3:18','Qu\'il fasse ce qui lui semblera bon!'),(401,'Ro.6:10','Car il est mort, et c\'est pour le p?ch? qu\'il est mort une fois pour toutes'),(402,'Mc.10:36','Que voulez-vous que je fasse pour vous?'),(403,'Col.1:9','Nous ne cessons de prier Dieu ... que vous soyez remplis de la connaissance de sa volont?'),(404,'1Jn.1:4','Afin que notre joie soit parfaite. '),(405,'3Jn.1:2','Que tu prosp?res ? tous ?gards et sois en bonne sant?'),(406,'Ps.27:8','Je cherche ta face, ? ?ternel!'),(407,'Mi.7:7','Je regarderai vers l\'Eternel,...mon Dieu m\'exaucera.'),(408,'Jn.13:15','Je vous ai donn? un exemple, afin que vous fassiez comme je vous ai fait.'),(409,'Jn.15:5','Je suis le cep. Vous ?tes les sarments.'),(410,'Ps.55:17','Et moi, je crie ? Dieu, et l\'?ternel me sauvera. '),(411,'Ps.40:9','Je veux faire ta volont?, mon Dieu! '),(412,'Mi.3:8','Je suis rempli de force, de l\'esprit de l\'?ternel '),(413,'Os.6:6','J\'aime la pi?t? et non les sacrifices'),(414,'Ro.1:16','Je n\'ai point honte de l\'?vangile'),(415,'Lu.22:27','Je suis au milieu de vous comme celui qui sert.'),(416,'Ex.33:19','Je ferai passer devant toi toute ma bont?'),(417,'J?.15:20','Je serai avec toi pour te sauver et te d?livrer'),(418,'?s.43:25','Je ne me souviendrai plus de tes p?ch?s.'),(419,'Jn.9:5','Je suis la lumi?re du monde'),(420,'Ge.15:1','Je suis ton bouclier, et ta r?compense sera grande'),(421,'Ex.3:7','J\'ai vu la souffrance de mon peuple...'),(422,'1S.16:3','Je te ferai conna?tre ce que tu dois faire'),(423,'?s.41:17','Moi, le Dieu d\'Isra?l, je ne les abandonnerai pas'),(424,'J?.17:10','Moi, l\'?ternel, j\'?prouve le c?ur'),(425,'Heb.11:6','Or sans la foi il est impossible de lui ?tre (? Dieu) agr?able'),(426,'2Tim.3:14','Toi, demeure dans les choses que tu as apprises, et reconnues certaines'),(427,'Col.1:13','Rendez gr?ce au p?re...qui nous a d?livr?s de la puissance des t?n?bres '),(428,'Eph.2:5','C\'est par gr?ce que vous ?tes sauv?s'),(429,'Rv.16:15','Heureux celui qui veille, et qui garde ses v?tements'),(430,'Rv.22:7','Heureux celui qui garde les paroles de la proph?tie de ce livre! '),(431,'1Thes.5:9','Car Dieu ne nous a pas destin?s ? la col?re, mais ? l\'acquisition du salut par notre Seigneur J?sus Christ'),(432,'Gal.4:6','Dieu a envoy? dans nos c?urs l\'Esprit de son Fils'),(433,'Heb.4:14','Demeurons fermes dans la foi que nous professons.'),(434,'Rv.2:10','Sois fid?le jusqu\'? la mort, et je te donnerai la couronne de vie.'),(435,'Col.3:15','Soyez reconnaissants.'),(436,'Col.4:2','Pers?v?rez dans la pri?re, veillez-y avec actions de gr?ces.'),(437,'1Tim.3:16','Et, sans contredit, le myst?re de la pi?t? est grand: celui qui a ?t? manifest? en chair...'),(438,'Rv.15:3','Tes ?uvres sont grandes et admirables, Seigneur Dieu tout puissant! '),(439,'1Tim.6:6','C\'est, en effet, une grande source de gain que la pi?t? avec le contentement'),(440,'Heb.11:1','La foi est une ferme assurance des choses qu\'on esp?re, une d?monstration de celles qu\'on ne voit pas. '),(441,'Gal.5:6','Car, en J?sus Christ, ni la circoncision ni l\'incirconcision n\'a de valeur, mais la foi qui est agissante par la charit?.'),(442,'2Thes.3:3','Le Seigneur est fid?le, il vous affermira et vous pr?servera du malin. '),(443,'Heb.8:10','Je mettrai mes lois dans leur esprit, Je les ?crirai dans leur c?ur'),(444,'1Tim.4:16','Veille sur toi-m?me et sur ton enseignement; pers?v?re dans ces choses'),(445,'Ti.2:7','Donnant un enseignement pur, digne'),(446,'Gal.3:26','Car vous ?tes tous fils de Dieu par la foi en J?sus Christ'),(447,'Col.3:17','Faites tout au nom du Seigneur J?sus'),(448,'1Thes.5:21','Examinez toutes choses; retenez ce qui est bon'),(449,'Phil.4:13','Je puis tout par celui qui me fortifie. '),(450,'Phil.3:8','Je les (toutes choses) regarde comme de la boue, afin de gagner Christ'),(451,'Phil.3:8','Je regarde toutes choses comme de la boue, afin de gagner Christ, Phil.3:8'),(452,'1Thes.5:16','Soyez toujours joyeux.'),(453,'Heb.12:4','Vous n\'avez pas encore r?sist? jusqu\'au sang, en luttant contre le p?ch?. '),(454,'Phil.4:5','Le Seigneur est proche. '),(455,'Col.3:15','Et que la paix de Christ... r?gne dans vos c?urs'),(456,'Heb.4:16','Approchons-nous donc avec assurance du tr?ne de la gr?ce '),(457,'Heb.4:3','Il dit cela, quoique ses ?uvres eussent ?t? achev?es depuis la cr?ation du monde. '),(458,'Gal.6:9','Ne nous lassons pas de faire le bien'),(459,'Rv.3:11','Retiens ce que tu as, afin que personne ne prenne ta couronne.'),(460,'Phil.1:21','Car Christ est ma vie, et la mort m\'est un gain.'),(461,'Rv.22:17','Et que celui qui a soif vienne; que celui qui veut, prenne de l\'eau de la vie, gratuitement.'),(462,'Phil.1:27','Conduisez-vous d\'une mani?re digne de l\'?vangile de Christ'),(463,'1Thes.5:18','Rendez gr?ces en toutes choses'),(464,'Heb.2:9','J?sus, nous le voyons couronn? de gloire et d\'honneur ? cause de la mort qu\'il a soufferte...'),(465,'Eph.1:13','Vous avez ?t? scell?s du Saint-Esprit qui avait ?t? promis'),(466,'Col.2:10','Vous avez tout pleinement en lui'),(467,'Gal.2:20','Ce n\'est plus moi qui vis, c\'est Christ qui vit en moi; '),(468,'1Thes.4:3','Ce que Dieu veut, c\'est votre sanctification'),(469,'1Thes.5:5','Vous ?tes tous des enfants de la lumi?re et des enfants du jour. '),(470,'2Tim.1:7','Ce n\'est pas un esprit de timidit? que Dieu nous a donn?, mais un esprit de force, d\'amour et de sagesse.'),(471,'Heb.13:14','Car nous n\'avons point ici-bas de cit? permanente, mais nous cherchons celle qui est ? venir.'),(472,'1Thes.4:7','Car Dieu ne nous a pas appel?s ? l\'impuret?, mais ? la sanctification.'),(473,'Heb.4:12','Car la parole de Dieu est vivante et efficace'),(474,'Jn.3:16','Car Dieu a tant aim? le monde qu\'il a donn? son Fils unique, afin que quiconque croit en lui ne p?risse point, mais qu\'il ait la vie ?ternelle.'),(475,'2Tim.1:12','Car je sais en qui j\'ai cru...'),(476,'Ti.2:11','Car la gr?ce de Dieu, source de salut pour tous les hommes, a ?t? manifest?e. '),(477,'Heb.13:8','J?sus Christ est le m?me hier, aujourd\'hui, et ?ternellement. '),(478,'1Tim.6:8','Si donc nous avons la nourriture et le v?tement, cela nous suffira. '),(479,'Eph.5:18','Soyez remplis de l\'Esprit; '),(480,'Eph.1:19','Quelle est envers nous qui croyons l\'infinie grandeur de sa puissance'),(481,'Eph.1:18','Qu\'il illumine les yeux de votre coeur, pour que vous sachiez ...quelle est la richesse de la gloire de son h?ritage qu\'il r?serve aux saints'),(482,'Heb.3:7-8','Si vous entendez sa voix, n\'endurcissez pas vos coeurs'),(483,'Rv.3:19','Moi, je reprends et je ch?tie tous ceux que j\'aime. Aie donc du z?le, et repens-toi.'),(484,'Gal.5:13','Rendez-vous, par la charit?, serviteurs les uns des autres.'),(485,'Eph.6:18','Faites en tout temps par l\'Esprit toutes sortes de pri?res et de supplications.'),(486,'Eph.1:7','En lui nous avons la r?demption par son sang, la r?mission des p?ch?s'),(487,'Heb.3:14','Nous sommes devenus participants de Christ'),(488,'Heb.3:13','Exhortez-vous les uns les autres chaque jour.'),(489,'Heb.10:25','N\'abandonnons pas notre assembl?e'),(490,'1Thes.5:6','Ne dormons donc point comme les autres, mais veillons et soyons sobres.'),(491,'Phil.4:6','Ne vous inqui?tez de rien'),(492,'1Tim.4:14','Ne n?glige pas le don qui est en toi'),(493,'1Thes.5:17','Priez sans cesse.'),(494,'Col.3:2','Affectionnez-vous aux choses d\'en haut, et non ? celles qui sont sur la terre. '),(495,'Ti.3:5','Il nous a sauv?s, non ? cause des oeuvres...mais selon sa mis?ricorde'),(496,'Rv.12:11','Ils l\'ont vaincu ? cause du sang de l\'agneau et ? cause de la parole de leur t?moignage'),(497,'Heb.6:1','Laissant les ?l?ments de la parole de Christ, tendons ? ce qui est parfait...'),(499,'Gal.1:4','Il s\'est donne lui-m?me pour nos p?ch?s...'),(500,'Phil.4:6','Faites conna?tre vos besoins ? Dieu'),(501,'Gal.5:22','Mais le fruit de l\'Esprit, c\'est l\'amour, la joie, la paix, ...'),(502,'Rv.2:7','? celui qui vaincra, je donnerai ? manger de l\'arbre de vie, qui est dans le paradis de Dieu. '),(503,'Rv.3:21','Celui qui vaincra, je le ferai asseoir avec moi sur mon tr?ne'),(504,'1Tim.6:12','Combats le bon combat de la foi, saisis la vie ?ternelle'),(505,'Eph.5:1','Devenez donc les imitateurs de Dieu, comme des enfants bien-aim?s'),(506,'Eph.5:17','Comprenez quelle est la volont? du Seigneur.'),(507,'Heb.12:3','Consid?rez, en effet, celui qui a support? contre sa personne une telle opposition de la part des p?cheurs'),(508,'Gal.5:16','Marchez selon l\'Esprit'),(509,'Eph.5:8','Marchez comme des enfants de lumi?re!'),(510,'Rom.1:17','Le juste vivra par la foi. '),(511,'1Tim.6:11','Recherche la justice, la pi?t?, la foi, la charit?, la patience, la douceur. '),(512,'2Tim.4:2','Pr?che la parole, insiste en toute occasion, favorable ou non...'),(513,'Phil.4:4','R?jouissez-vous toujours dans le Seigneur; je le r?p?te, r?jouissez-vous. '),(514,'Heb.12:1','Courons avec pers?v?rance dans la carri?re qui nous est ouverte'),(515,'Rv.22:11','Que le juste pratique encore la justice'),(516,'Rv.3:11','Je viens bient?t. '),(517,'Col.4:6','Que votre parole soit toujours accompagn?e de gr?ce, assaisonn?e de sel'),(518,'Col.3:16','Que la parole de Christ habite parmi vous abondamment'),(519,'Gal.5:1','Demeurez donc fermes, et ne vous laissez pas mettre de nouveau sous le joug de la servitude. '),(520,'Gal.5:24','Ceux qui sont ? J?sus Christ ont crucifi? la chair...'),(521,'Heb.10:36','Vous avez besoin de pers?v?rance, afin qu\'apr?s avoir accompli la volont? de Dieu, vous obteniez ce qui vous est promis.'),(522,'Heb.12:12','Fortifiez donc vos mains languissantes et vos genoux affaiblis'),(523,'2Tim.2:1','Toi donc, mon enfant, fortifie-toi dans la gr?ce qui est en J?sus Christ. '),(524,'Eph.6:10','Fortifiez-vous dans le Seigneur, et par sa force toute-puissante. '),(525,'1Tim.4:10','Nous mettons notre esp?rance dans le Dieu vivant, qui est le Sauveur de tous les hommes, principalement des croyants.'),(526,'2Tim.1:14','Garde le bon d?p?t, par le Saint-Esprit qui habite en nous.'),(527,'Col.1:27','Christ en vous, l\'esp?rance de la gloire'),(528,'Eph.5:2','Christ, qui nous a aim?s, et qui s\'est livre lui-m?me...'),(529,'1Tim.1:15','J?sus Christ est venu dans le monde pour sauver les p?cheurs'),(530,'Rv.1:8','Je suis l\'alpha et l\'om?ga, dit le Seigneur Dieu, celui qui est, qui ?tait, et qui vient, le Tout Puissant.'),(531,'Rv.3:8','J\'ai mis devant toi une porte ouverte, que personne ne peut fermer.');
/*!40000 ALTER TABLE `verset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 23:58:09
