-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: banco
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `cep` varchar(20) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` varchar(10) DEFAULT NULL,
  `iduser` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'03948000','Rua Senador Maynarde Gomes','Jardim Nove de Julho','São Paulo','SP',27),(2,'03948000','Rua Senador Maynarde Gomes','Jardim Nove de Julho','São Paulo','SP',28),(3,'03948000','Rua Senador Maynarde Gomes','Jardim Nove de Julho','São Paulo','SP',29),(4,'','','','','',30),(5,'','','','','',31),(6,'','','','','',32),(7,'','','','','',33),(8,'','','','','',34),(9,'','','','','',35),(10,'','','','','',36),(11,'','','','','',37),(12,'','','','','',38);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_endereco`
--

DROP TABLE IF EXISTS `log_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_endereco` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `cep` varchar(20) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` varchar(10) DEFAULT NULL,
  `iduser` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_endereco`
--

LOCK TABLES `log_endereco` WRITE;
/*!40000 ALTER TABLE `log_endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_produtos`
--

DROP TABLE IF EXISTS `log_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_produtos` (
  `id` tinyint DEFAULT NULL,
  `nome` varchar(8) DEFAULT NULL,
  `preco` decimal(3,2) DEFAULT NULL,
  `quantidade` tinyint DEFAULT NULL,
  `criado` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_produtos`
--

LOCK TABLES `log_produtos` WRITE;
/*!40000 ALTER TABLE `log_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_token`
--

DROP TABLE IF EXISTS `log_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_token` (
  `id` varchar(0) DEFAULT NULL,
  `id_user` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `tempo` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_token`
--

LOCK TABLES `log_token` WRITE;
/*!40000 ALTER TABLE `log_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_users`
--

DROP TABLE IF EXISTS `log_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_users` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `nome` varchar(14) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `criado` varchar(19) DEFAULT NULL,
  `perfilid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_users`
--

LOCK TABLES `log_users` WRITE;
/*!40000 ALTER TABLE `log_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_vendas`
--

DROP TABLE IF EXISTS `log_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_vendas` (
  `id` tinyint DEFAULT NULL,
  `id_usuario` tinyint DEFAULT NULL,
  `id_produto` tinyint DEFAULT NULL,
  `data_cadastro` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_vendas`
--

LOCK TABLES `log_vendas` WRITE;
/*!40000 ALTER TABLE `log_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` int NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'X'),(2,'Y');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_permissoes`
--

DROP TABLE IF EXISTS `perfil_permissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_permissoes` (
  `perfilid` int NOT NULL,
  `permissao_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_permissoes`
--

LOCK TABLES `perfil_permissoes` WRITE;
/*!40000 ALTER TABLE `perfil_permissoes` DISABLE KEYS */;
INSERT INTO `perfil_permissoes` VALUES (1,1),(1,3),(1,6),(1,8),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9);
/*!40000 ALTER TABLE `perfil_permissoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissoes`
--

DROP TABLE IF EXISTS `permissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissoes` (
  `id` int NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissoes`
--

LOCK TABLES `permissoes` WRITE;
/*!40000 ALTER TABLE `permissoes` DISABLE KEYS */;
INSERT INTO `permissoes` VALUES (1,'buscaprod'),(2,'buscauser'),(3,'criarprod'),(4,'criaruser'),(5,'grafico'),(6,'menu'),(7,'prod_e_user'),(8,'todosprod'),(9,'todosuser');
/*!40000 ALTER TABLE `permissoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `nome` varchar(8) DEFAULT NULL,
  `preco` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `criado` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (14,'Melão',2,2,'2023-10-03 01:18:21'),(16,'Melancia',2,4,'2023-10-25 04:07:48'),(17,'Damasco',1,1,'2023-10-25 18:50:44');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `produtos_por_usuario`
--

DROP TABLE IF EXISTS `produtos_por_usuario`;
/*!50001 DROP VIEW IF EXISTS `produtos_por_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produtos_por_usuario` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `quantidade_produtos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(8) DEFAULT NULL,
  `seq` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('produtos',17),('users',38),('endereco',12),('vendas',27);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` varchar(0) DEFAULT NULL,
  `id_user` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `tempo` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `nome` varchar(14) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `criado` varchar(19) DEFAULT NULL,
  `perfilid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (36,'Ana Luiza Dias','analuizadias389@gmail.com','$2y$10$BOhkl6TZuVZbPkW4gS6daujpDmT7gttJu6uAiCWBqqdEnsz5jzYrW','2023-11-07 00:47:04',1),(37,'Sarah','ss@gmail.com','$2y$10$j9vEhuxjbOc/Cz7yAnAt2.0kl5ZAd6QpUAXV61Oesila.4ki4bMQe','2023-11-07 00:49:34',2),(38,'Ana Luiza Dias','aa@gmail.com','$2y$10$NzZUUgSZpzHRkOwWJa5dk.Niv2IckTQVTXNGervRy4SbBKdBQqOPK','2023-11-08 02:29:41',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` tinyint DEFAULT NULL,
  `id_usuario` tinyint DEFAULT NULL,
  `id_produto` tinyint DEFAULT NULL,
  `data_cadastro` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'banco'
--

--
-- Dumping routines for database 'banco'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetPermissoesPorPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPermissoesPorPerfil`(IN perfilId INT)
BEGIN
    SELECT perm.nome 
    FROM permissoes perm
    JOIN perfil_permissoes pp ON perm.id = pp.permissao_id
    WHERE pp.perfilid = perfilId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `produtos_por_usuario`
--

/*!50001 DROP VIEW IF EXISTS `produtos_por_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produtos_por_usuario` AS select `u`.`id` AS `id`,`u`.`nome` AS `nome`,count(`v`.`id_produto`) AS `quantidade_produtos` from (`users` `u` left join `vendas` `v` on((`u`.`id` = `v`.`id_usuario`))) group by `u`.`id` */;
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

-- Dump completed on 2023-11-22 12:28:19
