-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/02/2025 às 15:54
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_chamadinha`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_alunos`
--

CREATE TABLE `tb_alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_alunos`
--

INSERT INTO `tb_alunos` (`id`, `nome`) VALUES
(1, 'Antônio Gabriel Santos Godoy Carneiro'),
(2, 'Caua Canale Ferreira'),
(7, 'Josue Orellana Montenegro'),
(8, 'Kenya Banach Chrominski Jaques'),
(9, 'Leandro Piai Barreto'),
(10, 'Marcia Gisseli Mamani Condarco'),
(11, 'Matheus Dantas de Sousa'),
(12, 'Matheus David'),
(13, 'Matheus Guida'),
(14, 'Matheus Leonardo Ismarsi'),
(16, 'Thiago Bispo Souza'),
(17, 'Victor Huggo Lima da Silva'),
(18, 'Vítor Frazatto Barduco'),
(19, 'Walmir Antonio de Sousa Ribeiro'),
(20, 'Paulo Santos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_info_alunos`
--

CREATE TABLE `tb_info_alunos` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `telefone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `frequente` tinyint(1) DEFAULT NULL,
  `id_alunos` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_info_alunos`
--

INSERT INTO `tb_info_alunos` (`id`, `telefone`, `email`, `nascimento`, `frequente`, `id_alunos`, `img`) VALUES
(1, '', 'Antonio@gmail.com', '1999-05-07', 1, 1, 'antonio.png'),
(2, '', 'Caua@gmail.com', '2007-11-23', 1, 2, 'caua.png'),
(7, '', 'Josue@gmail.com', '2006-01-19', 1, 7, 'josue.png'),
(8, '', 'Kenya@gmail.com', '1994-02-17', 1, 8, 'kenya.png'),
(9, '', 'Leandro@gmail.com', '2006-05-04', 1, 9, 'leandro.png'),
(10, '', 'Marcia@gmail.com', '2000-05-07', 1, 10, 'marcia.png'),
(11, '', 'MatheusDantas@gmail.com', '1980-07-06', 1, 11, 'matheus-dantas'),
(12, '', 'MatheusDavid@gmail.com', '2007-04-27', 1, 12, 'matheus-david.png'),
(13, '', 'MatheusGuida@gmail.com', '2004-01-02', 1, 13, 'matheus-guida.png'),
(14, '', 'MatheusIsmarsi@gmail.com', '2007-02-22', 1, 14, 'matheus-ismarsi.png'),
(16, '', 'Thiago@gmail.com', '2007-03-24', 1, 16, 'thiago.png'),
(17, '', 'Victor@gmail.com', '2007-01-18', 1, 17, 'victor.png'),
(18, '', 'Vítor@gmail.com', '2005-08-22', 1, 18, 'vitor.png'),
(19, '', 'Walmir@gmail.com', '1994-04-29', 1, 19, 'walmir.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_info_alunos`
--
ALTER TABLE `tb_info_alunos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `tb_info_alunos`
--
ALTER TABLE `tb_info_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
