CREATE DATABASE  IF NOT EXISTS `cadastro_animais` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro_animais`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro_animais
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `animais`
--

DROP TABLE IF EXISTS `animais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `especie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `raca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `genero` enum('macho','fêmea') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idade` int NOT NULL,
  `cor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `condicao_de_saude` enum('saudável','ferido','doente') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `esterilizado` enum('sim','não') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_ultimo_atendimento` date NOT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  KEY `fk_localizacao_idx` (`id`),
  CONSTRAINT `fk_animal_Lar_def` FOREIGN KEY (`id`) REFERENCES `lardefinitivo` (`idLarDefinitivo`),
  CONSTRAINT `fk_animal_Lar_temp` FOREIGN KEY (`id`) REFERENCES `lartemporario` (`idLarTemporario`),
  CONSTRAINT `fk_animal_localizacao` FOREIGN KEY (`id`) REFERENCES `localizacao` (`idLocalizacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animais`
--

LOCK TABLES `animais` WRITE;
/*!40000 ALTER TABLE `animais` DISABLE KEYS */;
/*!40000 ALTER TABLE `animais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica`
--

DROP TABLE IF EXISTS `clinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinica` (
  `idClinica` int NOT NULL,
  `razaoSocial` varchar(45) NOT NULL,
  `CNPJ` varchar(14) NOT NULL,
  `medicoResp` varchar(45) NOT NULL,
  `endereço` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idClinica`),
  CONSTRAINT `fk_id_Servicos` FOREIGN KEY (`idClinica`) REFERENCES `servicos` (`idServicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica`
--

LOCK TABLES `clinica` WRITE;
/*!40000 ALTER TABLE `clinica` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lardefinitivo`
--

DROP TABLE IF EXISTS `lardefinitivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lardefinitivo` (
  `idLarDefinitivo` int NOT NULL,
  `Funcao` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` char(11) NOT NULL,
  `rg` char(9) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idLarDefinitivo`),
  CONSTRAINT `fk_Lar_def` FOREIGN KEY (`idLarDefinitivo`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lardefinitivo`
--

LOCK TABLES `lardefinitivo` WRITE;
/*!40000 ALTER TABLE `lardefinitivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `lardefinitivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lartemporario`
--

DROP TABLE IF EXISTS `lartemporario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lartemporario` (
  `idLarTemporario` int NOT NULL,
  `Tutor` varchar(45) NOT NULL,
  `voluntario` varchar(45) NOT NULL,
  `PetShop` varchar(45) NOT NULL,
  `ClinicaVeterinaria` varchar(45) NOT NULL,
  PRIMARY KEY (`idLarTemporario`),
  CONSTRAINT `fk_lar_temporario` FOREIGN KEY (`idLarTemporario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lartemporario`
--

LOCK TABLES `lartemporario` WRITE;
/*!40000 ALTER TABLE `lartemporario` DISABLE KEYS */;
/*!40000 ALTER TABLE `lartemporario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacao`
--

DROP TABLE IF EXISTS `localizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizacao` (
  `idLocalizacao` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `logradouro` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `latitude` varchar(45) NOT NULL,
  `longitude` varchar(45) NOT NULL,
  `Localizacaocol` varchar(45) NOT NULL,
  PRIMARY KEY (`idLocalizacao`),
  CONSTRAINT `fk_localizacao` FOREIGN KEY (`idLocalizacao`) REFERENCES `clinica` (`idClinica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacao`
--

LOCK TABLES `localizacao` WRITE;
/*!40000 ALTER TABLE `localizacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `localizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ongs`
--

DROP TABLE IF EXISTS `ongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ongs` (
  `idOngs` int NOT NULL,
  `RazaoSocial` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `resp` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `CNPJ` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  KEY `fk_ong_idx` (`idOngs`),
  CONSTRAINT `fk_ong` FOREIGN KEY (`idOngs`) REFERENCES `animais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ongs`
--

LOCK TABLES `ongs` WRITE;
/*!40000 ALTER TABLE `ongs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `idServicos` int NOT NULL,
  `Petshop` varchar(45) NOT NULL,
  `AnimaisPerdidos` varchar(45) NOT NULL,
  `LarTemporario` varchar(45) NOT NULL,
  `Voluntarios` varchar(45) NOT NULL,
  `larDefinitivo` varchar(45) NOT NULL,
  `DoadoresRecurso` varchar(45) NOT NULL,
  `TaxiDog` varchar(45) NOT NULL,
  `ServVeterinaio` varchar(45) NOT NULL,
  PRIMARY KEY (`idServicos`),
  CONSTRAINT `fk_servicos` FOREIGN KEY (`idServicos`) REFERENCES `clinica` (`idClinica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `id_animal` int NOT NULL,
  `Funcao` varchar(45) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `cpf` char(11) NOT NULL,
  `rg` char(9) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_animal_usuario_idx` (`id_animal`),
  CONSTRAINT `fk_animal_usuario` FOREIGN KEY (`id_animal`) REFERENCES `animais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinario`
--

DROP TABLE IF EXISTS `veterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinario` (
  `id_Veterinario` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `CRMV` int NOT NULL,
  `celular` varchar(45) NOT NULL,
  `endereço` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Veterinario`),
  CONSTRAINT `fk_veterinario` FOREIGN KEY (`id_Veterinario`) REFERENCES `clinica` (`idClinica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinario`
--

LOCK TABLES `veterinario` WRITE;
/*!40000 ALTER TABLE `veterinario` DISABLE KEYS */;
/*!40000 ALTER TABLE `veterinario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 22:17:23
