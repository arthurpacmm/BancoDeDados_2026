-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jun-2026 às 17:23
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'Eletrônicos'),
(2, 'Limpeza'),
(3, 'Roupas'),
(4, 'Hortifruit'),
(5, 'Processados'),
(6, 'Enlatados'),
(7, 'Laticínios');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quant` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `observacoes`, `id_categoria`) VALUES
(1, 'Manga', '13.90', 56, 'nao tem', 'Preco por kg.', 4),
(2, 'Maca', '7.80', 68, 'nao tem', 'Preco por kg.', 4),
(3, 'Banana', '6.90', 72, 'nao tem', 'Preco por kg.', 4),
(4, 'Leite', '6.50', 98, 'Italac', '', 7),
(5, 'Iogurte grego', '3.90', 34, 'Vigor', '', 7),
(6, 'Teclado mecanico', '235.00', 19, 'Red Dragon', '', 1),
(7, 'Mouse Gamer', '119.90', 23, 'Red Dragon', '', 1),
(8, 'Camiseta', '59.90', 137, 'Riachuelo', '', 3),
(9, 'Calca', '109.90', 83, 'Riachuelo', '', 3),
(10, 'Par de luvas termicas', '29.90', 27, 'Lupo', 'Dedo indicador e anelar compativel com telas', 3),
(11, 'Jaqueta corta-vento', '209.90', 17, 'Adidas', 'Impermeavel para frio moderado', 3),
(12, 'Detergente liquido', '2.80', 182, 'Ype', '', 2),
(13, 'Sabao em po', '19.80', 136, 'Omo', 'Lavagem perfeita 1.5kg', 2),
(14, 'Macarrao instantaneo', '2.90', 75, 'Nissin', '', 5),
(15, 'Ervilha em conserva', '4.50', 143, 'Quero', 'Lata 170g', 6),
(16, 'Creme de Leite', '5.20', 140, 'Nestle', 'Lata 300g', 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
