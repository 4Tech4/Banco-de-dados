-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.33-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para tcc_4tech
DROP DATABASE IF EXISTS `tcc_4tech`;
CREATE DATABASE IF NOT EXISTS `tcc_4tech` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tcc_4tech`;

-- Copiando estrutura para tabela tcc_4tech.armazemagua
CREATE TABLE IF NOT EXISTS `armazemagua` (
  `codigo_armazemAgua` int(50) NOT NULL AUTO_INCREMENT,
  `porcentagem_armazemAgua` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codigo_armazemAgua`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela tcc_4tech.bateriasolar
CREATE TABLE IF NOT EXISTS `bateriasolar` (
  `porcentagem` int(11) NOT NULL,
  `qtd_volts` int(250) NOT NULL,
  PRIMARY KEY (`porcentagem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela tcc_4tech.cadastro
CREATE TABLE IF NOT EXISTS `cadastro` (
  `cpf` int(11) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `telefone` int(15) DEFAULT NULL,
  `senha` int(11) DEFAULT NULL,
  `email_cadastro` varchar(100) DEFAULT NULL,
  `endereço` varchar(300) DEFAULT NULL,
  `cidade` varchar(300) DEFAULT NULL,
  `rua` varchar(300) DEFAULT NULL,
  `bairro` varchar(300) DEFAULT NULL,
  KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela tcc_4tech.geral
CREATE TABLE IF NOT EXISTS `geral` (
  `codigo_geral` int(50) NOT NULL AUTO_INCREMENT,
  `porcentagem_bateria` int(3) NOT NULL DEFAULT '0',
  `umidade` int(50) NOT NULL DEFAULT '0',
  `armazenamento_geral` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codigo_geral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela tcc_4tech.historico
CREATE TABLE IF NOT EXISTS `historico` (
  `codigo_historico` int(50) NOT NULL AUTO_INCREMENT,
  `bateria` int(50) NOT NULL DEFAULT '0',
  `umidade` int(50) NOT NULL DEFAULT '0',
  `armazenamento` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codigo_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela tcc_4tech.login
CREATE TABLE IF NOT EXISTS `login` (
  `senha` int(50) NOT NULL,
  `email_login` varchar(50) NOT NULL,
  PRIMARY KEY (`senha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela tcc_4tech.umidade
CREATE TABLE IF NOT EXISTS `umidade` (
  `codigo_umidade` int(50) NOT NULL AUTO_INCREMENT,
  `porcentagem_umidade` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codigo_umidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela tcc_4tech.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `cpf` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `codigo_usuario` int(50) NOT NULL,
  `senha` int(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
