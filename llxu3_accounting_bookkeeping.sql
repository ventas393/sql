-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-05-2026 a las 15:21:55
-- Versión del servidor: 11.4.10-MariaDB-cll-lve-log
-- Versión de PHP: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ofinovac_doli904`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llxu3_accounting_bookkeeping`
--

CREATE TABLE `llxu3_accounting_bookkeeping` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT 1,
  `ref` varchar(30) DEFAULT NULL,
  `piece_num` int(11) NOT NULL,
  `doc_date` date NOT NULL,
  `doc_type` varchar(30) NOT NULL,
  `doc_ref` varchar(300) NOT NULL,
  `fk_doc` int(11) NOT NULL,
  `fk_docdet` int(11) NOT NULL,
  `thirdparty_code` varchar(32) DEFAULT NULL,
  `subledger_account` varchar(32) DEFAULT NULL,
  `subledger_label` varchar(255) DEFAULT NULL,
  `numero_compte` varchar(32) NOT NULL,
  `label_compte` varchar(255) DEFAULT NULL,
  `label_operation` varchar(255) DEFAULT NULL,
  `debit` double(24,8) NOT NULL,
  `credit` double(24,8) NOT NULL,
  `montant` double(24,8) DEFAULT NULL,
  `sens` varchar(1) DEFAULT NULL,
  `multicurrency_amount` double(24,8) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `matching_general` tinyint(4) NOT NULL DEFAULT 0,
  `lettering_code` varchar(255) DEFAULT NULL,
  `date_lettering` datetime DEFAULT NULL,
  `date_lim_reglement` datetime DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fk_user` int(11) DEFAULT NULL,
  `code_journal` varchar(32) NOT NULL,
  `journal_label` varchar(255) DEFAULT NULL,
  `date_validated` datetime DEFAULT NULL,
  `date_export` datetime DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `llxu3_accounting_bookkeeping`
--

INSERT INTO `llxu3_accounting_bookkeeping` (`rowid`, `entity`, `ref`, `piece_num`, `doc_date`, `doc_type`, `doc_ref`, `fk_doc`, `fk_docdet`, `thirdparty_code`, `subledger_account`, `subledger_label`, `numero_compte`, `label_compte`, `label_operation`, `debit`, `credit`, `montant`, `sens`, `multicurrency_amount`, `multicurrency_code`, `matching_general`, `lettering_code`, `date_lettering`, `date_lim_reglement`, `fk_user_author`, `fk_user_modif`, `date_creation`, `tms`, `fk_user`, `code_journal`, `journal_label`, `date_validated`, `date_export`, `import_key`, `extraparams`) VALUES
(713, 1, '2604CO00001', 2, '2026-04-01', 'supplier_invoice', 'SI2604-0129', 149, 0, 'SU2602-00020', '220505901437796', 'RETAIL CO INVESTMENT SAS', '220505901437796', 'PROVEEDORES NACIONALES', 'RETAIL CO INVEST - 177720 - Cuenta de libro mayor auxiliar', 0.00000000, 788800.94125000, 788800.94125000, 'C', NULL, NULL, 0, NULL, NULL, '2026-04-01 00:00:00', 1, NULL, '2026-04-13 02:22:08', '2026-04-13 02:39:44', NULL, 'COMP', 'Diario de compras - compras y devoluciones', NULL, NULL, NULL, NULL),
(714, 1, '2604CO00001', 2, '2026-04-01', 'supplier_invoice', 'SI2604-0129', 149, 0, 'SU2602-00020', NULL, NULL, '6135', 'COMERCIO AL POR MAYOR Y AL POR MENOR', 'RETAIL CO INVEST - 177720 - COMERCIO AL POR MAYOR Y AL POR MENOR', 677082.35000000, 0.00000000, 677082.35000000, 'D', NULL, NULL, 0, NULL, NULL, '2026-04-01 00:00:00', 1, NULL, '2026-04-13 02:22:08', '2026-04-13 02:22:08', NULL, 'COMP', 'Diario de compras - compras y devoluciones', NULL, NULL, NULL, NULL),
(715, 1, '2604CO00001', 2, '2026-04-01', 'supplier_invoice', 'SI2604-0129', 149, 0, 'SU2602-00020', NULL, NULL, '2408', 'IMPUESTO SOBRE LAS VENTAS POR PAGAR', 'RETAIL CO INVEST - 177720 - Taxes 19 (IVA19-GEN) %', 128645.65000000, 0.00000000, 128645.65000000, 'D', NULL, NULL, 0, NULL, NULL, '2026-04-01 00:00:00', 1, NULL, '2026-04-13 02:22:08', '2026-04-13 02:22:08', NULL, 'COMP', 'Diario de compras - compras y devoluciones', NULL, NULL, NULL, NULL),
(717, 1, '2604CO00001', 2, '2026-04-01', 'supplier_invoice', 'SI2604-0129', 149, 0, NULL, NULL, NULL, '236540901437796', 'ReteFuente: RETAIL CO INVESTMENT SAS', 'ReteFuente: RETAIL CO INVESTMENT SAS', 0.00000000, 16927.05875000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2026-04-12 21:27:23', '2026-04-13 02:27:23', NULL, '', NULL, NULL, NULL, NULL, NULL),
(785, 1, 'NOM_202604', 3, '2026-04-13', '', 'NOM_202604', 0, 0, NULL, NULL, NULL, '5105061127598598', NULL, 'Nómina: HERRERA RUSSO [SUELDO]', 1500000.00000000, 0.00000000, 1500000.00000000, 'D', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2026-04-13 06:29:06', '2026-04-13 06:29:06', NULL, 'DGEN', NULL, NULL, NULL, NULL, NULL),
(786, 1, 'NOM_202604', 3, '2026-04-13', '', 'NOM_202604', 0, 0, NULL, NULL, NULL, '2370051127598598', NULL, 'Nómina: HERRERA RUSSO [SALUD_EE]', 0.00000000, 60000.00000000, 60000.00000000, 'C', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2026-04-13 06:29:06', '2026-04-13 06:29:06', NULL, 'DGEN', NULL, NULL, NULL, NULL, NULL),
(787, 1, 'NOM_202604', 3, '2026-04-13', '', 'NOM_202604', 0, 0, NULL, NULL, NULL, '2380301127598598', NULL, 'Nómina: HERRERA RUSSO [PENSION_EE]', 0.00000000, 60000.00000000, 60000.00000000, 'C', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2026-04-13 06:29:06', '2026-04-13 06:29:06', NULL, 'DGEN', NULL, NULL, NULL, NULL, NULL),
(788, 1, 'NOM_202604', 3, '2026-04-13', '', 'NOM_202604', 0, 0, NULL, NULL, NULL, '2505051127598598', NULL, 'Nómina: HERRERA RUSSO [NETO_PAGAR]', 0.00000000, 1380000.00000000, 1380000.00000000, 'C', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2026-04-13 06:29:06', '2026-04-13 06:29:06', NULL, 'DGEN', NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `llxu3_accounting_bookkeeping`
--
ALTER TABLE `llxu3_accounting_bookkeeping`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_accounting_bookkeeping_ref` (`ref`),
  ADD KEY `idx_accounting_bookkeeping_piece_num` (`piece_num`,`entity`),
  ADD KEY `idx_accounting_bookkeeping_fk_doc` (`fk_doc`),
  ADD KEY `idx_accounting_bookkeeping_fk_docdet` (`fk_docdet`),
  ADD KEY `idx_accounting_bookkeeping_doc_date` (`doc_date`),
  ADD KEY `idx_accounting_bookkeeping_numero_compte` (`numero_compte`,`entity`),
  ADD KEY `idx_accounting_bookkeeping_code_journal` (`code_journal`,`entity`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `llxu3_accounting_bookkeeping`
--
ALTER TABLE `llxu3_accounting_bookkeeping`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=819;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
