-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: projetovidamendes_production
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (1,'imagem','Agenda',1,1,'2022-07-01 14:54:26.453501');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (1,'j7vwmihsn6c236rtsizbn7jo0cw8','120Feed.png','image/png','{\"identified\":true,\"analyzed\":true}','local',1007706,'ZcaR7Bp/R6q9+zPPU9wIvQ==','2022-07-01 14:54:26.450770');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_variant_records`
--

DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blob_id` bigint NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_variant_records`
--

LOCK TABLES `active_storage_variant_records` WRITE;
/*!40000 ALTER TABLE `active_storage_variant_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_variant_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agendas`
--

DROP TABLE IF EXISTS `agendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao` text,
  `datahora_inicio` datetime(6) DEFAULT NULL,
  `datahora_termino` datetime(6) DEFAULT NULL,
  `vagas` int DEFAULT '0',
  `valor` decimal(12,2) DEFAULT '0.00',
  `link_inscricao` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendas`
--

LOCK TABLES `agendas` WRITE;
/*!40000 ALTER TABLE `agendas` DISABLE KEYS */;
INSERT INTO `agendas` VALUES (1,'120 Day','Um dia de avivamento onde traremos a realidade dos céus para terra.\r\nUm novo ano, novas expectativas, a busca pela mudança.\r\nA busca não para, a intensidade pelo poder aumenta.\r\nUm amigo íntimo e especial, uma presença essencial, um relacionamento sobrenatural com o Espírito Santo.\r\nVocê já o conhece? Você já foi batizado por ele? Você já entrou na intimidade?\r\nEntão venha conhece-lo, será sobrenatural, um dia de ministrações intensas, mudança através da PALAVRA, ADORAÇÃO extravagante, PODER através da intimidade.\r\nEntão anote essa data na sua agenda!\r\n\r\nTe esperamos!','2022-07-09 16:00:00.000000','2022-07-09 21:00:00.000000',120,30.00,'https://buy.stripe.com/9AQ3eseRj8cugKY9AA','2022-07-01 14:31:28.907817','2022-07-01 14:54:26.458245'),(2,'Sessão Aberta Noite','','2022-07-03 18:00:00.000000','2022-07-03 20:00:00.000000',0,0.00,'','2022-07-02 22:20:33.385240','2022-07-02 22:20:33.385240');
/*!40000 ALTER TABLE `agendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apresentacaos`
--

DROP TABLE IF EXISTS `apresentacaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apresentacaos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome_bebe` varchar(255) DEFAULT NULL,
  `nome_mae` varchar(255) DEFAULT NULL,
  `nome_pai` varchar(255) DEFAULT NULL,
  `data_nascimento` varchar(255) DEFAULT NULL,
  `sexo` tinyint DEFAULT NULL,
  `data_apresentacao` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apresentacaos`
--

LOCK TABLES `apresentacaos` WRITE;
/*!40000 ALTER TABLE `apresentacaos` DISABLE KEYS */;
INSERT INTO `apresentacaos` VALUES (1,'Antonella Araújo de Oliveira','Kathleen Cristine Araújo Ribeiro','Matheus de Oliveira','',2,'2022-07-03','2022-07-03 14:06:49.920065','2022-07-03 14:15:20.255347');
/*!40000 ALTER TABLE `apresentacaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2022-06-18 15:46:52.109235','2022-07-01 14:53:22.260947');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membros`
--

DROP TABLE IF EXISTS `membros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membros` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `data_alianca` date DEFAULT NULL,
  `data_batismo` date DEFAULT NULL,
  `data_desligamento` date DEFAULT NULL,
  `observacoes` text,
  `situacao` tinyint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membros`
--

LOCK TABLES `membros` WRITE;
/*!40000 ALTER TABLE `membros` DISABLE KEYS */;
INSERT INTO `membros` VALUES (1,'Luiz Cláudio','de Castro Figueredo','24981565684','Travessa Casa Branca 126','Ramalho','Engenheiro Paulo de Frontin','1968-03-07','luiz@llkinformatica.com.br','2012-05-17',NULL,NULL,'Pastor',1,'2022-06-28 22:20:07.908750','2022-06-28 22:20:07.908750');
/*!40000 ALTER TABLE `membros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20220616203206'),('20220616203255'),('20220626175327'),('20220628221819'),('20220701142750'),('20220701145309'),('20220703140448');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime(6) DEFAULT NULL,
  `remember_created_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_usuarios_on_email` (`email`),
  UNIQUE KEY `index_usuarios_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'projetovidachurch.mendes@gmail.com','$2a$12$2EzRCTqQw/hcmmw/PZCH5OBP4boqXJQcEOoaWs7tC8qAP0.n1Bqee',NULL,NULL,NULL,'2022-06-28 20:43:32.658024','2022-06-28 20:48:59.139250');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitantes`
--

DROP TABLE IF EXISTS `visitantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitantes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `grupo` varchar(255) DEFAULT NULL,
  `observacoes` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `categoria` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitantes`
--

LOCK TABLES `visitantes` WRITE;
/*!40000 ALTER TABLE `visitantes` DISABLE KEYS */;
INSERT INTO `visitantes` VALUES (1,'Luiz Cláudio','de Castro Figueredo','24981565684','3','Pastor','2022-06-19 13:39:15.495515','2022-06-26 17:58:08.671012',2),(3,'LIGIA RABELLO','MOURA','24998342760','Adulto','','2022-06-19 20:42:24.228351','2022-06-19 20:42:37.798415',1),(4,'Alessandro','De Barros','24992344563','Adulto','','2022-06-19 21:03:22.261689','2022-06-19 21:03:22.261689',1),(5,'Regina ','Moreira','24992257194','Adulto','','2022-06-19 21:04:04.808927','2022-06-19 21:04:04.808927',1),(6,'Diego','Léoncio','24992801344','Adulto','','2022-06-19 21:04:36.766547','2022-06-19 21:04:36.766547',1),(8,'Izabela ','Garcia','24998210269','3','Encontro ','2022-06-23 23:57:45.022446','2022-06-23 23:57:45.022446',1),(9,'Denis','Garcia','24999598453','3','Encontro ','2022-06-24 01:13:15.364543','2022-06-24 01:13:15.364543',1),(10,'Thiago','Souza Silva','24992019369','3','Aliançado','2022-06-24 01:13:46.621703','2022-06-26 18:18:04.038872',2),(11,'Roberta ','Gomes da silva','24998548037','4','Encontro ','2022-06-24 01:14:48.750795','2022-06-24 01:14:48.750795',1),(12,'Fabiola','Peixoto Diogo','24999180461','3','Aliançada','2022-06-24 01:15:56.998779','2022-06-26 18:17:54.039910',2),(13,'Luara','Romão','24998472566','3','Aliançada','2022-06-24 01:16:40.749169','2022-06-26 18:17:44.150176',2),(14,'Elias','Da silva de oliveira ','24999597732','4','Encontro ','2022-06-24 01:17:58.271229','2022-06-24 01:17:58.271229',1),(15,'Gabriela ','Vieira de b.oliveira','24992200925','3','Encontro ','2022-06-24 01:20:50.712731','2022-06-24 01:20:50.712731',1),(16,'Gabriel ','Dos santos ','24999269482','3','Encontro ','2022-06-24 01:22:29.957234','2022-06-24 01:22:29.957234',1),(17,'Varlei','Dias','','3','Encontro ','2022-06-24 01:22:53.241063','2022-06-24 01:22:53.241063',1),(18,'Francisco ','Xavier s.de oliveira ','24999165469','3','Encontro ','2022-06-24 01:24:02.987921','2022-06-24 01:24:02.987921',1),(19,'Luana kely','Dos s.silva Fernandes ','21997375694','3','Encontro ','2022-06-24 01:25:18.520124','2022-06-24 01:25:18.520124',1),(20,'Sara','Padrão dos santos ','21977047727','3','Encontro ','2022-06-24 01:26:56.162736','2022-06-24 01:26:56.162736',1),(21,'Arthur ','De oliveira souza','','3','Encontro ','2022-06-24 01:32:06.680478','2022-06-24 01:32:06.680478',1),(22,'Marcos','Monsores ','','3','Encontro ','2022-06-24 01:33:46.470326','2022-06-24 01:33:46.470326',1),(23,'Moisés ','Santos do nascimento ','24998760812','3','Encontro ','2022-06-24 01:34:27.886997','2022-06-24 01:34:27.886997',1),(24,'Leonardo ','Isidorio Brito da Silva ','24999195972','3','Encontro ','2022-06-24 01:35:18.213029','2022-06-24 01:35:18.213029',1),(25,'Katherine ','De oliveira dos Santos ','24999195972','3','Encontro ','2022-06-24 01:36:28.893446','2022-06-24 01:36:28.893446',1),(26,'Alice','De oliveira de Assis Nascimento ','24981046821','3','Encontro ','2022-06-24 01:38:25.712557','2022-06-24 01:38:25.712557',1),(27,'Ednan','Silva prado','24998526108','3','Encontro ','2022-06-24 01:39:09.312630','2022-06-24 01:40:59.925893',1),(35,'Renzo','Moura','24999945236','Jovem','','2022-06-25 14:11:34.000000','2022-06-25 14:11:34.000000',1),(36,'Juliana','Figueiredo de Carvalho','24998232425','Adulto','Culto Kids','2022-06-25 14:13:11.000000','2022-06-26 14:21:04.000000',1),(37,'Nerison','Raul','24998000463','Criança','Culto Kids','2022-06-25 14:13:51.000000','2022-06-26 14:20:09.000000',1),(38,'Crislane','Gomes de Oliveira','','3','Aliançada','2022-06-26 15:49:14.000000','2022-06-26 18:17:05.884845',2),(39,'Ademilson','de Freitas','','4','Aliançado','2022-06-26 15:50:48.000000','2022-06-26 18:16:42.309123',2),(40,'Sônia','Gomes Soares de Freitas','','4','Aliançada','2022-06-26 15:51:46.000000','2022-06-26 18:16:29.775942',2),(41,'Emanuela','Soares de Freitas','','3','Aliançada','2022-06-26 15:52:07.000000','2022-06-26 18:16:17.929160',2),(42,'Ághata Monique','Rodrigues Santiago Lira','','3','Aliançada','2022-06-26 15:52:39.000000','2022-06-26 18:16:04.233860',2),(43,'Josualdo','Damásio Lira','','3','Aliançado','2022-06-26 15:52:59.000000','2022-06-26 18:15:54.738904',2),(44,'Leandro','Valladares de Farias','21997792322','3','Aliançado','2022-06-26 17:21:09.886882','2022-06-26 18:15:45.078091',2),(45,'Edlane','Da Silva','21990118809','Adulto','','2022-06-26 22:13:26.000000','2022-06-26 22:13:26.000000',1),(46,'Kamilly','Eduarda dos Santos','24992709806','Adulto','Ballet solidario','2022-06-26 23:13:20.000000','2022-06-26 23:13:20.000000',1),(47,'Marcia','Marília da Silva','2499744750','Adulto','Ballet solidario','2022-06-26 23:13:57.000000','2022-06-26 23:13:57.000000',1),(48,'Angelica','Freitas','249996228114','Adulto','Ballet solidario','2022-06-26 23:14:33.000000','2022-06-26 23:14:33.000000',1),(49,'Leandro','','24999861219','Adulto','Ballet solidario','2022-06-26 23:15:15.000000','2022-06-26 23:15:15.000000',1),(50,'Jaqueline','Martins','24998475446','Adulto','Ballet solidario','2022-06-26 23:16:13.000000','2022-06-26 23:16:13.000000',1),(51,'Maicon','Borges','249998349','Adulto','Ballet solidario','2022-06-26 23:17:02.000000','2022-06-26 23:17:02.000000',1),(52,'Marcos','Raimundo','24999225058','Adulto','Ballet solidario','2022-06-26 23:17:31.000000','2022-06-26 23:17:31.000000',1),(53,'Maria','Borges','24999225058','Adulto','Ballet solidario','2022-06-26 23:18:03.000000','2022-06-26 23:18:03.000000',1),(54,'Valdeci','Paulo da silva','2499271878','Adulto','Ballet solidario','2022-06-26 23:18:36.000000','2022-06-26 23:18:36.000000',1),(55,'Maria Eugenia','Valle','2499271881','Adulto','Ballet solidario','2022-06-26 23:19:37.000000','2022-06-26 23:19:37.000000',1),(56,'Juliana ','Figueiredo de carvalho','24998232425','Adulto','Ballet solidario','2022-06-26 23:20:22.000000','2022-06-26 23:20:22.000000',1),(57,'Nerison','Raul melo','21998000463','Adulto','Ballet solidario','2022-06-26 23:21:01.000000','2022-06-26 23:21:01.000000',1),(58,'Macilene','','24999433660','Adulto','Ballet solidario','2022-06-26 23:21:36.000000','2022-06-26 23:21:36.000000',1),(59,'Marielli ','Silva','21965968021','Adulto','Ballet solidario','2022-06-26 23:22:15.000000','2022-06-26 23:22:15.000000',1),(60,'Agata','Santiago','24998435764','Adulto','Ballet solidario','2022-06-26 23:23:14.000000','2022-06-26 23:23:14.000000',1),(61,'Josualdo','','21992792180','Adulto','Ballet solidario','2022-06-26 23:23:54.000000','2022-06-26 23:23:54.000000',1),(62,'Cassiano','Oliveira','24999847652','Adulto','Ballet solidario','2022-06-26 23:25:03.000000','2022-06-26 23:25:03.000000',1),(63,'Ane','Almeida','24999171354','Adulto','Ballet solidario','2022-06-26 23:25:41.000000','2022-06-26 23:25:41.000000',1),(64,'Sairana','Bruneli','24999251100','Adulto','Visitante','2022-07-03 18:57:13.000000','2022-07-03 18:57:13.000000',1),(65,'Alvaro','Leal','24998381615','Adulto','Visitante','2022-07-03 18:57:49.000000','2022-07-03 18:57:49.000000',1),(66,'Tiago','Rocha','24999738686','Adulto','Visitante','2022-07-03 18:58:28.000000','2022-07-03 18:58:28.000000',1),(67,'Carlos','Rodrigues','24998511531','Adulto','Visitante','2022-07-03 18:59:01.000000','2022-07-03 18:59:01.000000',1),(68,'Kauã','Araujo','24999166092','Adulto','Visitante','2022-07-03 18:59:37.000000','2022-07-03 18:59:37.000000',1),(69,'Meiriane','Teixeira','24992588560','Adulto','Vistante','2022-07-03 19:00:11.000000','2022-07-03 19:00:11.000000',1),(70,'Micaela','','24992622406','Adulto','Vistante','2022-07-03 19:00:37.000000','2022-07-03 19:00:37.000000',1),(71,'Ana Clara','Leal','24992451134','Adulto','Visitante','2022-07-03 19:01:11.000000','2022-07-03 19:01:11.000000',1),(72,'Daniel','','24999139901','Adulto','Vistante','2022-07-03 19:01:39.000000','2022-07-03 19:01:39.000000',1),(73,'Antonielle','Santana','21993153763','Adulto','Vistante','2022-07-03 19:02:09.000000','2022-07-03 19:02:09.000000',1),(74,'Carolina','Santana','24998251459','Adulto','Visitante','2022-07-03 19:02:39.000000','2022-07-03 19:02:39.000000',1),(75,'Paulo Sergio','','24998275138','Adulto','','2022-07-03 19:03:09.000000','2022-07-03 19:03:09.000000',1),(76,'Andreia','Ribeiro','24998453083','Adulto','Visitante','2022-07-03 19:03:37.000000','2022-07-03 19:03:37.000000',1),(77,'Yasmim','Ribeiro','24998231575','Adulto','Visitante','2022-07-03 19:04:07.000000','2022-07-03 19:04:07.000000',1),(78,'Gessica','Dos Santos','24992683106','Adulto','Visitante','2022-07-03 19:04:42.000000','2022-07-03 19:04:42.000000',1),(79,'Paulo Fernando','Neves','24999169278','Adulto','Visitante','2022-07-03 19:05:14.000000','2022-07-03 19:05:14.000000',1);
/*!40000 ALTER TABLE `visitantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-05 18:11:49
