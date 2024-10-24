-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Out-2024 às 13:47
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecobusca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `busca`
--

CREATE TABLE `busca` (
  `id` int(11) NOT NULL,
  `rua` varchar(150) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `busca`
--

INSERT INTO `busca` (`id`, `rua`, `cidade`, `bairro`, `cep`) VALUES
(1, 'Praça dos Emancipadores, s/nº', 'Cubatão', 'Centro', '11510-900'),
(2, 'Av. Nove de Abril, 1995', 'Cubatão', 'Centro', '11500-030'),
(3, 'Av. Nove de Abril, 2193', 'Cubatão', 'Centro', '11510-000'),
(4, 'Rua São Paulo, 370', 'Cubatão', 'Centro', '11600-020'),
(5, 'Av. Nove de Abril, 2376', 'Cubatão', 'Centro', '11510-003'),
(6, 'Av. Brasil, 170', 'Cubatão', 'Jardim Casqueiro', '11533-000'),
(7, 'Rua Bahia, 171', 'Cubatão', 'Vila Paulista', '11510-070'),
(8, 'Av. Juiz de Fora, 48', 'São Vicente', 'Vila Voturuá', '11380-420'),
(9, 'R. Paulo Horneaux de Moura, 101', 'São Vicente', 'Esplanada dos Barreiros', '11340-450'),
(10, 'Av. Dep. Ulisses Guimarães, 211', 'São Vicente', 'Jardim Rio Branco', '11347-000'),
(11, 'Rua Dr. Assis, 111', 'Santos', 'Vila Nova', '11015-001'),
(12, 'Av. Nossa Senhora de Fátima, 1.440', 'Santos', 'Chico de Paula', '11065-100'),
(13, 'Av. Dr. Pedro Lessa, 993', 'Santos', 'Ponta da Praia', '11045-001'),
(14, 'Rua Cidade de Toledo, 41', 'Santos', 'Centro', '11010-001'),
(15, 'Rua Dr. Cunha Moreira, 210', 'Santos', 'Encruzilhada', '11045-000'),
(16, 'Avenida Conselheiro Nébias, 309', 'Santos', 'Vila Mathias', '11045-001'),
(17, 'Avenida Ana Costa, 383', 'Santos', 'Gonzaga', '11060-002'),
(18, 'Avenida Nossa Senhora de Fátima, 278 ao fim - lado par', 'Santos', 'Areia Branca', '11065-001'),
(19, 'Praça Engenheiro Rebouças', 'Santos', 'Ponta da Praia', '11045-350'),
(20, 'Avenida Epitácio Pessoa, 466', 'Santos', 'Aparecida', '11045-000'),
(21, 'Clovis Batista dos Santos', 'Praia Grande', 'Anhanguera', '11717-510'),
(22, 'João Batista de Siqueira', 'Praia Grande', 'Antártica', '11720-120'),
(23, 'Jose Alves Maciel', 'Praia Grande', 'Aviação', '11702-440'),
(24, 'Guanabara', 'Praia Grande', 'Boqueirão', '11700-030'),
(25, 'Presidente Kennedy', 'Praia Grande', 'Caiçara', '11707-005'),
(26, 'Xixová', 'Praia Grande', 'Canto do Forte', '11700-430'),
(27, 'Ana Pereira de França', 'Praia Grande', 'Esmeralda', '11713-280'),
(28, 'Marlene Figueroa', 'Praia Grande', 'Glória', '11721-250'),
(29, 'R. Dorivaldo Francisco Loria', 'Praia Grande', 'Maracanã', '11705-320'),
(30, 'Leopoldo Augusto Miguez', 'Praia Grande', 'Melvi', '11712-170'),
(31, 'Presidente Kennedy', 'Praia Grande', 'Mirim', '11705-005'),
(32, 'Martiniano José das Neves', 'Praia Grande', 'Nova Mirim', '11705-005'),
(33, 'Gilberto Amado', 'Praia Grande', 'Ocian', '11704-310'),
(34, 'Hugolino José Ribeiro', 'Praia Grande', 'Princesa', '11711-150'),
(35, 'R. das Acácias', 'Praia Grande', 'Quietude', '11718-140'),
(36, 'Lilás', 'Praia Grande', 'Real', '11708-140'),
(37, 'Diamantino Cruz Ferreira Mourão', 'Praia Grande', 'Ribeirópolis', '11714-630'),
(38, 'R. dos Jacarandás', 'Praia Grande', 'Samambaia', '11712-480'),
(39, 'R. Saturnino de Brito', 'Praia Grande', 'Sítio do Campo', '11725-160'),
(40, 'R. Casemiro de Abreu', 'Praia Grande', 'Solemar', '11709-000'),
(41, 'R. Antonio Renato Gambini', 'Praia Grande', 'Tupi', '11703-220'),
(42, 'R. Ariovaldo Augusto de Oliveira', 'Praia Grande', 'Tupiry', '11717-260'),
(43, 'R. Arnaldo Augusto Batista', 'Praia Grande', 'Vila Sônia', '11722-005');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coleta`
--

CREATE TABLE `coleta` (
  `id` int(11) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `coleta`
--

INSERT INTO `coleta` (`id`, `cidade`, `bairro`, `horario`) VALUES
(1, 'Praia Grande', 'Anhanguera', 'terça, quinta e sábado - dia'),
(2, 'Praia Grande', 'Antártica', 'terça, quinta e sábado - dia'),
(3, 'Praia Grande', 'Aviação', 'segunda, quarta e sexta - noite'),
(4, 'Praia Grande', 'Boqueirão', 'segunda, quarta e sexta - noite'),
(5, 'Praia Grande', 'Caiçara', 'terça, quinta e domingo - noite'),
(6, 'Praia Grande', 'Canto do Forte', 'segunda, quarta e sexta - noite'),
(7, 'Praia Grande', 'Cidade da Criança', 'segunda, quarta e sexta - dia'),
(8, 'Praia Grande', 'Esmeralda', 'segunda, quarta e sexta - dia'),
(9, 'Praia Grande', 'Flórida', 'segunda, quarta e sexta - dia'),
(10, 'Praia Grande', 'Glória', 'terça, quinta e sábado - dia'),
(11, 'Praia Grande', 'Guilhermina', 'segunda, quarta e sexta - noite'),
(12, 'Praia Grande', 'Maracanã', 'terça, quinta e domingo - noite'),
(13, 'Praia Grande', 'Melvi', 'segunda, quarta e sexta - dia'),
(14, 'Praia Grande', 'Mirim', 'terça, quinta e domingo - noite'),
(15, 'Praia Grande', 'Nova Mirim', 'terça, quinta e sábado - dia'),
(16, 'Praia Grande', 'Ocian', 'terça, quinta e domingo - noite'),
(17, 'Praia Grande', 'Princesa', 'segunda, quarta e sexta - dia'),
(18, 'Praia Grande', 'Quietude', 'terça, quinta e sábado - dia'),
(19, 'Praia Grande', 'Real', 'terça, quinta e domingo - noite'),
(20, 'Praia Grande', 'Ribeirópolis', 'segunda, quarta e sexta - dia'),
(21, 'Praia Grande', 'Samambaia', 'segunda, quarta e sexta - dia'),
(22, 'Praia Grande', 'Santa Marina', 'terça, quinta e sábado - dia'),
(23, 'Praia Grande', 'Sítio do Campo (lado Guaramar)', 'terça, quinta e sábado – dia'),
(24, 'Praia Grande', 'Sítio do Campo (lado Kartódromo)', 'segunda, quarta e sexta - noite'),
(25, 'Praia Grande', 'Solemar', 'segunda, quarta e sexta - dia'),
(26, 'Praia Grande', 'Tupi', 'segunda, quarta e sexta - noite'),
(27, 'Praia Grande', 'Tupiry', 'terça, quinta e sábado - dia'),
(28, 'Praia Grande', 'Vila Sônia', 'terça, quinta e sábado – dia'),
(29, 'São Vicente', 'Beira Mar', '6ª feira - Manhã'),
(30, 'São Vicente', 'Boa Vista - Apenas Condomínios', '2ª e 3ª feira - Manhã'),
(31, 'São Vicente', 'Catiapoa', '4ª feira - Manhã'),
(32, 'São Vicente', 'Cidade Náutica', '6ª feira - Manhã'),
(33, 'São Vicente', 'Gonzaguinha', '2ª e 5ª feira - Manhã'),
(34, 'São Vicente', 'Itararé', '2ª e 5ª feira - Manhã'),
(35, 'São Vicente', 'Japuí', '4ª feira - Manhã'),
(36, 'São Vicente', 'Jardim Guaçu', '3ª feira - Tarde'),
(37, 'São Vicente', 'Jardim Independência', '4ª feira - Manhã'),
(38, 'São Vicente', 'Náutica III', '6ª feira - Manhã'),
(39, 'São Vicente', 'Parque Bitaru', '5ª feira - Manhã'),
(40, 'São Vicente', 'Parque São Vicente', '3ª feira - Tarde'),
(41, 'São Vicente', 'Tancredo', '6ª feira - Manhã'),
(42, 'São Vicente', 'Vila Cascatinha', '3ª e 6ª feira - Manhã'),
(43, 'São Vicente', 'Vila Fátima', '5ª feira - Manhã'),
(44, 'São Vicente', 'Vila Jóquei Clube', '4ª feira - Manhã'),
(45, 'São Vicente', 'Vila Margarida', '5ª feira - Tarde'),
(46, 'São Vicente', 'Vila Mello', '3ª feira - Tarde'),
(47, 'São Vicente', 'Vila São Jorge', '3ª feira - Manhã'),
(48, 'São Vicente', 'Vila Valença', '2ª feira - Manhã'),
(49, 'São Vicente', 'Vila Voturuá', '2ª feira - Manhã e 6ª feira - Tarde'),
(50, 'São Vicente', 'Gleba', '5ª feira - Manhã'),
(51, 'São Vicente', 'Jardim Rio Branco', '6ª feira - Tarde'),
(52, 'São Vicente', 'Parque das Bandeiras', '2ª feira - Manhã'),
(53, 'São Vicente', 'Parque Continental', '2ª feira - Manhã'),
(54, 'Santos', 'Estuário', 'manha'),
(55, 'Santos', 'Piratininga', 'manha'),
(56, 'Santos', 'São Manoel', 'manha'),
(57, 'Santos', 'Alemoa', 'manha'),
(58, 'Santos', 'Macuco', 'manha'),
(59, 'Santos', 'Boqueirão', 'tarde'),
(60, 'Santos', 'Santa Maria', 'manha'),
(61, 'Santos', 'Bom Retiro', 'manha'),
(62, 'Santos', 'Vila Belmiro', 'manha'),
(63, 'Santos', 'Valongo', 'manha'),
(64, 'Santos', 'Morro São Bento', 'manha'),
(65, 'Santos', 'Boa Vista', 'manha'),
(66, 'Santos', 'Pacheco', 'manha'),
(67, 'Santos', 'Vila São Bento', 'manha'),
(68, 'Santos', 'Campo Grande', 'tarde'),
(69, 'Santos', 'Paquetá', 'manha'),
(70, 'Santos', 'Vila Nova', 'manha'),
(71, 'Santos', 'Centro', 'manha'),
(72, 'Santos', 'Jardim Castelo', 'manha'),
(73, 'Santos', 'Marapé', 'tarde'),
(74, 'Santos', 'Aparecida', 'tarde'),
(75, 'Santos', 'Rádio Clube', 'manha'),
(76, 'Santos', 'Vila São Jorge', 'manha'),
(77, 'Santos', 'Chico de Paula', 'manha'),
(78, 'Santos', 'Jabaquara', 'manha'),
(79, 'Santos', 'Monte Serrat', 'manha'),
(80, 'Santos', 'Pompéia', 'tarde'),
(81, 'Santos', 'José Menino', 'tarde'),
(82, 'Santos', 'Gonzaga', 'tarde'),
(83, 'Santos', 'Vila Mathias', 'manha'),
(84, 'Santos', 'Areia Branca', 'manha'),
(85, 'Santos', 'Embaré', 'tarde'),
(86, 'Santos', 'Caneleira', 'manha'),
(87, 'Santos', 'Saboó', 'manha'),
(88, 'Santos', 'Encruzilhada', 'manha'),
(89, 'Santos', 'Ponta da Praia', 'tarde'),
(90, 'Santos', 'Nova Cintra', 'tarde'),
(91, 'Cubatão', 'Jardim Costa e Silva', '7h às 16h'),
(92, 'Cubatão', 'Jd. Anchieta', '7h às 16h'),
(93, 'Cubatão', 'Vila Santa Rosa', '7h às 16h'),
(94, 'Cubatão', 'Conj. Mal. Rondon', '7h às 16h'),
(95, 'Cubatão', 'Jd. Das Indústrias', '7h às 16h'),
(96, 'Cubatão', 'Pq. Fernando Jorge', '7h às 16h'),
(97, 'Cubatão', 'Conj. Afonso Schmidt', '7h às 16h'),
(98, 'Cubatão', 'Jardim São Francisco', '7h às 16h'),
(99, 'Cubatão', 'Vila Santa Tereza', '7h às 16h'),
(100, 'Cubatão', 'Vila Santa Úrsula', '7h às 16h'),
(101, 'Cubatão', 'Jardim América', '7h às 16h'),
(102, 'Cubatão', 'Vila Canadá', '7h às 16h'),
(103, 'Cubatão', 'Centro', '7h às 16h'),
(104, 'Cubatão', 'Vila Couto', '7h às 16h'),
(105, 'Cubatão', 'Vila Paulista', '7h às 16h'),
(106, 'Cubatão', 'Vale Verde', '7h às 16h'),
(107, 'Cubatão', 'Vila Nova Gleba B', '7h às 16h'),
(108, 'Cubatão', 'Vila Nova', '7h às 16h'),
(109, 'Cubatão', 'Vila São José', '7h às 16h'),
(110, 'Cubatão', 'Av. Nove de abril', '7h às 16h'),
(111, 'Cubatão', 'prédio do Bom Prato', '7h às 16h'),
(112, 'Cubatão', 'Poupatempo', '7h às 16h'),
(113, 'Cubatão', 'Bolsões 7', '7h às 16h'),
(114, 'Cubatão', 'Bolsões 8', '7h às 16h'),
(115, 'Cubatão', 'Bolsões 9', '7h às 16h'),
(116, 'Cubatão', 'Jardim Casqueiro', '7h às 16h'),
(117, 'Cubatão', 'Vila Bandeirantes', '7h às 16h'),
(118, 'Cubatão', 'Ponte Nova', '7h às 16h'),
(119, 'Cubatão', 'Jardim Costa e Silva', '7h às 16h'),
(120, 'Cubatão', 'Jd. Anchieta', '7h às 16h'),
(121, 'Cubatão', 'Vila Santa Rosa', '7h às 16h'),
(122, 'Cubatão', 'Conj. Mal. Rondon', '7h às 16h'),
(123, 'Cubatão', 'Jardim das Indústrias', '7h às 16h'),
(124, 'Cubatão', 'Parque Fernando Jorge', '7h às 16h'),
(125, 'Cubatão', 'Conj. Afonso Schmidt', '7h às 16h'),
(126, 'Cubatão', 'Jardim São Francisco', '7h às 16h'),
(127, 'Cubatão', 'Vila Santa Tereza', '7h às 16h'),
(128, 'Cubatão', 'Vila Santa Úrsula', '7h às 16h'),
(129, 'Cubatão', 'Jardim América', '7h às 16h'),
(130, 'Cubatão', 'Vila Canadá', '7h às 16h'),
(131, 'Cubatão', 'Centro', '7h às 16h'),
(132, 'Cubatão', 'Vila Couto', '7h às 16h'),
(133, 'Cubatão', 'Vila Paulista', '7h às 16h'),
(134, 'Cubatão', 'Vale Verde', '7h às 16h'),
(135, 'Cubatão', 'Vila Nova Gleba B', '7h às 16h'),
(136, 'Cubatão', 'Vila Nova', '7h às 16h'),
(137, 'Cubatão', 'Vila São José', '7h às 16h'),
(138, 'Cubatão', 'Av. Nove de abril', '7h às 16h'),
(139, 'Cubatão', 'prédio do Bom Prato', '7h às 16h'),
(140, 'Cubatão', 'Poupatempo', '7h às 16h'),
(141, 'Cubatão', 'Bolsões 7', '7h às 16h'),
(142, 'Cubatão', 'Bolsões 8', '7h às 16h'),
(143, 'Cubatão', 'Bolsões 9', '7h às 16h'),
(144, 'Cubatão', 'Jardim Casqueiro', '7h às 16h'),
(145, 'Cubatão', 'Vila Bandeirantes', '7h às 16h'),
(146, 'Cubatão', 'Ponte Nova', '7h às 16h'),
(147, 'Cubatão', 'Sítio Cafezal', '7h às 16h'),
(148, 'Cubatão', 'Vila Elizabeth', '7h às 16h'),
(149, 'Cubatão', 'Cota 200', '7h às 16h'),
(150, 'Cubatão', 'Vila Light', '7h às 16h'),
(151, 'Cubatão', 'Fabril', '7h às 16h'),
(152, 'Cubatão', 'Pinhal do Miranda', '7h às 16h'),
(153, 'Cubatão', 'Água Fria', '7h às 16h'),
(154, 'Cubatão', 'Pilões', '7h às 16h'),
(155, 'Cubatão', 'Av. Nove de Abril', '7h às 16h'),
(156, 'Cubatão', 'Jd. 31 de Março', '7h às 16h'),
(157, 'Cubatão', 'Vila Padre Manoel da Nóbrega', '7h às 16h'),
(158, 'Cubatão', 'Costa Muniz', '7h às 16h'),
(159, 'Cubatão', 'Vila Noel', '7h às 16h'),
(160, 'Cubatão', 'Vila Natal', '7h às 16h'),
(161, 'Cubatão', 'Caminho 2', '7h às 16h'),
(162, 'Cubatão', 'Vila Esperança', '7h às 16h'),
(163, 'Cubatão', 'Av. Nove de Abril', '7h às 16h'),
(164, 'Cubatão', 'Av. Nove de Abril', '7h às 16h'),
(165, 'Cubatão', 'Vila dos Pescadores', '7h às 16h'),
(166, 'Cubatão', 'Vila Pelicas', '7h às 16h'),
(167, 'Cubatão', 'Parque São Luiz', '7h às 16h'),
(168, 'Cubatão', 'Ilha Caraguatá', '7h às 16h'),
(169, 'Cubatão', 'Conj. Rubens Lara', '7h às 16h'),
(170, 'Cubatão', 'Conj. São Judas Tadeu', '7h às 16h'),
(171, 'Cubatão', 'Jardim Casqueiro', '7h às 16h'),
(172, 'Cubatão', 'Sítio Cafezal', '7h às 16h'),
(173, 'Cubatão', 'Vila Elizabeth', '7h às 16h'),
(174, 'Cubatão', 'Cota 200', '7h às 16h'),
(175, 'Cubatão', 'Vila Light', '7h às 16h'),
(176, 'Cubatão', 'Fabril', '7h às 16h'),
(177, 'Cubatão', 'Pinhal do Miranda', '7h às 16h'),
(178, 'Cubatão', 'Água Fria', '7h às 16h'),
(179, 'Cubatão', 'Pilões', '7h às 16h'),
(180, 'Cubatão', 'Av. Nove de Abril', '7h às 16h'),
(181, 'Cubatão', 'Jd. 31 de Março', '7h às 16h'),
(182, 'Cubatão', 'Vila Padre Manoel da Nóbrega', '7h às 16h'),
(183, 'Cubatão', 'Costa Muniz', '7h às 16h'),
(184, 'Cubatão', 'Vila Noel', '7h às 16h'),
(185, 'Cubatão', 'Vila Natal', '7h às 16h'),
(186, 'Cubatão', 'Caminho 2', '7h às 16h'),
(187, 'Cubatão', 'Vila Esperança', '7h às 16h'),
(188, 'Cubatão', 'Vila dos Pescadores', '7h às 16h'),
(189, 'Cubatão', 'Vila Pelicas', '7h às 16h'),
(190, 'Cubatão', 'Parque São Luiz', '7h às 16h'),
(191, 'Cubatão', 'Ilha Caraguatá', '7h às 16h'),
(192, 'Cubatão', 'Conj. Rubens Lara', '7h às 16h');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `busca`
--
ALTER TABLE `busca`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `coleta`
--
ALTER TABLE `coleta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `busca`
--
ALTER TABLE `busca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `coleta`
--
ALTER TABLE `coleta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
