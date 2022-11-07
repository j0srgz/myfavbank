-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: myfavbank
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
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nrocuenta` int NOT NULL,
  `nombre_prop` varchar(25) NOT NULL,
  `apell_prop` varchar(25) NOT NULL,
  `cedula_prop` int NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (4,102123456,'Jack','McCollum',123456,2000.50,NULL),(5,102456123,'Mike','Harper',456123,1000.75,NULL);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('-80JMPvYsdsNPNTiV4yKjYLENfA6IuIz',1667072118,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('-GV4AnN7Vk3ELCrJQ7zufWciJc8S2oxS',1667084665,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('0GTeL2In-x41LK0RLQZZ3pRr7EkdXzaV',1667102048,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('0Wytsgc6Kt-T-rWadDfiHZB3j5m6ZiRg',1667724165,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('0kSUS9-sjbDPuqwxF2-TXqdXNKa6aMKE',1667083588,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('2ME05EiM9jqGQHn9pV2YVPJvk5LOZPKe',1667085252,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"success\":[\"La cuenta ingresada no existe\"]}}'),('2_pxBh-AtTMb4T4GR6c1MzWEO5SR-7R1',1667083118,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('2dvJv8Nh452sbrILlzJoxSGVBPPubY6t',1667088551,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('2sy9Y2oXzSA4XzN3IY4me0B-C5tF7T7x',1667084104,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('3e5tflCoynhkh1tiPZWaJ3_Oaq3Osw5m',1667090646,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('3t1ZUVSMO8EHZd8iM2x4nEXjaJQlct3w',1667723994,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('40u7QKcoqZUYQazUL6HuXZkudbNC1n7z',1667088034,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('4BynEIAllvR3TWT1_LQQw5Bd-O2OsShQ',1667083113,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('4UMRBQgcvELY9zSokv01O_f2L2dQOhFs',1667070748,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('59lHp2IQ9_GZVQNgHEFg8GcRDfJiZrM-',1667092800,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('5rLhPzkJnS4Q2NYcZvdUQxgVE0Uekt-9',1667086545,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La cuenta ingresada no existe\",\"La cuenta ingresada no existe\"]}}'),('6p7civ0DwCY6OxIwHQOoa0ANhGuFWPUk',1667097819,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('7FC9SJczUpvIlB4qFHIa6ugIJVxAEdLx',1667099914,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('8PBtBWt6t-rpbKII-69GYXypVXhw3T-H',1667087759,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('9yOqUV8Jz05TSEDl6WwF7fuSbRauDNk1',1667085126,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La cuenta ingresada no existe\"]}}'),('ATu0ZDtWXNVGF8Tq0zN0_5rQ1IobCGvb',1667759746,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('AmXlZcvC4Cxc9PpQvVdZ592WVkb9P6Yn',1667086498,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('Ax1d6ktzXLsV18U-6Ilb6cAqXK3u9_lB',1667084490,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('BXVXm_IOV8xiBu8tgwtHpeguxmiXFe-u',1667087810,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('BmL4fEa1iTG2eb7xUHfZOfgYLPFPzPlD',1667086598,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La cuenta ingresada no existe\",\"La cuenta ingresada no existe\"]}}'),('BxG1Mh0o0woV669322dRBFmoNM780wDz',1667090013,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('C4mwlm9pYtMS3QiXA8rDoKEgyFEkPGnl',1667090546,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('CQteD-j-EOTUVFE9J40y0TNodAEgJSUB',1667149584,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('CRXQwGTdwSzZUMCz6k1TYP4quXnwuR68',1667088738,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('D8d8q2dGxEywMMucfXbTyRljEI9_ujfV',1667073069,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('ESgiYGrywCPjBk2UY0VdXHnm85n0gzL0',1667088124,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('FDztVvRFolbaTECtQfbQKoFVunDIaBk_',1667090084,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('GNrkd9IZcyBsvdGz1TSmCzwWgA5x8O9W',1667099495,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":6},\"flash\":{}}'),('Gk2JdrrCw86ogNMsbIIMdSWUOt3v4RM7',1667085725,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La cuenta ingresada no existe\"]}}'),('H3akp1vVOXOwxvOSOoZtEkOAEmP31jP6',1667087649,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('HkGEqOUCHcVn6-yTJoJUlw32kxGyxPIU',1667083636,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('IsXnTLiQRjPnWgvdAfdmyBM5lGEK006X',1667087491,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('J9JLvhCNINHLssRdaLu6pFjLLV3PKfav',1667087426,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('JHoHEw0_02V3siE8AU8nQXU6zkamvnFE',1667101926,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('JLGHMoDNCp8bKjH9zsvhb9-sPWn3-Xnp',1667088482,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('Jr4TTLfDCOHLGxeSjWEP7e1uma6_opqb',1667083427,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('KURdU7edyueStuhXOkvM58QubSPyZJQh',1667088625,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('L_PE-z3IuFmGetGlCVjjFM5Zxe7E3nWc',1667083738,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('LvPHAUdwUmqQKwTLmXydHsHtS13cjOPQ',1667101834,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('MPUepbHlXB8oV4h2VvilkXN9J7XVeWaw',1667753803,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('OQKBwXgqtBRqMMVtDEMhrPWFQb_rfdgp',1667083329,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('OzYOdz_IFBfDkVj0xys46maDTIJqMVJ0',1667149376,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('PHZxviIKml1XKR502rB9XlF-gFQ-k_M9',1667101740,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('PhclmUGjTZ607YoTNIlu590V0gQi8rhl',1667096933,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('Plqm1smNKSoxExho6-AMUvbW5Wa7bTf2',1667090492,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('PnExMeApTcM90A1vz_n59BnUit4UxkWI',1667076118,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('Q9X4x-FkjuZ5PZZFGHJFirVzfr0euQwh',1667072127,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('QCAAq3uv9ZiXtjNYHKkY_xk1vt2xfn-z',1667085284,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('QLzD0IcyWkFrTZI2rc5owJMWDBTQXrbo',1667088420,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('QY1E2TL9syWbXoDWmaPlOhX572J6MoWS',1667087846,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('S58plIylNFK4U-GJOMy3WVzgHhQ6zzc0',1667086997,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('SWkbtGbgncf_iEd5mpKHxxy6BQ0tpjCi',1667753764,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('Shdn2_xcRitZICmp6dCiyn18-dvqZzBE',1667087338,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('TrXTzg-ARHrOqdykJVB5oqpAaII0CuZo',1667099779,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('VCYmLS0K6rDAwsrM51zhYVRZkmTKXxcU',1667097555,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('VP9sHmlANW5TkCd8YcManwpATQaejdp6',1667088833,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('X8lZ5HqSnqpwKA7aywBziYpwDa_ijsvA',1667097791,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('XiCNCD5NEF3MymA6saQYNHoAd-XC2qmp',1667754034,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Y8CoDatGh3clQoObmVKZOPP4-j4YXO4g',1667092956,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('Za0aUCRMJvPMukoJOgiYqs76c3TUrRq3',1667087983,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('_LMcwgMw0gR4abcV_txUlOhOwKeJiQaO',1667095322,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('bmv5Odn3HYo6oiThsv7i67Rhwh3qGdau',1667088726,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('ci9Qwiwh0AQ_LrhKrBbYChgAZchqE5lI',1667087549,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('d7jaIEEDgk6Axek9TCgpGOEjwWfIMee-',1667096915,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('dwtMTC8kI8ndwlVB8K7Pj3ArRhuDb6Ux',1667149370,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('edSsMZGR6ZX7tEvJwiY3-y6GuBnVVEAi',1667086748,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La cuenta ingresada no existe\"]}}'),('fX623_Smq2IyHchb4dTCoMZtidA1MQ-J',1667096605,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('g_CNnT3mAfGI8xzdjl1v1YerdcUNj1PA',1667092689,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":6},\"flash\":{}}'),('gwHo615gXisDhN2yoUyypA9ooXRkT2uA',1667084356,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('hFBLHuwroQbXeLClWee2S8abX0I1iOqe',1667095635,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La referencia seleccionada no existe\"]}}'),('hTNmHkvtF0KXJ2JJf5cIwMkdNC-U4y1u',1667090205,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('hjcAfU0hK0961oKBfyNI1phe4oFhLfST',1667082962,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('i6FivwS34WP_EBsiBVj1NPMNOHdzvdcE',1667102176,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('iYsBDELsFNETWXbgVgazJMtIzfLbjXm8',1667090495,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('kZJ5i7mLVG1C9RVDo4IRpJZpz623Ujon',1667090209,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('kfAZ4UkRfuHnwobMqD7k7X0dTnRtPEuu',1667085470,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('kmMOBrFuyrIMWlT-0w1JrcwPxBiV-eqB',1667087572,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('lQpF-Ykx2fRetTIOoAe5Yf2H2PfvYfOU',1667101940,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('m4V3H6eTfJFnWV8iEDY_ZbpN8w3UH1NS',1667088824,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('mF4146cvfLJsDWBx71z461GanH016OCM',1667087676,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('mnE-canhdHfcw-ihDrYZoAbG3E7DZ7kE',1667085702,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La cuenta ingresada no existe\"]}}'),('nOI1IjcENBhrhJjdCm6ZmY5tY1zSQJ8d',1667095600,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('nZjhejF24AQGdKRvULRwAkw-D4JEmcEg',1667085225,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"success\":[\"La cuenta ingresada no existe\"]}}'),('oRgGiV6zSIof5rn2E4Cc_dfw7JgpgzUD',1667099469,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('ofOKtmxSOyTI2LgpxBZEF2fmwmzKLjDA',1667073219,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('pdCLgS0PfPeuxh1no_zWt8SsYUadgLS9',1667724315,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('q0ObWr6QUtRkFOuAaLsocb_wx6IHLJEL',1667087908,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('ql4-uNJjX6agcr9yrb8_TMUFD1_5mOSK',1667096956,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('rBJncJs8N14C3AF9DAE0bPnhzWS84YLc',1667083460,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('rvmEzKpxxeTwgxuLGTTmzoU9AUwkqa_a',1667085499,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La cuenta ingresada no existe\"]}}'),('so8MATEi1ekEpCVOk6nmWwxSSrkWLZxE',1667086577,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('tUAlYoopnnWaWRe9cA8ndOA1buE4Yap1',1667097709,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('tajjWtCBB7ev0fmUpMvRJgYuml6Q25al',1667089805,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('u2SCRJq-tzExBscJbFFYm-tpEbuaw-ps',1667101890,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('ujsUJu_CTRyvNR8NjvmO-WHIF8ujQShB',1667149576,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":5},\"flash\":{}}'),('umwEJp7975o7bxLFzuf12SkBKLL6yIsY',1667084258,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('vQwVPb0925y1eghBKQvUHBdkoh4d8-5K',1667089801,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('w7mbZrK4W4MskaSbU3VWq1oTBo977OMB',1667095666,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{\"failure\":[\"La referencia seleccionada no existe\"]}}'),('wYp_qrWtKxvuYIyCZoLUPEvegp2r1-TH',1667076719,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('x0IICtn88xb1jJqS5S-bEY2i60nWjNnu',1667084627,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('xh-wznfzUYMahQ79B1ko_PbbrsV4e15e',1667101166,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('xszF0eo6QM-Cola0B7CEIlxfx-86_nfx',1667084209,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":1},\"flash\":{}}'),('yMdjdZ-DJdjZNGHJPTX0yXufm1apPjdm',1667095862,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_emisora` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `id_receptor` int NOT NULL,
  `ref` varchar(10) NOT NULL,
  `hora` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_id_emisora` (`id_emisora`),
  KEY `fk_id_receptor` (`id_receptor`),
  CONSTRAINT `fk_id_emisora` FOREIGN KEY (`id_emisora`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_id_receptor` FOREIGN KEY (`id_receptor`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
INSERT INTO `transfers` VALUES (1,1,23.00,1,'1754a4d988','2022-10-28 07:58:00'),(2,1,1.00,5,'c5ba9f8853','2022-10-28 07:59:00'),(3,1,1.00,5,'0c67102f5e','2022-10-28 08:00:00'),(4,1,1.00,5,'b502a71f70','2022-10-28 08:02:00'),(5,1,1.00,5,'1ef26b69b1','2022-10-28 08:04:00'),(6,5,23.00,1,'1bc29ec046','2022-10-28 08:06:00'),(7,1,20.00,5,'32319983ed','2022-10-28 08:09:00'),(8,1,10.00,5,'dd476d5c65','2022-10-28 08:10:00'),(9,1,20.00,5,'c3385ba2aa','2022-10-28 08:11:00'),(10,1,200.00,5,'81ab98a07a','2022-10-28 08:13:00'),(11,1,10.00,5,'d7bb30af21','2022-10-28 08:30:00'),(12,5,0.00,1,'e9894b31f8','2022-10-28 08:45:00'),(13,5,10.00,1,'8b12898fae','2022-10-28 08:45:00'),(14,5,0.22,1,'b01ecbe7c0','2022-10-28 08:46:00'),(15,6,1500.00,1,'7a14cec058','2022-10-28 09:17:00'),(16,1,50.33,6,'d5900f78dc','2022-10-28 11:10:00'),(17,6,50.33,1,'bf886a4e1b','2022-10-28 11:11:00'),(18,6,0.00,1,'d30876fa43','2022-10-28 11:11:00'),(19,1,200.20,5,'0fdbf2c9a4','2022-10-28 23:39:25'),(20,6,100.50,5,'cfd39f4fda','2022-10-29 13:05:23');
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'josrgz','$2a$10$b2yyBBlhero9rOeDrALgseVVJolu.FODFbKea.rityYalhw5gPxly'),(5,'arojasg','$2a$10$Om4X1nDqUIEhcjehfbwpye6VN0tyK97XVIMbjxFmT1ae.B1oEteJu'),(6,'aigl17','$2a$10$un7x8BOt7snCjSixvrHdEeOv3HW6gOTNf8q9LF05utFWTu17Sdb46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-07 19:17:00
