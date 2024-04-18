-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 18/04/2024 às 02:08
-- Versão do servidor: 10.11.7-MariaDB-cll-lve
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u909076388_cotacao_api`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `countries_currencies`
--

CREATE TABLE `countries_currencies` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_currency_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `countries_currencies`
--

INSERT INTO `countries_currencies` (`id`, `country_name`, `main_currency_name`, `main_currency_code`, `main_currency_slug`, `createdAt`, `updatedAt`) VALUES
(378, 'Estados Unidos', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(379, 'Porto Rico', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(380, 'Panamá', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(381, 'Equador', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(382, 'El Salvador', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(383, 'Somália', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(384, 'Turks e Caicos', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(385, 'Zimbábue', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(386, 'Guam', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(387, 'Timor-Leste', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(388, 'Ilhas Virgens Americanas', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(389, 'Palau', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(390, 'Ilhas Virgens Britânicas', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(391, 'Bonaire', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(392, 'Samoa Americana', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(393, 'Estados Federados da Micronésia', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(394, 'Ilhas Marshall', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(395, 'Ilhas Marianas do Norte', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(396, 'Países Baixos Caribenhos', 'Dólar', 'USD', 'dolar', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(397, 'Austrália', 'Dólar Australiano', 'AUD', 'dolar-australiano', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(398, 'Suíça', 'Franco Suíço', 'CHF', 'franco-suico', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(399, 'Liechtenstein', 'Franco Suíço', 'CHF', 'franco-suico', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(400, 'Reino Unido', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(401, 'Inglaterra', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(402, 'Escócia', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(403, 'Jersey', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(404, 'País de Gales', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(405, 'Gibraltar', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(406, 'Ilha de Man', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(407, 'Santa Helena', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(408, 'Ilhas Geórgia do Sul e Sandwich do Sul', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(409, 'Irlanda do Norte', 'Libra', 'GBP', 'libra', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(410, 'Argentina', 'Peso Argentino', 'ARS', 'peso-argentino', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(411, 'Chile', 'Peso Chileno', 'CLP', 'peso-chileno', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(412, 'Colômbia', 'Peso Colombiano', 'COP', 'peso-colombiano', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(413, 'México', 'Peso Mexicano', 'MXN', 'peso-mexicano', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(414, 'Alemanha', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(415, 'Canadá', 'Dólar Canadense', 'CAD', 'canada', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(416, 'França', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(417, 'Espanha', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(418, 'Itália', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(419, 'Bélgica', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(420, 'Finlândia', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(421, 'Grécia', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(422, 'Lituânia', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(423, 'Eslováquia', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(424, 'Portugal', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(425, 'Luxemburgo', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(426, 'Malta', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(427, 'Eslovênia', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(428, 'Letônia', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(429, 'Irlanda', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(430, 'Estônia', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(431, 'Chipre', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(432, 'Áustria', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(433, 'Países Baixos', 'Euro', 'EUR', 'euro', '2022-04-02 01:31:41', '2022-04-02 01:31:41'),
(434, 'Japão', 'Iene', 'JPY', 'iene', '2022-04-02 01:31:41', '2022-04-02 01:31:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cron_urls`
--

CREATE TABLE `cron_urls` (
  `id` int(11) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `cron_urls`
--

INSERT INTO `cron_urls` (`id`, `currency`, `slug`, `cron_url`, `createdAt`, `updatedAt`) VALUES
(27, 'Dólar', 'dolar', 'https://www.melhorcambio.com/dolar-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(28, 'Euro', 'euro', 'https://www.melhorcambio.com/euro-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(29, 'Libra', 'libra', 'https://www.melhorcambio.com/libra-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(30, 'Dólar Canadense', 'dolar-canadense', 'https://www.melhorcambio.com/dolar-canadense-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(31, 'Iene', 'iene', 'https://www.melhorcambio.com/iene-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(32, 'Dólar Australiano', 'dolar-australiano', 'https://www.melhorcambio.com/dolar-australiano-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(33, 'Peso Mexicano', 'peso-mexicano', 'https://www.melhorcambio.com/peso-mexicano-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(34, 'Peso Argentino', 'peso-argentino', 'https://www.melhorcambio.com/peso-argentino-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(35, 'Peso Colombiano', 'peso-colombiano', 'https://www.melhorcambio.com/peso-colombiano-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(36, 'Peso Chileno', 'peso-chileno', 'https://www.melhorcambio.com/peso-chileno-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(37, 'Dirham', 'dirham', 'https://www.melhorcambio.com/dirham-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(38, 'Franco Suíço', 'franco-suico', 'https://www.melhorcambio.com/franco-suico-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(39, 'Yuan', 'yuan', 'https://www.melhorcambio.com/iuan-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56'),
(40, 'Novo Sol', 'novo-sol', 'https://www.melhorcambio.com/novo-sol-hoje', '2022-08-20 01:48:56', '2022-08-20 01:48:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastUpdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `currency`, `slug`, `value`, `code`, `symbol`, `lastUpdate`, `createdAt`, `updatedAt`) VALUES
(296, 'Dólar', 'dolar', 5.23, 'USD', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(297, 'Dólar Australiano', 'dolar-australiano', 3.39, 'AUD', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(298, 'Dólar Canadense', 'dolar-canadense', 3.83, 'CAD', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(299, 'Euro', 'euro', 5.62, 'EUR', '€', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(300, 'Franco Suíço', 'franco-suico', 5.79, 'CHF', 'Fr', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(301, 'Iene', 'iene', 0.0339, 'JPY', '¥', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(302, 'Libra', 'libra', 6.52, 'GBP', '£', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(303, 'Peso Argentino', 'peso-argentino', 0.0061, 'ARS', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(304, 'Peso Chileno', 'peso-chileno', 0.0054, 'CLP', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(305, 'Peso Colombiano', 'peso-colombiano', 0.0013, 'COP', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(306, 'Peso Mexicano', 'peso-mexicano', 0.31, 'MXN', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(307, 'Yuan', 'yuan', 0.72, 'CNY', '¥', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(309, 'Shekel', 'shekel', 1.58, 'ILS', '₪', '19/08/2022', '2022-08-20 00:22:41', '2022-08-20 01:05:01'),
(310, 'Novo Sol', 'novo-sol', 1.39, 'PEN', 'S/.', '18/04/2024', '2022-08-20 00:22:41', '2024-04-18 02:00:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies_histories`
--

CREATE TABLE `currencies_histories` (
  `id` int(11) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `currencies_histories`
--

INSERT INTO `currencies_histories` (`id`, `currency`, `slug`, `value`, `code`, `symbol`, `date`, `createdAt`, `updatedAt`) VALUES
(1200, 'Dólar', 'dolar', 0, 'USD', '$', '28/04/2022', '2022-10-09 20:16:08', '2022-10-09 20:16:08'),
(1201, 'Euro', 'euro', 0, 'EUR', '€', '28/04/2022', '2022-10-09 20:16:08', '2022-10-09 20:16:08'),
(1202, 'Libra', 'libra', 0, 'GBP', '£', '28/04/2022', '2022-10-09 20:16:08', '2022-10-09 20:16:08'),
(1203, 'Euro', 'euro', 5.07, 'EUR', '€', '09/10/2022', '2022-10-09 20:58:01', '2022-10-09 20:58:01'),
(1204, 'Libra', 'libra', 5.77, 'GBP', '£', '09/10/2022', '2022-10-09 20:58:01', '2022-10-09 20:58:01'),
(1205, 'Dólar', 'dolar', 5.2, 'USD', '$', '09/10/2022', '2022-10-09 20:58:01', '2022-10-09 20:58:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `newsletter_users`
--

CREATE TABLE `newsletter_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_newsletter` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `newsletter_users`
--

INSERT INTO `newsletter_users` (`id`, `name`, `email`, `assigned_newsletter`, `createdAt`, `updatedAt`) VALUES
(12, 'Gametuna', 'gameturnejbe@hebjf.com', 1, '2021-10-31 18:48:12', '2021-10-31 18:48:12'),
(15, 'ww', 'victoratavie22elawed@gmail.com', 1, '2021-10-31 18:55:01', '2021-10-31 18:55:01'),
(28, 'Victor', 'victoratavila79@gmail.com', 1, '2021-11-01 15:18:27', '2021-11-01 15:18:27'),
(29, 'Victor', 'victoratavila@hotmail.com', 1, '2022-04-02 03:07:46', '2022-04-02 03:07:46'),
(30, 'Victor', 'victoratinns@nf.com', 1, '2022-06-09 00:33:50', '2022-06-09 00:33:50'),
(31, 'Rafinhah', 'faelpadovani03@hotmail.com', 1, '2023-06-17 17:22:44', '2023-06-17 17:22:44'),
(32, 'Victor', 'atavilavictor@hotmail.com', 1, '2023-07-04 18:33:59', '2023-07-04 18:33:59'),
(33, 'Victor', 'teste@cotacoesdehoje.com.br', 1, '2023-09-30 20:13:18', '2023-09-30 20:13:18'),
(34, 'Cotações', 'contato@cotacoesdehoje.com.br', 1, '2024-01-12 19:41:57', '2024-01-12 19:41:57'),
(35, 'Pecorino', 'pecoriniemail@gmail.com', 1, '2024-03-26 13:05:55', '2024-03-26 13:05:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `previousdaycurrencies`
--

CREATE TABLE `previousdaycurrencies` (
  `id` int(11) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastUpdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `previousdaycurrencies`
--

INSERT INTO `previousdaycurrencies` (`id`, `currency`, `slug`, `value`, `code`, `symbol`, `lastUpdate`, `createdAt`, `updatedAt`) VALUES
(44, 'Dólar', 'dolar', 5.23, 'USD', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(45, 'Dólar Australiano', 'dolar-australiano', 3.39, 'AUD', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(46, 'Dólar Canadense', 'dolar-canadense', 3.83, 'CAD', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(47, 'Euro', 'euro', 5.62, 'EUR', '€', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(48, 'Franco Suíço', 'franco-suico', 5.79, 'CHF', 'Fr', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(49, 'Iene', 'iene', 0.0339, 'JPY', '¥', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(50, 'Libra', 'libra', 6.52, 'GBP', '£', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(51, 'Peso Argentino', 'peso-argentino', 0.0061, 'ARS', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(52, 'Peso Chileno', 'peso-chileno', 0.0054, 'CLP', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(53, 'Peso Colombiano', 'peso-colombiano', 0.0013, 'COP', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(54, 'Peso Mexicano', 'peso-mexicano', 0.31, 'MXN', '$', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(55, 'Yuan', 'yuan', 0.72, 'CNY', '¥', '18/04/2024', '2022-04-02 01:05:20', '2024-04-18 02:00:11'),
(56, 'Shekel', 'shekel', 1.58, 'ILS', '₪', '20/06/2023', '2022-08-20 00:22:41', '2022-08-20 01:05:01'),
(57, 'Novo Sol', 'novo-sol', 1.39, 'PEN', 'S/.', '18/04/2024', '2022-08-20 00:22:41', '2024-04-18 02:00:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210725001405-create-users.js'),
('20210725003751-create-currencies.js'),
('20210725005037-create-suggestion.js'),
('20210910222355-create-previousDayValues.js'),
('20220331012500-create-countries-currency.js'),
('20220430010906-create-currencies-history.js');

-- --------------------------------------------------------

--
-- Estrutura para tabela `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `suggestion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `suggestions`
--

INSERT INTO `suggestions` (`id`, `username`, `email`, `suggestion`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'approved', '2021-09-10 22:43:51', '2021-10-30 02:17:05'),
(2, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'approved', '2021-09-10 22:43:51', '2021-10-30 02:17:06'),
(3, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'rejected', '2021-09-10 22:43:51', '2021-10-30 02:17:06'),
(4, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'approved', '2021-09-10 22:43:51', '2021-11-13 01:58:24'),
(5, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'rejected', '2021-09-10 22:43:51', '2021-11-13 01:58:24'),
(8, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'approved', '2021-09-15 01:39:38', '2023-10-11 01:32:00'),
(11, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'approved', '2021-09-15 01:39:38', '2023-10-11 13:15:42'),
(14, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'approved', '2021-09-15 01:41:36', '2023-10-11 13:15:52'),
(15, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'approved', '2021-09-15 01:41:36', '2023-10-11 13:15:50'),
(16, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'approved', '2021-09-15 01:41:36', '2023-10-11 13:15:58'),
(21, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'approved', '2021-09-15 01:41:51', '2023-10-11 21:56:17'),
(22, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'approved', '2021-09-15 01:41:51', '2023-10-11 21:56:25'),
(23, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-09-15 01:41:51', '2021-09-15 01:41:51'),
(24, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-09-15 01:41:51', '2021-09-15 01:41:51'),
(25, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-09-16 01:39:04', '2021-09-16 01:39:04'),
(26, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-09-16 01:39:04', '2021-09-16 01:39:04'),
(27, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-09-16 01:39:04', '2021-09-16 01:39:04'),
(28, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-09-16 01:39:04', '2021-09-16 01:39:04'),
(29, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-09-16 01:39:04', '2021-09-16 01:39:04'),
(30, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-09-16 01:39:04', '2021-09-16 01:39:04'),
(31, 'Victor', 'victoratavila2@gmail.com', 'Yuan', 'pending', '2021-10-30 15:47:35', '2021-10-30 15:47:35'),
(32, 'Victor', 'test-x7d4loslt@srv1.mail-tester.com', 'Yuan', 'pending', '2021-10-30 15:50:21', '2021-10-30 15:50:21'),
(33, 'Victor', 'victoratavila@hotmail.com', 'Libra Esterlina', 'pending', '2021-10-30 23:30:17', '2021-10-30 23:30:17'),
(34, 'e', 'e@er.com', 'e', 'pending', '2021-10-30 23:32:20', '2021-10-30 23:32:20'),
(35, 'e', 'e@er.com', 'e', 'pending', '2021-10-30 23:33:05', '2021-10-30 23:33:05'),
(36, 'e', 'e@er.com', 'e', 'pending', '2021-10-30 23:33:05', '2021-10-30 23:33:05'),
(37, 'e', 'e@er.com', 'e', 'pending', '2021-10-30 23:33:05', '2021-10-30 23:33:05'),
(38, 'e', 'e@er.com', 'e', 'pending', '2021-10-30 23:33:05', '2021-10-30 23:33:05'),
(39, 'Victor', 'w@ee2.com', 'w', 'pending', '2021-10-30 23:33:19', '2021-10-30 23:33:19'),
(40, 'Victor', 'vickajeb@gmail.com', 'Libra esterlina ', 'pending', '2021-10-30 23:43:22', '2021-10-30 23:43:22'),
(41, 'Victor', 'vickajeb@gmail.com', 'Libra esterlina ', 'pending', '2021-10-31 00:44:06', '2021-10-31 00:44:06'),
(42, 'e', 'e@e.com', 'e', 'pending', '2021-10-31 00:52:41', '2021-10-31 00:52:41'),
(43, 'e', 'e@ewewee.com', 'e', 'pending', '2021-10-31 00:52:44', '2021-10-31 00:52:44'),
(44, 'e', 'euro@comio.com', 'e', 'pending', '2021-10-31 00:52:54', '2021-10-31 00:52:54'),
(45, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:53:08', '2021-10-31 00:53:08'),
(46, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:53:47', '2021-10-31 00:53:47'),
(47, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:53:49', '2021-10-31 00:53:49'),
(48, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:53:52', '2021-10-31 00:53:52'),
(49, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:54:09', '2021-10-31 00:54:09'),
(50, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:55:10', '2021-10-31 00:55:10'),
(51, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:55:37', '2021-10-31 00:55:37'),
(52, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:55:46', '2021-10-31 00:55:46'),
(53, 'e', 'ekjfhjff@odjfj.com', 'e', 'pending', '2021-10-31 00:56:22', '2021-10-31 00:56:22'),
(54, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-10-31 00:56:41', '2021-10-31 00:56:41'),
(55, 'e', 'ewe@fejfe.com', 'euro', 'pending', '2021-10-31 01:10:13', '2021-10-31 01:10:13'),
(56, 'Victor', 'victoratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:53:14', '2021-10-31 16:53:14'),
(57, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:54:09', '2021-10-31 16:54:09'),
(58, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:54:12', '2021-10-31 16:54:12'),
(59, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:54:20', '2021-10-31 16:54:20'),
(60, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:00', '2021-10-31 16:55:00'),
(61, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:07', '2021-10-31 16:55:07'),
(62, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:38', '2021-10-31 16:55:38'),
(63, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:38', '2021-10-31 16:55:38'),
(64, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:39', '2021-10-31 16:55:39'),
(65, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:39', '2021-10-31 16:55:39'),
(66, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:39', '2021-10-31 16:55:39'),
(67, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:39', '2021-10-31 16:55:39'),
(68, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:43', '2021-10-31 16:55:43'),
(69, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:43', '2021-10-31 16:55:43'),
(70, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:44', '2021-10-31 16:55:44'),
(71, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:44', '2021-10-31 16:55:44'),
(72, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:44', '2021-10-31 16:55:44'),
(73, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:44', '2021-10-31 16:55:44'),
(74, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:44', '2021-10-31 16:55:44'),
(75, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:44', '2021-10-31 16:55:44'),
(76, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:44', '2021-10-31 16:55:44'),
(77, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:45', '2021-10-31 16:55:45'),
(78, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:45', '2021-10-31 16:55:45'),
(79, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:45', '2021-10-31 16:55:45'),
(80, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:48', '2021-10-31 16:55:48'),
(81, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:55:57', '2021-10-31 16:55:57'),
(82, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:56:01', '2021-10-31 16:56:01'),
(83, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:56:01', '2021-10-31 16:56:01'),
(84, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:16', '2021-10-31 16:57:16'),
(85, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:16', '2021-10-31 16:57:16'),
(86, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:16', '2021-10-31 16:57:16'),
(87, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:17', '2021-10-31 16:57:17'),
(88, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:17', '2021-10-31 16:57:17'),
(89, 'Victor', 'victoeratavila@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:17', '2021-10-31 16:57:17'),
(90, 'Victor', 'orhkerhehrjrr@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:28', '2021-10-31 16:57:28'),
(91, 'Victor', 'orhkerhehrjrr@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:39', '2021-10-31 16:57:39'),
(92, 'Victor', 'orhkerhehrjrr@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:40', '2021-10-31 16:57:40'),
(93, 'Victor', 'orhkerhehrjrr@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:40', '2021-10-31 16:57:40'),
(94, 'Victor', 'orhkerhehrjrr@hotmail.com', 'Yuan', 'pending', '2021-10-31 16:57:40', '2021-10-31 16:57:40'),
(95, 'Victor', 'orhkersdsdshehrjrr@hotmail.com', 'Libra', 'pending', '2021-10-31 17:12:05', '2021-10-31 17:12:05'),
(96, 'Victor', 'orhkersdesdshehrjrr@hotmail.com', 'Libra', 'pending', '2021-10-31 17:12:13', '2021-10-31 17:12:13'),
(97, 'Victor', 'orhkersdesdshehrjrr@hotmail.com', 'Libra', 'pending', '2021-10-31 17:12:19', '2021-10-31 17:12:19'),
(98, 'Victor', 'lunalovegoodk22@hotmail.com', 'Libra', 'pending', '2021-10-31 18:11:09', '2021-10-31 18:11:09'),
(99, 'Victor', 'lunalovegosodk22@hotmail.com', 'Libra', 'pending', '2021-10-31 18:11:14', '2021-10-31 18:11:14'),
(100, 'Victor', 'lunalovewewgosodk22@hotmail.com', 'Libra', 'pending', '2021-10-31 18:12:44', '2021-10-31 18:12:44'),
(101, 'Victor', 'lunalovewwewgosodk22@hotmail.com', 'Libra', 'pending', '2021-10-31 18:12:51', '2021-10-31 18:12:51'),
(102, 'Victor', 'lunalovewwewgosodk22@hotmail.com', 'Libra', 'pending', '2021-10-31 18:15:13', '2021-10-31 18:15:13'),
(103, 'Victor', 'victoratweavila@hotmail.com', 'Libra', 'pending', '2021-10-31 18:15:28', '2021-10-31 18:15:28'),
(104, 'Victor', 'victoratweavila@hotmail.com', 'Libra', 'pending', '2021-10-31 18:16:03', '2021-10-31 18:16:03'),
(105, 'Victor', 'victoratweavila@hotmail.com', 'Libra', 'pending', '2021-10-31 18:16:04', '2021-10-31 18:16:04'),
(106, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-10-31 18:19:01', '2021-10-31 18:19:01'),
(107, 'wwewewe', 'wewe@EFEF.COM', 'EIEFEFEF', 'pending', '2021-10-31 18:21:44', '2021-10-31 18:21:44'),
(108, 'WEWE', 'WE@FEFIECCOM.COM', 'UEFEFE', 'pending', '2021-10-31 18:21:55', '2021-10-31 18:21:55'),
(109, 'Luna', 'hrfjrfbuebfbebf@euro.com', 'Libra', 'pending', '2021-10-31 18:47:55', '2021-10-31 18:47:55'),
(110, 'Gametuna', 'gameturnejbe@hebjf.com', 'Euro', 'pending', '2021-10-31 18:48:12', '2021-10-31 18:48:12'),
(111, 'wewe', 'wewewe@ifif.com', 'ref3qr', 'pending', '2021-10-31 18:48:32', '2021-10-31 18:48:32'),
(112, 'Victor', 'victorataewvila@hotmail.com', 'Euro', 'pending', '2021-10-31 18:48:59', '2021-10-31 18:48:59'),
(113, 'Victor', 'vejuerieru@irgirnf.com', 'wewewe', 'pending', '2021-10-31 18:49:11', '2021-10-31 18:49:11'),
(114, 'Vffef', 'fefef@fef.com', 'iuhuff3f', 'pending', '2021-10-31 18:51:24', '2021-10-31 18:51:24'),
(115, 'Victor', 'victoratavilawed@gmail.com', 'Euro', 'pending', '2021-10-31 18:54:54', '2021-10-31 18:54:54'),
(116, 'ww', 'victoratavie22elawed@gmail.com', 'we2e2e2', 'pending', '2021-10-31 18:55:01', '2021-10-31 18:55:01'),
(117, 'wddwd', 'victorate2e2eavilawed@gmail.comw', '2e2e', 'pending', '2021-10-31 18:55:09', '2021-10-31 18:55:09'),
(118, 'we2e', '2e2e2e@eifif.com', '2e2e2e', 'pending', '2021-10-31 18:56:08', '2021-10-31 18:56:08'),
(119, '2e2e', '2e2e22e2ee@eifif.com', '2e2e', 'pending', '2021-10-31 18:56:13', '2021-10-31 18:56:13'),
(120, 'r2r', '22e2e2ee2e2e@eifif.com', '2e', 'pending', '2021-10-31 18:56:21', '2021-10-31 18:56:21'),
(121, '2e2e', 'e2e2e@2RGRF.COM', '2e2e2e@eifif.com', 'pending', '2021-10-31 18:56:38', '2021-10-31 18:56:38'),
(122, '3R3R', 'WRF3R@FFEFEFE.COMRR', '3R3R3RR', 'pending', '2021-10-31 18:57:03', '2021-10-31 18:57:03'),
(123, 'WFFEF3F', '3F3F3F@FEFRJGBF3R3D.COM', '2E2E2', 'pending', '2021-10-31 18:57:14', '2021-10-31 18:57:14'),
(124, '22E2', 'E2E2@IRIU3IFI3F.CM', 'E2E2E', 'pending', '2021-10-31 18:57:30', '2021-10-31 18:57:30'),
(125, 'V', 'victoratavila@hotmail.com', 'Euro', 'approved', '2021-10-31 20:10:40', '2023-10-11 13:16:46'),
(126, 'Victo', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-10-31 20:12:29', '2021-10-31 20:12:29'),
(127, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-10-31 20:59:37', '2021-10-31 20:59:37'),
(128, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-10-31 21:02:21', '2021-10-31 21:02:21'),
(129, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-10-31 21:05:58', '2021-10-31 21:05:58'),
(130, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-10-31 21:06:49', '2021-10-31 21:06:49'),
(131, 'Example', 'exampleemail@gmail.com', 'Example', 'pending', '2021-10-31 21:24:08', '2021-10-31 21:24:08'),
(132, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-10-31 23:07:22', '2021-10-31 23:07:22'),
(133, 'Vittória', 'vickatavila@gmail.com', 'Euro', 'pending', '2021-11-01 00:05:26', '2021-11-01 00:05:26'),
(134, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-01 00:12:52', '2021-11-01 00:12:52'),
(135, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-01 00:13:10', '2021-11-01 00:13:10'),
(136, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-01 00:17:18', '2021-11-01 00:17:18'),
(137, 'Luna', 'lunaheibheiab@gmail.com', 'Lubra', 'pending', '2021-11-01 00:18:08', '2021-11-01 00:18:08'),
(138, 'EFF', 'lunaheibheiab@gmail.com', 'WR3', 'approved', '2021-11-01 00:18:26', '2023-10-11 13:16:59'),
(139, 'Victor', 'lunehroihf@gmail.com', 'Ruo', 'pending', '2021-11-01 00:21:21', '2021-11-01 00:21:21'),
(140, 'r3r', 'lunehroihf@gmail.com', 'r3r', 'pending', '2021-11-01 00:21:27', '2021-11-01 00:21:27'),
(141, 'lunehroiefhf@gmail.com', 'fef@efef.com', 'ef', 'pending', '2021-11-01 00:21:46', '2021-11-01 00:21:46'),
(142, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-01 00:39:22', '2021-11-01 00:39:22'),
(143, 'Victor', 'victoratavila@hotmail.com', 'Yuan', 'pending', '2021-11-01 01:08:58', '2021-11-01 01:08:58'),
(144, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:12:25', '2021-11-10 01:12:25'),
(145, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:12:25', '2021-11-10 01:12:25'),
(146, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:12:25', '2021-11-10 01:12:25'),
(147, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:12:25', '2021-11-10 01:12:25'),
(148, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:12:25', '2021-11-10 01:12:25'),
(149, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:12:25', '2021-11-10 01:12:25'),
(150, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:12:40', '2021-11-10 01:12:40'),
(151, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:12:40', '2021-11-10 01:12:40'),
(152, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:12:40', '2021-11-10 01:12:40'),
(153, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:12:40', '2021-11-10 01:12:40'),
(154, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:12:40', '2021-11-10 01:12:40'),
(155, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:12:40', '2021-11-10 01:12:40'),
(156, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:12:55', '2021-11-10 01:12:55'),
(157, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:12:55', '2021-11-10 01:12:55'),
(158, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:12:55', '2021-11-10 01:12:55'),
(159, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:12:55', '2021-11-10 01:12:55'),
(160, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:12:55', '2021-11-10 01:12:55'),
(161, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:12:55', '2021-11-10 01:12:55'),
(162, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:13:52', '2021-11-10 01:13:52'),
(163, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:13:52', '2021-11-10 01:13:52'),
(164, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:13:52', '2021-11-10 01:13:52'),
(165, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:13:52', '2021-11-10 01:13:52'),
(166, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:13:52', '2021-11-10 01:13:52'),
(167, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:13:52', '2021-11-10 01:13:52'),
(168, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:14:50', '2021-11-10 01:14:50'),
(169, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:14:50', '2021-11-10 01:14:50'),
(170, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:14:50', '2021-11-10 01:14:50'),
(171, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:14:50', '2021-11-10 01:14:50'),
(172, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:14:50', '2021-11-10 01:14:50'),
(173, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:14:50', '2021-11-10 01:14:50'),
(174, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:19:53', '2021-11-10 01:19:53'),
(175, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:19:53', '2021-11-10 01:19:53'),
(176, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:19:53', '2021-11-10 01:19:53'),
(177, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:19:53', '2021-11-10 01:19:53'),
(178, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:19:53', '2021-11-10 01:19:53'),
(179, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:19:53', '2021-11-10 01:19:53'),
(180, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:20:54', '2021-11-10 01:20:54'),
(181, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:20:54', '2021-11-10 01:20:54'),
(182, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:20:54', '2021-11-10 01:20:54'),
(183, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:20:54', '2021-11-10 01:20:54'),
(184, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:20:54', '2021-11-10 01:20:54'),
(185, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:20:54', '2021-11-10 01:20:54'),
(186, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:27:16', '2021-11-10 01:27:16'),
(187, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:27:16', '2021-11-10 01:27:16'),
(188, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:27:16', '2021-11-10 01:27:16'),
(189, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:27:16', '2021-11-10 01:27:16'),
(190, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:27:16', '2021-11-10 01:27:16'),
(191, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:27:16', '2021-11-10 01:27:16'),
(192, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:30:14', '2021-11-10 01:30:14'),
(193, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:30:14', '2021-11-10 01:30:14'),
(194, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:30:14', '2021-11-10 01:30:14'),
(195, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:30:14', '2021-11-10 01:30:14'),
(196, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:30:14', '2021-11-10 01:30:14'),
(197, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:30:14', '2021-11-10 01:30:14'),
(198, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:30:42', '2021-11-10 01:30:42'),
(199, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:30:42', '2021-11-10 01:30:42'),
(200, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:30:42', '2021-11-10 01:30:42'),
(201, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:30:42', '2021-11-10 01:30:42'),
(202, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:30:42', '2021-11-10 01:30:42'),
(203, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:30:42', '2021-11-10 01:30:42'),
(204, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:32:16', '2021-11-10 01:32:16'),
(205, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:32:16', '2021-11-10 01:32:16'),
(206, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:32:16', '2021-11-10 01:32:16'),
(207, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:32:16', '2021-11-10 01:32:16'),
(208, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:32:16', '2021-11-10 01:32:16'),
(209, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:32:16', '2021-11-10 01:32:16'),
(210, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:39:14', '2021-11-10 01:39:14'),
(211, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:39:14', '2021-11-10 01:39:14'),
(212, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:39:14', '2021-11-10 01:39:14'),
(213, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:39:14', '2021-11-10 01:39:14'),
(214, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:39:14', '2021-11-10 01:39:14'),
(215, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:39:14', '2021-11-10 01:39:14'),
(216, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:55:04', '2021-11-10 01:55:04'),
(217, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:55:04', '2021-11-10 01:55:04'),
(218, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:55:04', '2021-11-10 01:55:04'),
(219, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:55:04', '2021-11-10 01:55:04'),
(220, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:55:04', '2021-11-10 01:55:04'),
(221, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:55:04', '2021-11-10 01:55:04'),
(222, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:58:02', '2021-11-10 01:58:02'),
(223, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:58:02', '2021-11-10 01:58:02'),
(224, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:58:02', '2021-11-10 01:58:02'),
(225, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:58:02', '2021-11-10 01:58:02'),
(226, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:58:02', '2021-11-10 01:58:02'),
(227, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:58:02', '2021-11-10 01:58:02'),
(228, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 01:58:24', '2021-11-10 01:58:24'),
(229, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 01:58:24', '2021-11-10 01:58:24'),
(230, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 01:58:24', '2021-11-10 01:58:24'),
(231, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 01:58:24', '2021-11-10 01:58:24'),
(232, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 01:58:24', '2021-11-10 01:58:24'),
(233, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 01:58:24', '2021-11-10 01:58:24'),
(234, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2021-11-10 02:00:17', '2021-11-10 02:00:17'),
(235, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2021-11-10 02:00:17', '2021-11-10 02:00:17'),
(236, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2021-11-10 02:00:17', '2021-11-10 02:00:17'),
(237, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2021-11-10 02:00:17', '2021-11-10 02:00:17'),
(238, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2021-11-10 02:00:17', '2021-11-10 02:00:17'),
(239, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2021-11-10 02:00:17', '2021-11-10 02:00:17'),
(240, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2022-04-02 00:57:07', '2022-04-02 00:57:07'),
(241, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-04-02 00:57:07', '2022-04-02 00:57:07'),
(242, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2022-04-02 00:57:07', '2022-04-02 00:57:07'),
(243, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2022-04-02 00:57:07', '2022-04-02 00:57:07'),
(244, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2022-04-02 00:57:07', '2022-04-02 00:57:07'),
(245, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2022-04-02 00:57:07', '2022-04-02 00:57:07'),
(246, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2022-04-02 01:00:26', '2022-04-02 01:00:26'),
(247, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-04-02 01:00:26', '2022-04-02 01:00:26'),
(248, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2022-04-02 01:00:26', '2022-04-02 01:00:26'),
(249, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2022-04-02 01:00:26', '2022-04-02 01:00:26'),
(250, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2022-04-02 01:00:26', '2022-04-02 01:00:26'),
(251, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2022-04-02 01:00:26', '2022-04-02 01:00:26'),
(252, 'Victor Atavila', 'victoratavila@hotmail.com', 'Euro', 'pending', '2022-04-02 01:05:20', '2022-04-02 01:05:20'),
(253, 'Janet Jackson', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-04-02 01:05:20', '2022-04-02 01:05:20'),
(254, 'Janet Jackson', 'victoratavila@hotmail.com', 'Dólar', 'pending', '2022-04-02 01:05:20', '2022-04-02 01:05:20'),
(255, 'Peter William', 'victoratavila@hotmail.com', 'Peso Chileno', 'pending', '2022-04-02 01:05:20', '2022-04-02 01:05:20'),
(256, 'Maxwell Christine', 'victoratavila@hotmail.com', 'Peso Argentino', 'pending', '2022-04-02 01:05:20', '2022-04-02 01:05:20'),
(257, 'Oliver Potter', 'victoratavila@hotmail.com', 'Iene', 'pending', '2022-04-02 01:05:20', '2022-04-02 01:05:20'),
(258, 'Victor', 'victoratavila@hotmail.com', 'Novas moedas', 'pending', '2022-04-02 03:07:46', '2022-04-02 03:07:46'),
(259, 'Victor', 'victoratavila@hotmail.com', 'Euro ', 'pending', '2022-04-04 23:38:56', '2022-04-04 23:38:56'),
(260, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-04-04 23:39:12', '2022-04-04 23:39:12'),
(261, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2022-04-04 23:41:39', '2022-04-04 23:41:39'),
(262, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-04-04 23:45:45', '2022-04-04 23:45:45'),
(263, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-04-04 23:46:54', '2022-04-04 23:46:54'),
(264, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-04-04 23:49:14', '2022-04-04 23:49:14'),
(265, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2022-05-11 00:55:28', '2022-05-11 00:55:28'),
(266, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2022-06-09 00:32:08', '2022-06-09 00:32:08'),
(267, 'Victor', 'vrireifie@hdjj.com', 'Euro', 'pending', '2022-06-09 00:32:38', '2022-06-09 00:32:38'),
(268, 'Victor', 'victoratinns@nf.com', 'Euro', 'pending', '2022-06-09 00:33:50', '2022-06-09 00:33:50'),
(269, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2022-06-09 01:23:31', '2022-06-09 01:23:31'),
(270, 'eeee', 'eeee@djfjf.com', 'eeee', 'pending', '2022-06-09 01:33:22', '2022-06-09 01:33:22'),
(271, 'eeee', 'vicotr@hrij.com', 'eede', 'pending', '2022-06-09 01:43:24', '2022-06-09 01:43:24'),
(272, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2022-06-09 01:50:10', '2022-06-09 01:50:10'),
(273, 'Pedro', 'atavilavictor@hotmail.com', 'Euro ', 'pending', '2022-07-03 02:39:19', '2022-07-03 02:39:19'),
(274, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2023-06-15 23:35:25', '2023-06-15 23:35:25'),
(275, 'Victor Atavila Soares de Carvalho', 'victoratavila@hotmail.com', 'Libra', 'pending', '2023-06-15 23:52:52', '2023-06-15 23:52:52'),
(276, 'Rafinhah', 'faelpadovani03@hotmail.com', 'Eu te amo S2', 'pending', '2023-06-17 17:22:43', '2023-06-17 17:22:43'),
(277, 'Rafinhah', 'faelpadovani03@hotmail.com', 'S2', 'pending', '2023-06-17 17:23:54', '2023-06-17 17:23:54'),
(278, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2023-06-20 12:06:28', '2023-06-20 12:06:28'),
(279, 'Vitinho', 'victoratavila79@gmail.com', 'Libraaaaaa', 'pending', '2023-06-21 00:51:06', '2023-06-21 00:51:06'),
(280, 'Victor', 'victor.atavila@hostinger.com', 'Verification ', 'pending', '2023-06-30 14:17:31', '2023-06-30 14:17:31'),
(281, 'Euro', 'faelpadovani03@hotmail.com', 'Mastruz com leite', 'pending', '2023-07-04 18:33:08', '2023-07-04 18:33:08'),
(282, 'Victor', 'atavilavictor@hotmail.com', 'Libra', 'pending', '2023-07-04 18:33:58', '2023-07-04 18:33:58'),
(284, 'Victor', 'victoratavila@hotmail.com', 'Libra', 'pending', '2023-07-09 17:05:54', '2023-07-09 17:05:54'),
(285, 'Libra', 'test-4f3dfe@test.mailgenius.com', 'Iene', 'approved', '2023-07-21 19:52:06', '2023-07-21 19:52:06'),
(286, 'Victor', 'victoratavila@hotmail.com', 'Euro', 'pending', '2023-08-28 20:30:16', '2023-08-28 20:30:16'),
(287, 'Rafael', 'faelpadovani03@hotmail.com', 'Euro', 'pending', '2023-09-29 16:46:17', '2023-09-29 16:46:17'),
(292, 'Rafinha ', 'faelpadovani03@hotmail.com', 'Nuevo Sol', 'approved', '2023-10-09 18:55:03', '2023-10-11 01:32:45'),
(293, 'Victorasc', 'victoratavila@hotmail.com', 'Libra Esterlina', 'pending', '2023-12-21 13:21:26', '2023-12-21 13:21:26'),
(294, 'Victor', 'test-idbxipcf1@srv1.mail-tester.com', 'Moeda de Hungria', 'pending', '2024-01-12 19:36:52', '2024-01-12 19:36:52'),
(295, 'Cotações', 'contato@cotacoesdehoje.com.br', 'Libra', 'pending', '2024-01-12 19:41:56', '2024-01-12 19:41:56'),
(296, 'Victor', 'victoratavila@hotmail.com', 'Libra esterlina (mas acho que já tem), iene ..................................................................................................................................................................................................................', 'pending', '2024-03-19 20:05:34', '2024-03-19 20:05:34'),
(297, 'Pecorino', 'pecoriniemail@gmail.com', 'Iene e moeda da coreia', 'pending', '2024-03-26 13:05:54', '2024-03-26 13:05:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `createdAt`, `updatedAt`) VALUES
(1, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-09-10 22:43:51', '2021-09-10 22:43:51'),
(2, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-09-15 01:39:38', '2021-09-15 01:39:38'),
(3, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-09-15 01:41:36', '2021-09-15 01:41:36'),
(4, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-09-15 01:41:51', '2021-09-15 01:41:51'),
(5, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-09-16 01:39:04', '2021-09-16 01:39:04'),
(6, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:12:25', '2021-11-10 01:12:25'),
(7, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:12:40', '2021-11-10 01:12:40'),
(8, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:12:55', '2021-11-10 01:12:55'),
(9, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:13:52', '2021-11-10 01:13:52'),
(10, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:14:50', '2021-11-10 01:14:50'),
(11, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:19:53', '2021-11-10 01:19:53'),
(12, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:20:54', '2021-11-10 01:20:54'),
(13, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:27:16', '2021-11-10 01:27:16'),
(14, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:30:14', '2021-11-10 01:30:14'),
(15, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:30:42', '2021-11-10 01:30:42'),
(16, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:32:16', '2021-11-10 01:32:16'),
(17, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:39:14', '2021-11-10 01:39:14'),
(18, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:55:04', '2021-11-10 01:55:04'),
(19, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:58:02', '2021-11-10 01:58:02'),
(20, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 01:58:24', '2021-11-10 01:58:24'),
(21, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2021-11-10 02:00:17', '2021-11-10 02:00:17'),
(22, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2022-04-02 00:57:07', '2022-04-02 00:57:07'),
(23, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2022-04-02 01:00:26', '2022-04-02 01:00:26'),
(24, 'victoratavila@hotmail.com', '$2b$10$4YdD3nxg2jKQTJSIp9auVeHieai/UF/qToh9MLHWDRevWXL7WPMbG', 1, '2022-04-02 01:05:20', '2022-04-02 01:05:20');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `countries_currencies`
--
ALTER TABLE `countries_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cron_urls`
--
ALTER TABLE `cron_urls`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `currencies_histories`
--
ALTER TABLE `currencies_histories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `newsletter_users`
--
ALTER TABLE `newsletter_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `previousdaycurrencies`
--
ALTER TABLE `previousdaycurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices de tabela `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `countries_currencies`
--
ALTER TABLE `countries_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT de tabela `cron_urls`
--
ALTER TABLE `cron_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT de tabela `currencies_histories`
--
ALTER TABLE `currencies_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1206;

--
-- AUTO_INCREMENT de tabela `newsletter_users`
--
ALTER TABLE `newsletter_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `previousdaycurrencies`
--
ALTER TABLE `previousdaycurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
