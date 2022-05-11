-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Maio-2022 às 21:27
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancodigital`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `numeroConta` varchar(6) NOT NULL,
  `titular` varchar(26) NOT NULL,
  `agencia` varchar(4) NOT NULL,
  `digito` varchar(1) NOT NULL,
  `tipoDaConta` varchar(50) NOT NULL,
  `saldoAtual` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `pin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`numeroConta`, `titular`, `agencia`, `digito`, `tipoDaConta`, `saldoAtual`, `status`, `pin`) VALUES
('246177', 'kurt', '4567', '9', 'Corrente', 90, 'Ativa', '7456'),
('472672', 'jacob', '4567', '9', 'Corrente', 1299.85, 'Ativa', '1234'),
('520678', 'jimi', '7453', '9', 'Corrente', 615, 'Desativada', '6345'),
('808978', 'loki', '1234', '1', 'Corrente', 200, 'Ativa', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `extrato`
--

CREATE TABLE `extrato` (
  `id` int(11) NOT NULL,
  `operacao` varchar(50) NOT NULL,
  `quantia` float NOT NULL,
  `data` varchar(10) NOT NULL,
  `destinatario` varchar(50) NOT NULL,
  `numeroConta` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `extrato`
--

INSERT INTO `extrato` (`id`, `operacao`, `quantia`, `data`, `destinatario`, `numeroConta`) VALUES
(10, 'transferencia', 49.35, '11/05/2022', 'jacob', '246177'),
(11, 'deposito', 15, '11/05/2022', 'jimi', '246177'),
(12, 'saque', 10, '11/05/2022', 'kurt', '246177'),
(13, 'saque', 49.5, '11/05/2022', 'jacob', '472672');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`numeroConta`);

--
-- Índices para tabela `extrato`
--
ALTER TABLE `extrato`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `extrato`
--
ALTER TABLE `extrato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
