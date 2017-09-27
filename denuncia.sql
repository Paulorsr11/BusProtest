-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Set-2017 às 23:53
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `denuncia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cobrador`
--

CREATE TABLE `cobrador` (
  `id_cobrador` int(11) NOT NULL,
  `nome_cobrador` varchar(45) DEFAULT NULL,
  `fone_cobrador` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cobrador`
--

INSERT INTO `cobrador` (`id_cobrador`, `nome_cobrador`, `fone_cobrador`) VALUES
(1, 'Jhonatan Oliveira', '(91)88888-8888'),
(2, 'Jorge Almeida', '(91)88888-8888');

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia`
--

CREATE TABLE `denuncia` (
  `id_denuncia` int(11) NOT NULL,
  `texto_denuncia` varchar(100) DEFAULT NULL,
  `hora_denuncia` varchar(45) DEFAULT NULL,
  `data_denuncia` varchar(45) DEFAULT NULL,
  `status_denuncia` varchar(45) DEFAULT NULL,
  `resposta_denuncia` varchar(100) DEFAULT NULL,
  `linha_id_linha` int(11) NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `denuncia`
--

INSERT INTO `denuncia` (`id_denuncia`, `texto_denuncia`, `hora_denuncia`, `data_denuncia`, `status_denuncia`, `resposta_denuncia`, `linha_id_linha`, `usuario_id_usuario`) VALUES
(1, 'Queimou parada', '09:00', '23/04/2017', 'respondida', 'de novo', 1, 2),
(2, 'Parado em linha dupla', '02:00', '13/04/2017', 'entrada', 'entao', 2, 2),
(3, 'Motorista incompetente ', '22:30', '03/07/2017', 'respondida', 'pois e', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `linha`
--

CREATE TABLE `linha` (
  `id_linha` int(11) NOT NULL,
  `inicio_linha` varchar(45) DEFAULT NULL,
  `fim_linha` varchar(45) DEFAULT NULL,
  `onibus_id_onibus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='					';

--
-- Extraindo dados da tabela `linha`
--

INSERT INTO `linha` (`id_linha`, `inicio_linha`, `fim_linha`, `onibus_id_onibus`) VALUES
(1, 'Icui Guajara', 'Presidente Vargas', 1),
(2, '40 HORAS', 'VER-O-PESO', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `id_motorista` int(11) NOT NULL,
  `nome_motorista` varchar(45) DEFAULT NULL,
  `fone_motorista` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`id_motorista`, `nome_motorista`, `fone_motorista`) VALUES
(1, 'Gabriel dos Santos', '(91)99999-9999'),
(3, 'Mikael dos Santos', '(91)99999-9999');

-- --------------------------------------------------------

--
-- Estrutura da tabela `onibus`
--

CREATE TABLE `onibus` (
  `id_onibus` int(11) NOT NULL,
  `placa_onibus` varchar(45) DEFAULT NULL,
  `modelo_onibus` varchar(45) DEFAULT NULL,
  `cobrador_id_cobrador` int(11) NOT NULL,
  `motorista_id_motorista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `onibus`
--

INSERT INTO `onibus` (`id_onibus`, `placa_onibus`, `modelo_onibus`, `cobrador_id_cobrador`, `motorista_id_motorista`) VALUES
(1, 'JDT-1276', 'MERCEDES BENZ', 1, 3),
(2, 'JKM-4792', 'MARCO POLO', 1, 3),
(3, 'JKM-4792', 'MARCO POLO', 1, 3),
(4, 'OTG-7453', 'MARCO POLO', 1, 3),
(5, 'OTG-7453', 'MARCO POLO', 1, 3),
(6, 'JTM-9015', 'SCANIA', 1, 3),
(14, 'JKM-4792', 'MARCO POLO', 1, 3),
(18, 'OTG-7453', 'MARCO POLO', 1, 1),
(19, 'OTG-7453', 'MARCO POLO', 1, 1),
(20, 'JWS-5692', 'MERCEDES BENZ', 2, 3),
(21, 'JDT-1276', 'SCANIA', 2, 1),
(22, 'JKM-4792', 'MARCO POLO', 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(45) DEFAULT NULL,
  `user_usuario` varchar(45) DEFAULT NULL,
  `senha_usuario` varchar(45) DEFAULT NULL,
  `email_usuario` varchar(45) DEFAULT NULL,
  `tipo_usuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `user_usuario`, `senha_usuario`, `email_usuario`, `tipo_usuario`) VALUES
(2, 'Silvarney Henrique', 'silvarney', '123', 'silvarney@gmail.com', 'nivel_1'),
(3, 'Odair Jose', 'odair', '123', 'odair@gmail.com', 'nivel_2'),
(4, 'Paulo Borges', 'paulo', '123', 'paulo@gmail.com', 'nivel_3'),
(5, 'Laine de Padua', 'laine', '123', 'laine@gmail.com', 'nivel_1'),
(6, 'Laine de Padua', 'laine', '123', 'laine@gmail.com', 'nivel_1'),
(7, 'Rafael Favacho', 'rafael', '123', 'rafael@gmail.com', 'nivel_1'),
(8, 'Rafael Favacho', 'rafael', '123', 'rafael@gmail.com', 'nivel_1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cobrador`
--
ALTER TABLE `cobrador`
  ADD PRIMARY KEY (`id_cobrador`);

--
-- Indexes for table `denuncia`
--
ALTER TABLE `denuncia`
  ADD PRIMARY KEY (`id_denuncia`,`linha_id_linha`,`usuario_id_usuario`),
  ADD KEY `fk_denuncia_usuario_idx` (`usuario_id_usuario`),
  ADD KEY `fk_denuncia_linha1_idx` (`linha_id_linha`);

--
-- Indexes for table `linha`
--
ALTER TABLE `linha`
  ADD PRIMARY KEY (`id_linha`,`onibus_id_onibus`),
  ADD KEY `fk_linha_onibus1_idx` (`onibus_id_onibus`);

--
-- Indexes for table `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`id_motorista`);

--
-- Indexes for table `onibus`
--
ALTER TABLE `onibus`
  ADD PRIMARY KEY (`id_onibus`,`cobrador_id_cobrador`,`motorista_id_motorista`),
  ADD KEY `fk_onibus_cobrador1_idx` (`cobrador_id_cobrador`),
  ADD KEY `fk_onibus_motorista1_idx` (`motorista_id_motorista`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cobrador`
--
ALTER TABLE `cobrador`
  MODIFY `id_cobrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `denuncia`
--
ALTER TABLE `denuncia`
  MODIFY `id_denuncia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `linha`
--
ALTER TABLE `linha`
  MODIFY `id_linha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `motorista`
--
ALTER TABLE `motorista`
  MODIFY `id_motorista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `onibus`
--
ALTER TABLE `onibus`
  MODIFY `id_onibus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD CONSTRAINT `fk_denuncia_linha1` FOREIGN KEY (`linha_id_linha`) REFERENCES `linha` (`id_linha`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_denuncia_usuario` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `linha`
--
ALTER TABLE `linha`
  ADD CONSTRAINT `fk_linha_onibus1` FOREIGN KEY (`onibus_id_onibus`) REFERENCES `onibus` (`id_onibus`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `onibus`
--
ALTER TABLE `onibus`
  ADD CONSTRAINT `fk_onibus_cobrador1` FOREIGN KEY (`cobrador_id_cobrador`) REFERENCES `cobrador` (`id_cobrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_onibus_motorista1` FOREIGN KEY (`motorista_id_motorista`) REFERENCES `motorista` (`id_motorista`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
