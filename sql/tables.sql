SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `afm` varchar(10) NOT NULL,
  `user` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `user_path` varchar(64) NOT NULL,
  `serial1` varchar(4) NOT NULL,
  `serial2` varchar(4) NOT NULL,
  `serial3` varchar(4) NOT NULL,
  `serial4` varchar(4) NOT NULL,
  `active` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `afm` (`afm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `llx_accounting_account` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_pcg_version` varchar(32) NOT NULL,
  `pcg_type` varchar(20) NOT NULL,
  `pcg_subtype` varchar(20) NOT NULL,
  `account_number` varchar(32) NOT NULL,
  `account_parent` varchar(32) DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `fk_accounting_category` int(11) DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  KEY `idx_accounting_account_fk_pcg_version` (`fk_pcg_version`),
  KEY `idx_accounting_account_account_number` (`account_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4785 ;

--
-- Dumping data for table `llx_accounting_account`
--

INSERT INTO `llx_accounting_account` (`rowid`, `entity`, `datec`, `tms`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `fk_accounting_category`, `fk_user_author`, `fk_user_modif`, `active`) VALUES
(1, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'CAPITAL', '101', '1401', 'Capital', 0, NULL, NULL, 1),
(2, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '105', '1401', 'Ecarts de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(3, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1061', '1401', 'RÃ©serve lÃ©gale', 0, NULL, NULL, 1),
(4, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1063', '1401', 'RÃ©serves statutaires ou contractuelles', 0, NULL, NULL, 1),
(5, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1064', '1401', 'RÃ©serves rÃ©glementÃ©es', 0, NULL, NULL, 1),
(6, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1068', '1401', 'Autres rÃ©serves', 0, NULL, NULL, 1),
(7, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '108', '1401', 'Compte de l''exploitant', 0, NULL, NULL, 1),
(8, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '12', '1401', 'RÃ©sultat de l''exercice', 0, NULL, NULL, 1),
(9, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '145', '1401', 'Amortissements dÃ©rogatoires', 0, NULL, NULL, 1),
(10, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '146', '1401', 'Provision spÃ©ciale de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(11, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '147', '1401', 'Plus-values rÃ©investies', 0, NULL, NULL, 1),
(12, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '148', '1401', 'Autres provisions rÃ©glementÃ©es', 0, NULL, NULL, 1),
(13, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '15', '1401', 'Provisions pour risques et charges', 0, NULL, NULL, 1),
(14, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '16', '1401', 'Emprunts et dettes assimilees', 0, NULL, NULL, 1),
(15, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '20', '1402', 'Immobilisations incorporelles', 0, NULL, NULL, 1),
(16, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '201', '15', 'Frais d''Ã©tablissement', 0, NULL, NULL, 1),
(17, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '206', '15', 'Droit au bail', 0, NULL, NULL, 1),
(18, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '207', '15', 'Fonds commercial', 0, NULL, NULL, 1),
(19, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '208', '15', 'Autres immobilisations incorporelles', 0, NULL, NULL, 1),
(20, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '21', '1402', 'Immobilisations corporelles', 0, NULL, NULL, 1),
(21, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '23', '1402', 'Immobilisations en cours', 0, NULL, NULL, 1),
(22, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '27', '1402', 'Autres immobilisations financieres', 0, NULL, NULL, 1),
(23, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '280', '1402', 'Amortissements des immobilisations incorporelles', 0, NULL, NULL, 1),
(24, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '281', '1402', 'Amortissements des immobilisations corporelles', 0, NULL, NULL, 1),
(25, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '290', '1402', 'Provisions pour dÃ©prÃ©ciation des immobilisations incorporelles', 0, NULL, NULL, 1),
(26, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '291', '1402', 'Provisions pour dÃ©prÃ©ciation des immobilisations corporelles', 0, NULL, NULL, 1),
(27, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '297', '1402', 'Provisions pour dÃ©prÃ©ciation des autres immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(28, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '31', '1403', 'Matieres premiÃ¨res', 0, NULL, NULL, 1),
(29, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '32', '1403', 'Autres approvisionnements', 0, NULL, NULL, 1),
(30, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '33', '1403', 'En-cours de production de biens', 0, NULL, NULL, 1),
(31, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '34', '1403', 'En-cours de production de services', 0, NULL, NULL, 1),
(32, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '35', '1403', 'Stocks de produits', 0, NULL, NULL, 1),
(33, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '37', '1403', 'Stocks de marchandises', 0, NULL, NULL, 1),
(34, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '391', '1403', 'Provisions pour dÃ©prÃ©ciation des matiÃ¨res premiÃ¨res', 0, NULL, NULL, 1),
(35, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '392', '1403', 'Provisions pour dÃ©prÃ©ciation des autres approvisionnements', 0, NULL, NULL, 1),
(36, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '393', '1403', 'Provisions pour dÃ©prÃ©ciation des en-cours de production de biens', 0, NULL, NULL, 1),
(37, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '394', '1403', 'Provisions pour dÃ©prÃ©ciation des en-cours de production de services', 0, NULL, NULL, 1),
(38, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '395', '1403', 'Provisions pour dÃ©prÃ©ciation des stocks de produits', 0, NULL, NULL, 1),
(39, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '397', '1403', 'Provisions pour dÃ©prÃ©ciation des stocks de marchandises', 0, NULL, NULL, 1),
(40, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'SUPPLIER', '400', '1404', 'Fournisseurs et Comptes rattachÃ©s', 0, NULL, NULL, 1),
(41, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '409', '1404', 'Fournisseurs dÃ©biteurs', 0, NULL, NULL, 1),
(42, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'CUSTOMER', '410', '1404', 'Clients et Comptes rattachÃ©s', 0, NULL, NULL, 1),
(43, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '419', '1404', 'Clients crÃ©diteurs', 0, NULL, NULL, 1),
(44, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '421', '1404', 'Personnel', 0, NULL, NULL, 1),
(45, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '428', '1404', 'Personnel', 0, NULL, NULL, 1),
(46, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '43', '1404', 'SÃ©curitÃ© sociale et autres organismes sociaux', 0, NULL, NULL, 1),
(47, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '444', '1404', 'Etat - impÃ´ts sur bÃ©nÃ©fice', 0, NULL, NULL, 1),
(48, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '445', '1404', 'Etat - Taxes sur chiffre affaires', 0, NULL, NULL, 1),
(49, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '447', '1404', 'Autres impÃ´ts, taxes et versements assimilÃ©s', 0, NULL, NULL, 1),
(50, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '45', '1404', 'Groupe et associes', 0, NULL, NULL, 1),
(51, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '455', '50', 'AssociÃ©s', 0, NULL, NULL, 1),
(52, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '46', '1404', 'DÃ©biteurs divers et crÃ©diteurs divers', 0, NULL, NULL, 1),
(53, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '47', '1404', 'Comptes transitoires ou d''attente', 0, NULL, NULL, 1),
(54, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '481', '1404', 'Charges Ã  rÃ©partir sur plusieurs exercices', 0, NULL, NULL, 1),
(55, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '486', '1404', 'Charges constatÃ©es d''avance', 0, NULL, NULL, 1),
(56, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '487', '1404', 'Produits constatÃ©s d''avance', 0, NULL, NULL, 1),
(57, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '491', '1404', 'Provisions pour dÃ©prÃ©ciation des comptes de clients', 0, NULL, NULL, 1),
(58, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '496', '1404', 'Provisions pour dÃ©prÃ©ciation des comptes de dÃ©biteurs divers', 0, NULL, NULL, 1),
(59, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '50', '1405', 'Valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(60, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'FINAN', 'BANK', '51', '1405', 'Banques, Ã©tablissements financiers et assimilÃ©s', 0, NULL, NULL, 1),
(61, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'FINAN', 'CASH', '53', '1405', 'Caisse', 0, NULL, NULL, 1),
(62, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '54', '1405', 'RÃ©gies d''avance et accrÃ©ditifs', 0, NULL, NULL, 1),
(63, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '58', '1405', 'Virements internes', 0, NULL, NULL, 1),
(64, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '590', '1405', 'Provisions pour dÃ©prÃ©ciation des valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(65, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'PRODUCT', '60', '1406', 'Achats', 0, NULL, NULL, 1),
(66, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '603', '65', 'Variations des stocks', 0, NULL, NULL, 1),
(67, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'SERVICE', '61', '1406', 'Services extÃ©rieurs', 0, NULL, NULL, 1),
(68, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '62', '1406', 'Autres services extÃ©rieurs', 0, NULL, NULL, 1),
(69, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '63', '1406', 'ImpÃ´ts, taxes et versements assimiles', 0, NULL, NULL, 1),
(70, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '641', '1406', 'RÃ©munÃ©rations du personnel', 0, NULL, NULL, 1),
(71, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '644', '1406', 'RÃ©munÃ©ration du travail de l''exploitant', 0, NULL, NULL, 1),
(72, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'SOCIAL', '645', '1406', 'Charges de sÃ©curitÃ© sociale et de prÃ©voyance', 0, NULL, NULL, 1),
(73, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '646', '1406', 'Cotisations sociales personnelles de l''exploitant', 0, NULL, NULL, 1),
(74, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '65', '1406', 'Autres charges de gestion courante', 0, NULL, NULL, 1),
(75, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '66', '1406', 'Charges financiÃ¨res', 0, NULL, NULL, 1),
(76, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '67', '1406', 'Charges exceptionnelles', 0, NULL, NULL, 1),
(77, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '681', '1406', 'Dotations aux amortissements et aux provisions', 0, NULL, NULL, 1),
(78, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '686', '1406', 'Dotations aux amortissements et aux provisions', 0, NULL, NULL, 1),
(79, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '687', '1406', 'Dotations aux amortissements et aux provisions', 0, NULL, NULL, 1),
(80, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '691', '1406', 'Participation des salariÃ©s aux rÃ©sultats', 0, NULL, NULL, 1),
(81, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '695', '1406', 'ImpÃ´ts sur les bÃ©nÃ©fices', 0, NULL, NULL, 1),
(82, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '697', '1406', 'Imposition forfaitaire annuelle des sociÃ©tÃ©s', 0, NULL, NULL, 1),
(83, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '699', '1406', 'Produits', 0, NULL, NULL, 1),
(84, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'PRODUCT', '701', '1407', 'Ventes de produits finis', 0, NULL, NULL, 1),
(85, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'SERVICE', '706', '1407', 'Prestations de services', 0, NULL, NULL, 1),
(86, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'PRODUCT', '707', '1407', 'Ventes de marchandises', 0, NULL, NULL, 1),
(87, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'PRODUCT', '708', '1407', 'Produits des activitÃ©s annexes', 0, NULL, NULL, 1),
(88, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '709', '1407', 'Rabais, remises et ristournes accordÃ©s par l''entreprise', 0, NULL, NULL, 1),
(89, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '713', '1407', 'Variation des stocks', 0, NULL, NULL, 1),
(90, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '72', '1407', 'Production immobilisÃ©e', 0, NULL, NULL, 1),
(91, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '73', '1407', 'Produits nets partiels sur opÃ©rations Ã  long terme', 0, NULL, NULL, 1),
(92, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '74', '1407', 'Subventions d''exploitation', 0, NULL, NULL, 1),
(93, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '75', '1407', 'Autres produits de gestion courante', 0, NULL, NULL, 1),
(94, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '753', '93', 'Jetons de prÃ©sence et rÃ©munÃ©rations d''administrateurs, gÃ©rants,...', 0, NULL, NULL, 1),
(95, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '754', '93', 'Ristournes perÃ§ues des coopÃ©ratives', 0, NULL, NULL, 1),
(96, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '755', '93', 'Quotes-parts de rÃ©sultat sur opÃ©rations faites en commun', 0, NULL, NULL, 1),
(97, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '76', '1407', 'Produits financiers', 0, NULL, NULL, 1),
(98, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '77', '1407', 'Produits exceptionnels', 0, NULL, NULL, 1),
(99, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '781', '1407', 'Reprises sur amortissements et provisions', 0, NULL, NULL, 1),
(100, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '786', '1407', 'Reprises sur provisions pour risques', 0, NULL, NULL, 1),
(101, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '787', '1407', 'Reprises sur provisions', 0, NULL, NULL, 1),
(102, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '79', '1407', 'Transferts de charges', 0, NULL, NULL, 1),
(103, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '10', '1501', 'Capital  et rÃ©serves', 0, NULL, NULL, 1),
(104, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'CAPITAL', '101', '103', 'Capital', 0, NULL, NULL, 1),
(105, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '104', '103', 'Primes liÃ©es au capital social', 0, NULL, NULL, 1),
(106, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '105', '103', 'Ecarts de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(107, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '106', '103', 'RÃ©serves', 0, NULL, NULL, 1),
(108, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '107', '103', 'Ecart d''equivalence', 0, NULL, NULL, 1),
(109, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '108', '103', 'Compte de l''exploitant', 0, NULL, NULL, 1),
(110, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '109', '103', 'Actionnaires : capital souscrit - non appelÃ©', 0, NULL, NULL, 1),
(111, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '11', '1501', 'Report Ã  nouveau (solde crÃ©diteur ou dÃ©biteur)', 0, NULL, NULL, 1),
(112, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '110', '111', 'Report Ã  nouveau (solde crÃ©diteur)', 0, NULL, NULL, 1),
(113, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '119', '111', 'Report Ã  nouveau (solde dÃ©biteur)', 0, NULL, NULL, 1),
(114, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '12', '1501', 'RÃ©sultat de l''exercice (bÃ©nÃ©fice ou perte)', 0, NULL, NULL, 1),
(115, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '120', '114', 'RÃ©sultat de l''exercice (bÃ©nÃ©fice)', 0, NULL, NULL, 1),
(116, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '129', '114', 'RÃ©sultat de l''exercice (perte)', 0, NULL, NULL, 1),
(117, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '13', '1501', 'Subventions d''investissement', 0, NULL, NULL, 1),
(118, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '131', '117', 'Subventions d''Ã©quipement', 0, NULL, NULL, 1),
(119, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '138', '117', 'Autres subventions d''investissement', 0, NULL, NULL, 1),
(120, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '139', '117', 'Subventions d''investissement inscrites au compte de rÃ©sultat', 0, NULL, NULL, 1),
(121, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '14', '1501', 'Provisions rÃ©glementÃ©es', 0, NULL, NULL, 1),
(122, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '142', '121', 'Provisions rÃ©glementÃ©es relatives aux immobilisations', 0, NULL, NULL, 1),
(123, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '143', '121', 'Provisions rÃ©glementÃ©es relatives aux stocks', 0, NULL, NULL, 1),
(124, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '144', '121', 'Provisions rÃ©glementÃ©es relatives aux autres Ã©lÃ©ments de l''actif', 0, NULL, NULL, 1),
(125, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '145', '121', 'Amortissements dÃ©rogatoires', 0, NULL, NULL, 1),
(126, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '146', '121', 'Provision spÃ©ciale de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(127, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '147', '121', 'Plus-values rÃ©investies', 0, NULL, NULL, 1),
(128, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '148', '121', 'Autres provisions rÃ©glementÃ©es', 0, NULL, NULL, 1),
(129, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '15', '1501', 'Provisions pour risques et charges', 0, NULL, NULL, 1),
(130, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '151', '129', 'Provisions pour risques', 0, NULL, NULL, 1),
(131, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '153', '129', 'Provisions pour pensions et obligations similaires', 0, NULL, NULL, 1),
(132, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '154', '129', 'Provisions pour restructurations', 0, NULL, NULL, 1),
(133, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '155', '129', 'Provisions pour impÃ´ts', 0, NULL, NULL, 1),
(134, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '156', '129', 'Provisions pour renouvellement des immobilisations (entreprises concessionnaires)', 0, NULL, NULL, 1),
(135, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '157', '129', 'Provisions pour charges Ã  rÃ©partir sur plusieurs exercices', 0, NULL, NULL, 1),
(136, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '158', '129', 'Autres provisions pour charges', 0, NULL, NULL, 1),
(137, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '16', '1501', 'Emprunts et dettes assimilees', 0, NULL, NULL, 1),
(138, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '161', '137', 'Emprunts obligataires convertibles', 0, NULL, NULL, 1),
(139, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '163', '137', 'Autres emprunts obligataires', 0, NULL, NULL, 1),
(140, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '164', '137', 'Emprunts auprÃ¨s des Ã©tablissements de crÃ©dit', 0, NULL, NULL, 1),
(141, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '165', '137', 'DÃ©pÃ´ts et cautionnements reÃ§us', 0, NULL, NULL, 1),
(142, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '166', '137', 'Participation des salariÃ©s aux rÃ©sultats', 0, NULL, NULL, 1),
(143, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '167', '137', 'Emprunts et dettes assortis de conditions particuliÃ¨res', 0, NULL, NULL, 1),
(144, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '168', '137', 'Autres emprunts et dettes assimilÃ©es', 0, NULL, NULL, 1),
(145, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '169', '137', 'Primes de remboursement des obligations', 0, NULL, NULL, 1),
(146, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '17', '1501', 'Dettes rattachÃ©es Ã  des participations', 0, NULL, NULL, 1),
(147, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '171', '146', 'Dettes rattachÃ©es Ã  des participations (groupe)', 0, NULL, NULL, 1),
(148, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '174', '146', 'Dettes rattachÃ©es Ã  des participations (hors groupe)', 0, NULL, NULL, 1),
(149, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '178', '146', 'Dettes rattachÃ©es Ã  des sociÃ©tÃ©s en participation', 0, NULL, NULL, 1),
(150, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '18', '1501', 'Comptes de liaison des Ã©tablissements et sociÃ©tÃ©s en participation', 0, NULL, NULL, 1),
(151, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '181', '150', 'Comptes de liaison des Ã©tablissements', 0, NULL, NULL, 1),
(152, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '186', '150', 'Biens et prestations de services Ã©changÃ©s entre Ã©tablissements (charges)', 0, NULL, NULL, 1),
(153, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '187', '150', 'Biens et prestations de services Ã©changÃ©s entre Ã©tablissements (produits)', 0, NULL, NULL, 1),
(154, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '188', '150', 'Comptes de liaison des sociÃ©tÃ©s en participation', 0, NULL, NULL, 1),
(155, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '20', '1502', 'Immobilisations incorporelles', 0, NULL, NULL, 1),
(156, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '201', '155', 'Frais d''Ã©tablissement', 0, NULL, NULL, 1),
(157, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '203', '155', 'Frais de recherche et de dÃ©veloppement', 0, NULL, NULL, 1),
(158, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '205', '155', 'Concessions et droits similaires, brevets, licences, marques, procÃ©dÃ©s, logiciels, droits et valeurs similaires', 0, NULL, NULL, 1),
(159, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '206', '155', 'Droit au bail', 0, NULL, NULL, 1),
(160, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '207', '155', 'Fonds commercial', 0, NULL, NULL, 1),
(161, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '208', '155', 'Autres immobilisations incorporelles', 0, NULL, NULL, 1),
(162, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '21', '1502', 'Immobilisations corporelles', 0, NULL, NULL, 1),
(163, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '211', '162', 'Terrains', 0, NULL, NULL, 1),
(164, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '212', '162', 'Agencements et amÃ©nagements de terrains', 0, NULL, NULL, 1),
(165, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '213', '162', 'Constructions', 0, NULL, NULL, 1),
(166, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '214', '162', 'Constructions sur sol d''autrui', 0, NULL, NULL, 1),
(167, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '215', '162', 'Installations techniques, matÃ©riels et outillage industriels', 0, NULL, NULL, 1),
(168, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '218', '162', 'Autres immobilisations corporelles', 0, NULL, NULL, 1),
(169, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '22', '1502', 'Immobilisations mises en concession', 0, NULL, NULL, 1),
(170, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '23', '1502', 'Immobilisations en cours', 0, NULL, NULL, 1),
(171, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '231', '170', 'Immobilisations corporelles en cours', 0, NULL, NULL, 1),
(172, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '232', '170', 'Immobilisations incorporelles en cours', 0, NULL, NULL, 1),
(173, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '237', '170', 'Avances et acomptes versÃ©s sur immobilisations incorporelles', 0, NULL, NULL, 1),
(174, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '238', '170', 'Avances et acomptes versÃ©s sur commandes d''immobilisations corporelles', 0, NULL, NULL, 1),
(175, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '25', '1502', 'Parts dans des entreprises liÃ©es et crÃ©ances sur des entreprises liÃ©es', 0, NULL, NULL, 1),
(176, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '26', '1502', 'Participations et crÃ©ances rattachÃ©es Ã  des participations', 0, NULL, NULL, 1),
(177, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '261', '176', 'Titres de participation', 0, NULL, NULL, 1),
(178, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '266', '176', 'Autres formes de participation', 0, NULL, NULL, 1),
(179, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '267', '176', 'CrÃ©ances rattachÃ©es Ã  des participations', 0, NULL, NULL, 1),
(180, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '268', '176', 'CrÃ©ances rattachÃ©es Ã  des sociÃ©tÃ©s en participation', 0, NULL, NULL, 1),
(181, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '269', '176', 'Versements restant Ã  effectuer sur titres de participation non libÃ©rÃ©s', 0, NULL, NULL, 1),
(182, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '27', '1502', 'Autres immobilisations financieres', 0, NULL, NULL, 1),
(183, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '271', '183', 'Titres immobilisÃ©s autres que les titres immobilisÃ©s de l''activitÃ© de portefeuille (droit de propriÃ©tÃ©)', 0, NULL, NULL, 1),
(184, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '272', '183', 'Titres immobilisÃ©s (droit de crÃ©ance)', 0, NULL, NULL, 1),
(185, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '273', '183', 'Titres immobilisÃ©s de l''activitÃ© de portefeuille', 0, NULL, NULL, 1),
(186, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '274', '183', 'PrÃªts', 0, NULL, NULL, 1),
(187, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '275', '183', 'DÃ©pÃ´ts et cautionnements versÃ©s', 0, NULL, NULL, 1),
(188, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '276', '183', 'Autres crÃ©ances immobilisÃ©es', 0, NULL, NULL, 1),
(189, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '277', '183', '(Actions propres ou parts propres)', 0, NULL, NULL, 1),
(190, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '279', '183', 'Versements restant Ã  effectuer sur titres immobilisÃ©s non libÃ©rÃ©s', 0, NULL, NULL, 1),
(191, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '28', '1502', 'Amortissements des immobilisations', 0, NULL, NULL, 1),
(192, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '280', '191', 'Amortissements des immobilisations incorporelles', 0, NULL, NULL, 1),
(193, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '281', '191', 'Amortissements des immobilisations corporelles', 0, NULL, NULL, 1),
(194, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '282', '191', 'Amortissements des immobilisations mises en concession', 0, NULL, NULL, 1),
(195, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '29', '1502', 'DÃ©prÃ©ciations des immobilisations', 0, NULL, NULL, 1),
(196, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '290', '195', 'DÃ©prÃ©ciations des immobilisations incorporelles', 0, NULL, NULL, 1),
(197, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '291', '195', 'DÃ©prÃ©ciations des immobilisations corporelles', 0, NULL, NULL, 1),
(198, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '292', '195', 'DÃ©prÃ©ciations des immobilisations mises en concession', 0, NULL, NULL, 1),
(199, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '293', '195', 'DÃ©prÃ©ciations des immobilisations en cours', 0, NULL, NULL, 1),
(200, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '296', '195', 'Provisions pour dÃ©prÃ©ciation des participations et crÃ©ances rattachÃ©es Ã  des participations', 0, NULL, NULL, 1),
(201, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '297', '195', 'Provisions pour dÃ©prÃ©ciation des autres immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(202, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '31', '1503', 'MatiÃ¨res premiÃ¨res (et fournitures)', 0, NULL, NULL, 1),
(203, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '311', '202', 'MatiÃ¨res (ou groupe) A', 0, NULL, NULL, 1),
(204, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '312', '202', 'MatiÃ¨res (ou groupe) B', 0, NULL, NULL, 1),
(205, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '317', '202', 'Fournitures A, B, C,', 0, NULL, NULL, 1),
(206, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '32', '1503', 'Autres approvisionnements', 0, NULL, NULL, 1),
(207, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '321', '206', 'MatiÃ¨res consommables', 0, NULL, NULL, 1),
(208, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '322', '206', 'Fournitures consommables', 0, NULL, NULL, 1),
(209, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '326', '206', 'Emballages', 0, NULL, NULL, 1),
(210, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '33', '1503', 'En-cours de production de biens', 0, NULL, NULL, 1),
(211, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '331', '210', 'Produits en cours', 0, NULL, NULL, 1),
(212, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '335', '210', 'Travaux en cours', 0, NULL, NULL, 1),
(213, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '34', '1503', 'En-cours de production de services', 0, NULL, NULL, 1),
(214, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '341', '213', 'Etudes en cours', 0, NULL, NULL, 1),
(215, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '345', '213', 'Prestations de services en cours', 0, NULL, NULL, 1),
(216, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '35', '1503', 'Stocks de produits', 0, NULL, NULL, 1),
(217, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '351', '216', 'Produits intermÃ©diaires', 0, NULL, NULL, 1),
(218, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '355', '216', 'Produits finis', 0, NULL, NULL, 1),
(219, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '358', '216', 'Produits rÃ©siduels (ou matiÃ¨res de rÃ©cupÃ©ration)', 0, NULL, NULL, 1),
(220, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '37', '1503', 'Stocks de marchandises', 0, NULL, NULL, 1),
(221, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '371', '220', 'Marchandises (ou groupe) A', 0, NULL, NULL, 1),
(222, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '372', '220', 'Marchandises (ou groupe) B', 0, NULL, NULL, 1),
(223, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '39', '1503', 'Provisions pour dÃ©prÃ©ciation des stocks et en-cours', 0, NULL, NULL, 1),
(224, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '391', '223', 'Provisions pour dÃ©prÃ©ciation des matiÃ¨res premiÃ¨res', 0, NULL, NULL, 1),
(225, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '392', '223', 'Provisions pour dÃ©prÃ©ciation des autres approvisionnements', 0, NULL, NULL, 1),
(226, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '393', '223', 'Provisions pour dÃ©prÃ©ciation des en-cours de production de biens', 0, NULL, NULL, 1),
(227, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '394', '223', 'Provisions pour dÃ©prÃ©ciation des en-cours de production de services', 0, NULL, NULL, 1),
(228, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '395', '223', 'Provisions pour dÃ©prÃ©ciation des stocks de produits', 0, NULL, NULL, 1),
(229, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '397', '223', 'Provisions pour dÃ©prÃ©ciation des stocks de marchandises', 0, NULL, NULL, 1),
(230, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '40', '1504', 'Fournisseurs et Comptes rattachÃ©s', 0, NULL, NULL, 1),
(231, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '400', '230', 'Fournisseurs et Comptes rattachÃ©s', 0, NULL, NULL, 1),
(232, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'SUPPLIER', '401', '230', 'Fournisseurs', 0, NULL, NULL, 1),
(233, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '403', '230', 'Fournisseurs - Effets Ã  payer', 0, NULL, NULL, 1),
(234, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '404', '230', 'Fournisseurs d''immobilisations', 0, NULL, NULL, 1),
(235, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '405', '230', 'Fournisseurs d''immobilisations - Effets Ã  payer', 0, NULL, NULL, 1),
(236, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '408', '230', 'Fournisseurs - Factures non parvenues', 0, NULL, NULL, 1),
(237, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '409', '230', 'Fournisseurs dÃ©biteurs', 0, NULL, NULL, 1),
(238, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '41', '1504', 'Clients et comptes rattachÃ©s', 0, NULL, NULL, 1),
(239, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '410', '238', 'Clients et Comptes rattachÃ©s', 0, NULL, NULL, 1),
(240, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'CUSTOMER', '411', '238', 'Clients', 0, NULL, NULL, 1),
(241, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '413', '238', 'Clients - Effets Ã  recevoir', 0, NULL, NULL, 1),
(242, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '416', '238', 'Clients douteux ou litigieux', 0, NULL, NULL, 1),
(243, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '418', '238', 'Clients - Produits non encore facturÃ©s', 0, NULL, NULL, 1),
(244, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '419', '238', 'Clients crÃ©diteurs', 0, NULL, NULL, 1),
(245, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '42', '1504', 'Personnel et comptes rattachÃ©s', 0, NULL, NULL, 1),
(246, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '421', '245', 'Personnel - RÃ©munÃ©rations dues', 0, NULL, NULL, 1),
(247, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '422', '245', 'ComitÃ©s d''entreprises, d''Ã©tablissement, ...', 0, NULL, NULL, 1),
(248, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '424', '245', 'Participation des salariÃ©s aux rÃ©sultats', 0, NULL, NULL, 1),
(249, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '425', '245', 'Personnel - Avances et acomptes', 0, NULL, NULL, 1),
(250, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '426', '245', 'Personnel - DÃ©pÃ´ts', 0, NULL, NULL, 1),
(251, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '427', '245', 'Personnel - Oppositions', 0, NULL, NULL, 1),
(252, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '428', '245', 'Personnel - Charges Ã  payer et produits Ã  recevoir', 0, NULL, NULL, 1),
(253, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '43', '1504', 'SÃ©curitÃ© sociale et autres organismes sociaux', 0, NULL, NULL, 1),
(254, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '431', '253', 'SÃ©curitÃ© sociale', 0, NULL, NULL, 1),
(255, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '437', '253', 'Autres organismes sociaux', 0, NULL, NULL, 1),
(256, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '438', '253', 'Organismes sociaux - Charges Ã  payer et produits Ã  recevoir', 0, NULL, NULL, 1),
(257, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '44', '1504', 'Ã‰tat et autres collectivitÃ©s publiques', 0, NULL, NULL, 1),
(258, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '441', '257', 'Ã‰tat - Subventions Ã  recevoir', 0, NULL, NULL, 1),
(259, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '442', '257', 'Etat - ImpÃ´ts et taxes recouvrables sur des tiers', 0, NULL, NULL, 1),
(260, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '443', '257', 'OpÃ©rations particuliÃ¨res avec l''Etat, les collectivitÃ©s publiques, les organismes internationaux', 0, NULL, NULL, 1),
(261, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '444', '257', 'Etat - ImpÃ´ts sur les bÃ©nÃ©fices', 0, NULL, NULL, 1),
(262, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '445', '257', 'Etat - Taxes sur le chiffre d''affaires', 0, NULL, NULL, 1),
(263, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '446', '257', 'Obligations cautionnÃ©es', 0, NULL, NULL, 1),
(264, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '447', '257', 'Autres impÃ´ts, taxes et versements assimilÃ©s', 0, NULL, NULL, 1),
(265, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '448', '257', 'Etat - Charges Ã  payer et produits Ã  recevoir', 0, NULL, NULL, 1),
(266, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '449', '257', 'Quotas d''Ã©mission Ã  restituer Ã  l''Etat', 0, NULL, NULL, 1),
(267, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '45', '1504', 'Groupe et associes', 0, NULL, NULL, 1),
(268, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '451', '267', 'Groupe', 0, NULL, NULL, 1),
(269, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '455', '267', 'AssociÃ©s - Comptes courants', 0, NULL, NULL, 1),
(270, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '456', '267', 'AssociÃ©s - OpÃ©rations sur le capital', 0, NULL, NULL, 1),
(271, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '457', '267', 'AssociÃ©s - Dividendes Ã  payer', 0, NULL, NULL, 1),
(272, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '458', '267', 'AssociÃ©s - OpÃ©rations faites en commun et en G.I.E.', 0, NULL, NULL, 1),
(273, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '46', '1504', 'DÃ©biteurs divers et crÃ©diteurs divers', 0, NULL, NULL, 1),
(274, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '462', '273', 'CrÃ©ances sur cessions d''immobilisations', 0, NULL, NULL, 1),
(275, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '464', '273', 'Dettes sur acquisitions de valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(276, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '465', '273', 'CrÃ©ances sur cessions de valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(277, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '467', '273', 'Autres comptes dÃ©biteurs ou crÃ©diteurs', 0, NULL, NULL, 1),
(278, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '468', '273', 'Divers - Charges Ã  payer et produits Ã  recevoir', 0, NULL, NULL, 1),
(279, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '47', '1504', 'Comptes transitoires ou d''attente', 0, NULL, NULL, 1),
(280, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '471', '279', 'Comptes d''attente', 0, NULL, NULL, 1),
(281, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '476', '279', 'DiffÃ©rence de conversion - Actif', 0, NULL, NULL, 1),
(282, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '477', '279', 'DiffÃ©rences de conversion - Passif', 0, NULL, NULL, 1),
(283, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '478', '279', 'Autres comptes transitoires', 0, NULL, NULL, 1),
(284, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '48', '1504', 'Comptes de rÃ©gularisation', 0, NULL, NULL, 1),
(285, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '481', '284', 'Charges Ã  rÃ©partir sur plusieurs exercices', 0, NULL, NULL, 1),
(286, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '486', '284', 'Charges constatÃ©es d''avance', 0, NULL, NULL, 1),
(287, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '487', '284', 'Produits constatÃ©s d''avance', 0, NULL, NULL, 1),
(288, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '488', '284', 'Comptes de rÃ©partition pÃ©riodique des charges et des produits', 0, NULL, NULL, 1),
(289, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '489', '284', 'Quotas d''Ã©mission allouÃ©s par l''Etat', 0, NULL, NULL, 1),
(290, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '49', '1504', 'Provisions pour dÃ©prÃ©ciation des comptes de tiers', 0, NULL, NULL, 1),
(291, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '491', '290', 'Provisions pour dÃ©prÃ©ciation des comptes de clients', 0, NULL, NULL, 1),
(292, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '495', '290', 'Provisions pour dÃ©prÃ©ciation des comptes du groupe et des associÃ©s', 0, NULL, NULL, 1),
(293, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '496', '290', 'Provisions pour dÃ©prÃ©ciation des comptes de dÃ©biteurs divers', 0, NULL, NULL, 1),
(294, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '50', '1505', 'Valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(295, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '501', '294', 'Parts dans des entreprises liÃ©es', 0, NULL, NULL, 1),
(296, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '502', '294', 'Actions propres', 0, NULL, NULL, 1),
(297, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '503', '294', 'Actions', 0, NULL, NULL, 1),
(298, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '504', '294', 'Autres titres confÃ©rant un droit de propriÃ©tÃ©', 0, NULL, NULL, 1),
(299, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '505', '294', 'Obligations et bons Ã©mis par la sociÃ©tÃ© et rachetÃ©s par elle', 0, NULL, NULL, 1),
(300, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '506', '294', 'Obligations', 0, NULL, NULL, 1),
(301, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '507', '294', 'Bons du TrÃ©sor et bons de caisse Ã  court terme', 0, NULL, NULL, 1),
(302, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '508', '294', 'Autres valeurs mobiliÃ¨res de placement et autres crÃ©ances assimilÃ©es', 0, NULL, NULL, 1),
(303, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '509', '294', 'Versements restant Ã  effectuer sur valeurs mobiliÃ¨res de placement non libÃ©rÃ©es', 0, NULL, NULL, 1),
(304, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '51', '1505', 'Banques, Ã©tablissements financiers et assimilÃ©s', 0, NULL, NULL, 1),
(305, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '511', '304', 'Valeurs Ã  l''encaissement', 0, NULL, NULL, 1),
(306, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'BANK', '512', '304', 'Banques', 0, NULL, NULL, 1),
(307, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '514', '304', 'ChÃ¨ques postaux', 0, NULL, NULL, 1),
(308, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '515', '304', '"Caisses" du TrÃ©sor et des Ã©tablissements publics', 0, NULL, NULL, 1),
(309, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '516', '304', 'SociÃ©tÃ©s de bourse', 0, NULL, NULL, 1),
(310, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '517', '304', 'Autres organismes financiers', 0, NULL, NULL, 1),
(311, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '518', '304', 'IntÃ©rÃªts courus', 0, NULL, NULL, 1),
(312, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '519', '304', 'Concours bancaires courants', 0, NULL, NULL, 1),
(313, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '52', '1505', 'Instruments de trÃ©sorerie', 0, NULL, NULL, 1),
(314, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'CASH', '53', '1505', 'Caisse', 0, NULL, NULL, 1),
(315, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '531', '314', 'Caisse siÃ¨ge social', 0, NULL, NULL, 1),
(316, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '532', '314', 'Caisse succursale (ou usine) A', 0, NULL, NULL, 1),
(317, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '533', '314', 'Caisse succursale (ou usine) B', 0, NULL, NULL, 1),
(318, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '54', '1505', 'RÃ©gies d''avance et accrÃ©ditifs', 0, NULL, NULL, 1),
(319, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '58', '1505', 'Virements internes', 0, NULL, NULL, 1),
(320, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '59', '1505', 'Provisions pour dÃ©prÃ©ciation des comptes financiers', 0, NULL, NULL, 1),
(321, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '590', '320', 'Provisions pour dÃ©prÃ©ciation des valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(322, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'PRODUCT', '60', '1506', 'Achats', 0, NULL, NULL, 1),
(323, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '601', '322', 'Achats stockÃ©s - MatiÃ¨res premiÃ¨res (et fournitures)', 0, NULL, NULL, 1),
(324, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '602', '322', 'Achats stockÃ©s - Autres approvisionnements', 0, NULL, NULL, 1),
(325, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '603', '322', 'Variations des stocks (approvisionnements et marchandises)', 0, NULL, NULL, 1),
(326, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '604', '322', 'Achats stockÃ©s - MatiÃ¨res premiÃ¨res (et fournitures)', 0, NULL, NULL, 1),
(327, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '605', '322', 'Achats de matÃ©riel, Ã©quipements et travaux', 0, NULL, NULL, 1),
(328, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '606', '322', 'Achats non stockÃ©s de matiÃ¨re et fournitures', 0, NULL, NULL, 1),
(329, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '607', '322', 'Achats de marchandises', 0, NULL, NULL, 1),
(330, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '608', '322', '(Compte rÃ©servÃ©, le cas Ã©chÃ©ant, Ã  la rÃ©capitulation des frais accessoires incorporÃ©s aux achats)', 0, NULL, NULL, 1),
(331, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '609', '322', 'Rabais, remises et ristournes obtenus sur achats', 0, NULL, NULL, 1),
(332, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'SERVICE', '61', '1506', 'Services extÃ©rieurs', 0, NULL, NULL, 1),
(333, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '611', '332', 'Sous-traitance gÃ©nÃ©rale', 0, NULL, NULL, 1),
(334, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '612', '332', 'Redevances de crÃ©dit-bail', 0, NULL, NULL, 1),
(335, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '613', '332', 'Locations', 0, NULL, NULL, 1),
(336, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '614', '332', 'Charges locatives et de copropriÃ©tÃ©', 0, NULL, NULL, 1),
(337, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '615', '332', 'Entretien et rÃ©parations', 0, NULL, NULL, 1),
(338, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '616', '332', 'Primes d''assurances', 0, NULL, NULL, 1),
(339, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '617', '332', 'Etudes et recherches', 0, NULL, NULL, 1),
(340, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '618', '332', 'Divers', 0, NULL, NULL, 1),
(341, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '619', '332', 'Rabais, remises et ristournes obtenus sur services extÃ©rieurs', 0, NULL, NULL, 1);
INSERT INTO `llx_accounting_account` (`rowid`, `entity`, `datec`, `tms`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `fk_accounting_category`, `fk_user_author`, `fk_user_modif`, `active`) VALUES
(342, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '62', '1506', 'Autres services extÃ©rieurs', 0, NULL, NULL, 1),
(343, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '621', '342', 'Personnel extÃ©rieur Ã  l''entreprise', 0, NULL, NULL, 1),
(344, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '622', '342', 'RÃ©munÃ©rations d''intermÃ©diaires et honoraires', 0, NULL, NULL, 1),
(345, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '623', '342', 'PublicitÃ©, publications, relations publiques', 0, NULL, NULL, 1),
(346, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '624', '342', 'Transports de biens et transports collectifs du personnel', 0, NULL, NULL, 1),
(347, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '625', '342', 'DÃ©placements, missions et rÃ©ceptions', 0, NULL, NULL, 1),
(348, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '626', '342', 'Frais postaux et de tÃ©lÃ©communications', 0, NULL, NULL, 1),
(349, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '627', '342', 'Services bancaires et assimilÃ©s', 0, NULL, NULL, 1),
(350, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '628', '342', 'Divers', 0, NULL, NULL, 1),
(351, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '629', '342', 'Rabais, remises et ristournes obtenus sur autres services extÃ©rieurs', 0, NULL, NULL, 1),
(352, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '63', '1506', 'ImpÃ´ts, taxes et versements assimilÃ©s', 0, NULL, NULL, 1),
(353, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '631', '352', 'ImpÃ´ts, taxes et versements assimilÃ©s sur rÃ©munÃ©rations (administrations des impÃ´ts)', 0, NULL, NULL, 1),
(354, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '633', '352', 'ImpÃ´ts, taxes et versements assimilÃ©s sur rÃ©munÃ©rations (autres organismes)', 0, NULL, NULL, 1),
(355, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '635', '352', 'Autres impÃ´ts, taxes et versements assimilÃ©s (administrations des impÃ´ts)', 0, NULL, NULL, 1),
(356, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '637', '352', 'Autres impÃ´ts, taxes et versements assimilÃ©s (autres organismes)', 0, NULL, NULL, 1),
(357, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '64', '1506', 'Charges de personnel', 0, NULL, NULL, 1),
(358, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '641', '357', 'RÃ©munÃ©rations du personnel', 0, NULL, NULL, 1),
(359, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '644', '357', 'RÃ©munÃ©ration du travail de l''exploitant', 0, NULL, NULL, 1),
(360, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'SOCIAL', '645', '357', 'Charges de sÃ©curitÃ© sociale et de prÃ©voyance', 0, NULL, NULL, 1),
(361, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '646', '357', 'Cotisations sociales personnelles de l''exploitant', 0, NULL, NULL, 1),
(362, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '647', '357', 'Autres charges sociales', 0, NULL, NULL, 1),
(363, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '648', '357', 'Autres charges de personnel', 0, NULL, NULL, 1),
(364, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '65', '1506', 'Autres charges de gestion courante', 0, NULL, NULL, 1),
(365, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '651', '364', 'Redevances pour concessions, brevets, licences, marques, procÃ©dÃ©s, logiciels, droits et valeurs similaires', 0, NULL, NULL, 1),
(366, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '653', '364', 'Jetons de prÃ©sence', 0, NULL, NULL, 1),
(367, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '654', '364', 'Pertes sur crÃ©ances irrÃ©couvrables', 0, NULL, NULL, 1),
(368, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '655', '364', 'Quote-part de rÃ©sultat sur opÃ©rations faites en commun', 0, NULL, NULL, 1),
(369, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '658', '364', 'Charges diverses de gestion courante', 0, NULL, NULL, 1),
(370, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '66', '1506', 'Charges financiÃ¨res', 0, NULL, NULL, 1),
(371, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '661', '370', 'Charges d''intÃ©rÃªts', 0, NULL, NULL, 1),
(372, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '664', '370', 'Pertes sur crÃ©ances liÃ©es Ã  des participations', 0, NULL, NULL, 1),
(373, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '665', '370', 'Escomptes accordÃ©s', 0, NULL, NULL, 1),
(374, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '666', '370', 'Pertes de change', 0, NULL, NULL, 1),
(375, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '667', '370', 'Charges nettes sur cessions de valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(376, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '668', '370', 'Autres charges financiÃ¨res', 0, NULL, NULL, 1),
(377, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '67', '1506', 'Charges exceptionnelles', 0, NULL, NULL, 1),
(378, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '671', '377', 'Charges exceptionnelles sur opÃ©rations de gestion', 0, NULL, NULL, 1),
(379, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '672', '377', '(Compte Ã  la disposition des entitÃ©s pour enregistrer, en cours d''exercice, les charges sur exercices antÃ©rieurs)', 0, NULL, NULL, 1),
(380, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '675', '377', 'Valeurs comptables des Ã©lÃ©ments d''actif cÃ©dÃ©s', 0, NULL, NULL, 1),
(381, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '678', '377', 'Autres charges exceptionnelles', 0, NULL, NULL, 1),
(382, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '68', '1506', 'Dotations aux amortissements et aux provisions', 0, NULL, NULL, 1),
(383, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '681', '382', 'Dotations aux amortissements et aux provisions - Charges d''exploitation', 0, NULL, NULL, 1),
(384, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '686', '382', 'Dotations aux amortissements et aux provisions - Charges financiÃ¨res', 0, NULL, NULL, 1),
(385, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '687', '382', 'Dotations aux amortissements et aux provisions - Charges exceptionnelles', 0, NULL, NULL, 1),
(386, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '69', '1506', 'Participation des salariÃ©s - impÃ´ts sur les bÃ©nÃ©fices et assimiles', 0, NULL, NULL, 1),
(387, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '691', '386', 'Participation des salariÃ©s aux rÃ©sultats', 0, NULL, NULL, 1),
(388, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '695', '386', 'ImpÃ´ts sur les bÃ©nÃ©fices', 0, NULL, NULL, 1),
(389, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '696', '386', 'SupplÃ©ments d''impÃ´t sur les sociÃ©tÃ©s liÃ©s aux distributions', 0, NULL, NULL, 1),
(390, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '697', '386', 'Imposition forfaitaire annuelle des sociÃ©tÃ©s', 0, NULL, NULL, 1),
(391, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '698', '386', 'IntÃ©gration fiscale', 0, NULL, NULL, 1),
(392, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '699', '386', 'Produits - Reports en arriÃ¨re des dÃ©ficits', 0, NULL, NULL, 1),
(393, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '70', '1507', 'Ventes de produits fabriquÃ©s, prestations de services, marchandises', 0, NULL, NULL, 1),
(394, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'PRODUCT', '701', '393', 'Ventes de produits finis', 0, NULL, NULL, 1),
(395, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '702', '393', 'Ventes de produits intermÃ©diaires', 0, NULL, NULL, 1),
(396, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '703', '393', 'Ventes de produits rÃ©siduels', 0, NULL, NULL, 1),
(397, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '704', '393', 'Travaux', 0, NULL, NULL, 1),
(398, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '705', '393', 'Etudes', 0, NULL, NULL, 1),
(399, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'SERVICE', '706', '393', 'Prestations de services', 0, NULL, NULL, 1),
(400, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'PRODUCT', '707', '393', 'Ventes de marchandises', 0, NULL, NULL, 1),
(401, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'PRODUCT', '708', '393', 'Produits des activitÃ©s annexes', 0, NULL, NULL, 1),
(402, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '709', '393', 'Rabais, remises et ristournes accordÃ©s par l''entreprise', 0, NULL, NULL, 1),
(403, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '71', '1507', 'Production stockÃ©e (ou dÃ©stockage)', 0, NULL, NULL, 1),
(404, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '713', '403', 'Variation des stocks (en-cours de production, produits)', 0, NULL, NULL, 1),
(405, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '72', '1507', 'Production immobilisÃ©e', 0, NULL, NULL, 1),
(406, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '721', '405', 'Immobilisations incorporelles', 0, NULL, NULL, 1),
(407, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '722', '405', 'Immobilisations corporelles', 0, NULL, NULL, 1),
(408, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '74', '1507', 'Subventions d''exploitation', 0, NULL, NULL, 1),
(409, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '75', '1507', 'Autres produits de gestion courante', 0, NULL, NULL, 1),
(410, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '751', '409', 'Redevances pour concessions, brevets, licences, marques, procÃ©dÃ©s, logiciels, droits et valeurs similaires', 0, NULL, NULL, 1),
(411, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '752', '409', 'Revenus des immeubles non affectÃ©s Ã  des activitÃ©s professionnelles', 0, NULL, NULL, 1),
(412, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '753', '409', 'Jetons de prÃ©sence et rÃ©munÃ©rations d''administrateurs, gÃ©rants,...', 0, NULL, NULL, 1),
(413, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '754', '409', 'Ristournes perÃ§ues des coopÃ©ratives (provenant des excÃ©dents)', 0, NULL, NULL, 1),
(414, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '755', '409', 'Quotes-parts de rÃ©sultat sur opÃ©rations faites en commun', 0, NULL, NULL, 1),
(415, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '758', '409', 'Produits divers de gestion courante', 0, NULL, NULL, 1),
(416, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '76', '1507', 'Produits financiers', 0, NULL, NULL, 1),
(417, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '761', '416', 'Produits de participations', 0, NULL, NULL, 1),
(418, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '762', '416', 'Produits des autres immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(419, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '763', '416', 'Revenus des autres crÃ©ances', 0, NULL, NULL, 1),
(420, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '764', '416', 'Revenus des valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(421, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '765', '416', 'Escomptes obtenus', 0, NULL, NULL, 1),
(422, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '766', '416', 'Gains de change', 0, NULL, NULL, 1),
(423, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '767', '416', 'Produits nets sur cessions de valeurs mobiliÃ¨res de placement', 0, NULL, NULL, 1),
(424, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '768', '416', 'Autres produits financiers', 0, NULL, NULL, 1),
(425, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '77', '1507', 'Produits exceptionnels', 0, NULL, NULL, 1),
(426, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '771', '425', 'Produits exceptionnels sur opÃ©rations de gestion', 0, NULL, NULL, 1),
(427, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '772', '425', '(Compte Ã  la disposition des entitÃ©s pour enregistrer, en cours d''exercice, les produits sur exercices antÃ©rieurs)', 0, NULL, NULL, 1),
(428, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '775', '425', 'Produits des cessions d''Ã©lÃ©ments d''actif', 0, NULL, NULL, 1),
(429, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '777', '425', 'Quote-part des subventions d''investissement virÃ©e au rÃ©sultat de l''exercice', 0, NULL, NULL, 1),
(430, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '778', '425', 'Autres produits exceptionnels', 0, NULL, NULL, 1),
(431, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '78', '1507', 'Reprises sur amortissements et provisions', 0, NULL, NULL, 1),
(432, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '781', '431', 'Reprises sur amortissements et provisions (Ã  inscrire dans les produits d''exploitation)', 0, NULL, NULL, 1),
(433, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '786', '431', 'Reprises sur provisions pour risques (Ã  inscrire dans les produits financiers)', 0, NULL, NULL, 1),
(434, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '787', '431', 'Reprises sur provisions (Ã  inscrire dans les produits exceptionnels)', 0, NULL, NULL, 1),
(435, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '79', '1507', 'Transferts de charges', 0, NULL, NULL, 1),
(436, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '791', '435', 'Transferts de charges d''exploitation ', 0, NULL, NULL, 1),
(437, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '796', '435', 'Transferts de charges financiÃ¨res', 0, NULL, NULL, 1),
(438, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '797', '435', 'Transferts de charges exceptionnelles', 0, NULL, NULL, 1),
(439, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '10', '1351', 'Capital', 0, NULL, NULL, 1),
(440, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '100', '439', 'Capital souscrit ou capital personnel', 0, NULL, NULL, 1),
(441, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1000', '440', 'Capital non amorti', 0, NULL, NULL, 1),
(442, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1001', '440', 'Capital amorti', 0, NULL, NULL, 1),
(443, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '101', '439', 'Capital non appelÃ©', 0, NULL, NULL, 1),
(444, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '109', '439', 'Compte de l''exploitant', 0, NULL, NULL, 1),
(445, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1090', '444', 'OpÃ©rations courantes', 0, NULL, NULL, 1),
(446, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1091', '444', 'ImpÃ´ts personnels', 0, NULL, NULL, 1),
(447, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1092', '444', 'RÃ©munÃ©rations et autres avantages', 0, NULL, NULL, 1),
(448, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '11', '1351', 'Primes d''Ã©mission', 0, NULL, NULL, 1),
(449, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '12', '1351', 'Plus-values de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(450, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '120', '449', 'Plus-values de rÃ©Ã©valuation sur immobilisations incorporelles', 0, NULL, NULL, 1),
(451, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1200', '450', 'Plus-values de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(452, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1201', '450', 'Reprises de rÃ©ductions de valeur', 0, NULL, NULL, 1),
(453, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '121', '449', 'Plus-values de rÃ©Ã©valuation sur immobilisations corporelles', 0, NULL, NULL, 1),
(454, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1210', '453', 'Plus-values de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(455, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1211', '453', 'Reprises de rÃ©ductions de valeur', 0, NULL, NULL, 1),
(456, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '122', '449', 'Plus-values de rÃ©Ã©valuation sur immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(457, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1220', '456', 'Plus-values de rÃ©Ã©valuation', 0, NULL, NULL, 1),
(458, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1221', '456', 'Reprises de rÃ©ductions de valeur', 0, NULL, NULL, 1),
(459, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '123', '449', 'Plus-values de rÃ©Ã©valuation sur stocks', 0, NULL, NULL, 1),
(460, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '124', '449', 'Reprises de rÃ©ductions de valeur sur placements de trÃ©sorerie', 0, NULL, NULL, 1),
(461, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '13', '1351', 'RÃ©serve', 0, NULL, NULL, 1),
(462, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '130', '461', 'RÃ©serve lÃ©gale', 0, NULL, NULL, 1),
(463, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '131', '461', 'RÃ©serves indisponibles', 0, NULL, NULL, 1),
(464, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1310', '463', 'RÃ©serve pour actions propres', 0, NULL, NULL, 1),
(465, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1311', '463', 'Autres rÃ©serves indisponibles', 0, NULL, NULL, 1),
(466, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '132', '461', 'RÃ©serves immunisÃ©es', 0, NULL, NULL, 1),
(467, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '133', '461', 'RÃ©serves disponibles', 0, NULL, NULL, 1),
(468, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1330', '467', 'RÃ©serve pour rÃ©gularisation de dividendes', 0, NULL, NULL, 1),
(469, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1331', '467', 'RÃ©serve pour renouvellement des immobilisations', 0, NULL, NULL, 1),
(470, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1332', '467', 'RÃ©serve pour installations en faveur du personnel 1333 RÃ©serves libres', 0, NULL, NULL, 1),
(471, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '14', '1351', 'BÃ©nÃ©fice reportÃ© (ou perte reportÃ©e)', 0, NULL, NULL, 1),
(472, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '15', '1351', 'Subsides en capital', 0, NULL, NULL, 1),
(473, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '150', '472', 'Montants obtenus', 0, NULL, NULL, 1),
(474, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '151', '472', 'Montants transfÃ©rÃ©s aux rÃ©sultats', 0, NULL, NULL, 1),
(475, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '16', '1351', 'Provisions pour risques et charges', 0, NULL, NULL, 1),
(476, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '160', '475', 'Provisions pour pensions et obligations similaires', 0, NULL, NULL, 1),
(477, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '161', '475', 'Provisions pour charges fiscales', 0, NULL, NULL, 1),
(478, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '162', '475', 'Provisions pour grosses rÃ©parations et gros entretiens', 0, NULL, NULL, 1),
(479, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '163', '475', 'Ã  169 Provisions pour autres risques et charges', 0, NULL, NULL, 1),
(480, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '164', '475', 'Provisions pour sÃ»retÃ©s personnelles ou rÃ©elles constituÃ©es Ã  l''appui de dettes et d''engagements de tiers', 0, NULL, NULL, 1),
(481, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '165', '475', 'Provisions pour engagements relatifs Ã  l''acquisition ou Ã  la cession d''immobilisations', 0, NULL, NULL, 1),
(482, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '166', '475', 'Provisions pour exÃ©cution de commandes passÃ©es ou reÃ§ues', 0, NULL, NULL, 1),
(483, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '167', '475', 'Provisions pour positions et marchÃ©s Ã  terme en devises ou positions et marchÃ©s Ã  terme en marchandises', 0, NULL, NULL, 1),
(484, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '168', '475', 'Provisions pour garanties techniques attachÃ©es aux ventes et prestations dÃ©jÃ  effectuÃ©es par l''entreprise', 0, NULL, NULL, 1),
(485, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '169', '475', 'Provisions pour autres risques et charges', 0, NULL, NULL, 1),
(486, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1690', '485', 'Pour litiges en cours', 0, NULL, NULL, 1),
(487, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1691', '485', 'Pour amendes, doubles droits et pÃ©nalitÃ©s', 0, NULL, NULL, 1),
(488, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1692', '485', 'Pour propre assureur', 0, NULL, NULL, 1),
(489, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1693', '485', 'Pour risques inhÃ©rents aux opÃ©rations de crÃ©dits Ã  moyen ou long terme', 0, NULL, NULL, 1),
(490, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1695', '485', 'Provision pour charge de liquidation', 0, NULL, NULL, 1),
(491, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1696', '485', 'Provision pour dÃ©part de personnel', 0, NULL, NULL, 1),
(492, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1699', '485', 'Pour risques divers', 0, NULL, NULL, 1),
(493, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17', '1351', 'Dettes Ã  plus d''un an', 0, NULL, NULL, 1),
(494, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '170', '493', 'Emprunts subordonnÃ©s', 0, NULL, NULL, 1),
(495, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1700', '494', 'Convertibles', 0, NULL, NULL, 1),
(496, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1701', '494', 'Non convertibles', 0, NULL, NULL, 1),
(497, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '171', '493', 'Emprunts obligataires non subordonnÃ©s', 0, NULL, NULL, 1),
(498, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1710', '498', 'Convertibles', 0, NULL, NULL, 1),
(499, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1711', '498', 'Non convertibles', 0, NULL, NULL, 1),
(500, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '172', '493', 'Dettes de location-financement et assimilÃ©s', 0, NULL, NULL, 1),
(501, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1720', '500', 'Dettes de location-financement de biens immobiliers', 0, NULL, NULL, 1),
(502, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1721', '500', 'Dettes de location-financement de biens mobiliers', 0, NULL, NULL, 1),
(503, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1722', '500', 'Dettes sur droits rÃ©els sur immeubles', 0, NULL, NULL, 1),
(504, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '173', '493', 'Etablissements de crÃ©dit', 0, NULL, NULL, 1),
(505, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1730', '504', 'Dettes en compte', 0, NULL, NULL, 1),
(506, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17300', '505', 'Banque A', 0, NULL, NULL, 1),
(507, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17301', '505', 'Banque B', 0, NULL, NULL, 1),
(508, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17302', '505', 'Banque C', 0, NULL, NULL, 1),
(509, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17303', '505', 'Banque D', 0, NULL, NULL, 1),
(510, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1731', '504', 'Promesses', 0, NULL, NULL, 1),
(511, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17310', '510', 'Banque A', 0, NULL, NULL, 1),
(512, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17311', '510', 'Banque B', 0, NULL, NULL, 1),
(513, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17312', '510', 'Banque C', 0, NULL, NULL, 1),
(514, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17313', '510', 'Banque D', 0, NULL, NULL, 1),
(515, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1732', '504', 'CrÃ©dits d''acceptation', 0, NULL, NULL, 1),
(516, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17320', '515', 'Banque A', 0, NULL, NULL, 1),
(517, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17321', '515', 'Banque B', 0, NULL, NULL, 1),
(518, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17322', '515', 'Banque C', 0, NULL, NULL, 1),
(519, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17323', '515', 'Banque D', 0, NULL, NULL, 1),
(520, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '174', '493', 'Autres emprunts', 0, NULL, NULL, 1),
(521, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175', '493', 'Dettes commerciales', 0, NULL, NULL, 1),
(522, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1750', '521', 'Fournisseurs : dettes en compte', 0, NULL, NULL, 1),
(523, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17500', '522', 'Entreprises apparentÃ©es', 0, NULL, NULL, 1),
(524, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175000', '523', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(525, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175001', '523', 'Entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(526, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17501', '522', 'Fournisseurs ordinaires', 0, NULL, NULL, 1),
(527, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175010', '526', 'Fournisseurs belges', 0, NULL, NULL, 1),
(528, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175011', '526', 'Fournisseurs C.E.E.', 0, NULL, NULL, 1),
(529, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175012', '526', 'Fournisseurs importation', 0, NULL, NULL, 1),
(530, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1751', '521', 'Effets Ã  payer', 0, NULL, NULL, 1),
(531, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17510', '530', 'Entreprises apparentÃ©es', 0, NULL, NULL, 1),
(532, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175100', '531', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(533, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175101', '531', 'Entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(534, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17511', '530', 'Fournisseurs ordinaires', 0, NULL, NULL, 1),
(535, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175110', '534', 'Fournisseurs belges', 0, NULL, NULL, 1),
(536, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175111', '534', 'Fournisseurs C.E.E.', 0, NULL, NULL, 1),
(537, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175112', '534', 'Fournisseurs importation', 0, NULL, NULL, 1),
(538, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '176', '493', 'Acomptes reÃ§us sur commandes', 0, NULL, NULL, 1),
(539, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '178', '493', 'Cautionnements reÃ§us en numÃ©raires', 0, NULL, NULL, 1),
(540, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '179', '493', 'Dettes diverses', 0, NULL, NULL, 1),
(541, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1790', '540', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(542, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1791', '540', 'Autres entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(543, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1792', '540', 'Administrateurs, gÃ©rants et associÃ©s', 0, NULL, NULL, 1),
(544, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1794', '540', 'Rentes viagÃ¨res capitalisÃ©es', 0, NULL, NULL, 1),
(545, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1798', '540', 'Dettes envers les coparticipants des associations momentanÃ©es et en participation', 0, NULL, NULL, 1),
(546, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1799', '540', 'Autres dettes diverses', 0, NULL, NULL, 1),
(547, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '18', '1351', 'Comptes de liaison des Ã©tablissements et succursales', 0, NULL, NULL, 1),
(548, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '20', '1352', 'Frais d''Ã©tablissement', 0, NULL, NULL, 1),
(549, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '200', '548', 'Frais de constitution et d''augmentation de capital', 0, NULL, NULL, 1),
(550, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2000', '549', 'Frais de constitution et d''augmentation de capital', 0, NULL, NULL, 1),
(551, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2009', '549', 'Amortissements sur frais de constitution et d''augmentation de capital', 0, NULL, NULL, 1),
(552, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '201', '548', 'Frais d''Ã©mission d''emprunts et primes de remboursement', 0, NULL, NULL, 1),
(553, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2010', '552', 'Agios sur emprunts et frais d''Ã©mission d''emprunts', 0, NULL, NULL, 1),
(554, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2019', '552', 'Amortissements sur agios sur emprunts et frais d''Ã©mission d''emprunts', 0, NULL, NULL, 1),
(555, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '202', '548', 'Autres frais d''Ã©tablissement', 0, NULL, NULL, 1),
(556, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2020', '555', 'Autres frais d''Ã©tablissement', 0, NULL, NULL, 1),
(557, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2029', '555', 'Amortissements sur autres frais d''Ã©tablissement', 0, NULL, NULL, 1),
(558, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '203', '548', 'IntÃ©rÃªts intercalaires', 0, NULL, NULL, 1),
(559, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2030', '558', 'IntÃ©rÃªts intercalaires', 0, NULL, NULL, 1),
(560, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2039', '558', 'Amortissements sur intÃ©rÃªts intercalaires', 0, NULL, NULL, 1),
(561, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '204', '548', 'Frais de restructuration', 0, NULL, NULL, 1),
(562, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2040', '561', 'CoÃ»t des frais de restructuration', 0, NULL, NULL, 1),
(563, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2049', '561', 'Amortissements sur frais de restructuration', 0, NULL, NULL, 1),
(564, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '21', '1352', 'Immobilisations incorporelles', 0, NULL, NULL, 1),
(565, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '210', '564', 'Frais de recherche et de dÃ©veloppement', 0, NULL, NULL, 1),
(566, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2100', '565', 'Frais de recherche et de mise au point', 0, NULL, NULL, 1),
(567, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2108', '565', 'Plus-values actÃ©es sur frais de recherche et de mise au point', 0, NULL, NULL, 1),
(568, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2109', '565', 'Amortissements sur frais de recherche et de mise au point', 0, NULL, NULL, 1),
(569, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '211', '564', 'Concessions, brevets, licences, savoir-faire, marque et droits similaires', 0, NULL, NULL, 1),
(570, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2110', '569', 'Concessions, brevets, licences, marques, etc', 0, NULL, NULL, 1),
(571, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2118', '569', 'Plus-values actÃ©es sur concessions, etc', 0, NULL, NULL, 1),
(572, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2119', '569', 'Amortissements sur concessions, etc', 0, NULL, NULL, 1),
(573, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '212', '564', 'Goodwill', 0, NULL, NULL, 1),
(574, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2120', '573', 'CoÃ»t d''acquisition', 0, NULL, NULL, 1),
(575, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2128', '573', 'Plus-values actÃ©es', 0, NULL, NULL, 1),
(576, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2129', '573', 'Amortissements sur goodwill', 0, NULL, NULL, 1),
(577, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '213', '564', 'Acomptes versÃ©s', 0, NULL, NULL, 1),
(578, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22', '1352', 'Terrains et constructions', 0, NULL, NULL, 1),
(579, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '220', '578', 'Terrains', 0, NULL, NULL, 1),
(580, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2200', '579', 'Terrains', 0, NULL, NULL, 1),
(581, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2201', '579', 'Frais d''acquisition sur terrains', 0, NULL, NULL, 1),
(582, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2208', '579', 'Plus-values actÃ©es sur terrains', 0, NULL, NULL, 1),
(583, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2209', '579', 'Amortissements et rÃ©ductions de valeur', 0, NULL, NULL, 1),
(584, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22090', '583', 'Amortissements sur frais d''acquisition', 0, NULL, NULL, 1),
(585, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22091', '583', 'RÃ©ductions de valeur sur terrains', 0, NULL, NULL, 1),
(586, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '221', '578', 'Constructions', 0, NULL, NULL, 1),
(587, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2210', '586', 'BÃ¢timents industriels', 0, NULL, NULL, 1),
(588, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2211', '586', 'BÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(589, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2212', '586', 'Autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(590, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2213', '586', 'Voies de transport et ouvrages d''art', 0, NULL, NULL, 1),
(591, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2215', '586', 'Constructions sur sol d''autrui', 0, NULL, NULL, 1),
(592, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2216', '586', 'Frais d''acquisition sur constructions', 0, NULL, NULL, 1),
(593, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2218', '586', 'Plus-values actÃ©es', 0, NULL, NULL, 1),
(594, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22180', '593', 'Sur bÃ¢timents industriels', 0, NULL, NULL, 1),
(595, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22181', '593', 'Sur bÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(596, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22182', '593', 'Sur autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(597, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22184', '593', 'Sur voies de transport et ouvrages d''art', 0, NULL, NULL, 1),
(598, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2219', '586', 'Amortissements sur constructions', 0, NULL, NULL, 1),
(599, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22190', '598', 'Sur bÃ¢timents industriels', 0, NULL, NULL, 1),
(600, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22191', '598', 'Sur bÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(601, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22192', '598', 'Sur autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(602, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22194', '598', 'Sur voies de transport et ouvrages d''art', 0, NULL, NULL, 1),
(603, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22195', '598', 'Sur constructions sur sol d''autrui', 0, NULL, NULL, 1),
(604, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22196', '598', 'Sur frais d''acquisition sur constructions', 0, NULL, NULL, 1),
(605, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '222', '578', 'Terrains bÃ¢tis', 0, NULL, NULL, 1),
(606, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2220', '605', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(607, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22200', '606', 'BÃ¢timents industriels', 0, NULL, NULL, 1),
(608, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22201', '606', 'BÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(609, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22202', '606', 'Autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(610, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22203', '606', 'Voies de transport et ouvrages d''art', 0, NULL, NULL, 1),
(611, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22204', '606', 'Frais d''acquisition des terrains Ã  bÃ¢tir', 0, NULL, NULL, 1),
(612, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2228', '605', 'Plus-values actÃ©es', 0, NULL, NULL, 1),
(613, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22280', '612', 'Sur bÃ¢timents industriels', 0, NULL, NULL, 1),
(614, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22281', '612', 'Sur bÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(615, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22282', '612', 'Sur autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(616, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22283', '612', 'Sur voies de transport et ouvrages d''art', 0, NULL, NULL, 1),
(617, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2229', '605', 'Amortissements sur terrains bÃ¢tis', 0, NULL, NULL, 1),
(618, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22290', '617', 'Sur bÃ¢timents industriels', 0, NULL, NULL, 1),
(619, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22291', '617', 'Sur bÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(620, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22292', '617', 'Sur autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(621, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22293', '617', 'Sur voies de transport et ouvrages d''art', 0, NULL, NULL, 1),
(622, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '22294', '617', 'Sur frais d''acquisition des terrains bÃ¢tis', 0, NULL, NULL, 1),
(623, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '223', '578', 'Autres droits rÃ©els sur des immeubles', 0, NULL, NULL, 1),
(624, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2230', '623', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(625, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2238', '623', 'Plus-values actÃ©es', 0, NULL, NULL, 1),
(626, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2239', '623', 'Amortissements', 0, NULL, NULL, 1),
(627, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '23', '1352', 'Installations, machines et outillages', 0, NULL, NULL, 1),
(628, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '230', '627', 'Installations', 0, NULL, NULL, 1),
(629, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2300', '628', 'Installations bÃ¢timents industriels', 0, NULL, NULL, 1),
(630, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2301', '628', 'Installations bÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(631, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2302', '628', 'Installations bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(632, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2303', '628', 'Installations voies de transport et ouvrages d''art', 0, NULL, NULL, 1),
(633, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2300', '628', 'Installation d''eau', 0, NULL, NULL, 1),
(634, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2301', '628', 'Installation d''Ã©lectricitÃ©', 0, NULL, NULL, 1),
(635, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2302', '628', 'Installation de vapeur', 0, NULL, NULL, 1),
(636, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2303', '628', 'Installation de gaz', 0, NULL, NULL, 1),
(637, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2304', '628', 'Installation de chauffage', 0, NULL, NULL, 1),
(638, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2305', '628', 'Installation de conditionnement d''air', 0, NULL, NULL, 1),
(639, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2306', '628', 'Installation de chargement', 0, NULL, NULL, 1),
(640, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '231', '627', 'Machines', 0, NULL, NULL, 1),
(641, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2310', '640', 'Division A', 0, NULL, NULL, 1),
(642, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2311', '640', 'Division B', 0, NULL, NULL, 1),
(643, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2312', '640', 'Division C', 0, NULL, NULL, 1),
(644, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '237', '627', 'Outillage', 0, NULL, NULL, 1),
(645, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2370', '644', 'Division A', 0, NULL, NULL, 1),
(646, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2371', '644', 'Division B', 0, NULL, NULL, 1),
(647, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2372', '644', 'Division C', 0, NULL, NULL, 1),
(648, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '238', '627', 'Plus-values actÃ©es', 0, NULL, NULL, 1),
(649, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2380', '648', 'Sur installations', 0, NULL, NULL, 1),
(650, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2381', '648', 'Sur machines', 0, NULL, NULL, 1),
(651, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2382', '648', 'Sur outillage', 0, NULL, NULL, 1),
(652, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '239', '627', 'Amortissements', 0, NULL, NULL, 1),
(653, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2390', '652', 'Sur installations', 0, NULL, NULL, 1),
(654, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2391', '652', 'Sur machines', 0, NULL, NULL, 1),
(655, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2392', '652', 'Sur outillage', 0, NULL, NULL, 1),
(656, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24', '1352', 'Mobilier et matÃ©riel roulant', 0, NULL, NULL, 1),
(657, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '240', '656', 'Mobilier', 0, NULL, NULL, 1),
(658, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2400', '656', 'Mobilier', 0, NULL, NULL, 1),
(659, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24000', '658', 'Mobilier des bÃ¢timents industriels', 0, NULL, NULL, 1),
(660, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24001', '658', 'Mobilier des bÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(661, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24002', '658', 'Mobilier des autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(662, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24003', '658', 'Mobilier oeuvres sociales', 0, NULL, NULL, 1),
(663, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2401', '657', 'MatÃ©riel de bureau et de service social', 0, NULL, NULL, 1),
(664, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24010', '663', 'Des bÃ¢timents industriels', 0, NULL, NULL, 1),
(665, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24011', '663', 'Des bÃ¢timents administratifs et commerciaux', 0, NULL, NULL, 1),
(666, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24012', '663', 'Des autres bÃ¢timents d''exploitation', 0, NULL, NULL, 1),
(667, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24013', '663', 'Des oeuvres sociales', 0, NULL, NULL, 1),
(668, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2408', '657', 'Plus-values actÃ©es', 0, NULL, NULL, 1),
(669, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24080', '668', 'Plus-values actÃ©es sur mobilier', 0, NULL, NULL, 1),
(670, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24081', '668', 'Plus-values actÃ©es sur matÃ©riel de bureau et service social', 0, NULL, NULL, 1),
(671, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2409', '657', 'Amortissements', 0, NULL, NULL, 1),
(672, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24090', '671', 'Amortissements sur mobilier', 0, NULL, NULL, 1),
(673, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24091', '671', 'Amortissements sur matÃ©riel de bureau et service social', 0, NULL, NULL, 1),
(674, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '241', '656', 'MatÃ©riel roulant', 0, NULL, NULL, 1),
(675, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2410', '674', 'MatÃ©riel automobile', 0, NULL, NULL, 1),
(676, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24100', '675', 'Voitures', 0, NULL, NULL, 1),
(677, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24105', '675', 'Camions', 0, NULL, NULL, 1),
(678, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2411', '674', 'MatÃ©riel ferroviaire', 0, NULL, NULL, 1),
(679, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2412', '674', 'MatÃ©riel fluvial', 0, NULL, NULL, 1),
(680, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2413', '674', 'MatÃ©riel naval', 0, NULL, NULL, 1),
(681, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2414', '674', 'MatÃ©riel aÃ©rien', 0, NULL, NULL, 1),
(682, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2418', '674', 'Plus-values sur matÃ©riel roulant', 0, NULL, NULL, 1),
(683, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24180', '682', 'Plus-values sur matÃ©riel automobile', 0, NULL, NULL, 1),
(684, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24181', '682', 'Idem sur matÃ©riel ferroviaire', 0, NULL, NULL, 1),
(685, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24182', '682', 'Idem sur matÃ©riel fluvial', 0, NULL, NULL, 1),
(686, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24183', '682', 'Idem sur matÃ©riel naval', 0, NULL, NULL, 1),
(687, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24184', '682', 'Idem sur matÃ©riel aÃ©rien', 0, NULL, NULL, 1),
(688, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2419', '674', 'Amortissements sur matÃ©riel roulant', 0, NULL, NULL, 1),
(689, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24190', '688', 'Amortissements sur matÃ©riel automobile', 0, NULL, NULL, 1),
(690, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24191', '688', 'Idem sur matÃ©riel ferroviaire', 0, NULL, NULL, 1),
(691, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24192', '688', 'Idem sur matÃ©riel fluvial', 0, NULL, NULL, 1);
INSERT INTO `llx_accounting_account` (`rowid`, `entity`, `datec`, `tms`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `fk_accounting_category`, `fk_user_author`, `fk_user_modif`, `active`) VALUES
(692, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24193', '688', 'Idem sur matÃ©riel naval', 0, NULL, NULL, 1),
(693, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '24194', '688', 'Idem sur matÃ©riel aÃ©rien', 0, NULL, NULL, 1),
(694, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '25', '1352', 'Immobilisation dÃ©tenues en location-financement et droits similaires', 0, NULL, NULL, 1),
(695, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '250', '694', 'Terrains et constructions', 0, NULL, NULL, 1),
(696, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2500', '695', 'Terrains', 0, NULL, NULL, 1),
(697, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2501', '695', 'Constructions', 0, NULL, NULL, 1),
(698, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2508', '695', 'Plus-values sur emphytÃ©ose,  leasing et droits similaires : terrains et constructions', 0, NULL, NULL, 1),
(699, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2509', '695', 'Amortissements et rÃ©ductions de valeur sur terrains et constructions en leasing', 0, NULL, NULL, 1),
(700, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '251', '694', 'Installations,  machines et outillage', 0, NULL, NULL, 1),
(701, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2510', '700', 'Installations', 0, NULL, NULL, 1),
(702, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2511', '700', 'Machines', 0, NULL, NULL, 1),
(703, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2512', '700', 'Outillage', 0, NULL, NULL, 1),
(704, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2518', '700', 'Plus-values actÃ©es sur installations machines et outillage pris en leasing', 0, NULL, NULL, 1),
(705, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2519', '700', 'Amortissements sur installations machines et outillage pris en leasing', 0, NULL, NULL, 1),
(706, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '252', '694', 'Mobilier et matÃ©riel roulant', 0, NULL, NULL, 1),
(707, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2520', '706', 'Mobilier', 0, NULL, NULL, 1),
(708, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2521', '706', 'MatÃ©riel roulant', 0, NULL, NULL, 1),
(709, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2528', '706', 'Plus-values actÃ©es sur mobilier et matÃ©riel roulant en leasing', 0, NULL, NULL, 1),
(710, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2529', '706', 'Amortissements sur mobilier et matÃ©riel roulant en leasing', 0, NULL, NULL, 1),
(711, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '26', '1352', 'Autres immobilisations corporelles', 0, NULL, NULL, 1),
(712, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '260', '711', 'Frais d''amÃ©nagements de locaux pris en location', 0, NULL, NULL, 1),
(713, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '261', '711', 'Maison d''habitation', 0, NULL, NULL, 1),
(714, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '262', '711', 'RÃ©serve immobiliÃ¨re', 0, NULL, NULL, 1),
(715, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '263', '711', 'MatÃ©riel d''emballage', 0, NULL, NULL, 1),
(716, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '264', '711', 'Emballages rÃ©cupÃ©rables', 0, NULL, NULL, 1),
(717, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '268', '711', 'Plus-values actÃ©es sur autres immobilisations corporelles', 0, NULL, NULL, 1),
(718, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '269', '711', 'Amortissements sur autres immobilisations corporelles', 0, NULL, NULL, 1),
(719, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2690', '718', 'Amortissements sur frais d''amÃ©nagement des locaux pris en location', 0, NULL, NULL, 1),
(720, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2691', '718', 'Amortissements sur maison d''habitation', 0, NULL, NULL, 1),
(721, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2692', '718', 'Amortissements sur rÃ©serve immobiliÃ¨re', 0, NULL, NULL, 1),
(722, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2693', '718', 'Amortissements sur matÃ©riel d''emballage', 0, NULL, NULL, 1),
(723, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2694', '718', 'Amortissements sur emballages rÃ©cupÃ©rables', 0, NULL, NULL, 1),
(724, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '27', '1352', 'Immobilisations corporelles en cours et acomptes versÃ©s', 0, NULL, NULL, 1),
(725, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '270', '724', 'Immobilisations en cours', 0, NULL, NULL, 1),
(726, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2700', '725', 'Constructions', 0, NULL, NULL, 1),
(727, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2701', '725', 'Installations machines et outillage', 0, NULL, NULL, 1),
(728, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2702', '725', 'Mobilier et matÃ©riel roulant', 0, NULL, NULL, 1),
(729, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2703', '725', 'Autres immobilisations corporelles', 0, NULL, NULL, 1),
(730, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '271', '724', 'Avances et acomptes versÃ©s sur immobilisations en cours', 0, NULL, NULL, 1),
(731, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '28', '1352', 'Immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(732, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '280', '731', 'Participations dans des entreprises liÃ©es', 0, NULL, NULL, 1),
(733, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2800', '732', 'Valeur d''acquisition (peut Ãªtre subdivisÃ© par participation)', 0, NULL, NULL, 1),
(734, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2801', '732', 'Montants non appelÃ©s (idem)', 0, NULL, NULL, 1),
(735, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2808', '732', 'Plus-values actÃ©es (idem)', 0, NULL, NULL, 1),
(736, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2809', '732', 'RÃ©ductions de valeurs actÃ©es (idem)', 0, NULL, NULL, 1),
(737, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '281', '731', 'CrÃ©ances sur des entreprises liÃ©es', 0, NULL, NULL, 1),
(738, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2810', '737', 'CrÃ©ances en compte', 0, NULL, NULL, 1),
(739, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2811', '737', 'Effets Ã  recevoir', 0, NULL, NULL, 1),
(740, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2812', '737', 'Titres Ã  revenu fixes', 0, NULL, NULL, 1),
(741, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2817', '737', 'CrÃ©ances douteuses', 0, NULL, NULL, 1),
(742, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2819', '737', 'RÃ©ductions de valeurs actÃ©es', 0, NULL, NULL, 1),
(743, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '282', '731', 'Participations dans des entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(744, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2820', '743', 'Valeur d''acquisition (peut Ãªtre subdivisÃ© par participation)', 0, NULL, NULL, 1),
(745, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2821', '743', 'Montants non appelÃ©s (idem)', 0, NULL, NULL, 1),
(746, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2828', '743', 'Plus-values actÃ©es (idem)', 0, NULL, NULL, 1),
(747, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2829', '743', 'RÃ©ductions de valeurs actÃ©es (idem)', 0, NULL, NULL, 1),
(748, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '283', '731', 'CrÃ©ances sur des entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(749, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2830', '748', 'CrÃ©ances en compte', 0, NULL, NULL, 1),
(750, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2831', '748', 'Effets Ã  recevoir', 0, NULL, NULL, 1),
(751, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2832', '748', 'Titres Ã  revenu fixe', 0, NULL, NULL, 1),
(752, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2837', '748', 'CrÃ©ances douteuses', 0, NULL, NULL, 1),
(753, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2839', '748', 'RÃ©ductions de valeurs actÃ©es', 0, NULL, NULL, 1),
(754, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '284', '731', 'Autres actions et parts', 0, NULL, NULL, 1),
(755, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2840', '754', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(756, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2841', '754', 'Montants non appelÃ©s', 0, NULL, NULL, 1),
(757, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2848', '754', 'Plus-values actÃ©es', 0, NULL, NULL, 1),
(758, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2849', '754', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(759, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '285', '731', 'Autres crÃ©ances', 0, NULL, NULL, 1),
(760, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2850', '759', 'CrÃ©ances en compte', 0, NULL, NULL, 1),
(761, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2851', '759', 'Effets Ã  recevoir', 0, NULL, NULL, 1),
(762, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2852', '759', 'Titres Ã  revenu fixe', 0, NULL, NULL, 1),
(763, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2857', '759', 'CrÃ©ances douteuses', 0, NULL, NULL, 1),
(764, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2859', '759', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(765, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '288', '731', 'Cautionnements versÃ©s en numÃ©raires', 0, NULL, NULL, 1),
(766, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2880', '765', 'TÃ©lÃ©phone, tÃ©lÃ©fax, tÃ©lex', 0, NULL, NULL, 1),
(767, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2881', '765', 'Gaz', 0, NULL, NULL, 1),
(768, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2882', '765', 'Eau', 0, NULL, NULL, 1),
(769, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2883', '765', 'ElectricitÃ©', 0, NULL, NULL, 1),
(770, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2887', '765', 'Autres cautionnements versÃ©s en numÃ©raires', 0, NULL, NULL, 1),
(771, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29', '1352', 'CrÃ©ances Ã  plus d''un an', 0, NULL, NULL, 1),
(772, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '290', '771', 'CrÃ©ances commerciales', 0, NULL, NULL, 1),
(773, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2900', '772', 'Clients', 0, NULL, NULL, 1),
(774, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29000', '773', 'CrÃ©ances en compte sur entreprises liÃ©es', 0, NULL, NULL, 1),
(775, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29001', '773', 'Sur entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(776, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29002', '773', 'Sur clients Belgique', 0, NULL, NULL, 1),
(777, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29003', '773', 'Sur clients C.E.E.', 0, NULL, NULL, 1),
(778, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29004', '773', 'Sur clients exportation hors C.E.E.', 0, NULL, NULL, 1),
(779, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29005', '773', 'CrÃ©ances sur les coparticipants (associations momentanÃ©es)', 0, NULL, NULL, 1),
(780, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2901', '772', 'Effets Ã  recevoir', 0, NULL, NULL, 1),
(781, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29010', '780', 'Sur entreprises liÃ©es', 0, NULL, NULL, 1),
(782, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29011', '780', 'Sur entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(783, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29012', '780', 'Sur clients Belgique', 0, NULL, NULL, 1),
(784, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29013', '780', 'Sur clients C.E.E.', 0, NULL, NULL, 1),
(785, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29014', '780', 'Sur clients exportation hors C.E.E.', 0, NULL, NULL, 1),
(786, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2905', '772', 'Retenues sur garanties', 0, NULL, NULL, 1),
(787, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2906', '772', 'Acomptes versÃ©s', 0, NULL, NULL, 1),
(788, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2907', '772', 'CrÃ©ances douteuses (Ã  ventiler comme clients 2900)', 0, NULL, NULL, 1),
(789, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2909', '772', 'RÃ©ductions de valeur actÃ©es (Ã  ventiler comme clients 2900)', 0, NULL, NULL, 1),
(790, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '291', '771', 'Autres crÃ©ances', 0, NULL, NULL, 1),
(791, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2910', '790', 'CrÃ©ances en compte', 0, NULL, NULL, 1),
(792, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29100', '791', 'Sur entreprises liÃ©es', 0, NULL, NULL, 1),
(793, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29101', '791', 'Sur entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(794, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29102', '791', 'Sur autres dÃ©biteurs', 0, NULL, NULL, 1),
(795, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2911', '790', 'Effets Ã  recevoir', 0, NULL, NULL, 1),
(796, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29110', '795', 'Sur entreprises liÃ©es', 0, NULL, NULL, 1),
(797, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29111', '795', 'Sur entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(798, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '29112', '795', 'Sur autres dÃ©biteurs', 0, NULL, NULL, 1),
(799, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2912', '790', 'CrÃ©ances rÃ©sultant de la cession d''immobilisations donnÃ©es en leasing', 0, NULL, NULL, 1),
(800, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2917', '790', 'CrÃ©ances douteuses', 0, NULL, NULL, 1),
(801, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2919', '790', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(802, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '30', '1353', 'Approvisionnements - matiÃ¨res premiÃ¨res', 0, NULL, NULL, 1),
(803, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '300', '802', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(804, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '309', '802', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(805, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '31', '1353', 'Approvsionnements et fournitures', 0, NULL, NULL, 1),
(806, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '310', '805', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(807, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3100', '806', 'MatiÃ¨res d''approvisionnement', 0, NULL, NULL, 1),
(808, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3101', '806', 'Energie, charbon, coke, mazout, essence, propane', 0, NULL, NULL, 1),
(809, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3102', '806', 'Produits d''entretien', 0, NULL, NULL, 1),
(810, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3103', '806', 'Fournitures diverses et petit outillage', 0, NULL, NULL, 1),
(811, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3104', '806', 'ImprimÃ©s et fournitures de bureau', 0, NULL, NULL, 1),
(812, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3105', '806', 'Fournitures de services sociaux', 0, NULL, NULL, 1),
(813, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3106', '806', 'Emballages commerciaux', 0, NULL, NULL, 1),
(814, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '31060', '813', 'Emballages perdus', 0, NULL, NULL, 1),
(815, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '31061', '813', 'Emballages rÃ©cupÃ©rables', 0, NULL, NULL, 1),
(816, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '319', '805', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(817, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '32', '1353', 'En cours de fabrication', 0, NULL, NULL, 1),
(818, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '320', '817', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(819, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3200', '818', 'Produits semi-ouvrÃ©s', 0, NULL, NULL, 1),
(820, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3201', '818', 'Produits en cours de fabrication', 0, NULL, NULL, 1),
(821, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3202', '818', 'Travaux en cours', 0, NULL, NULL, 1),
(822, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3205', '818', 'DÃ©chets', 0, NULL, NULL, 1),
(823, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3206', '818', 'Rebuts', 0, NULL, NULL, 1),
(824, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3209', '818', 'Travaux en association momentanÃ©e', 0, NULL, NULL, 1),
(825, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '329', '817', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(826, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '33', '1353', 'Produits finis', 0, NULL, NULL, 1),
(827, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '330', '826', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(828, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3300', '827', 'Produits finis', 0, NULL, NULL, 1),
(829, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '339', '826', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(830, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '34', '1353', 'Marchandises', 0, NULL, NULL, 1),
(831, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '340', '830', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(832, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3400', '831', 'Groupe A', 0, NULL, NULL, 1),
(833, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3401', '831', 'Groupe B', 0, NULL, NULL, 1),
(834, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3402', '831', 'Groupe C', 0, NULL, NULL, 1),
(835, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '349', '830', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(836, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '35', '1353', 'Immeubles destinÃ©s Ã  la vente', 0, NULL, NULL, 1),
(837, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '350', '836', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(838, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3500', '837', 'Immeuble A', 0, NULL, NULL, 1),
(839, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3501', '837', 'Immeuble B', 0, NULL, NULL, 1),
(840, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3502', '837', 'Immeuble C', 0, NULL, NULL, 1),
(841, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '351', '836', 'Immeubles construits en vue de leur revente', 0, NULL, NULL, 1),
(842, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3510', '841', 'Immeuble A', 0, NULL, NULL, 1),
(843, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3511', '841', 'Immeuble B', 0, NULL, NULL, 1),
(844, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3512', '841', 'Immeuble C', 0, NULL, NULL, 1),
(845, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '359', '836', 'RÃ©ductions de valeurs actÃ©es', 0, NULL, NULL, 1),
(846, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '36', '1353', 'Acomptes versÃ©s sur achats pour stocks', 0, NULL, NULL, 1),
(847, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '360', '846', 'Acomptes versÃ©s (Ã  ventiler Ã©ventuellement par catÃ©gorie)', 0, NULL, NULL, 1),
(848, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '369', '846', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(849, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '37', '1353', 'Commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(850, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '370', '849', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(851, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '371', '849', 'BÃ©nÃ©fice pris en compte', 0, NULL, NULL, 1),
(852, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '379', '849', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(853, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '40', '1354', 'CrÃ©ances commerciales', 0, NULL, NULL, 1),
(854, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '400', '853', 'Clients', 0, NULL, NULL, 1),
(855, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4007', '854', 'Rabais, remises et  ristournes Ã  accorder et autres notes de crÃ©dit Ã  Ã©tablir', 0, NULL, NULL, 1),
(856, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4008', '854', 'CrÃ©ances rÃ©sultant de livraisons de biens (associations momentanÃ©es)', 0, NULL, NULL, 1),
(857, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '401', '853', 'Effets Ã  recevoir', 0, NULL, NULL, 1),
(858, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4010', '857', 'Effets Ã  recevoir', 0, NULL, NULL, 1),
(859, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4013', '857', 'Effets Ã  l''encaissement', 0, NULL, NULL, 1),
(860, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4015', '857', 'Effets Ã  l''escompte', 0, NULL, NULL, 1),
(861, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '402', '853', 'Clients, crÃ©ances courantes, entreprises apparentÃ©es, administrateurs et gÃ©rants', 0, NULL, NULL, 1),
(862, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4020', '861', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(863, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4021', '861', 'Autres entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(864, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4022', '861', 'Administrateurs et gÃ©rants d''entreprise', 0, NULL, NULL, 1),
(865, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '403', '853', 'Effets Ã  recevoir sur entreprises apparentÃ©es et administrateurs et gÃ©rants', 0, NULL, NULL, 1),
(866, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4030', '865', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(867, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4031', '865', 'Autres entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(868, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4032', '865', 'Administrateurs et gÃ©rants de l''entreprise', 0, NULL, NULL, 1),
(869, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '404', '853', 'Produits Ã  recevoir (factures Ã  Ã©tablir)', 0, NULL, NULL, 1),
(870, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '405', '853', 'Clients : retenues sur garanties', 0, NULL, NULL, 1),
(871, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '406', '853', 'Acomptes versÃ©s', 0, NULL, NULL, 1),
(872, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '407', '853', 'CrÃ©ances douteuses', 0, NULL, NULL, 1),
(873, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '408', '853', 'Compensation clients', 0, NULL, NULL, 1),
(874, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '409', '853', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(875, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '41', '1354', 'Autres crÃ©ances', 0, NULL, NULL, 1),
(876, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '410', '875', 'Capital appelÃ©, non versÃ©', 0, NULL, NULL, 1),
(877, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4100', '876', 'Appels de fonds', 0, NULL, NULL, 1),
(878, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4101', '876', 'Actionnaires dÃ©faillants', 0, NULL, NULL, 1),
(879, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '411', '875', 'T.V.A. Ã  rÃ©cupÃ©rer', 0, NULL, NULL, 1),
(880, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4110', '879', 'T.V.A. due', 0, NULL, NULL, 1),
(881, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4111', '879', 'T.V.A. dÃ©ductible', 0, NULL, NULL, 1),
(882, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4112', '879', 'Compte courant administration T.V.A.', 0, NULL, NULL, 1),
(883, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4118', '879', 'Taxe d''Ã©galisation due', 0, NULL, NULL, 1),
(884, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '412', '875', 'ImpÃ´ts et versements fiscaux Ã  rÃ©cupÃ©rer', 0, NULL, NULL, 1),
(885, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4120', '884', 'ImpÃ´ts belges sur le rÃ©sultat', 0, NULL, NULL, 1),
(886, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4125', '884', 'Autres impÃ´ts belges', 0, NULL, NULL, 1),
(887, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4128', '884', 'ImpÃ´ts Ã©trangers', 0, NULL, NULL, 1),
(888, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '414', '875', 'Produits Ã  recevoir', 0, NULL, NULL, 1),
(889, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '416', '875', 'CrÃ©ances diverses', 0, NULL, NULL, 1),
(890, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4160', '889', 'AssociÃ©s (compte d''apport en sociÃ©tÃ©)', 0, NULL, NULL, 1),
(891, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4161', '889', 'Avances et prÃªts au personnel', 0, NULL, NULL, 1),
(892, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4162', '889', 'Compte courant des associÃ©s en S.P.R.L.', 0, NULL, NULL, 1),
(893, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4163', '889', 'Compte courant des administrateurs et gÃ©rants', 0, NULL, NULL, 1),
(894, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4164', '889', 'CrÃ©ances sur sociÃ©tÃ©s apparentÃ©es', 0, NULL, NULL, 1),
(895, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4166', '889', 'Emballages et matÃ©riel Ã  rendre', 0, NULL, NULL, 1),
(896, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4167', '889', 'Etat et Ã©tablissements publics', 0, NULL, NULL, 1),
(897, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '41670', '896', 'Subsides Ã  recevoir', 0, NULL, NULL, 1),
(898, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '41671', '896', 'Autres crÃ©ances', 0, NULL, NULL, 1),
(899, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4168', '889', 'Rabais, ristournes et remises Ã  obtenir et autres avoirs non encore reÃ§us', 0, NULL, NULL, 1),
(900, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '417', '875', 'CrÃ©ances douteuses', 0, NULL, NULL, 1),
(901, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '418', '875', 'Cautionnements versÃ©s en numÃ©raires', 0, NULL, NULL, 1),
(902, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '419', '875', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(903, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '42', '1354', 'Dettes Ã  plus d''un an Ã©chÃ©ant dans l''annÃ©e', 0, NULL, NULL, 1),
(904, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '420', '903', 'Emprunts subordonnÃ©s', 0, NULL, NULL, 1),
(905, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4200', '904', 'Convertibles', 0, NULL, NULL, 1),
(906, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4201', '904', 'Non convertibles', 0, NULL, NULL, 1),
(907, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '421', '903', 'Emprunts obligataires non subordonnÃ©s', 0, NULL, NULL, 1),
(908, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4210', '907', 'Convertibles', 0, NULL, NULL, 1),
(909, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4211', '907', 'Non convertibles', 0, NULL, NULL, 1),
(910, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '422', '903', 'Dettes de location-financement et assimilÃ©es', 0, NULL, NULL, 1),
(911, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4220', '910', 'Financement de biens immobiliers', 0, NULL, NULL, 1),
(912, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4221', '910', 'Financement de biens mobiliers', 0, NULL, NULL, 1),
(913, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '423', '903', 'Etablissements de crÃ©dit', 0, NULL, NULL, 1),
(914, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4230', '913', 'Dettes en compte', 0, NULL, NULL, 1),
(915, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4231', '913', 'Promesses', 0, NULL, NULL, 1),
(916, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4232', '913', 'CrÃ©dits d''acceptation', 0, NULL, NULL, 1),
(917, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '424', '903', 'Autres emprunts', 0, NULL, NULL, 1),
(918, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '425', '903', 'Dettes commerciales', 0, NULL, NULL, 1),
(919, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4250', '918', 'Fournisseurs', 0, NULL, NULL, 1),
(920, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4251', '918', 'Effets Ã  payer', 0, NULL, NULL, 1),
(921, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '426', '903', 'Cautionnements reÃ§us en numÃ©raires', 0, NULL, NULL, 1),
(922, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '429', '903', 'Dettes diverses', 0, NULL, NULL, 1),
(923, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4290', '922', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(924, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4291', '922', 'Entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(925, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4292', '922', 'Administrateurs, gÃ©rants, associÃ©s', 0, NULL, NULL, 1),
(926, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4299', '922', 'Autres dettes', 0, NULL, NULL, 1),
(927, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '43', '1354', 'Dettes financiÃ¨res', 0, NULL, NULL, 1),
(928, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '430', '927', 'Etablissements de crÃ©dit. Emprunts en compte Ã  terme fixe', 0, NULL, NULL, 1),
(929, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '431', '927', 'Etablissements de crÃ©dit. Promesses', 0, NULL, NULL, 1),
(930, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '432', '927', 'Etablissements de crÃ©dit. CrÃ©dits d''acceptation', 0, NULL, NULL, 1),
(931, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '433', '927', 'Etablissements de crÃ©dit. Dettes en compte courant', 0, NULL, NULL, 1),
(932, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '439', '927', 'Autres emprunts', 0, NULL, NULL, 1),
(933, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44', '1354', 'Dettes commerciales', 0, NULL, NULL, 1),
(934, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '440', '933', 'Fournisseurs', 0, NULL, NULL, 1),
(935, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4400', '934', 'Entreprises apparentÃ©es', 0, NULL, NULL, 1),
(936, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44000', '935', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(937, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44001', '935', 'Entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(938, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4401', '934', 'Fournisseurs ordinaires', 0, NULL, NULL, 1),
(939, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44010', '938', 'Fournisseurs belges', 0, NULL, NULL, 1),
(940, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44011', '938', 'Fournisseurs CEE', 0, NULL, NULL, 1),
(941, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44012', '938', 'Fournisseurs importation', 0, NULL, NULL, 1),
(942, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4402', '934', 'Dettes envers les coparticipants (associations momentanÃ©es)', 0, NULL, NULL, 1),
(943, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4403', '934', 'Fournisseurs - retenues de garanties', 0, NULL, NULL, 1),
(944, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '441', '933', 'Effets Ã  payer', 0, NULL, NULL, 1),
(945, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4410', '944', 'Entreprises apparentÃ©es', 0, NULL, NULL, 1),
(946, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44100', '945', 'Entreprises liÃ©es', 0, NULL, NULL, 1),
(947, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44101', '945', 'Entreprises avec lesquelles il existe un lien de participation', 0, NULL, NULL, 1),
(948, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4411', '944', 'Fournisseurs ordinaires', 0, NULL, NULL, 1),
(949, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44110', '948', 'Fournisseurs belges', 0, NULL, NULL, 1),
(950, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44111', '948', 'Fournisseurs CEE', 0, NULL, NULL, 1),
(951, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '44112', '948', 'Fournisseurs importation', 0, NULL, NULL, 1),
(952, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '444', '933', 'Factures Ã  recevoir', 0, NULL, NULL, 1),
(953, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '446', '933', 'Acomptes reÃ§us', 0, NULL, NULL, 1),
(954, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '448', '933', 'Compensations fournisseurs', 0, NULL, NULL, 1),
(955, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45', '1354', 'Dettes fiscales, salariales et sociales', 0, NULL, NULL, 1),
(956, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '450', '955', 'Dettes fiscales estimÃ©es', 0, NULL, NULL, 1),
(957, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4501', '956', 'ImpÃ´ts sur le rÃ©sultat', 0, NULL, NULL, 1),
(958, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4505', '956', 'Autres impÃ´ts en Belgique', 0, NULL, NULL, 1),
(959, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4508', '956', 'ImpÃ´ts Ã  l''Ã©tranger', 0, NULL, NULL, 1),
(960, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '451', '955', 'T.V.A. Ã  payer', 0, NULL, NULL, 1),
(961, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4510', '960', 'T.V.A. due', 0, NULL, NULL, 1),
(962, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4511', '960', 'T.V.A. dÃ©ductible', 0, NULL, NULL, 1),
(963, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4512', '960', 'Compte courant administration T.V.A.', 0, NULL, NULL, 1),
(964, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4518', '960', 'Taxe d''Ã©galisation due', 0, NULL, NULL, 1),
(965, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '452', '955', 'ImpÃ´ts et taxes Ã  payer', 0, NULL, NULL, 1),
(966, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4520', '965', 'Autres impÃ´ts sur le rÃ©sultat', 0, NULL, NULL, 1),
(967, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4525', '965', 'Autres impÃ´ts et taxes en Belgique', 0, NULL, NULL, 1),
(968, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45250', '967', 'PrÃ©compte immobilier', 0, NULL, NULL, 1),
(969, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45251', '967', 'ImpÃ´ts communaux Ã  payer', 0, NULL, NULL, 1),
(970, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45252', '967', 'ImpÃ´ts provinciaux Ã  payer', 0, NULL, NULL, 1),
(971, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45253', '967', 'Autres impÃ´ts et taxes Ã  payer', 0, NULL, NULL, 1),
(972, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4528', '965', 'ImpÃ´ts et taxes Ã  l''Ã©tranger', 0, NULL, NULL, 1),
(973, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '453', '955', 'PrÃ©comptes retenus', 0, NULL, NULL, 1),
(974, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4530', '973', 'PrÃ©compte professionnel retenu sur rÃ©munÃ©rations', 0, NULL, NULL, 1),
(975, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4531', '973', 'PrÃ©compte professionnel retenu sur tantiÃ¨mes', 0, NULL, NULL, 1),
(976, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4532', '973', 'PrÃ©compte mobilier retenu sur dividendes attribuÃ©s', 0, NULL, NULL, 1),
(977, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4533', '973', 'PrÃ©compte mobilier retenu sur intÃ©rÃªts payÃ©s', 0, NULL, NULL, 1),
(978, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4538', '973', 'Autres prÃ©comptes retenus', 0, NULL, NULL, 1),
(979, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '454', '955', 'Office National de la SÃ©curitÃ© Sociale', 0, NULL, NULL, 1),
(980, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4540', '979', 'ArriÃ©rÃ©s', 0, NULL, NULL, 1),
(981, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4541', '979', '1er trimestre', 0, NULL, NULL, 1),
(982, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4542', '979', '2Ã¨me trimestre', 0, NULL, NULL, 1),
(983, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4543', '979', '3Ã¨me trimestre', 0, NULL, NULL, 1),
(984, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4544', '979', '4Ã¨me trimestre', 0, NULL, NULL, 1),
(985, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '455', '955', 'RÃ©munÃ©rations', 0, NULL, NULL, 1),
(986, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4550', '985', 'Administrateurs,  gÃ©rants et commissaires (non rÃ©viseurs)', 0, NULL, NULL, 1),
(987, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4551', '985', 'Direction', 0, NULL, NULL, 1),
(988, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4552', '985', 'EmployÃ©s', 0, NULL, NULL, 1),
(989, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4553', '985', 'Ouvriers', 0, NULL, NULL, 1),
(990, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '456', '955', 'PÃ©cules de vacances', 0, NULL, NULL, 1),
(991, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4560', '990', 'Direction', 0, NULL, NULL, 1),
(992, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4561', '990', 'EmployÃ©s', 0, NULL, NULL, 1),
(993, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4562', '990', 'Ouvriers', 0, NULL, NULL, 1),
(994, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '459', '955', 'Autres dettes sociales', 0, NULL, NULL, 1),
(995, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4590', '994', 'Provision pour gratifications de fin d''annÃ©e', 0, NULL, NULL, 1),
(996, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4591', '994', 'DÃ©parts de personnel', 0, NULL, NULL, 1),
(997, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4592', '994', 'Oppositions sur rÃ©munÃ©rations', 0, NULL, NULL, 1),
(998, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4593', '994', 'Assurances relatives au personnel', 0, NULL, NULL, 1),
(999, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45930', '998', 'Assurance loi', 0, NULL, NULL, 1),
(1000, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45931', '998', 'Assurance salaire garanti', 0, NULL, NULL, 1),
(1001, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45932', '998', 'Assurance groupe', 0, NULL, NULL, 1),
(1002, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '45933', '998', 'Assurances individuelles', 0, NULL, NULL, 1),
(1003, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4594', '994', 'Caisse d''assurances sociales pour travailleurs indÃ©pendants', 0, NULL, NULL, 1),
(1004, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4597', '994', 'Dettes et provisions sociales diverses', 0, NULL, NULL, 1),
(1005, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '46', '1354', 'Acomptes reÃ§us sur commande', 0, NULL, NULL, 1),
(1006, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '47', '1354', 'Dettes dÃ©coulant de l''affectation des rÃ©sultats', 0, NULL, NULL, 1),
(1007, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '470', '1006', 'Dividendes et tantiÃ¨mes d''exercices antÃ©rieurs', 0, NULL, NULL, 1),
(1008, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '471', '1006', 'Dividendes de l''exercice', 0, NULL, NULL, 1),
(1009, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '472', '1006', 'TantiÃ¨mes de l''exercice', 0, NULL, NULL, 1),
(1010, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '473', '1006', 'Autres allocataires', 0, NULL, NULL, 1),
(1011, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '48', '4', 'Dettes diverses', 0, NULL, NULL, 1),
(1012, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '480', '1011', 'Obligations et coupons Ã©chus', 0, NULL, NULL, 1),
(1013, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '481', '1011', 'Actionnaires - capital Ã  rembourser', 0, NULL, NULL, 1),
(1014, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '482', '1011', 'Participation du personnel Ã  payer', 0, NULL, NULL, 1),
(1015, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '483', '1011', 'Acomptes reÃ§us d''autres tiers Ã  moins d''un an', 0, NULL, NULL, 1),
(1016, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '486', '1011', 'Emballages et matÃ©riel consignÃ©s', 0, NULL, NULL, 1),
(1017, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '488', '1011', 'Cautionnements reÃ§us en numÃ©raires', 0, NULL, NULL, 1),
(1018, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '489', '1011', 'Autres dettes diverses', 0, NULL, NULL, 1),
(1019, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '49', '1354', 'Comptes de rÃ©gularisation et compte d''attente', 0, NULL, NULL, 1),
(1020, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '490', '1019', 'Charges Ã  reporter (Ã  subdiviser par catÃ©gorie de charges)', 0, NULL, NULL, 1),
(1021, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '491', '1019', 'Produits acquis', 0, NULL, NULL, 1),
(1022, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4910', '1021', 'Produits d''exploitation', 0, NULL, NULL, 1),
(1023, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '49100', '1022', 'Ristournes et rabais Ã  obtenir', 0, NULL, NULL, 1),
(1024, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '49101', '1022', 'Commissions Ã  obtenir', 0, NULL, NULL, 1),
(1025, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '49102', '1022', 'Autres produits d''exploitation (redevances par exemple)', 0, NULL, NULL, 1),
(1026, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4911', '1021', 'Produits financiers', 0, NULL, NULL, 1),
(1027, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '49110', '1026', 'IntÃ©rÃªts courus et non Ã©chus sur prÃªts et dÃ©bits', 0, NULL, NULL, 1),
(1028, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '49111', '1026', 'Autres produits financiers', 0, NULL, NULL, 1),
(1029, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '492', '1019', 'Charges Ã  imputer (Ã  subdiviser par catÃ©gorie de charges)', 0, NULL, NULL, 1),
(1030, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '493', '1019', 'Produits Ã  reporter', 0, NULL, NULL, 1),
(1031, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4930', '1030', 'Produits d''exploitation Ã  reporter', 0, NULL, NULL, 1),
(1032, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4931', '1030', 'Produits financiers Ã  reporter', 0, NULL, NULL, 1),
(1033, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '499', '1019', 'Comptes d''attente', 0, NULL, NULL, 1),
(1034, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4990', '1033', 'Compte d''attente', 0, NULL, NULL, 1),
(1035, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4991', '1033', 'Compte de rÃ©partition pÃ©riodique des charges', 0, NULL, NULL, 1),
(1036, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4999', '1033', 'Transferts d''exercice', 0, NULL, NULL, 1),
(1037, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '50', '1355', 'Actions propres', 0, NULL, NULL, 1),
(1038, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '51', '1355', 'Actions et parts', 0, NULL, NULL, 1),
(1039, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '510', '1038', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(1040, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '511', '1038', 'Montants non appelÃ©s', 0, NULL, NULL, 1),
(1041, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '519', '1038', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(1042, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '52', '1355', 'Titres Ã  revenus fixes', 0, NULL, NULL, 1),
(1043, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '520', '1042', 'Valeur d''acquisition', 0, NULL, NULL, 1),
(1044, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '529', '1042', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(1045, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '53', '1355', 'DÃ©pots Ã  terme', 0, NULL, NULL, 1),
(1046, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '530', '1045', 'De plus d''un an', 0, NULL, NULL, 1),
(1047, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '531', '1045', 'De plus d''un mois et Ã  un an au plus', 0, NULL, NULL, 1),
(1048, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '532', '1045', 'd''un mois au plus', 0, NULL, NULL, 1),
(1049, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '539', '1045', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(1050, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '54', '1355', 'Valeurs Ã©chues Ã  l''encaissement', 0, NULL, NULL, 1),
(1051, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '540', '1050', 'ChÃ¨ques Ã  encaisser', 0, NULL, NULL, 1),
(1052, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '541', '1050', 'Coupons Ã  encaisser', 0, NULL, NULL, 1),
(1053, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '55', '1355', 'Etablissements de crÃ©dit - Comptes ouverts auprÃ¨s des divers Ã©tablissements.', 0, NULL, NULL, 1);
INSERT INTO `llx_accounting_account` (`rowid`, `entity`, `datec`, `tms`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `fk_accounting_category`, `fk_user_author`, `fk_user_modif`, `active`) VALUES
(1054, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '550', '1053', 'Comptes courants', 0, NULL, NULL, 1),
(1055, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '551', '1053', 'ChÃ¨ques Ã©mis', 0, NULL, NULL, 1),
(1056, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '559', '1053', 'RÃ©ductions de valeur actÃ©es', 0, NULL, NULL, 1),
(1057, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '56', '1355', 'Office des chÃ¨ques postaux', 0, NULL, NULL, 1),
(1058, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '560', '1057', 'Compte courant', 0, NULL, NULL, 1),
(1059, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '561', '1057', 'ChÃ¨ques Ã©mis', 0, NULL, NULL, 1),
(1060, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '57', '1355', 'Caisses', 0, NULL, NULL, 1),
(1061, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '570', '1060', 'Ã  577 Caisses - espÃ¨ces ( 0 - centrale ; 7 - succursales et agences)', 0, NULL, NULL, 1),
(1062, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '578', '1060', 'Caisses - timbres ( 0 - fiscaux ; 1 - postaux)', 0, NULL, NULL, 1),
(1063, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '58', '1355', 'Virements internes', 0, NULL, NULL, 1),
(1064, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '60', '1356', 'Approvisionnements et marchandises', 0, NULL, NULL, 1),
(1065, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '600', '1064', 'Achats de matiÃ¨res premiÃ¨res', 0, NULL, NULL, 1),
(1066, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '601', '1064', 'Achats de fournitures', 0, NULL, NULL, 1),
(1067, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '602', '1064', 'Achats de services, travaux et Ã©tudes', 0, NULL, NULL, 1),
(1068, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '603', '1064', 'Sous-traitances gÃ©nÃ©rales', 0, NULL, NULL, 1),
(1069, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '604', '1064', 'Achats de marchandises', 0, NULL, NULL, 1),
(1070, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '605', '1064', 'Achats d''immeubles destinÃ©s Ã  la revente', 0, NULL, NULL, 1),
(1071, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '608', '1064', 'Remises , ristournes et rabais obtenus sur achats', 0, NULL, NULL, 1),
(1072, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '609', '1064', 'Variations de stocks', 0, NULL, NULL, 1),
(1073, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6090', '1072', 'De matiÃ¨res premiÃ¨res', 0, NULL, NULL, 1),
(1074, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6091', '1072', 'De fournitures', 0, NULL, NULL, 1),
(1075, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6094', '1072', 'De marchandises', 0, NULL, NULL, 1),
(1076, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6095', '1072', 'd''immeubles destinÃ©s Ã  la vente', 0, NULL, NULL, 1),
(1077, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61', '1356', 'Services et biens divers', 0, NULL, NULL, 1),
(1078, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '610', '1077', 'Loyers et charges locatives', 0, NULL, NULL, 1),
(1079, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6100', '1078', 'Loyers divers', 0, NULL, NULL, 1),
(1080, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6101', '1078', 'Charges locatives (assurances, frais de confort,etc)', 0, NULL, NULL, 1),
(1081, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '611', '1077', 'Entretien et rÃ©paration (fournitures et prestations)', 0, NULL, NULL, 1),
(1082, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '612', '1077', 'Fournitures faites Ã  l''entreprise', 0, NULL, NULL, 1),
(1083, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6120', '1082', 'Eau, gaz, Ã©lectricitÃ©, vapeur', 0, NULL, NULL, 1),
(1084, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61200', '1083', 'Eau', 0, NULL, NULL, 1),
(1085, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61201', '1083', 'Gaz', 0, NULL, NULL, 1),
(1086, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61202', '1083', 'ElectricitÃ©', 0, NULL, NULL, 1),
(1087, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61203', '1083', 'Vapeur', 0, NULL, NULL, 1),
(1088, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6121', '1082', 'TÃ©lÃ©phone, tÃ©lÃ©grammes, tÃ©lex, tÃ©lÃ©fax, frais postaux', 0, NULL, NULL, 1),
(1089, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61210', '1088', 'TÃ©lÃ©phone', 0, NULL, NULL, 1),
(1090, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61211', '1088', 'TÃ©lÃ©grammes', 0, NULL, NULL, 1),
(1091, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61212', '1088', 'TÃ©lex et tÃ©lÃ©fax', 0, NULL, NULL, 1),
(1092, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61213', '1088', 'Frais postaux', 0, NULL, NULL, 1),
(1093, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6122', '1082', 'Livres, bibliothÃ¨que', 0, NULL, NULL, 1),
(1094, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6123', '1082', 'ImprimÃ©s et fournitures de bureau (si non comptabilisÃ© au 601)', 0, NULL, NULL, 1),
(1095, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '613', '1077', 'RÃ©tributions de tiers', 0, NULL, NULL, 1),
(1096, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6130', '1095', 'Redevances et royalties', 0, NULL, NULL, 1),
(1097, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61300', '1096', 'Redevances pour brevets, licences, marques et accessoires', 0, NULL, NULL, 1),
(1098, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61301', '1096', 'Autres redevances (procÃ©dÃ©s de fabrication)', 0, NULL, NULL, 1),
(1099, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6131', '1095', 'Assurances non relatives au personnel', 0, NULL, NULL, 1),
(1100, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61310', '1099', 'Assurance incendie', 0, NULL, NULL, 1),
(1101, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61311', '1099', 'Assurance vol', 0, NULL, NULL, 1),
(1102, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61312', '1099', 'Assurance autos', 0, NULL, NULL, 1),
(1103, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61313', '1099', 'Assurance crÃ©dit', 0, NULL, NULL, 1),
(1104, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61314', '1099', 'Assurances frais gÃ©nÃ©raux', 0, NULL, NULL, 1),
(1105, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6132', '1095', 'Divers', 0, NULL, NULL, 1),
(1106, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61320', '1105', 'Commissions aux tiers', 0, NULL, NULL, 1),
(1107, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61321', '1105', 'Honoraires d''avocats, d''experts, etc', 0, NULL, NULL, 1),
(1108, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61322', '1105', 'Cotisations aux groupements professionnels', 0, NULL, NULL, 1),
(1109, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61323', '1105', 'Dons, libÃ©ralitÃ©s, etc', 0, NULL, NULL, 1),
(1110, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61324', '1105', 'Frais de contentieux', 0, NULL, NULL, 1),
(1111, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61325', '1105', 'Publications lÃ©gales', 0, NULL, NULL, 1),
(1112, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6133', '1095', 'Transports et dÃ©placements', 0, NULL, NULL, 1),
(1113, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61330', '1112', 'Transports de personnel', 0, NULL, NULL, 1),
(1114, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61331', '1112', 'Voyages, dÃ©placements et reprÃ©sentations', 0, NULL, NULL, 1),
(1115, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6134', '1095', 'Personnel intÃ©rimaire', 0, NULL, NULL, 1),
(1116, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '614', '1077', 'Annonces, publicitÃ©, propagande et documentation', 0, NULL, NULL, 1),
(1117, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6140', '1116', 'Annonces et insertions', 0, NULL, NULL, 1),
(1118, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6141', '1116', 'Catalogues et imprimÃ©s', 0, NULL, NULL, 1),
(1119, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6142', '1116', 'Echantillons', 0, NULL, NULL, 1),
(1120, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6143', '1116', 'Foires et expositions', 0, NULL, NULL, 1),
(1121, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6144', '1116', 'Primes', 0, NULL, NULL, 1),
(1122, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6145', '1116', 'Cadeaux Ã  la clientÃ¨le', 0, NULL, NULL, 1),
(1123, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6146', '1116', 'Missions et rÃ©ceptions', 0, NULL, NULL, 1),
(1124, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6147', '1116', 'Documentation', 0, NULL, NULL, 1),
(1125, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '615', '1077', 'Sous-traitants', 0, NULL, NULL, 1),
(1126, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6150', '1125', 'Sous-traitants pour activitÃ©s propres', 0, NULL, NULL, 1),
(1127, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6151', '1125', 'Sous-traitants d''associations momentanÃ©es (coparticipants)', 0, NULL, NULL, 1),
(1128, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6152', '1125', 'Quote-part bÃ©nÃ©ficiaire des coparticipants', 0, NULL, NULL, 1),
(1129, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '617', '1077', 'Personnel intÃ©rimaire et personnes mises Ã  la disposition de l''entreprise', 0, NULL, NULL, 1),
(1130, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '618', '1077', 'RÃ©munÃ©rations, primes pour assurances extralÃ©gales, pensions de retraite et de survie des administrateurs, gÃ©rants et associÃ©s actifs qui ne sont pas attribuÃ©es en vertu d''un contrat de travail', 0, NULL, NULL, 1),
(1131, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62', '1356', 'RÃ©munÃ©rations, charges sociales et pensions', 0, NULL, NULL, 1),
(1132, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '620', '1131', 'RÃ©munÃ©rations et avantages sociaux directs', 0, NULL, NULL, 1),
(1133, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6200', '1132', 'Administrateurs ou gÃ©rants', 0, NULL, NULL, 1),
(1134, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6201', '1132', 'Personnel de direction', 0, NULL, NULL, 1),
(1135, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6202', '1132', 'EmployÃ©s', 0, NULL, NULL, 1),
(1136, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6203', '1132', 'Ouvriers', 0, NULL, NULL, 1),
(1137, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6204', '1132', 'Autres membres du personnel', 0, NULL, NULL, 1),
(1138, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '621', '1131', 'Cotisations patronales d''assurances sociales', 0, NULL, NULL, 1),
(1139, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6210', '1138', 'Sur salaires', 0, NULL, NULL, 1),
(1140, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6211', '1138', 'Sur appointements et commissions', 0, NULL, NULL, 1),
(1141, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '622', '1131', 'Primes patronales pour assurances extralÃ©gales', 0, NULL, NULL, 1),
(1142, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '623', '1131', 'Autres frais de personnel', 0, NULL, NULL, 1),
(1143, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6230', '1142', 'Assurances du personnel', 0, NULL, NULL, 1),
(1144, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62300', '1143', 'Assurances loi, responsabilitÃ© civile, chemin du travail', 0, NULL, NULL, 1),
(1145, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62301', '1143', 'Assurance salaire garanti', 0, NULL, NULL, 1),
(1146, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62302', '1143', 'Assurances individuelles', 0, NULL, NULL, 1),
(1147, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6231', '1142', 'Charges sociales diverses', 0, NULL, NULL, 1),
(1148, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62310', '1147', 'Jours fÃ©riÃ©s payÃ©s', 0, NULL, NULL, 1),
(1149, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62311', '1147', 'Salaire hebdomadaire garanti', 0, NULL, NULL, 1),
(1150, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62312', '1147', 'Allocations familiales complÃ©mentaires', 0, NULL, NULL, 1),
(1151, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6232', '1142', 'Charges sociales des administrateurs, gÃ©rants et commissaires', 0, NULL, NULL, 1),
(1152, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62320', '1151', 'Allocations familiales complÃ©mentaires pour non salariÃ©s', 0, NULL, NULL, 1),
(1153, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62321', '1151', 'Lois sociales pour indÃ©pendants', 0, NULL, NULL, 1),
(1154, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62322', '1151', 'Divers', 0, NULL, NULL, 1),
(1155, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '624', '1131', 'Pensions de retraite et de survie', 0, NULL, NULL, 1),
(1156, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6240', '1155', 'Administrateurs et gÃ©rants', 0, NULL, NULL, 1),
(1157, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6241', '1155', 'Personnel', 0, NULL, NULL, 1),
(1158, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '625', '1131', 'Provision pour pÃ©cule de vacances', 0, NULL, NULL, 1),
(1159, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6250', '1158', 'Dotations', 0, NULL, NULL, 1),
(1160, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6251', '1158', 'Utilisations et reprises', 0, NULL, NULL, 1),
(1161, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '63', '1356', 'Amortissements, rÃ©ductions de valeur et provisions pour risques et charges', 0, NULL, NULL, 1),
(1162, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '630', '1161', 'Dotations aux amortissements et aux rÃ©ductions de valeur sur immobilisations', 0, NULL, NULL, 1),
(1163, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6300', '1162', 'Dotations aux amortissements sur frais d''Ã©tablissement', 0, NULL, NULL, 1),
(1164, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6301', '1162', 'Dotations aux amortissements sur immobilisations incorporelles', 0, NULL, NULL, 1),
(1165, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6302', '1162', 'Dotations aux amortissements sur immobilisations corporelles', 0, NULL, NULL, 1),
(1166, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6308', '1162', 'Dotations aux rÃ©ductions de valeur sur immobilisations incorporelles', 0, NULL, NULL, 1),
(1167, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6309', '1162', 'Dotations aux rÃ©ductions de valeur sur immobilisations corporelles', 0, NULL, NULL, 1),
(1168, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '631', '1161', 'RÃ©ductions de valeur sur stocks', 0, NULL, NULL, 1),
(1169, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6310', '1168', 'Dotations', 0, NULL, NULL, 1),
(1170, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6311', '1168', 'Reprises', 0, NULL, NULL, 1),
(1171, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '632', '1161', 'RÃ©ductions de valeur sur commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1172, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6320', '1171', 'Dotations', 0, NULL, NULL, 1),
(1173, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6321', '1171', 'Reprises', 0, NULL, NULL, 1),
(1174, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '633', '1161', 'RÃ©ductions de valeur sur crÃ©ances commerciales Ã  plus d''un an', 0, NULL, NULL, 1),
(1175, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6330', '1174', 'Dotations', 0, NULL, NULL, 1),
(1176, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6331', '1174', 'Reprises', 0, NULL, NULL, 1),
(1177, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '634', '1161', 'RÃ©ductions de valeur sur crÃ©ances commerciales Ã  un an au plus', 0, NULL, NULL, 1),
(1178, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6340', '1177', 'Dotations', 0, NULL, NULL, 1),
(1179, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6341', '1177', 'Reprises', 0, NULL, NULL, 1),
(1180, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '635', '1161', 'Provisions pour pensions et obligations similaires', 0, NULL, NULL, 1),
(1181, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6350', '1180', 'Dotations', 0, NULL, NULL, 1),
(1182, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6351', '1180', 'Utilisations et reprises', 0, NULL, NULL, 1),
(1183, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '636', '11613', 'Provisions pour grosses rÃ©parations et gros entretiens', 0, NULL, NULL, 1),
(1184, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6360', '1183', 'Dotations', 0, NULL, NULL, 1),
(1185, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6361', '1183', 'Utilisations et reprises', 0, NULL, NULL, 1),
(1186, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '637', '1161', 'Provisions pour autres risques et charges', 0, NULL, NULL, 1),
(1187, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6370', '1186', 'Dotations', 0, NULL, NULL, 1),
(1188, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6371', '1186', 'Utilisations et reprises', 0, NULL, NULL, 1),
(1189, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64', '1356', 'Autres charges d''exploitation', 0, NULL, NULL, 1),
(1190, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '640', '1189', 'Charges fiscales d''exploitation', 0, NULL, NULL, 1),
(1191, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6400', '1190', 'Taxes et impÃ´ts directs', 0, NULL, NULL, 1),
(1192, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64000', '1191', 'Taxes sur autos et camions', 0, NULL, NULL, 1),
(1193, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6401', '1190', 'Taxes et impÃ´ts indirects', 0, NULL, NULL, 1),
(1194, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64010', '1193', 'Timbres fiscaux pris en charge par la firme', 0, NULL, NULL, 1),
(1195, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64011', '1193', 'Droits d''enregistrement', 0, NULL, NULL, 1),
(1196, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64012', '1193', 'T.V.A. non dÃ©ductible', 0, NULL, NULL, 1),
(1197, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6402', '1190', 'ImpÃ´ts provinciaux et communaux', 0, NULL, NULL, 1),
(1198, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64020', '1197', 'Taxe sur la force motrice', 0, NULL, NULL, 1),
(1199, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64021', '1197', 'Taxe sur le personnel occupÃ©', 0, NULL, NULL, 1),
(1200, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6403', '1190', 'Taxes diverses', 0, NULL, NULL, 1),
(1201, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '641', '1189', 'Moins-values sur rÃ©alisations courantes d''immobilisations corporelles', 0, NULL, NULL, 1),
(1202, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '642', '1189', 'Moins-values sur rÃ©alisations de crÃ©ances commerciales', 0, NULL, NULL, 1),
(1203, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '643', '1189', 'Ã  648 Charges d''exploitations diverses', 0, NULL, NULL, 1),
(1204, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '649', '1189', 'Charges d''exploitation portÃ©es Ã  l''actif au titre de restructuration', 0, NULL, NULL, 1),
(1205, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '65', '1356', 'Charges financiÃ¨res', 0, NULL, NULL, 1),
(1206, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '650', '1205', 'Charges des dettes', 0, NULL, NULL, 1),
(1207, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6500', '1206', 'IntÃ©rÃªts, commissions et frais affÃ©rents aux dettes', 0, NULL, NULL, 1),
(1208, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6501', '1206', 'Amortissements des agios et frais d''Ã©mission d''emprunts', 0, NULL, NULL, 1),
(1209, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6502', '1206', 'Autres charges de dettes', 0, NULL, NULL, 1),
(1210, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6503', '1206', 'IntÃ©rÃªts intercalaires portÃ©s Ã  l''actif', 0, NULL, NULL, 1),
(1211, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '651', '1205', 'RÃ©ductions de valeur sur actifs circulants', 0, NULL, NULL, 1),
(1212, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6510', '1211', 'Dotations', 0, NULL, NULL, 1),
(1213, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6511', '1211', 'Reprises', 0, NULL, NULL, 1),
(1214, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '652', '1205', 'Moins-values sur rÃ©alisation d''actifs circulants', 0, NULL, NULL, 1),
(1215, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '653', '1205', 'Charges d''escompte de crÃ©ances', 0, NULL, NULL, 1),
(1216, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '654', '1205', 'DiffÃ©rences de change', 0, NULL, NULL, 1),
(1217, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '655', '1205', 'Ecarts de conversion des devises', 0, NULL, NULL, 1),
(1218, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '656', '1205', 'Frais de banques, de chÃ¨ques postaux', 0, NULL, NULL, 1),
(1219, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '657', '1205', 'Commissions sur ouvertures de crÃ©dit, cautions et avals', 0, NULL, NULL, 1),
(1220, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '658', '1205', 'Frais de vente des titres', 0, NULL, NULL, 1),
(1221, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '66', '1356', 'Charges exceptionnelles', 0, NULL, NULL, 1),
(1222, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '660', '1221', 'Amortissements et rÃ©ductions de valeur exceptionnels', 0, NULL, NULL, 1),
(1223, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6600', '1222', 'Sur frais d''Ã©tablissement', 0, NULL, NULL, 1),
(1224, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6601', '1222', 'Sur immobilisations incorporelles', 0, NULL, NULL, 1),
(1225, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6602', '1222', 'Sur immobilisations corporelles', 0, NULL, NULL, 1),
(1226, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '661', '1221', 'RÃ©ductions de valeur sur immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(1227, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '662', '1221', 'Provisions pour risques et charges exceptionnels', 0, NULL, NULL, 1),
(1228, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '663', '1221', 'Moins-values sur rÃ©alisation d''actifs immobilisÃ©s', 0, NULL, NULL, 1),
(1229, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6630', '1228', 'Sur immobilisations incorporelles', 0, NULL, NULL, 1),
(1230, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6631', '1228', 'Sur immobilisations corporelles', 0, NULL, NULL, 1),
(1231, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6632', '1228', 'Sur immobilisations dÃ©tenues en location-financement et droits similaires', 0, NULL, NULL, 1),
(1232, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6633', '1228', 'Sur immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(1233, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6634', '1228', 'Sur immeubles acquis ou construits en vue de la revente', 0, NULL, NULL, 1),
(1234, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '664', '1221', 'Ã  668 Autres charges exceptionnelles', 0, NULL, NULL, 1),
(1235, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '664', '1221', 'PÃ©nalitÃ©s et amendes diverses', 0, NULL, NULL, 1),
(1236, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '665', '1221', 'DiffÃ©rence de charge', 0, NULL, NULL, 1),
(1237, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '669', '1221', 'Charges exceptionnelles transfÃ©rÃ©es Ã  l''actif en frais de restructuration', 0, NULL, NULL, 1),
(1238, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '67', '1356', 'ImpÃ´ts sur le rÃ©sultat', 0, NULL, NULL, 1),
(1239, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '670', '1238', 'ImpÃ´ts belges sur le rÃ©sultat de l''exercice', 0, NULL, NULL, 1),
(1240, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6700', '1239', 'ImpÃ´ts et prÃ©comptes dus ou versÃ©s', 0, NULL, NULL, 1),
(1241, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6701', '1239', 'ExcÃ©dent de versements d''impÃ´ts et prÃ©comptes portÃ© Ã  l''actif', 0, NULL, NULL, 1),
(1242, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6702', '1239', 'Charges fiscales estimÃ©es', 0, NULL, NULL, 1),
(1243, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '671', '1238', 'ImpÃ´ts belges sur le rÃ©sultat d''exercices antÃ©rieurs', 0, NULL, NULL, 1),
(1244, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6710', '1243', 'SupplÃ©ments d''impÃ´ts dus ou versÃ©s', 0, NULL, NULL, 1),
(1245, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6711', '1243', 'SupplÃ©ments d''impÃ´ts estimÃ©s', 0, NULL, NULL, 1),
(1246, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6712', '1243', 'Provisions fiscales constituÃ©es', 0, NULL, NULL, 1),
(1247, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '672', '1238', 'ImpÃ´ts Ã©trangers sur le rÃ©sultat de l''exercice', 0, NULL, NULL, 1),
(1248, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '673', '1238', 'ImpÃ´ts Ã©trangers sur le rÃ©sultat d''exercices antÃ©rieurs', 0, NULL, NULL, 1),
(1249, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '68', '1356', 'Transferts aux rÃ©serves immunisÃ©es', 0, NULL, NULL, 1),
(1250, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '69', '1356', 'Affectation des rÃ©sultats', 0, NULL, NULL, 1),
(1251, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '690', '1250', 'Perte reportÃ©e de l''exercice prÃ©cÃ©dent', 0, NULL, NULL, 1),
(1252, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '691', '1250', 'Dotation Ã  la rÃ©serve lÃ©gale', 0, NULL, NULL, 1),
(1253, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '692', '1250', 'Dotation aux autres rÃ©serves', 0, NULL, NULL, 1),
(1254, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '693', '1250', 'BÃ©nÃ©fice Ã  reporter', 0, NULL, NULL, 1),
(1255, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '694', '1250', 'RÃ©munÃ©ration du capital', 0, NULL, NULL, 1),
(1256, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '695', '1250', 'Administrateurs ou gÃ©rants', 0, NULL, NULL, 1),
(1257, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '696', '1250', 'Autres allocataires', 0, NULL, NULL, 1),
(1258, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '70', '1357', 'Chiffre d''affaires', 0, NULL, NULL, 1),
(1260, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '700', '1258', 'Ventes de marchandises', 0, NULL, NULL, 1),
(1261, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7000', '1260', 'Ventes en Belgique', 0, NULL, NULL, 1),
(1262, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7001', '1260', 'Ventes dans les pays membres de la C.E.E.', 0, NULL, NULL, 1),
(1263, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7002', '1260', 'Ventes Ã  l''exportation', 0, NULL, NULL, 1),
(1264, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '701', '1258', 'Ventes de produits finis', 0, NULL, NULL, 1),
(1265, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7010', '1264', 'Ventes en Belgique', 0, NULL, NULL, 1),
(1266, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7011', '1264', 'Ventes dans les pays membres de la C.E.E.', 0, NULL, NULL, 1),
(1267, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7012', '1264', 'Ventes Ã  l''exportation', 0, NULL, NULL, 1),
(1268, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '702', '1258', 'Ventes de dÃ©chets et rebuts', 0, NULL, NULL, 1),
(1269, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7020', '1268', 'Ventes en Belgique', 0, NULL, NULL, 1),
(1270, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7021', '1268', 'Ventes dans les pays membres de la C.E.E.', 0, NULL, NULL, 1),
(1271, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7022', '1268', 'Ventes Ã  l''exportation', 0, NULL, NULL, 1),
(1272, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '703', '1258', 'Ventes d''emballages rÃ©cupÃ©rables', 0, NULL, NULL, 1),
(1273, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '704', '1258', 'Facturations des travaux en cours (associations momentanÃ©es)', 0, NULL, NULL, 1),
(1274, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '705', '1258', 'Prestations de services', 0, NULL, NULL, 1),
(1275, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7050', '1274', 'Prestations de services en Belgique', 0, NULL, NULL, 1),
(1276, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7051', '1274', 'Prestations de services dans les pays membres de la C.E.E.', 0, NULL, NULL, 1),
(1277, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7052', '1274', 'Prestations de services en vue de l''exportation', 0, NULL, NULL, 1),
(1278, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '706', '1258', 'PÃ©nalitÃ©s et dÃ©dits obtenus par l''entreprise', 0, NULL, NULL, 1),
(1279, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '708', '1258', 'Remises, ristournes et rabais accordÃ©s', 0, NULL, NULL, 1),
(1280, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7080', '1279', 'Sur ventes de marchandises', 0, NULL, NULL, 1),
(1281, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7081', '1279', 'Sur ventes de produits finis', 0, NULL, NULL, 1),
(1282, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7082', '1279', 'Sur ventes de dÃ©chets et rebuts', 0, NULL, NULL, 1),
(1283, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7083', '1279', 'Sur prestations de services', 0, NULL, NULL, 1),
(1284, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7084', '1279', 'Mali sur travaux facturÃ©s aux associations momentanÃ©es', 0, NULL, NULL, 1),
(1285, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '71', '1357', 'Variation des stocks et des commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1286, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '712', '1285', 'Des en cours de fabrication', 0, NULL, NULL, 1),
(1287, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '713', '1285', 'Des produits finis', 0, NULL, NULL, 1),
(1288, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '715', '1285', 'Des immeubles construits destinÃ©s Ã  la vente', 0, NULL, NULL, 1),
(1289, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '717', '1285', 'Des commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1290, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7170', '1289', 'Commandes en cours - CoÃ»t de revient', 0, NULL, NULL, 1),
(1291, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '71700', '1290', 'CoÃ»t des commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1292, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '71701', '1290', 'CoÃ»t des travaux en cours des associations momentanÃ©es', 0, NULL, NULL, 1),
(1293, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7171', '1289', 'BÃ©nÃ©fices portÃ©s en compte sur commandes en cours', 0, NULL, NULL, 1),
(1294, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '71710', '1293', 'Sur commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1295, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '71711', '1293', 'Sur travaux en cours des associations momentanÃ©es', 0, NULL, NULL, 1),
(1296, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '72', '1357', 'Production immobilisÃ©e', 0, NULL, NULL, 1),
(1297, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '720', '1296', 'En frais d''Ã©tablissement', 0, NULL, NULL, 1),
(1298, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '721', '1296', 'En immobilisations incorporelles', 0, NULL, NULL, 1),
(1299, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '722', '1296', 'En immobilisations corporelles', 0, NULL, NULL, 1),
(1300, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '723', '1296', 'En immobilisations en cours', 0, NULL, NULL, 1),
(1301, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '74', '1357', 'Autres produits d''exploitation', 0, NULL, NULL, 1),
(1302, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '740', '1301', 'Subsides d''exploitation et montants compensatoires', 0, NULL, NULL, 1),
(1303, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '741', '1301', 'Plus-values sur rÃ©alisations courantes d''immobilisations corporelles', 0, NULL, NULL, 1),
(1304, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '742', '1301', 'Plus-values sur rÃ©alisations de crÃ©ances commerciales', 0, NULL, NULL, 1),
(1305, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '743', '1301', 'Ã  749 Produits d''exploitation divers', 0, NULL, NULL, 1),
(1306, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '743', '1301', 'Produits de services exploitÃ©s dans l''intÃ©rÃªt du personnel', 0, NULL, NULL, 1),
(1307, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '744', '1301', 'Commissions et courtages', 0, NULL, NULL, 1),
(1308, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '745', '1301', 'Redevances pour brevets et licences', 0, NULL, NULL, 1),
(1309, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '746', '1301', 'Prestations de services (transports, Ã©tudes, etc)', 0, NULL, NULL, 1),
(1310, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '747', '1301', 'Revenus des immeubles affectÃ©s aux activitÃ©s non professionnelles', 0, NULL, NULL, 1),
(1311, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '748', '1301', 'Locations diverses Ã  caractÃ¨re professionnel', 0, NULL, NULL, 1),
(1312, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '749', '1301', 'Produits divers', 0, NULL, NULL, 1),
(1313, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7490', '1312', 'Bonis sur reprises d''emballages consignÃ©s', 0, NULL, NULL, 1),
(1314, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7491', '1312', 'Bonis sur travaux en associations momentanÃ©es', 0, NULL, NULL, 1),
(1315, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '75', '1357', 'Produits financiers', 0, NULL, NULL, 1),
(1316, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '750', '1315', 'Produits des immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(1317, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7500', '1316', 'Revenus des actions', 0, NULL, NULL, 1),
(1318, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7501', '1316', 'Revenus des obligations', 0, NULL, NULL, 1),
(1319, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7502', '1316', 'Revenus des crÃ©ances Ã  plus d''un an', 0, NULL, NULL, 1),
(1320, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '751', '1315', 'Produits des actifs circulants', 0, NULL, NULL, 1),
(1321, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '752', '1315', 'Plus-values sur rÃ©alisations d''actifs circulants', 0, NULL, NULL, 1),
(1322, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '753', '1315', 'Subsides en capital et en intÃ©rÃªts', 0, NULL, NULL, 1),
(1323, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '754', '1315', 'DiffÃ©rences de change', 0, NULL, NULL, 1),
(1324, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '755', '1315', 'Ecarts de conversion des devises', 0, NULL, NULL, 1),
(1325, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '756', '1315', 'Ã  759 Produits financiers divers', 0, NULL, NULL, 1),
(1326, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '756', '1315', 'Produits des autres crÃ©ances', 0, NULL, NULL, 1),
(1327, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '757', '1315', 'Escomptes obtenus', 0, NULL, NULL, 1),
(1328, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '76', '1357', 'Produits exceptionnels', 0, NULL, NULL, 1),
(1329, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '760', '1328', 'Reprises d''amortissements et de rÃ©ductions de valeur', 0, NULL, NULL, 1),
(1330, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7600', '1329', 'Sur immobilisations incorporelles', 0, NULL, NULL, 1),
(1331, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7601', '1329', 'Sur immobilisations corporelles', 0, NULL, NULL, 1),
(1332, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '761', '1328', 'Reprises de rÃ©ductions de valeur sur immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(1333, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '762', '1328', 'Reprises de provisions pour risques et charges exceptionnelles', 0, NULL, NULL, 1),
(1334, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '763', '1328', 'Plus-values sur rÃ©alisation d''actifs immobilisÃ©s', 0, NULL, NULL, 1),
(1335, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7630', '1334', 'Sur immobilisations incorporelles', 0, NULL, NULL, 1),
(1336, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7631', '1334', 'Sur immobilisations corporelles', 0, NULL, NULL, 1),
(1337, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7632', '1334', 'Sur immobilisations financiÃ¨res', 0, NULL, NULL, 1),
(1338, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '764', '1328', 'Autres produits exceptionnels', 0, NULL, NULL, 1),
(1339, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '77', '1357', 'RÃ©gularisations d''impÃ´ts et reprises de provisions fiscales', 0, NULL, NULL, 1),
(1340, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '771', '1339', 'ImpÃ´ts belges sur le rÃ©sultat', 0, NULL, NULL, 1),
(1341, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7710', '1340', 'RÃ©gularisations d''impÃ´ts dus ou versÃ©s', 0, NULL, NULL, 1),
(1342, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7711', '1340', 'RÃ©gularisations d''impÃ´ts estimÃ©s', 0, NULL, NULL, 1),
(1343, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7712', '1340', 'Reprises de provisions fiscales', 0, NULL, NULL, 1),
(1344, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '773', '1339', 'ImpÃ´ts Ã©trangers sur le rÃ©sultat', 0, NULL, NULL, 1),
(1345, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '79', '1357', 'Affectation aux rÃ©sultats', 0, NULL, NULL, 1),
(1346, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '790', '1345', 'BÃ©nÃ©fice reportÃ© de l''exercice prÃ©cÃ©dent', 0, NULL, NULL, 1),
(1347, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '791', '1345', 'PrÃ©lÃ¨vement sur le capital et les primes d''Ã©mission', 0, NULL, NULL, 1),
(1348, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '792', '1345', 'PrÃ©lÃ¨vement sur les rÃ©serves', 0, NULL, NULL, 1),
(1349, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '793', '1345', 'Perte Ã  reporter', 0, NULL, NULL, 1),
(1350, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '794', '1345', 'Intervention d''associÃ©s (ou du propriÃ©taire) dans la perte', 0, NULL, NULL, 1),
(1351, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1', '0', 'Fonds propres, provisions pour risques et charges et dettes Ã  plus d''un an', 0, NULL, NULL, 1),
(1352, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'IMMO', 'XXXXXX', '2', '0', 'Frais d''Ã©tablissement. Actifs immobilisÃ©s et crÃ©ances Ã  plus d''un an', 0, NULL, NULL, 1),
(1353, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'STOCK', 'XXXXXX', '3', '0', 'Stock et commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1354, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'TIERS', 'XXXXXX', '4', '0', 'CrÃ©ances et dettes Ã  un an au plus', 0, NULL, NULL, 1),
(1355, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'FINAN', 'XXXXXX', '5', '0', 'Placement de trÃ©sorerie et de valeurs disponibles', 0, NULL, NULL, 1),
(1356, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6', '0', 'Charges', 0, NULL, NULL, 1),
(1357, 1, NULL, '2006-01-02 00:01:57', 'PCMN-BASE', 'PROD', 'XXXXXX', '7', '0', 'Produits', 0, NULL, NULL, 1),
(1401, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1', '0', 'Fonds propres, provisions pour risques et charges et dettes Ã  plus d''un an', 0, NULL, NULL, 1),
(1402, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '2', '0', 'Frais d''Ã©tablissement. Actifs immobilisÃ©s et crÃ©ances Ã  plus d''un an', 0, NULL, NULL, 1),
(1403, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '3', '0', 'Stock et commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1404, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '4', '0', 'CrÃ©ances et dettes Ã  un an au plus', 0, NULL, NULL, 1),
(1405, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '5', '0', 'Placement de trÃ©sorerie et de valeurs disponibles', 0, NULL, NULL, 1),
(1406, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '6', '0', 'Charges', 0, NULL, NULL, 1),
(1407, 1, NULL, '2006-01-02 00:01:57', 'PCG99-ABREGE', 'PROD', 'XXXXXX', '7', '0', 'Produits', 0, NULL, NULL, 1),
(1501, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CAPIT', 'XXXXXX', '1', '0', 'Fonds propres, provisions pour risques et charges et dettes Ã  plus d''un an', 0, NULL, NULL, 1),
(1502, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'IMMO', 'XXXXXX', '2', '0', 'Frais d''Ã©tablissement. Actifs immobilisÃ©s et crÃ©ances Ã  plus d''un an', 0, NULL, NULL, 1),
(1503, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'STOCK', 'XXXXXX', '3', '0', 'Stock et commandes en cours d''exÃ©cution', 0, NULL, NULL, 1),
(1504, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'TIERS', 'XXXXXX', '4', '0', 'CrÃ©ances et dettes Ã  un an au plus', 0, NULL, NULL, 1),
(1505, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'FINAN', 'XXXXXX', '5', '0', 'Placement de trÃ©sorerie et de valeurs disponibles', 0, NULL, NULL, 1),
(1506, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'CHARGE', 'XXXXXX', '6', '0', 'Charges', 0, NULL, NULL, 1),
(1507, 1, NULL, '2006-01-02 00:01:57', 'PCG99-BASE', 'PROD', 'XXXXXX', '7', '0', 'Produits', 0, NULL, NULL, 1),
(4001, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1', '0', 'FinanciaciÃ³n bÃ¡sica', 0, NULL, NULL, 1),
(4002, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2', '0', 'Activo no corriente', 0, NULL, NULL, 1),
(4003, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '3', '0', 'Existencias', 0, NULL, NULL, 1),
(4004, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4', '0', 'Acreedores y deudores por operaciones comerciales', 0, NULL, NULL, 1),
(4005, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5', '0', 'Cuentas financieras', 0, NULL, NULL, 1),
(4006, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6', '0', 'Compras y gastos', 0, NULL, NULL, 1),
(4007, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7', '0', 'Ventas e ingresos', 0, NULL, NULL, 1),
(4008, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '10', '4001', 'CAPITAL', 0, NULL, NULL, 1),
(4009, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '100', '4008', 'Capital social', 0, NULL, NULL, 1),
(4010, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '101', '4008', 'Fondo social', 0, NULL, NULL, 1),
(4011, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'FINANCIACION', 'CAPITAL', '102', '4008', 'Capital', 0, NULL, NULL, 1),
(4012, 1, NULL, '2006-01-02 00:01:57', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '103', '4008', 'Socios por desembolsos no exigidos', 0, NULL, NULL, 1),
(4013, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1030', '4012', 'Socios por desembolsos no exigidos capital social', 0, NULL, NULL, 1),
(4014, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1034', '4012', 'Socios por desembolsos no exigidos capital pendiente de inscripciÃ³n', 0, NULL, NULL, 1),
(4015, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '104', '4008', 'Socios por aportaciones no dineradas pendientes', 0, NULL, NULL, 1),
(4016, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1040', '4015', 'Socios por aportaciones no dineradas pendientes capital social', 0, NULL, NULL, 1),
(4017, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1044', '4015', 'Socios por aportaciones no dineradas pendientes capital pendiente de inscripciÃ³n', 0, NULL, NULL, 1),
(4018, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '108', '4008', 'Acciones o participaciones propias en situaciones especiales', 0, NULL, NULL, 1),
(4019, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '109', '4008', 'Acciones o participaciones propias para reducciÃ³n de capital', 0, NULL, NULL, 1),
(4020, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '11', '4001', 'Reservas y otros instrumentos de patrimonio', 0, NULL, NULL, 1),
(4021, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '110', '4020', 'Prima de emisiÃ³n o asunciÃ³n', 0, NULL, NULL, 1),
(4022, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '111', '4020', 'Otros instrumentos de patrimonio neto', 0, NULL, NULL, 1),
(4023, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1110', '4022', 'Patrimonio neto por emisiÃ³n de instrumentos financieros compuestos', 0, NULL, NULL, 1),
(4024, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1111', '4022', 'Resto de instrumentos de patrimoio neto', 0, NULL, NULL, 1),
(4025, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '112', '4020', 'Reserva legal', 0, NULL, NULL, 1),
(4026, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '113', '4020', 'Reservas voluntarias', 0, NULL, NULL, 1),
(4027, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '114', '4020', 'Reservas especiales', 0, NULL, NULL, 1);
INSERT INTO `llx_accounting_account` (`rowid`, `entity`, `datec`, `tms`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `fk_accounting_category`, `fk_user_author`, `fk_user_modif`, `active`) VALUES
(4028, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1140', '4027', 'Reservas para acciones o participaciones de la sociedad dominante', 0, NULL, NULL, 1),
(4029, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1141', '4027', 'Reservas estatutarias', 0, NULL, NULL, 1),
(4030, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1142', '4027', 'Reservas por capital amortizado', 0, NULL, NULL, 1),
(4031, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1143', '4027', 'Reservas por fondo de comercio', 0, NULL, NULL, 1),
(4032, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1144', '4028', 'Reservas por acciones propias aceptadas en garantÃ­a', 0, NULL, NULL, 1),
(4033, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '115', '4020', 'Reservas por pÃ©rdidas y ganancias actuariales y otros ajustes', 0, NULL, NULL, 1),
(4034, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '118', '4020', 'Aportaciones de socios o propietarios', 0, NULL, NULL, 1),
(4035, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '119', '4020', 'Diferencias por ajuste del capital a euros', 0, NULL, NULL, 1),
(4036, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '12', '4001', 'Resultados pendientes de aplicaciÃ³n', 0, NULL, NULL, 1),
(4037, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '120', '4036', 'Remanente', 0, NULL, NULL, 1),
(4038, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '121', '4036', 'Resultados negativos de ejercicios anteriores', 0, NULL, NULL, 1),
(4039, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '129', '4036', 'Resultado del ejercicio', 0, NULL, NULL, 1),
(4040, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '13', '4001', 'Subvenciones, donaciones y ajustes por cambio de valor', 0, NULL, NULL, 1),
(4041, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '130', '4040', 'Subvenciones oficiales de capital', 0, NULL, NULL, 1),
(4042, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '131', '4040', 'Donaciones y legados de capital', 0, NULL, NULL, 1),
(4043, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '132', '4040', 'Otras subvenciones, donaciones y legados', 0, NULL, NULL, 1),
(4044, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '133', '4040', 'Ajustes por valoraciÃ³n en activos financieros disponibles para la venta', 0, NULL, NULL, 1),
(4045, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '134', '4040', 'Operaciones de cobertura', 0, NULL, NULL, 1),
(4046, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1340', '4045', 'Cobertura de flujos de efectivo', 0, NULL, NULL, 1),
(4047, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1341', '4045', 'Cobertura de una inversiÃ³n neta en un negocio extranjero', 0, NULL, NULL, 1),
(4048, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '135', '4040', 'Diferencias de conversiÃ³n', 0, NULL, NULL, 1),
(4049, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '136', '4040', 'Ajustes por valoraciÃ³n en activos no corrientes y grupos enajenables de elementos mantenidos para la venta', 0, NULL, NULL, 1),
(4050, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '137', '4040', 'Ingresos fiscales a distribuir en varios ejercicios', 0, NULL, NULL, 1),
(4051, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1370', '4050', 'Ingresos fiscales por diferencias permanentes a distribuir en varios ejercicios', 0, NULL, NULL, 1),
(4052, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1371', '4050', 'Ingresos fiscales por deducciones y bonificaciones a distribuir en varios ejercicios', 0, NULL, NULL, 1),
(4053, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '14', '4001', 'Provisiones', 0, NULL, NULL, 1),
(4054, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '141', '4053', 'ProvisiÃ³n para impuestos', 0, NULL, NULL, 1),
(4055, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '142', '4053', 'ProvisiÃ³n para otras responsabilidades', 0, NULL, NULL, 1),
(4056, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '143', '4053', 'ProvisiÃ³n por desmantelamiento, retiro o rehabilitaciÃ³n del inmovilizado', 0, NULL, NULL, 1),
(4057, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '145', '4053', 'ProvisiÃ³n para actuaciones medioambientales', 0, NULL, NULL, 1),
(4058, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '15', '4001', 'Deudas a largo plazo con caracterÃ­sticas especiales', 0, NULL, NULL, 1),
(4059, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '150', '4058', 'Acciones o participaciones a largo plazo consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4060, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '153', '4058', 'Desembolsos no exigidos por acciones o participaciones consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4061, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1533', '4060', 'Desembolsos no exigidos empresas del grupo', 0, NULL, NULL, 1),
(4062, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1534', '4060', 'Desembolsos no exigidos empresas asociadas', 0, NULL, NULL, 1),
(4063, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1535', '4060', 'Desembolsos no exigidos otras partes vinculadas', 0, NULL, NULL, 1),
(4064, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1536', '4060', 'Otros desembolsos no exigidos', 0, NULL, NULL, 1),
(4065, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '154', '4058', 'Aportaciones no dinerarias pendientes por acciones o participaciones consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4066, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1543', '4065', 'Aportaciones no dinerarias pendientes empresas del grupo', 0, NULL, NULL, 1),
(4067, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1544', '4065', 'Aportaciones no dinerarias pendientes empresas asociadas', 0, NULL, NULL, 1),
(4068, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1545', '4065', 'Aportaciones no dinerarias pendientes otras partes vinculadas', 0, NULL, NULL, 1),
(4069, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1546', '4065', 'Otras aportaciones no dinerarias pendientes', 0, NULL, NULL, 1),
(4070, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '16', '4001', 'Deudas a largo plazo con partes vinculadas', 0, NULL, NULL, 1),
(4071, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '160', '4070', 'Deudas a largo plazo con entidades de crÃ©dito vinculadas', 0, NULL, NULL, 1),
(4072, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1603', '4071', 'Deudas a largo plazo con entidades de crÃ©dito empresas del grupo', 0, NULL, NULL, 1),
(4073, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1604', '4071', 'Deudas a largo plazo con entidades de crÃ©dito empresas asociadas', 0, NULL, NULL, 1),
(4074, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1605', '4071', 'Deudas a largo plazo con otras entidades de crÃ©dito vinculadas', 0, NULL, NULL, 1),
(4075, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '161', '4070', 'Proveedores de inmovilizado a largo plazo partes vinculadas', 0, NULL, NULL, 1),
(4076, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1613', '4075', 'Proveedores de inmovilizado a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4077, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1614', '4075', 'Proveedores de inmovilizado a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4078, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1615', '4075', 'Proveedores de inmovilizado a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4079, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '162', '4070', 'Acreedores por arrendamiento financiero a largo plazo partes vinculadas', 0, NULL, NULL, 1),
(4080, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1623', '4079', 'Acreedores por arrendamiento financiero a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4081, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1624', '4080', 'Acreedores por arrendamiento financiero a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4082, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1625', '4080', 'Acreedores por arrendamiento financiero a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4083, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '163', '4070', 'Otras deudas a largo plazo con partes vinculadas', 0, NULL, NULL, 1),
(4084, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1633', '4083', 'Otras deudas a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4085, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1634', '4083', 'Otras deudas a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4086, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '1635', '4083', 'Otras deudas a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4087, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '17', '4001', 'Deudas a largo plazo por prÃ©stamos recibidos empresitos y otros conceptos', 0, NULL, NULL, 1),
(4088, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '170', '4087', 'Deudas a largo plazo con entidades de crÃ©dito', 0, NULL, NULL, 1),
(4089, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '171', '4087', 'Deudas a largo plazo', 0, NULL, NULL, 1),
(4090, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '172', '4087', 'Deudas a largo plazo transformables en suvbenciones donaciones y legados', 0, NULL, NULL, 1),
(4091, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '173', '4087', 'Proveedores de inmovilizado a largo plazo', 0, NULL, NULL, 1),
(4092, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '174', '4087', 'Acreedores por arrendamiento financiero a largo plazo', 0, NULL, NULL, 1),
(4093, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '175', '4087', 'Efectos a pagar a largo plazo', 0, NULL, NULL, 1),
(4094, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '176', '4087', 'Pasivos por derivados financieros a largo plazo', 0, NULL, NULL, 1),
(4095, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '177', '4087', 'Obligaciones y bonos', 0, NULL, NULL, 1),
(4096, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '179', '4087', 'Deudas representadas en otros valores negociables', 0, NULL, NULL, 1),
(4097, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '18', '4001', 'Pasivos por fianzas garantias y otros conceptos a largo plazo', 0, NULL, NULL, 1),
(4098, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '180', '4097', 'Fianzas recibidas a largo plazo', 0, NULL, NULL, 1),
(4099, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '181', '4097', 'Anticipos recibidos por ventas o prestaciones de servicios a largo plazo', 0, NULL, NULL, 1),
(4100, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '185', '4097', 'Depositos recibidos a largo plazo', 0, NULL, NULL, 1),
(4101, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '19', '4001', 'Situaciones transitorias de financiaciÃ³n', 0, NULL, NULL, 1),
(4102, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '190', '4101', 'Acciones o participaciones emitidas', 0, NULL, NULL, 1),
(4103, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '192', '4101', 'Suscriptores de acciones', 0, NULL, NULL, 1),
(4104, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '194', '4101', 'Capital emitido pendiente de inscripciÃ³n', 0, NULL, NULL, 1),
(4105, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '195', '4101', 'Acciones o participaciones emitidas consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4106, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '197', '4101', 'Suscriptores de acciones consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4107, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'FINANCIACION', 'XXXXXX', '199', '4101', 'Acciones o participaciones emitidas consideradas como pasivos financieros pendientes de inscripciÃ³n', 0, NULL, NULL, 1),
(4108, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '20', '4002', 'Inmovilizaciones intangibles', 0, NULL, NULL, 1),
(4109, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '200', '4108', 'InvestigaciÃ³n', 0, NULL, NULL, 1),
(4110, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '201', '4108', 'Desarrollo', 0, NULL, NULL, 1),
(4111, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '202', '4108', 'Concesiones administrativas', 0, NULL, NULL, 1),
(4112, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '203', '4108', 'Propiedad industrial', 0, NULL, NULL, 1),
(4113, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '205', '4108', 'Derechos de transpaso', 0, NULL, NULL, 1),
(4114, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '206', '4108', 'Aplicaciones informÃ¡ticas', 0, NULL, NULL, 1),
(4115, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '209', '4108', 'Anticipos para inmovilizaciones intangibles', 0, NULL, NULL, 1),
(4116, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '21', '4002', 'Inmovilizaciones materiales', 0, NULL, NULL, 1),
(4117, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '210', '4116', 'Terrenos y bienes naturales', 0, NULL, NULL, 1),
(4118, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '211', '4116', 'Construcciones', 0, NULL, NULL, 1),
(4119, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '212', '4116', 'Instalaciones tÃ©cnicas', 0, NULL, NULL, 1),
(4120, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '213', '4116', 'Maquinaria', 0, NULL, NULL, 1),
(4121, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '214', '4116', 'Utillaje', 0, NULL, NULL, 1),
(4122, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '215', '4116', 'Otras instalaciones', 0, NULL, NULL, 1),
(4123, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '216', '4116', 'Mobiliario', 0, NULL, NULL, 1),
(4124, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '217', '4116', 'Equipos para procesos de informaciÃ³n', 0, NULL, NULL, 1),
(4125, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '218', '4116', 'Elementos de transporte', 0, NULL, NULL, 1),
(4126, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '219', '4116', 'Otro inmovilizado material', 0, NULL, NULL, 1),
(4127, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '22', '4002', 'Inversiones inmobiliarias', 0, NULL, NULL, 1),
(4128, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '220', '4127', 'Inversiones en terreons y bienes naturales', 0, NULL, NULL, 1),
(4129, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '221', '4127', 'Inversiones en construcciones', 0, NULL, NULL, 1),
(4130, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '23', '4002', 'Inmovilizaciones materiales en curso', 0, NULL, NULL, 1),
(4131, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '230', '4130', 'AdaptaciÃ³n de terrenos y bienes naturales', 0, NULL, NULL, 1),
(4132, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '231', '4130', 'Construcciones en curso', 0, NULL, NULL, 1),
(4133, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '232', '4130', 'Instalaciones tÃ©cnicas en montaje', 0, NULL, NULL, 1),
(4134, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '233', '4130', 'Maquinaria en montaje', 0, NULL, NULL, 1),
(4135, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '237', '4130', 'Equipos para procesos de informaciÃ³n en montaje', 0, NULL, NULL, 1),
(4136, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '239', '4130', 'Anticipos para inmovilizaciones materiales', 0, NULL, NULL, 1),
(4137, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '24', '4002', 'Inversiones financieras a largo plazo en partes vinculadas', 0, NULL, NULL, 1),
(4138, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '240', '4137', 'Participaciones a largo plazo en partes vinculadas', 0, NULL, NULL, 1),
(4139, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2403', '4138', 'Participaciones a largo plazo en empresas del grupo', 0, NULL, NULL, 1),
(4140, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2404', '4138', 'Participaciones a largo plazo en empresas asociadas', 0, NULL, NULL, 1),
(4141, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2405', '4138', 'Participaciones a largo plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4142, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '241', '4137', 'Valores representativos de deuda a largo plazo de partes vinculadas', 0, NULL, NULL, 1),
(4143, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2413', '4142', 'Valores representativos de deuda a largo plazo de empresas del grupo', 0, NULL, NULL, 1),
(4144, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2414', '4142', 'Valores representativos de deuda a largo plazo de empresas asociadas', 0, NULL, NULL, 1),
(4145, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2415', '4142', 'Valores representativos de deuda a largo plazo de otras partes vinculadas', 0, NULL, NULL, 1),
(4146, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '242', '4137', 'CrÃ©ditos a largo plazo a partes vinculadas', 0, NULL, NULL, 1),
(4147, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2423', '4146', 'CrÃ©ditos a largo plazo a empresas del grupo', 0, NULL, NULL, 1),
(4148, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2424', '4146', 'CrÃ©ditos a largo plazo a empresas asociadas', 0, NULL, NULL, 1),
(4149, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2425', '4146', 'CrÃ©ditos a largo plazo a otras partes vinculadas', 0, NULL, NULL, 1),
(4150, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '249', '4137', 'Desembolsos pendientes sobre participaciones a largo plazo en partes vinculadas', 0, NULL, NULL, 1),
(4151, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2493', '4150', 'Desembolsos pendientes sobre participaciones a largo plazo en empresas del grupo', 0, NULL, NULL, 1),
(4152, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2494', '4150', 'Desembolsos pendientes sobre participaciones a largo plazo en empresas asociadas', 0, NULL, NULL, 1),
(4153, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2495', '4150', 'Desembolsos pendientes sobre participaciones a largo plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4154, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '25', '4002', 'Otras inversiones financieras a largo plazo', 0, NULL, NULL, 1),
(4155, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '250', '4154', 'Inversiones financieras a largo plazo en instrumentos de patrimonio', 0, NULL, NULL, 1),
(4156, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '251', '4154', 'Valores representativos de deuda a largo plazo', 0, NULL, NULL, 1),
(4157, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '252', '4154', 'CrÃ©ditos a largo plazo', 0, NULL, NULL, 1),
(4158, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '253', '4154', 'CrÃ©ditos a largo plazo por enajenaciÃ³n de inmovilizado', 0, NULL, NULL, 1),
(4159, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '254', '4154', 'CrÃ©ditos a largo plazo al personal', 0, NULL, NULL, 1),
(4160, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '255', '4154', 'Activos por derivados financieros a largo plazo', 0, NULL, NULL, 1),
(4161, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '258', '4154', 'Imposiciones a largo plazo', 0, NULL, NULL, 1),
(4162, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '259', '4154', 'Desembolsos pendientes sobre participaciones en el patrimonio neto a largo plazo', 0, NULL, NULL, 1),
(4163, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '26', '4002', 'Fianzas y depÃ³sitos constituidos a largo plazo', 0, NULL, NULL, 1),
(4164, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '260', '4163', 'Fianzas constituidas a largo plazo', 0, NULL, NULL, 1),
(4165, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '261', '4163', 'DepÃ³sitos constituidos a largo plazo', 0, NULL, NULL, 1),
(4166, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '28', '4002', 'AmortizaciÃ³n acumulada del inmovilizado', 0, NULL, NULL, 1),
(4167, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '280', '4166', 'AmortizaciÃ³n acumulado del inmovilizado intangible', 0, NULL, NULL, 1),
(4168, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2800', '4167', 'AmortizaciÃ³n acumulada de investigaciÃ³n', 0, NULL, NULL, 1),
(4169, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2801', '4167', 'AmortizaciÃ³n acumulada de desarrollo', 0, NULL, NULL, 1),
(4170, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2802', '4167', 'AmortizaciÃ³n acumulada de concesiones administrativas', 0, NULL, NULL, 1),
(4171, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2803', '4167', 'AmortizaciÃ³n acumulada de propiedad industrial', 0, NULL, NULL, 1),
(4172, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2805', '4167', 'AmortizaciÃ³n acumulada de derechos de transpaso', 0, NULL, NULL, 1),
(4173, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2806', '4167', 'AmortizaciÃ³n acumulada de aplicaciones informÃ¡ticas', 0, NULL, NULL, 1),
(4174, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '281', '4166', 'AmortizaciÃ³n acumulado del inmovilizado material', 0, NULL, NULL, 1),
(4175, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2811', '4174', 'AmortizaciÃ³n acumulada de construcciones', 0, NULL, NULL, 1),
(4176, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2812', '4174', 'AmortizaciÃ³n acumulada de instalaciones tÃ©cnicas', 0, NULL, NULL, 1),
(4177, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2813', '4174', 'AmortizaciÃ³n acumulada de maquinaria', 0, NULL, NULL, 1),
(4178, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2814', '4174', 'AmortizaciÃ³n acumulada de utillaje', 0, NULL, NULL, 1),
(4179, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2815', '4174', 'AmortizaciÃ³n acumulada de otras instalaciones', 0, NULL, NULL, 1),
(4180, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2816', '4174', 'AmortizaciÃ³n acumulada de mobiliario', 0, NULL, NULL, 1),
(4181, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2817', '4174', 'AmortizaciÃ³n acumulada de equipos para proceso de informaciÃ³n', 0, NULL, NULL, 1),
(4182, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2818', '4174', 'AmortizaciÃ³n acumulada de elementos de transporte', 0, NULL, NULL, 1),
(4183, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2819', '4175', 'AmortizaciÃ³n acumulada de otro inmovilizado material', 0, NULL, NULL, 1),
(4184, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '282', '4166', 'AmortizaciÃ³n acumulada de las inversiones inmobiliarias', 0, NULL, NULL, 1),
(4185, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '29', '4002', 'Deterioro de valor de activos no corrientes', 0, NULL, NULL, 1),
(4186, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '290', '4185', 'Deterioro de valor del inmovilizado intangible', 0, NULL, NULL, 1),
(4187, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2900', '4186', 'Deterioro de valor de investigaciÃ³n', 0, NULL, NULL, 1),
(4188, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2901', '4186', 'Deterioro de valor de desarrollo', 0, NULL, NULL, 1),
(4189, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2902', '4186', 'Deterioro de valor de concesiones administrativas', 0, NULL, NULL, 1),
(4190, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2903', '4186', 'Deterioro de valor de propiedad industrial', 0, NULL, NULL, 1),
(4191, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2905', '4186', 'Deterioro de valor de derechos de transpaso', 0, NULL, NULL, 1),
(4192, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2906', '4186', 'Deterioro de valor de aplicaciones informÃ¡ticas', 0, NULL, NULL, 1),
(4193, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '291', '4185', 'Deterioro de valor del inmovilizado material', 0, NULL, NULL, 1),
(4194, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2910', '4193', 'Deterioro de valor de terrenos y bienes naturales', 0, NULL, NULL, 1),
(4195, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2911', '4193', 'Deterioro de valor de construcciones', 0, NULL, NULL, 1),
(4196, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2912', '4193', 'Deterioro de valor de instalaciones tÃ©cnicas', 0, NULL, NULL, 1),
(4197, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2913', '4193', 'Deterioro de valor de maquinaria', 0, NULL, NULL, 1),
(4198, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2914', '4193', 'Deterioro de valor de utillajes', 0, NULL, NULL, 1),
(4199, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2915', '4194', 'Deterioro de valor de otras instalaciones', 0, NULL, NULL, 1),
(4200, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2916', '4194', 'Deterioro de valor de mobiliario', 0, NULL, NULL, 1),
(4201, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2917', '4194', 'Deterioro de valor de equipos para proceso de informaciÃ³n', 0, NULL, NULL, 1),
(4202, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2918', '4194', 'Deterioro de valor de elementos de transporte', 0, NULL, NULL, 1),
(4203, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2919', '4194', 'Deterioro de valor de otro inmovilizado material', 0, NULL, NULL, 1),
(4204, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '292', '4185', 'Deterioro de valor de las inversiones inmobiliarias', 0, NULL, NULL, 1),
(4205, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2920', '4204', 'Deterioro de valor de terrenos y bienes naturales', 0, NULL, NULL, 1),
(4206, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2921', '4204', 'Deterioro de valor de construcciones', 0, NULL, NULL, 1),
(4207, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '293', '4185', 'Deterioro de valor de participaciones a largo plazo en partes vinculadas', 0, NULL, NULL, 1),
(4208, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2933', '4207', 'Deterioro de valor de participaciones a largo plazo en empresas del grupo', 0, NULL, NULL, 1),
(4209, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2934', '4207', 'Deterioro de valor de sobre participaciones a largo plazo en empresas asociadas', 0, NULL, NULL, 1),
(4210, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2935', '4207', 'Deterioro de valor de sobre participaciones a largo plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4211, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '294', '4185', 'Deterioro de valor de valores representativos de deuda a largo plazo en partes vinculadas', 0, NULL, NULL, 1),
(4212, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2943', '4211', 'Deterioro de valor de valores representativos de deuda a largo plazo en empresas del grupo', 0, NULL, NULL, 1),
(4213, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2944', '4211', 'Deterioro de valor de valores representativos de deuda a largo plazo en empresas asociadas', 0, NULL, NULL, 1),
(4214, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2945', '4211', 'Deterioro de valor de valores representativos de deuda a largo plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4215, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '295', '4185', 'Deterioro de valor de crÃ©ditos a largo plazo a partes vinculadas', 0, NULL, NULL, 1),
(4216, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2953', '4215', 'Deterioro de valor de crÃ©ditos a largo plazo a empresas del grupo', 0, NULL, NULL, 1),
(4217, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2954', '4215', 'Deterioro de valor de crÃ©ditos a largo plazo a empresas asociadas', 0, NULL, NULL, 1),
(4218, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '2955', '4215', 'Deterioro de valor de crÃ©ditos a largo plazo a otras partes vinculadas', 0, NULL, NULL, 1),
(4219, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '296', '4185', 'Deterioro de valor de participaciones en el patrimonio netoa largo plazo', 0, NULL, NULL, 1),
(4220, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '297', '4185', 'Deterioro de valor de valores representativos de deuda a largo plazo', 0, NULL, NULL, 1),
(4221, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACTIVO', 'XXXXXX', '298', '4185', 'Deterioro de valor de crÃ©ditos a largo plazo', 0, NULL, NULL, 1),
(4222, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '30', '4003', 'Comerciales', 0, NULL, NULL, 1),
(4223, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '300', '4222', 'MercaderÃ­as A', 0, NULL, NULL, 1),
(4224, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '301', '4222', 'MercaderÃ­as B', 0, NULL, NULL, 1),
(4225, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '31', '4003', 'Materias primas', 0, NULL, NULL, 1),
(4226, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '310', '4225', 'Materias primas A', 0, NULL, NULL, 1),
(4227, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '311', '4225', 'Materias primas B', 0, NULL, NULL, 1),
(4228, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '32', '4003', 'Otros aprovisionamientos', 0, NULL, NULL, 1),
(4229, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '320', '4228', 'Elementos y conjuntos incorporables', 0, NULL, NULL, 1),
(4230, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '321', '4228', 'Combustibles', 0, NULL, NULL, 1),
(4231, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '322', '4228', 'Repuestos', 0, NULL, NULL, 1),
(4232, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '325', '4228', 'Materiales diversos', 0, NULL, NULL, 1),
(4233, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '326', '4228', 'Embalajes', 0, NULL, NULL, 1),
(4234, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '327', '4228', 'Envases', 0, NULL, NULL, 1),
(4235, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '328', '4229', 'Material de oficina', 0, NULL, NULL, 1),
(4236, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '33', '4003', 'Productos en curso', 0, NULL, NULL, 1),
(4237, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '330', '4236', 'Productos en curos A', 0, NULL, NULL, 1),
(4238, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '331', '4236', 'Productos en curso B', 0, NULL, NULL, 1),
(4239, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '34', '4003', 'Productos semiterminados', 0, NULL, NULL, 1),
(4240, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '340', '4239', 'Productos semiterminados A', 0, NULL, NULL, 1),
(4241, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '341', '4239', 'Productos semiterminados B', 0, NULL, NULL, 1),
(4242, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '35', '4003', 'Productos terminados', 0, NULL, NULL, 1),
(4243, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '350', '4242', 'Productos terminados A', 0, NULL, NULL, 1),
(4244, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '351', '4242', 'Productos terminados B', 0, NULL, NULL, 1),
(4245, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '36', '4003', 'Subproductos, residuos y materiales recuperados', 0, NULL, NULL, 1),
(4246, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '360', '4245', 'Subproductos A', 0, NULL, NULL, 1),
(4247, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '361', '4245', 'Subproductos B', 0, NULL, NULL, 1),
(4248, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '365', '4245', 'Residuos A', 0, NULL, NULL, 1),
(4249, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '366', '4245', 'Residuos B', 0, NULL, NULL, 1),
(4250, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '368', '4245', 'Materiales recuperados A', 0, NULL, NULL, 1),
(4251, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '369', '4245', 'Materiales recuperados B', 0, NULL, NULL, 1),
(4252, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '39', '4003', 'Deterioro de valor de las existencias', 0, NULL, NULL, 1),
(4253, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '390', '4252', 'Deterioro de valor de las mercaderÃ­as', 0, NULL, NULL, 1),
(4254, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '391', '4252', 'Deterioro de valor de las materias primas', 0, NULL, NULL, 1),
(4255, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '392', '4252', 'Deterioro de valor de otros aprovisionamientos', 0, NULL, NULL, 1),
(4256, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '393', '4252', 'Deterioro de valor de los productos en curso', 0, NULL, NULL, 1),
(4257, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '394', '4252', 'Deterioro de valor de los productos semiterminados', 0, NULL, NULL, 1),
(4258, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '395', '4252', 'Deterioro de valor de los productos terminados', 0, NULL, NULL, 1),
(4259, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'EXISTENCIAS', 'XXXXXX', '396', '4252', 'Deterioro de valor de los subproductos, residuos y materiales recuperados', 0, NULL, NULL, 1),
(4260, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'PROVEEDORES', '40', '4004', 'Proveedores', 0, NULL, NULL, 1),
(4261, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'PROVEEDORES', '400', '4260', 'Proveedores', 0, NULL, NULL, 1),
(4262, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4000', '4261', 'Proveedores euros', 0, NULL, NULL, 1),
(4263, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4004', '4261', 'Proveedores moneda extranjera', 0, NULL, NULL, 1),
(4264, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4009', '4261', 'Proveedores facturas pendientes de recibir o formalizar', 0, NULL, NULL, 1),
(4265, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '401', '4260', 'Proveedores efectos comerciales a pagar', 0, NULL, NULL, 1),
(4266, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '403', '4260', 'Proveedores empresas del grupo', 0, NULL, NULL, 1),
(4267, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4030', '4266', 'Proveedores empresas del grupo euros', 0, NULL, NULL, 1),
(4268, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4031', '4266', 'Efectos comerciales a pagar empresas del grupo', 0, NULL, NULL, 1),
(4269, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4034', '4266', 'Proveedores empresas del grupo moneda extranjera', 0, NULL, NULL, 1),
(4270, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4036', '4266', 'Envases y embalajes a devolver a proveedores empresas del grupo', 0, NULL, NULL, 1),
(4271, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4039', '4266', 'Proveedores empresas del grupo facturas pendientes de recibir o de formalizar', 0, NULL, NULL, 1),
(4272, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '404', '4260', 'Proveedores empresas asociadas', 0, NULL, NULL, 1),
(4273, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '405', '4260', 'Proveedores otras partes vinculadas', 0, NULL, NULL, 1),
(4274, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '406', '4260', 'Envases y embalajes a devolver a proveedores', 0, NULL, NULL, 1),
(4275, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '407', '4260', 'Anticipos a proveedores', 0, NULL, NULL, 1),
(4276, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '41', '4004', 'Acreedores varios', 0, NULL, NULL, 1),
(4277, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '410', '4276', 'Acreedores por prestaciones de servicios', 0, NULL, NULL, 1),
(4278, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4100', '4277', 'Acreedores por prestaciones de servicios euros', 0, NULL, NULL, 1),
(4279, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4104', '4277', 'Acreedores por prestaciones de servicios moneda extranjera', 0, NULL, NULL, 1),
(4280, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4109', '4277', 'Acreedores por prestaciones de servicios facturas pendientes de recibir o formalizar', 0, NULL, NULL, 1),
(4281, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '411', '4276', 'Acreedores efectos comerciales a pagar', 0, NULL, NULL, 1),
(4282, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '419', '4276', 'Acreedores por operaciones en comÃºn', 0, NULL, NULL, 1),
(4283, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'CLIENTES', '43', '4004', 'Clientes', 0, NULL, NULL, 1),
(4284, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'CLIENTES', '430', '4283', 'Clientes', 0, NULL, NULL, 1),
(4285, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4300', '4284', 'Clientes euros', 0, NULL, NULL, 1),
(4286, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4304', '4284', 'Clientes moneda extranjera', 0, NULL, NULL, 1),
(4287, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4309', '4284', 'Clientes facturas pendientes de formalizar', 0, NULL, NULL, 1),
(4288, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '431', '4283', 'Clientes efectos comerciales a cobrar', 0, NULL, NULL, 1),
(4289, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4310', '4288', 'Efectos comerciales en cartera', 0, NULL, NULL, 1),
(4290, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4311', '4288', 'Efectos comerciales descontados', 0, NULL, NULL, 1),
(4291, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4312', '4288', 'Efectos comerciales en gestiÃ³n de cobro', 0, NULL, NULL, 1),
(4292, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4315', '4288', 'Efectos comerciales impagados', 0, NULL, NULL, 1),
(4293, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '432', '4283', 'Clientes operaciones de factoring', 0, NULL, NULL, 1),
(4294, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '433', '4283', 'Clientes empresas del grupo', 0, NULL, NULL, 1),
(4295, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4330', '4294', 'Clientes empresas del grupo euros', 0, NULL, NULL, 1),
(4296, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4331', '4294', 'Efectos comerciales a cobrar empresas del grupo', 0, NULL, NULL, 1),
(4297, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4332', '4294', 'Clientes empresas del grupo operaciones de factoring', 0, NULL, NULL, 1),
(4298, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4334', '4294', 'Clientes empresas del grupo moneda extranjera', 0, NULL, NULL, 1),
(4299, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4336', '4294', 'Clientes empresas del grupo dudoso cobro', 0, NULL, NULL, 1),
(4300, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4337', '4294', 'Envases y embalajes a devolver a clientes empresas del grupo', 0, NULL, NULL, 1),
(4301, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4339', '4294', 'Clientes empresas del grupo facturas pendientes de formalizar', 0, NULL, NULL, 1),
(4302, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '434', '4283', 'Clientes empresas asociadas', 0, NULL, NULL, 1),
(4303, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '435', '4283', 'Clientes otras partes vinculadas', 0, NULL, NULL, 1),
(4304, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '436', '4283', 'Clientes de dudoso cobro', 0, NULL, NULL, 1),
(4305, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '437', '4283', 'Envases y embalajes a devolver por clientes', 0, NULL, NULL, 1),
(4306, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '438', '4283', 'Anticipos de clientes', 0, NULL, NULL, 1),
(4307, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '44', '4004', 'Deudores varios', 0, NULL, NULL, 1),
(4308, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '440', '4307', 'Deudores', 0, NULL, NULL, 1),
(4309, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4400', '4308', 'Deudores euros', 0, NULL, NULL, 1),
(4310, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4404', '4308', 'Deudores moneda extranjera', 0, NULL, NULL, 1),
(4311, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4409', '4308', 'Deudores facturas pendientes de formalizar', 0, NULL, NULL, 1),
(4312, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '441', '4307', 'Deudores efectos comerciales a cobrar', 0, NULL, NULL, 1),
(4313, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4410', '4312', 'Deudores efectos comerciales en cartera', 0, NULL, NULL, 1),
(4314, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4411', '4312', 'Deudores efectos comerciales descontados', 0, NULL, NULL, 1),
(4315, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4412', '4312', 'Deudores efectos comerciales en gestiÃ³n de cobro', 0, NULL, NULL, 1),
(4316, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4415', '4312', 'Deudores efectos comerciales impagados', 0, NULL, NULL, 1),
(4317, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '446', '4307', 'Deudores de dusoso cobro', 0, NULL, NULL, 1),
(4318, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '449', '4307', 'Deudores por operaciones en comÃºn', 0, NULL, NULL, 1),
(4319, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '46', '4004', 'Personal', 0, NULL, NULL, 1),
(4320, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '460', '4319', 'Anticipos de renumeraciones', 0, NULL, NULL, 1),
(4321, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '465', '4319', 'Renumeraciones pendientes de pago', 0, NULL, NULL, 1),
(4322, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '47', '4004', 'Administraciones PÃºblicas', 0, NULL, NULL, 1),
(4323, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '470', '4322', 'Hacienda PÃºblica deudora por diversos conceptos', 0, NULL, NULL, 1),
(4324, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4700', '4323', 'Hacienda PÃºblica deudora por IVA', 0, NULL, NULL, 1),
(4325, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4708', '4323', 'Hacienda PÃºblica deudora por subvenciones concedidas', 0, NULL, NULL, 1),
(4326, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4709', '4323', 'Hacienda PÃºblica deudora por devoluciÃ³n de impuestos', 0, NULL, NULL, 1),
(4327, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '471', '4322', 'Organismos de la Seguridad Social deudores', 0, NULL, NULL, 1),
(4328, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '472', '4322', 'Hacienda PÃºblica IVA soportado', 0, NULL, NULL, 1),
(4329, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '473', '4322', 'Hacienda PÃºblica retenciones y pagos a cuenta', 0, NULL, NULL, 1),
(4330, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '474', '4322', 'Activos por impuesto diferido', 0, NULL, NULL, 1),
(4331, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4740', '4330', 'Activos por diferencias temporarias deducibles', 0, NULL, NULL, 1),
(4332, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4742', '4330', 'Derechos por deducciones y bonificaciones pendientes de aplicar', 0, NULL, NULL, 1),
(4333, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4745', '4330', 'CrÃ©dito por pÃ©rdidasa compensar del ejercicio', 0, NULL, NULL, 1),
(4334, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '475', '4322', 'Hacienda PÃºblica acreedora por conceptos fiscales', 0, NULL, NULL, 1),
(4335, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4750', '4334', 'Hacienda PÃºblica acreedora por IVA', 0, NULL, NULL, 1),
(4336, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4751', '4334', 'Hacienda PÃºblica acreedora por retenciones practicadas', 0, NULL, NULL, 1),
(4337, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4752', '4334', 'Hacienda PÃºblica acreedora por impuesto sobre sociedades', 0, NULL, NULL, 1),
(4338, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4758', '4334', 'Hacienda PÃºblica acreedora por subvenciones a integrar', 0, NULL, NULL, 1),
(4339, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '476', '4322', 'Organismos de la Seguridad Social acreedores', 0, NULL, NULL, 1),
(4340, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '477', '4322', 'Hacienda PÃºblica IVA repercutido', 0, NULL, NULL, 1),
(4341, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '479', '4322', 'Pasivos por diferencias temporarias imponibles', 0, NULL, NULL, 1);
INSERT INTO `llx_accounting_account` (`rowid`, `entity`, `datec`, `tms`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `fk_accounting_category`, `fk_user_author`, `fk_user_modif`, `active`) VALUES
(4342, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '48', '4004', 'Ajustes por periodificaciÃ³n', 0, NULL, NULL, 1),
(4343, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '480', '4342', 'Gastos anticipados', 0, NULL, NULL, 1),
(4344, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '485', '4342', 'Ingresos anticipados', 0, NULL, NULL, 1),
(4345, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '49', '4004', 'Deterioro de valor de crÃ©ditos comerciales y provisiones a corto plazo', 0, NULL, NULL, 1),
(4346, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '490', '4345', 'Deterioro de valor de crÃ©ditos por operaciones comerciales', 0, NULL, NULL, 1),
(4347, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '493', '4345', 'Deterioro de valor de crÃ©ditos por operaciones comerciales con partes vinculadas', 0, NULL, NULL, 1),
(4348, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4933', '4347', 'Deterioro de valor de crÃ©ditos por operaciones comerciales con empresas del grupo', 0, NULL, NULL, 1),
(4349, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4934', '4347', 'Deterioro de valor de crÃ©ditos por operaciones comerciales con empresas asociadas', 0, NULL, NULL, 1),
(4350, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4935', '4347', 'Deterioro de valor de crÃ©ditos por operaciones comerciales con otras partes vinculadas', 0, NULL, NULL, 1),
(4351, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '499', '4345', 'Provisiones por operaciones comerciales', 0, NULL, NULL, 1),
(4352, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4994', '4351', 'ProvisiÃ³n para contratos anerosos', 0, NULL, NULL, 1),
(4353, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'ACREEDORES_DEUDORES', 'XXXXXX', '4999', '4351', 'ProvisiÃ³n para otras operaciones comerciales', 0, NULL, NULL, 1),
(4354, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '50', '4005', 'EmprÃ©sitos deudas con caracterÃ­sticas especiales y otras emisiones anÃ¡logas a corto plazo', 0, NULL, NULL, 1),
(4355, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '500', '4354', 'Obligaciones y bonos a corto plazo', 0, NULL, NULL, 1),
(4356, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '502', '4354', 'Acciones o participaciones a corto plazo consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4357, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '505', '4354', 'Deudas representadas en otros valores negociables a corto plazo', 0, NULL, NULL, 1),
(4358, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '506', '4354', 'Intereses a corto plazo de emprÃ©sitos y otras emisiones analÃ³gicas', 0, NULL, NULL, 1),
(4359, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '507', '4354', 'Dividendos de acciones o participaciones consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4360, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '509', '4354', 'Valores negociables amortizados', 0, NULL, NULL, 1),
(4361, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5090', '4360', 'Obligaciones y bonos amortizados', 0, NULL, NULL, 1),
(4362, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5095', '4360', 'Otros valores negociables amortizados', 0, NULL, NULL, 1),
(4363, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '51', '4005', 'Deudas a corto plazo con partes vinculadas', 0, NULL, NULL, 1),
(4364, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '510', '4363', 'Deudas a corto plazo con entidades de crÃ©dito vinculadas', 0, NULL, NULL, 1),
(4365, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5103', '4364', 'Deudas a corto plazo con entidades de crÃ©dito empresas del grupo', 0, NULL, NULL, 1),
(4366, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5104', '4364', 'Deudas a corto plazo con entidades de crÃ©dito empresas asociadas', 0, NULL, NULL, 1),
(4367, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5105', '4364', 'Deudas a corto plazo con otras entidades de crÃ©dito vinculadas', 0, NULL, NULL, 1),
(4368, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '511', '4363', 'Proveedores de inmovilizado a corto plazo partes vinculadas', 0, NULL, NULL, 1),
(4369, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5113', '4368', 'Proveedores de inmovilizado a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4370, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5114', '4368', 'Proveedores de inmovilizado a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4371, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5115', '4368', 'Proveedores de inmovilizado a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4372, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '512', '4363', 'Acreedores por arrendamiento financiero a corto plazo partes vinculadas', 0, NULL, NULL, 1),
(4373, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5123', '4372', 'Acreedores por arrendamiento financiero a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4374, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5124', '4372', 'Acreedores por arrendamiento financiero a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4375, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5125', '4372', 'Acreedores por arrendamiento financiero a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4376, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '513', '4363', 'Otras deudas a corto plazo con partes vinculadas', 0, NULL, NULL, 1),
(4377, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5133', '4376', 'Otras deudas a corto plazo con empresas del grupo', 0, NULL, NULL, 1),
(4378, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5134', '4376', 'Otras deudas a corto plazo con empresas asociadas', 0, NULL, NULL, 1),
(4379, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5135', '4376', 'Otras deudas a corto plazo con partes vinculadas', 0, NULL, NULL, 1),
(4380, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '514', '4363', 'Intereses a corto plazo con partes vinculadas', 0, NULL, NULL, 1),
(4381, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5143', '4380', 'Intereses a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4382, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5144', '4380', 'Intereses a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4383, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5145', '4380', 'Intereses deudas a corto plazo partes vinculadas', 0, NULL, NULL, 1),
(4384, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '52', '4005', 'Deudas a corto plazo por prÃ©stamos recibidos y otros conceptos', 0, NULL, NULL, 1),
(4385, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '520', '4384', 'Deudas a corto plazo con entidades de crÃ©dito', 0, NULL, NULL, 1),
(4386, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5200', '4385', 'PrÃ©stamos a corto plazo de entidades de crÃ©dito', 0, NULL, NULL, 1),
(4387, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5201', '4385', 'Deudas a corto plazo por crÃ©dito dispuesto', 0, NULL, NULL, 1),
(4388, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5208', '4385', 'Deudas por efectos descontados', 0, NULL, NULL, 1),
(4389, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5209', '4385', 'Deudas por operaciones de factoring', 0, NULL, NULL, 1),
(4390, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '521', '4384', 'Deudas a corto plazo', 0, NULL, NULL, 1),
(4391, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '522', '4384', 'Deudas a corto plazo transformables en subvenciones donaciones y legados', 0, NULL, NULL, 1),
(4392, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '523', '4384', 'Proveedores de inmovilizado a corto plazo', 0, NULL, NULL, 1),
(4393, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '526', '4384', 'Dividendo activo a pagar', 0, NULL, NULL, 1),
(4394, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '527', '4384', 'Intereses a corto plazo de deudas con entidades de crÃ©dito', 0, NULL, NULL, 1),
(4395, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '528', '4384', 'Intereses a corto plazo de deudas', 0, NULL, NULL, 1),
(4396, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '529', '4384', 'Provisiones a corto plazo', 0, NULL, NULL, 1),
(4397, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5291', '4396', 'ProvisiÃ³n a corto plazo para impuestos', 0, NULL, NULL, 1),
(4398, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5292', '4396', 'ProvisiÃ³n a corto plazo para otras responsabilidades', 0, NULL, NULL, 1),
(4399, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5293', '4396', 'ProvisiÃ³n a corto plazo por desmantelamiento retiro o rehabilitaciÃ³n del inmovilizado', 0, NULL, NULL, 1),
(4400, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5295', '4396', 'ProvisiÃ³n a corto plazo para actuaciones medioambientales', 0, NULL, NULL, 1),
(4401, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '53', '4005', 'Inversiones financieras a corto plazo en partes vinculadas', 0, NULL, NULL, 1),
(4402, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '530', '4401', 'Participaciones a corto plazo en partes vinculadas', 0, NULL, NULL, 1),
(4403, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5303', '4402', 'Participaciones a corto plazo en empresas del grupo', 0, NULL, NULL, 1),
(4404, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5304', '4402', 'Participaciones a corto plazo en empresas asociadas', 0, NULL, NULL, 1),
(4405, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5305', '4402', 'Participaciones a corto plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4406, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '531', '4401', 'Valores representativos de deuda a corto plazo de partes vinculadas', 0, NULL, NULL, 1),
(4407, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5313', '4406', 'Valores representativos de deuda a corto plazo de empresas del grupo', 0, NULL, NULL, 1),
(4408, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5314', '4406', 'Valores representativos de deuda a corto plazo de empresas asociadas', 0, NULL, NULL, 1),
(4409, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5315', '4406', 'Valores representativos de deuda a corto plazo de otras partes vinculadas', 0, NULL, NULL, 1),
(4410, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '532', '4401', 'CrÃ©ditos a corto plazo a partes vinculadas', 0, NULL, NULL, 1),
(4411, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5323', '4410', 'CrÃ©ditos a corto plazo a empresas del grupo', 0, NULL, NULL, 1),
(4412, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5324', '4410', 'CrÃ©ditos a corto plazo a empresas asociadas', 0, NULL, NULL, 1),
(4413, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5325', '4410', 'CrÃ©ditos a corto plazo a otras partes vinculadas', 0, NULL, NULL, 1),
(4414, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '533', '4401', 'Intereses a corto plazo de valores representativos de deuda de partes vinculadas', 0, NULL, NULL, 1),
(4415, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5333', '4414', 'Intereses a corto plazo de valores representativos de deuda en empresas del grupo', 0, NULL, NULL, 1),
(4416, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5334', '4414', 'Intereses a corto plazo de valores representativos de deuda en empresas asociadas', 0, NULL, NULL, 1),
(4417, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5335', '4414', 'Intereses a corto plazo de valores representativos de deuda en otras partes vinculadas', 0, NULL, NULL, 1),
(4418, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '534', '4401', 'Intereses a corto plazo de crÃ©ditos a partes vinculadas', 0, NULL, NULL, 1),
(4419, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5343', '4418', 'Intereses a corto plazo de crÃ©ditos a empresas del grupo', 0, NULL, NULL, 1),
(4420, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5344', '4418', 'Intereses a corto plazo de crÃ©ditos a empresas asociadas', 0, NULL, NULL, 1),
(4421, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5345', '4418', 'Intereses a corto plazo de crÃ©ditos a otras partes vinculadas', 0, NULL, NULL, 1),
(4422, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '535', '4401', 'Dividendo a cobrar de inversiones financieras en partes vinculadas', 0, NULL, NULL, 1),
(4423, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5353', '4422', 'Dividendo a cobrar de empresas del grupo', 0, NULL, NULL, 1),
(4424, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5354', '4422', 'Dividendo a cobrar de empresas asociadas', 0, NULL, NULL, 1),
(4425, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5355', '4422', 'Dividendo a cobrar de otras partes vinculadas', 0, NULL, NULL, 1),
(4426, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '539', '4401', 'Desembolsos pendientes sobre participaciones a corto plazo en partes vinculadas', 0, NULL, NULL, 1),
(4427, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5393', '4426', 'Desembolsos pendientes sobre participaciones a corto plazo en empresas del grupo', 0, NULL, NULL, 1),
(4428, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5394', '4426', 'Desembolsos pendientes sobre participaciones a corto plazo en empresas asociadas', 0, NULL, NULL, 1),
(4429, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5395', '4426', 'Desembolsos pendientes sobre participaciones a corto plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4430, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '54', '4005', 'Otras inversiones financieras a corto plazo', 0, NULL, NULL, 1),
(4431, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '540', '4430', 'Inversiones financieras a corto plazo en instrumentos de patrimonio', 0, NULL, NULL, 1),
(4432, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '541', '4430', 'Valores representativos de deuda a corto plazo', 0, NULL, NULL, 1),
(4433, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '542', '4430', 'CrÃ©ditos a corto plazo', 0, NULL, NULL, 1),
(4434, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '543', '4430', 'CrÃ©ditos a corto plazo por enejenaciÃ³n de inmovilizado', 0, NULL, NULL, 1),
(4435, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '544', '4430', 'CrÃ©ditos a corto plazo al personal', 0, NULL, NULL, 1),
(4436, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '545', '4430', 'Dividendo a cobrar', 0, NULL, NULL, 1),
(4437, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '546', '4430', 'Intereses a corto plazo de valores reprsentativos de deuda', 0, NULL, NULL, 1),
(4438, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '547', '4430', 'Intereses a corto plazo de crÃ©ditos', 0, NULL, NULL, 1),
(4439, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '548', '4430', 'Imposiciones a corto plazo', 0, NULL, NULL, 1),
(4440, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '549', '4430', 'Desembolsos pendientes sobre participaciones en el patrimonio neto a corto plazo', 0, NULL, NULL, 1),
(4441, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '55', '4005', 'Otras cuentas no bancarias', 0, NULL, NULL, 1),
(4442, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '550', '4441', 'Titular de la explotaciÃ³n', 0, NULL, NULL, 1),
(4443, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '551', '4441', 'Cuenta corriente con socios y administradores', 0, NULL, NULL, 1),
(4444, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '552', '4441', 'Cuenta corriente otras personas y entidades vinculadas', 0, NULL, NULL, 1),
(4445, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5523', '4444', 'Cuenta corriente con empresas del grupo', 0, NULL, NULL, 1),
(4446, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5524', '4444', 'Cuenta corriente con empresas asociadas', 0, NULL, NULL, 1),
(4447, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5525', '4444', 'Cuenta corriente con otras partes vinculadas', 0, NULL, NULL, 1),
(4448, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '554', '4441', 'Cuenta corriente con uniones temporales de empresas y comunidades de bienes', 0, NULL, NULL, 1),
(4449, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '555', '4441', 'Partidas pendientes de aplicaciÃ³n', 0, NULL, NULL, 1),
(4450, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '556', '4441', 'Desembolsos exigidos sobre participaciones en el patrimonio neto', 0, NULL, NULL, 1),
(4451, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5563', '4450', 'Desembolsos exigidos sobre participaciones empresas del grupo', 0, NULL, NULL, 1),
(4452, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5564', '4450', 'Desembolsos exigidos sobre participaciones empresas asociadas', 0, NULL, NULL, 1),
(4453, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5565', '4450', 'Desembolsos exigidos sobre participaciones otras partes vinculadas', 0, NULL, NULL, 1),
(4454, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5566', '4450', 'Desembolsos exigidos sobre participaciones otras empresas', 0, NULL, NULL, 1),
(4455, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '557', '4441', 'Dividendo activo a cuenta', 0, NULL, NULL, 1),
(4456, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '558', '4441', 'Socios por desembolsos exigidos', 0, NULL, NULL, 1),
(4457, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5580', '4456', 'Socios por desembolsos exigidos sobre acciones o participaciones ordinarias', 0, NULL, NULL, 1),
(4458, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5585', '4456', 'Socios por desembolsos exigidos sobre acciones o participaciones consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4459, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '559', '4441', 'Derivados financieros a corto plazo', 0, NULL, NULL, 1),
(4460, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5590', '4459', 'Activos por derivados financieros a corto plazo', 0, NULL, NULL, 1),
(4461, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5595', '4459', 'Pasivos por derivados financieros a corto plazo', 0, NULL, NULL, 1),
(4462, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '56', '4005', 'Finanzas y depÃ³sitos recibidos y constituidos a corto plazo y ajustes por periodificaciÃ³n', 0, NULL, NULL, 1),
(4463, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '560', '4462', 'Finanzas recibidas a corto plazo', 0, NULL, NULL, 1),
(4464, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '561', '4462', 'DepÃ³sitos recibidos a corto plazo', 0, NULL, NULL, 1),
(4465, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '565', '4462', 'Finanzas constituidas a corto plazo', 0, NULL, NULL, 1),
(4466, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '566', '4462', 'DepÃ³sitos constituidos a corto plazo', 0, NULL, NULL, 1),
(4467, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '567', '4462', 'Intereses pagados por anticipado', 0, NULL, NULL, 1),
(4468, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '568', '4462', 'Intereses cobrados a corto plazo', 0, NULL, NULL, 1),
(4469, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '57', '4005', 'TesorerÃ­a', 0, NULL, NULL, 1),
(4470, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'CAJA', '570', '4469', 'Caja euros', 0, NULL, NULL, 1),
(4471, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '571', '4469', 'Caja moneda extranjera', 0, NULL, NULL, 1),
(4472, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'BANCOS', '572', '4469', 'Bancos e instituciones de crÃ©dito cc vista euros', 0, NULL, NULL, 1),
(4473, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '573', '4469', 'Bancos e instituciones de crÃ©dito cc vista moneda extranjera', 0, NULL, NULL, 1),
(4474, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '574', '4469', 'Bancos e instituciones de crÃ©dito cuentas de ahorro euros', 0, NULL, NULL, 1),
(4475, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '575', '4469', 'Bancos e instituciones de crÃ©dito cuentas de ahorro moneda extranjera', 0, NULL, NULL, 1),
(4476, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '576', '4469', 'Inversiones a corto plazo de gran liquidez', 0, NULL, NULL, 1),
(4477, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '59', '4005', 'Deterioro del valor de las inversiones financieras a corto plazo', 0, NULL, NULL, 1),
(4478, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '593', '4477', 'Deterioro del valor de participaciones a corto plazo en partes vinculadas', 0, NULL, NULL, 1),
(4479, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5933', '4478', 'Deterioro del valor de participaciones a corto plazo en empresas del grupo', 0, NULL, NULL, 1),
(4480, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5934', '4478', 'Deterioro del valor de participaciones a corto plazo en empresas asociadas', 0, NULL, NULL, 1),
(4481, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5935', '4478', 'Deterioro del valor de participaciones a corto plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4482, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '594', '4477', 'Deterioro del valor de valores representativos de deuda a corto plazo en partes vinculadas', 0, NULL, NULL, 1),
(4483, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5943', '4482', 'Deterioro del valor de valores representativos de deuda a corto plazo en empresas del grupo', 0, NULL, NULL, 1),
(4484, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5944', '4482', 'Deterioro del valor de valores representativos de deuda a corto plazo en empresas asociadas', 0, NULL, NULL, 1),
(4485, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5945', '4482', 'Deterioro del valor de valores representativos de deuda a corto plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4486, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '595', '4477', 'Deterioro del valor de crÃ©ditos a corto plazo en partes vinculadas', 0, NULL, NULL, 1),
(4487, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5953', '4486', 'Deterioro del valor de crÃ©ditos a corto plazo en empresas del grupo', 0, NULL, NULL, 1),
(4488, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5954', '4486', 'Deterioro del valor de crÃ©ditos a corto plazo en empresas asociadas', 0, NULL, NULL, 1),
(4489, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '5955', '4486', 'Deterioro del valor de crÃ©ditos a corto plazo en otras partes vinculadas', 0, NULL, NULL, 1),
(4490, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '596', '4477', 'Deterioro del valor de participaciones a corto plazo', 0, NULL, NULL, 1),
(4491, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '597', '4477', 'Deterioro del valor de valores representativos de deuda a corto plazo', 0, NULL, NULL, 1),
(4492, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'CUENTAS_FINANCIERAS', 'XXXXXX', '598', '4477', 'Deterioro de valor de crÃ©ditos a corto plazo', 0, NULL, NULL, 1),
(4493, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '60', '4006', 'Compras', 0, NULL, NULL, 1),
(4494, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'COMPRAS', '600', '4493', 'Compras de mercaderÃ­as', 0, NULL, NULL, 1),
(4495, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'COMPRAS', '601', '4493', 'Compras de materias primas', 0, NULL, NULL, 1),
(4496, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '602', '4493', 'Compras de otros aprovisionamientos', 0, NULL, NULL, 1),
(4497, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '606', '4493', 'Descuentos sobre compras por pronto pago', 0, NULL, NULL, 1),
(4498, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6060', '4497', 'Descuentos sobre compras por pronto pago de mercaderÃ­as', 0, NULL, NULL, 1),
(4499, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6061', '4497', 'Descuentos sobre compras por pronto pago de materias primas', 0, NULL, NULL, 1),
(4500, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6062', '4497', 'Descuentos sobre compras por pronto pago de otros aprovisionamientos', 0, NULL, NULL, 1),
(4501, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'COMPRAS', '607', '4493', 'Trabajos realizados por otras empresas', 0, NULL, NULL, 1),
(4502, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '608', '4493', 'Devoluciones de compras y operaciones similares', 0, NULL, NULL, 1),
(4503, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6080', '4502', 'Devoluciones de compras de mercaderÃ­as', 0, NULL, NULL, 1),
(4504, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6081', '4502', 'Devoluciones de compras de materias primas', 0, NULL, NULL, 1),
(4505, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6082', '4502', 'Devoluciones de compras de otros aprovisionamientos', 0, NULL, NULL, 1),
(4506, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '609', '4493', 'Rappels por compras', 0, NULL, NULL, 1),
(4507, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6090', '4506', 'Rappels por compras de mercaderÃ­as', 0, NULL, NULL, 1),
(4508, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6091', '4506', 'Rappels por compras de materias primas', 0, NULL, NULL, 1),
(4509, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6092', '4506', 'Rappels por compras de otros aprovisionamientos', 0, NULL, NULL, 1),
(4510, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '61', '4006', 'VariaciÃ³n de existencias', 0, NULL, NULL, 1),
(4511, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '610', '4510', 'VariaciÃ³n de existencias de mercaderÃ­as', 0, NULL, NULL, 1),
(4512, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '611', '4510', 'VariaciÃ³n de existencias de materias primas', 0, NULL, NULL, 1),
(4513, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '612', '4510', 'VariaciÃ³n de existencias de otros aprovisionamientos', 0, NULL, NULL, 1),
(4514, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '62', '4006', 'Servicios exteriores', 0, NULL, NULL, 1),
(4515, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '620', '4514', 'Gastos en investigaciÃ³n y desarrollo del ejercicio', 0, NULL, NULL, 1),
(4516, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '621', '4514', 'Arrendamientos y cÃ¡nones', 0, NULL, NULL, 1),
(4517, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '622', '4514', 'Reparaciones y conservaciÃ³n', 0, NULL, NULL, 1),
(4518, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '623', '4514', 'Servicios profesionales independientes', 0, NULL, NULL, 1),
(4519, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '624', '4514', 'Transportes', 0, NULL, NULL, 1),
(4520, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '625', '4514', 'Primas de seguros', 0, NULL, NULL, 1),
(4521, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '626', '4514', 'Servicios bancarios y similares', 0, NULL, NULL, 1),
(4522, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '627', '4514', 'Publicidad, propaganda y relaciones pÃºblicas', 0, NULL, NULL, 1),
(4523, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '628', '4514', 'Suministros', 0, NULL, NULL, 1),
(4524, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '629', '4514', 'Otros servicios', 0, NULL, NULL, 1),
(4525, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '63', '4006', 'Tributos', 0, NULL, NULL, 1),
(4526, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '630', '4525', 'Impuesto sobre benecifios', 0, NULL, NULL, 1),
(4527, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6300', '4526', 'Impuesto corriente', 0, NULL, NULL, 1),
(4528, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6301', '4526', 'Impuesto diferido', 0, NULL, NULL, 1),
(4529, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '631', '4525', 'Otros tributos', 0, NULL, NULL, 1),
(4530, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '633', '4525', 'Ajustes negativos en la imposiciÃ³n sobre beneficios', 0, NULL, NULL, 1),
(4531, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '634', '4525', 'Ajustes negativos en la imposiciÃ³n indirecta', 0, NULL, NULL, 1),
(4532, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6341', '4531', 'Ajustes negativos en IVA de activo corriente', 0, NULL, NULL, 1),
(4533, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6342', '4531', 'Ajustes negativos en IVA de inversiones', 0, NULL, NULL, 1),
(4534, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '636', '4525', 'DevoluciÃ³n de impuestos', 0, NULL, NULL, 1),
(4535, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '638', '4525', 'Ajustes positivos en la imposiciÃ³n sobre beneficios', 0, NULL, NULL, 1),
(4536, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '639', '4525', 'Ajustes positivos en la imposiciÃ³n directa', 0, NULL, NULL, 1),
(4537, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6391', '4536', 'Ajustes positivos en IVA de activo corriente', 0, NULL, NULL, 1),
(4538, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6392', '4536', 'Ajustes positivos en IVA de inversiones', 0, NULL, NULL, 1),
(4539, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '64', '4006', 'Gastos de personal', 0, NULL, NULL, 1),
(4540, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '640', '4539', 'Sueldos y salarios', 0, NULL, NULL, 1),
(4541, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '641', '4539', 'Indemnizaciones', 0, NULL, NULL, 1),
(4542, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '642', '4539', 'Seguridad social a cargo de la empresa', 0, NULL, NULL, 1),
(4543, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '649', '4539', 'Otros gastos sociales', 0, NULL, NULL, 1),
(4544, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '65', '4006', 'Otros gastos de gestiÃ³n', 0, NULL, NULL, 1),
(4545, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '650', '4544', 'PÃ©rdidas de crÃ©ditos comerciales incobrables', 0, NULL, NULL, 1),
(4546, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '651', '4544', 'Resultados de operaciones en comÃºn', 0, NULL, NULL, 1),
(4547, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6510', '4546', 'Beneficio transferido gestor', 0, NULL, NULL, 1),
(4548, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6511', '4546', 'PÃ©rdida soportada participe o asociado no gestor', 0, NULL, NULL, 1),
(4549, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '659', '4544', 'Otras pÃ©rdidas en gestiÃ³n corriente', 0, NULL, NULL, 1),
(4550, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '66', '4006', 'Gastos financieros', 0, NULL, NULL, 1),
(4551, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '660', '4550', 'Gastos financieros por actualizaciÃ³n de provisiones', 0, NULL, NULL, 1),
(4552, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '661', '4550', 'Intereses de obligaciones y bonos', 0, NULL, NULL, 1),
(4553, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6610', '4452', 'Intereses de obligaciones y bonos a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4554, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6611', '4452', 'Intereses de obligaciones y bonos a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4555, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6612', '4452', 'Intereses de obligaciones y bonos a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4556, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6613', '4452', 'Intereses de obligaciones y bonos a largo plazo otras empresas', 0, NULL, NULL, 1),
(4557, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6615', '4452', 'Intereses de obligaciones y bonos a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4558, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6616', '4452', 'Intereses de obligaciones y bonos a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4559, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6617', '4452', 'Intereses de obligaciones y bonos a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4560, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6618', '4452', 'Intereses de obligaciones y bonos a corto plazo otras empresas', 0, NULL, NULL, 1),
(4561, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '662', '4550', 'Intereses de deudas', 0, NULL, NULL, 1),
(4562, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6620', '4561', 'Intereses de deudas empresas del grupo', 0, NULL, NULL, 1),
(4563, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6621', '4561', 'Intereses de deudas empresas asociadas', 0, NULL, NULL, 1),
(4564, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6622', '4561', 'Intereses de deudas otras partes vinculadas', 0, NULL, NULL, 1),
(4565, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6623', '4561', 'Intereses de deudas con entidades de crÃ©dito', 0, NULL, NULL, 1),
(4566, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6624', '4561', 'Intereses de deudas otras empresas', 0, NULL, NULL, 1),
(4567, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '663', '4550', 'PÃ©rdidas por valorizaciÃ³n de activos y pasivos financieros por su valor razonable', 0, NULL, NULL, 1),
(4568, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '664', '4550', 'Gastos por dividendos de acciones o participaciones consideradas como pasivos financieros', 0, NULL, NULL, 1),
(4569, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6640', '4568', 'Dividendos de pasivos empresas del grupo', 0, NULL, NULL, 1),
(4570, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6641', '4568', 'Dividendos de pasivos empresas asociadas', 0, NULL, NULL, 1),
(4571, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6642', '4568', 'Dividendos de pasivos otras partes vinculadas', 0, NULL, NULL, 1),
(4572, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6643', '4568', 'Dividendos de pasivos otras empresas', 0, NULL, NULL, 1),
(4573, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '665', '4550', 'Intereses por descuento de efectos y operaciones de factoring', 0, NULL, NULL, 1),
(4574, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6650', '4573', 'Intereses por descuento de efectos en entidades de crÃ©dito del grupo', 0, NULL, NULL, 1),
(4575, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6651', '4573', 'Intereses por descuento de efectos en entidades de crÃ©dito asociadas', 0, NULL, NULL, 1),
(4576, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6652', '4573', 'Intereses por descuento de efectos en entidades de crÃ©dito vinculadas', 0, NULL, NULL, 1),
(4577, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6653', '4573', 'Intereses por descuento de efectos en otras entidades de crÃ©dito', 0, NULL, NULL, 1),
(4578, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6654', '4573', 'Intereses por operaciones de factoring con entidades de crÃ©dito del grupo', 0, NULL, NULL, 1),
(4579, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6655', '4573', 'Intereses por operaciones de factoring con entidades de crÃ©dito asociadas', 0, NULL, NULL, 1),
(4580, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6656', '4573', 'Intereses por operaciones de factoring con otras entidades de crÃ©dito vinculadas', 0, NULL, NULL, 1),
(4581, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6657', '4573', 'Intereses por operaciones de factoring con otras entidades de crÃ©dito', 0, NULL, NULL, 1),
(4582, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '666', '4550', 'PÃ©rdidas en participaciones y valores representativos de deuda', 0, NULL, NULL, 1),
(4583, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6660', '4582', 'PÃ©rdidas en valores representativos de deuda a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4584, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6661', '4582', 'PÃ©rdidas en valores representativos de deuda a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4585, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6662', '4582', 'PÃ©rdidas en valores representativos de deuda a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4586, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6663', '4582', 'PÃ©rdidas en participaciones y valores representativos de deuda a largo plazo otras empresas', 0, NULL, NULL, 1),
(4587, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6665', '4582', 'PÃ©rdidas en participaciones y valores representativos de deuda a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4588, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6666', '4582', 'PÃ©rdidas en participaciones y valores representativos de deuda a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4589, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6667', '4582', 'PÃ©rdidas en valores representativos de deuda a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4590, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6668', '4582', 'PÃ©rdidas en valores representativos de deuda a corto plazo otras empresas', 0, NULL, NULL, 1),
(4591, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '667', '4550', 'PÃ©rdidas de crÃ©ditos no comerciales', 0, NULL, NULL, 1),
(4592, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6670', '4591', 'PÃ©rdidas de crÃ©ditos a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4593, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6671', '4591', 'PÃ©rdidas de crÃ©ditos a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4594, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6672', '4591', 'PÃ©rdidas de crÃ©ditos a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4595, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6673', '4591', 'PÃ©rdidas de crÃ©ditos a largo plazo otras empresas', 0, NULL, NULL, 1),
(4596, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6675', '4591', 'PÃ©rdidas de crÃ©ditos a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4597, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6676', '4591', 'PÃ©rdidas de crÃ©ditos a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4598, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6677', '4591', 'PÃ©rdidas de crÃ©ditos a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4599, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6678', '4591', 'PÃ©rdidas de crÃ©ditos a corto plazo otras empresas', 0, NULL, NULL, 1),
(4600, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '668', '4550', 'Diferencias negativas de cambio', 0, NULL, NULL, 1),
(4601, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '669', '4550', 'Otros gastos financieros', 0, NULL, NULL, 1),
(4602, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '67', '4006', 'PÃ©rdidas procedentes de activos no corrientes y gastos excepcionales', 0, NULL, NULL, 1),
(4603, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '670', '4602', 'PÃ©rdidas procedentes del inmovilizado intangible', 0, NULL, NULL, 1),
(4604, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '671', '4602', 'PÃ©rdidas procedentes del inmovilizado material', 0, NULL, NULL, 1),
(4605, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '672', '4602', 'PÃ©rdidas procedentes de las inversiones inmobiliarias', 0, NULL, NULL, 1),
(4607, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '673', '4602', 'PÃ©rdidas procedentes de participaciones a largo plazo en partes vinculadas', 0, NULL, NULL, 1),
(4608, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6733', '4607', 'PÃ©rdidas procedentes de participaciones a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4609, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6734', '4607', 'PÃ©rdidas procedentes de participaciones a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4610, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6735', '4607', 'PÃ©rdidas procedentes de participaciones a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4611, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '675', '4602', 'PÃ©rdidas por operaciones con obligaciones propias', 0, NULL, NULL, 1),
(4612, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '678', '4602', 'Gastos excepcionales', 0, NULL, NULL, 1),
(4613, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '68', '4006', 'Dotaciones para amortizaciones', 0, NULL, NULL, 1),
(4614, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '680', '4613', 'AmortizaciÃ³n del inmovilizado intangible', 0, NULL, NULL, 1),
(4615, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '681', '4613', 'AmortizaciÃ³n del inmovilizado material', 0, NULL, NULL, 1),
(4616, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '682', '4613', 'AmortizaciÃ³n de las inversiones inmobiliarias', 0, NULL, NULL, 1),
(4617, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '69', '4006', 'PÃ©rdidas por deterioro y otras dotaciones', 0, NULL, NULL, 1),
(4618, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '690', '4617', 'PÃ©rdidas por deterioro del inmovilizado intangible', 0, NULL, NULL, 1),
(4619, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '691', '4617', 'PÃ©rdidas por deterioro del inmovilizado material', 0, NULL, NULL, 1),
(4620, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '692', '4617', 'PÃ©rdidas por deterioro de las inversiones inmobiliarias', 0, NULL, NULL, 1),
(4621, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '693', '4617', 'PÃ©rdidas por deterioro de existencias', 0, NULL, NULL, 1),
(4622, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6930', '4621', 'PÃ©rdidas por deterioro de productos terminados y en curso de fabricaciÃ³n', 0, NULL, NULL, 1),
(4623, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6931', '4621', 'PÃ©rdidas por deterioro de mercaderÃ­as', 0, NULL, NULL, 1),
(4624, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6932', '4621', 'PÃ©rdidas por deterioro de materias primas', 0, NULL, NULL, 1),
(4625, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6933', '4621', 'PÃ©rdidas por deterioro de otros aprovisionamientos', 0, NULL, NULL, 1),
(4626, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '694', '4617', 'PÃ©rdidas por deterioro de crÃ©ditos por operaciones comerciales', 0, NULL, NULL, 1),
(4627, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '695', '4617', 'DotaciÃ³n a la provisiÃ³n por operaciones comerciales', 0, NULL, NULL, 1),
(4628, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6954', '4627', 'DotaciÃ³n a la provisiÃ³n por contratos onerosos', 0, NULL, NULL, 1),
(4629, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6959', '4628', 'DotaciÃ³n a la provisiÃ³n para otras operaciones comerciales', 0, NULL, NULL, 1),
(4630, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '696', '4617', 'PÃ©rdidas por deterioro de participaciones y valores representativos de deuda a largo plazo', 0, NULL, NULL, 1);
INSERT INTO `llx_accounting_account` (`rowid`, `entity`, `datec`, `tms`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `fk_accounting_category`, `fk_user_author`, `fk_user_modif`, `active`) VALUES
(4631, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6960', '4630', 'PÃ©rdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4632, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6961', '4630', 'PÃ©rdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4633, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6962', '4630', 'PÃ©rdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4634, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6963', '4630', 'PÃ©rdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras empresas', 0, NULL, NULL, 1),
(4635, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6965', '4630', 'PÃ©rdidas por deterioro en valores representativos de deuda a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4636, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6966', '4630', 'PÃ©rdidas por deterioro en valores representativos de deuda a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4637, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6967', '4630', 'PÃ©rdidas por deterioro en valores representativos de deuda a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4638, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6968', '4630', 'PÃ©rdidas por deterioro en valores representativos de deuda a largo plazo otras empresas', 0, NULL, NULL, 1),
(4639, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '697', '4617', 'PÃ©rdidas por deterioro de crÃ©ditos a largo plazo', 0, NULL, NULL, 1),
(4640, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6970', '4639', 'PÃ©rdidas por deterioro de crÃ©ditos a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4641, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6971', '4639', 'PÃ©rdidas por deterioro de crÃ©ditos a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4642, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6972', '4639', 'PÃ©rdidas por deterioro de crÃ©ditos a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4643, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6973', '4639', 'PÃ©rdidas por deterioro de crÃ©ditos a largo plazo otras empresas', 0, NULL, NULL, 1),
(4644, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '698', '4617', 'PÃ©rdidas por deterioro de participaciones y valores representativos de deuda a corto plazo', 0, NULL, NULL, 1),
(4645, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6980', '4644', 'PÃ©rdidas por deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4646, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6981', '4644', 'PÃ©rdidas por deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4647, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6985', '4644', 'PÃ©rdidas por deterioro en valores representativos de deuda a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4648, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6986', '4644', 'PÃ©rdidas por deterioro en valores representativos de deuda a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4649, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6988', '4644', 'PÃ©rdidas por deterioro en valores representativos de deuda a corto plazo de otras empresas', 0, NULL, NULL, 1),
(4650, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '699', '4617', 'PÃ©rdidas por deterioro de crÃ©dito a corto plazo', 0, NULL, NULL, 1),
(4651, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6990', '4650', 'PÃ©rdidas por deterioro de crÃ©dito a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4652, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6991', '4650', 'PÃ©rdidas por deterioro de crÃ©dito a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4653, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6992', '4650', 'PÃ©rdidas por deterioro de crÃ©dito a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4654, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'COMPRAS_GASTOS', 'XXXXXX', '6993', '4650', 'PÃ©rdidas por deterioro de crÃ©dito a corto plazo otras empresas', 0, NULL, NULL, 1),
(4655, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '70', '4007', 'Ventas', 0, NULL, NULL, 1),
(4656, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'VENTAS', '700', '4655', 'Ventas de mercaderÃ­as', 0, NULL, NULL, 1),
(4657, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'VENTAS', '701', '4655', 'Ventas de productos terminados', 0, NULL, NULL, 1),
(4658, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '702', '4655', 'Ventas de productos semiterminados', 0, NULL, NULL, 1),
(4659, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '703', '4655', 'Ventas de subproductos y residuos', 0, NULL, NULL, 1),
(4660, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '704', '4655', 'Ventas de envases y embalajes', 0, NULL, NULL, 1),
(4661, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'VENTAS', '705', '4655', 'Prestaciones de servicios', 0, NULL, NULL, 1),
(4662, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '706', '4655', 'Descuentos sobre ventas por pronto pago', 0, NULL, NULL, 1),
(4663, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7060', '4662', 'Descuentos sobre ventas por pronto pago de mercaderÃ­as', 0, NULL, NULL, 1),
(4664, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7061', '4662', 'Descuentos sobre ventas por pronto pago de productos terminados', 0, NULL, NULL, 1),
(4665, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7062', '4662', 'Descuentos sobre ventas por pronto pago de productos semiterminados', 0, NULL, NULL, 1),
(4666, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7063', '4662', 'Descuentos sobre ventas por pronto pago de subproductos y residuos', 0, NULL, NULL, 1),
(4667, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '708', '4655', 'Devoluciones de ventas y operacioes similares', 0, NULL, NULL, 1),
(4668, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7080', '4667', 'Devoluciones de ventas de mercaderÃ­as', 0, NULL, NULL, 1),
(4669, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7081', '4667', 'Devoluciones de ventas de productos terminados', 0, NULL, NULL, 1),
(4670, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7082', '4667', 'Devoluciones de ventas de productos semiterminados', 0, NULL, NULL, 1),
(4671, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7083', '4667', 'Devoluciones de ventas de subproductos y residuos', 0, NULL, NULL, 1),
(4672, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7084', '4667', 'Devoluciones de ventas de envases y embalajes', 0, NULL, NULL, 1),
(4673, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '71', '4007', 'VariaciÃ³n de existencias', 0, NULL, NULL, 1),
(4674, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '710', '4673', 'VariaciÃ³n de existencias de productos en curso', 0, NULL, NULL, 1),
(4675, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '711', '4673', 'VariaciÃ³n de existencias de productos semiterminados', 0, NULL, NULL, 1),
(4676, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '712', '4673', 'VariaciÃ³n de existencias de productos terminados', 0, NULL, NULL, 1),
(4677, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '713', '4673', 'VariaciÃ³n de existencias de subproductos, residuos y materiales recuperados', 0, NULL, NULL, 1),
(4678, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '73', '4007', 'Trabajos realizados para la empresa', 0, NULL, NULL, 1),
(4679, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '730', '4678', 'Trabajos realizados para el inmovilizado intangible', 0, NULL, NULL, 1),
(4680, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '731', '4678', 'Trabajos realizados para el inmovilizado tangible', 0, NULL, NULL, 1),
(4681, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '732', '4678', 'Trabajos realizados en inversiones inmobiliarias', 0, NULL, NULL, 1),
(4682, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '733', '4678', 'Trabajos realizados para el inmovilizado material en curso', 0, NULL, NULL, 1),
(4683, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '74', '4007', 'Subvenciones, donaciones y legados', 0, NULL, NULL, 1),
(4684, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '740', '4683', 'Subvenciones, donaciones y legados a la explotaciÃ³n', 0, NULL, NULL, 1),
(4685, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '746', '4683', 'Subvenciones, donaciones y legados de capital transferidos al resultado del ejercicio', 0, NULL, NULL, 1),
(4686, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '747', '4683', 'Otras subvenciones, donaciones y legados transferidos al resultado del ejercicio', 0, NULL, NULL, 1),
(4687, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '75', '4007', 'Otros ingresos de gestiÃ³n', 0, NULL, NULL, 1),
(4688, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '751', '4687', 'Resultados de operaciones en comÃºn', 0, NULL, NULL, 1),
(4689, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7510', '4688', 'PÃ©rdida transferida gestor', 0, NULL, NULL, 1),
(4690, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7511', '4688', 'Beneficio atribuido participe o asociado no gestor', 0, NULL, NULL, 1),
(4691, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '752', '4687', 'Ingreso por arrendamiento', 0, NULL, NULL, 1),
(4692, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '753', '4687', 'Ingresos de propiedad industrial cedida en explotaciÃ³n', 0, NULL, NULL, 1),
(4693, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '754', '4687', 'Ingresos por comisiones', 0, NULL, NULL, 1),
(4694, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '755', '4687', 'Ingresos por servicios al personal', 0, NULL, NULL, 1),
(4695, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '759', '4687', 'Ingresos por servicios diversos', 0, NULL, NULL, 1),
(4696, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76', '4007', 'Ingresos financieros', 0, NULL, NULL, 1),
(4697, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '760', '4696', 'Ingresos de participaciones en instrumentos de patrimonio', 0, NULL, NULL, 1),
(4698, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7600', '4697', 'Ingresos de participaciones en instrumentos de patrimonio empresas del grupo', 0, NULL, NULL, 1),
(4699, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7601', '4697', 'Ingresos de participaciones en instrumentos de patrimonio empresas asociadas', 0, NULL, NULL, 1),
(4700, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7602', '4697', 'Ingresos de participaciones en instrumentos de patrimonio otras partes asociadas', 0, NULL, NULL, 1),
(4701, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7603', '4697', 'Ingresos de participaciones en instrumentos de patrimonio otras empresas', 0, NULL, NULL, 1),
(4702, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '761', '4696', 'Ingresos de valores representativos de deuda', 0, NULL, NULL, 1),
(4703, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7610', '4702', 'Ingresos de valores representativos de deuda empresas del grupo', 0, NULL, NULL, 1),
(4704, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7611', '4702', 'Ingresos de valores representativos de deuda empresas asociadas', 0, NULL, NULL, 1),
(4705, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7612', '4702', 'Ingresos de valores representativos de deuda otras partes asociadas', 0, NULL, NULL, 1),
(4706, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7613', '4702', 'Ingresos de valores representativos de deuda otras empresas', 0, NULL, NULL, 1),
(4707, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '762', '4696', 'Ingresos de crÃ©ditos', 0, NULL, NULL, 1),
(4708, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7620', '4707', 'Ingresos de crÃ©ditos a largo plazo', 0, NULL, NULL, 1),
(4709, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76200', '4708', 'Ingresos de crÃ©dito a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4710, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76201', '4708', 'Ingresos de crÃ©dito a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4711, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76202', '4708', 'Ingresos de crÃ©dito a largo plazo otras partes asociadas', 0, NULL, NULL, 1),
(4712, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76203', '4708', 'Ingresos de crÃ©dito a largo plazo otras empresas', 0, NULL, NULL, 1),
(4713, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7621', '4707', 'Ingresos de crÃ©ditos a corto plazo', 0, NULL, NULL, 1),
(4714, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76210', '4713', 'Ingresos de crÃ©dito a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4715, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76211', '4713', 'Ingresos de crÃ©dito a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4716, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76212', '4713', 'Ingresos de crÃ©dito a corto plazo otras partes asociadas', 0, NULL, NULL, 1),
(4717, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '76213', '4713', 'Ingresos de crÃ©dito a corto plazo otras empresas', 0, NULL, NULL, 1),
(4718, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '763', '4696', 'Beneficios por valorizaciÃ³n de activos y pasivos financieros por su valor razonable', 0, NULL, NULL, 1),
(4719, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '766', '4696', 'Beneficios en participaciones y valores representativos de deuda', 0, NULL, NULL, 1),
(4720, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7660', '4719', 'Beneficios en participaciones y valores representativos de deuda a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4721, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7661', '4719', 'Beneficios en participaciones y valores representativos de deuda a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4722, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7662', '4719', 'Beneficios en participaciones y valores representativos de deuda a largo plazo otras partes asociadas', 0, NULL, NULL, 1),
(4723, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7663', '4719', 'Beneficios en participaciones y valores representativos de deuda a largo plazo otras empresas', 0, NULL, NULL, 1),
(4724, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7665', '4719', 'Beneficios en participaciones y valores representativos de deuda a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4725, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7666', '4719', 'Beneficios en participaciones y valores representativos de deuda a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4726, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7667', '4719', 'Beneficios en participaciones y valores representativos de deuda a corto plazo otras partes asociadas', 0, NULL, NULL, 1),
(4727, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7668', '4719', 'Beneficios en participaciones y valores representativos de deuda a corto plazo otras empresas', 0, NULL, NULL, 1),
(4728, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '768', '4696', 'Diferencias positivas de cambio', 0, NULL, NULL, 1),
(4729, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '769', '4696', 'Otros ingresos financieros', 0, NULL, NULL, 1),
(4730, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '77', '4007', 'Beneficios procedentes de activos no corrientes e ingresos excepcionales', 0, NULL, NULL, 1),
(4731, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '770', '4730', 'Beneficios procedentes del inmovilizado intangible', 0, NULL, NULL, 1),
(4732, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '771', '4730', 'Beneficios procedentes del inmovilizado material', 0, NULL, NULL, 1),
(4733, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '772', '4730', 'Beneficios procedentes de las inversiones inmobiliarias', 0, NULL, NULL, 1),
(4734, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '773', '4730', 'Beneficios procedentes de participaciones a largo plazo en partes vinculadas', 0, NULL, NULL, 1),
(4735, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7733', '4734', 'Beneficios procedentes de participaciones a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4736, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7734', '4734', 'Beneficios procedentes de participaciones a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4737, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7735', '4734', 'Beneficios procedentes de participaciones a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4738, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '775', '4730', 'Beneficios por operaciones con obligaciones propias', 0, NULL, NULL, 1),
(4739, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '778', '4730', 'Ingresos excepcionales', 0, NULL, NULL, 1),
(4741, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '79', '4007', 'Excesos y aplicaciones de provisiones y pÃ©rdidas por deterioro', 0, NULL, NULL, 1),
(4742, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '790', '4741', 'RevisiÃ³n del deterioro del inmovilizado intangible', 0, NULL, NULL, 1),
(4743, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '791', '4741', 'RevisiÃ³n del deterioro del inmovilizado material', 0, NULL, NULL, 1),
(4744, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '792', '4741', 'RevisiÃ³n del deterioro de las inversiones inmobiliarias', 0, NULL, NULL, 1),
(4745, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '793', '4741', 'RevisiÃ³n del deterioro de las existencias', 0, NULL, NULL, 1),
(4746, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7930', '4745', 'RevisiÃ³n del deterioro de productos terminados y en curso de fabricaciÃ³n', 0, NULL, NULL, 1),
(4747, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7931', '4745', 'RevisiÃ³n del deterioro de mercaderÃ­as', 0, NULL, NULL, 1),
(4748, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7932', '4745', 'RevisiÃ³n del deterioro de materias primas', 0, NULL, NULL, 1),
(4749, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7933', '4745', 'RevisiÃ³n del deterioro de otros aprovisionamientos', 0, NULL, NULL, 1),
(4750, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '794', '4741', 'RevisiÃ³n del deterioro de crÃ©ditos por operaciones comerciales', 0, NULL, NULL, 1),
(4751, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '795', '4741', 'Exceso de provisiones', 0, NULL, NULL, 1),
(4752, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7951', '4751', 'Exceso de provisiÃ³n para impuestos', 0, NULL, NULL, 1),
(4753, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7952', '4751', 'Exceso de provisiÃ³n para otras responsabilidades', 0, NULL, NULL, 1),
(4755, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7954', '4751', 'Exceso de provisiÃ³n para operaciones comerciales', 0, NULL, NULL, 1),
(4756, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '79544', '4755', 'Exceso de provisiÃ³n por contratos onerosos', 0, NULL, NULL, 1),
(4757, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '79549', '4755', 'Exceso de provisiÃ³n para otras operaciones comerciales', 0, NULL, NULL, 1),
(4758, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7955', '4751', 'Exceso de provisiÃ³n para actuaciones medioambienteales', 0, NULL, NULL, 1),
(4759, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '796', '4741', 'RevisiÃ³n del deterioro de participaciones y valores representativos de deuda a largo plazo', 0, NULL, NULL, 1),
(4760, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7960', '4759', 'RevisiÃ³n del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4761, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7961', '4759', 'RevisiÃ³n del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4762, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7962', '4759', 'RevisiÃ³n del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4763, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7963', '4759', 'RevisiÃ³n del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras empresas', 0, NULL, NULL, 1),
(4764, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7965', '4759', 'RevisiÃ³n del deterioro de valores representativos a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4765, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7966', '4759', 'RevisiÃ³n del deterioro de valores representativos a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4766, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7967', '4759', 'RevisiÃ³n del deterioro de valores representativos a largo otras partes vinculadas', 0, NULL, NULL, 1),
(4767, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7968', '4759', 'RevisiÃ³n del deterioro de valores representativos a largo plazo otras empresas', 0, NULL, NULL, 1),
(4768, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '797', '4741', 'RevisiÃ³n del deterioro de crÃ©ditos a largo plazo', 0, NULL, NULL, 1),
(4769, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7970', '4768', 'RevisiÃ³n del deterioro de crÃ©ditos a largo plazo empresas del grupo', 0, NULL, NULL, 1),
(4770, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7971', '4768', 'RevisiÃ³n del deterioro de crÃ©ditos a largo plazo empresas asociadas', 0, NULL, NULL, 1),
(4771, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7972', '4768', 'RevisiÃ³n del deterioro de crÃ©ditos a largo plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4772, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7973', '4768', 'RevisiÃ³n del deterioro de crÃ©ditos a largo plazo otras empresas', 0, NULL, NULL, 1),
(4773, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '798', '4741', 'RevisiÃ³n del deterioro de participaciones y valores representativos de deuda a corto plazo', 0, NULL, NULL, 1),
(4774, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7980', '4773', 'RevisiÃ³n del deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4775, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7981', '4773', 'RevisiÃ³n del deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4776, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7985', '4773', 'RevisiÃ³n del deterioro de valores representativos de deuda a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4777, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7986', '4773', 'RevisiÃ³n del deterioro de valores representativos de deuda a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4778, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7987', '4773', 'RevisiÃ³n del deterioro de valores representativos de deuda a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4779, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7988', '4773', 'RevisiÃ³n del deterioro de valores representativos de deuda a corto plazo otras empresas', 0, NULL, NULL, 1),
(4780, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '799', '4741', 'RevisiÃ³n del deterioro de crÃ©ditos a corto plazo', 0, NULL, NULL, 1),
(4781, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7990', '4780', 'RevisiÃ³n del deterioro de crÃ©ditos a corto plazo empresas del grupo', 0, NULL, NULL, 1),
(4782, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7991', '4780', 'RevisiÃ³n del deterioro de crÃ©ditos a corto plazo empresas asociadas', 0, NULL, NULL, 1),
(4783, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7992', '4780', 'RevisiÃ³n del deterioro de crÃ©ditos a corto plazo otras partes vinculadas', 0, NULL, NULL, 1),
(4784, 1, NULL, '2006-01-02 00:01:58', 'PCG08-PYME', 'VENTAS_E_INGRESOS', 'XXXXXX', '7993', '4780', 'RevisiÃ³n del deterioro de crÃ©ditos a corto plazo otras empresas', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_bookkeeping`
--

CREATE TABLE IF NOT EXISTS `llx_accounting_bookkeeping` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `doc_date` date NOT NULL,
  `doc_type` varchar(30) NOT NULL,
  `doc_ref` varchar(300) NOT NULL,
  `fk_doc` int(11) NOT NULL,
  `fk_docdet` int(11) NOT NULL,
  `code_tiers` varchar(24) DEFAULT NULL,
  `numero_compte` varchar(32) DEFAULT NULL,
  `label_compte` varchar(128) NOT NULL,
  `debit` double NOT NULL,
  `credit` double NOT NULL,
  `montant` double NOT NULL,
  `sens` varchar(1) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `code_journal` varchar(10) DEFAULT NULL,
  `piece_num` int(11) NOT NULL,
  `validated` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_fiscalyear`
--

CREATE TABLE IF NOT EXISTS `llx_accounting_fiscalyear` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_journal`
--

CREATE TABLE IF NOT EXISTS `llx_accounting_journal` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `nature` smallint(6) NOT NULL DEFAULT '0',
  `active` smallint(6) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_accounting_journal_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_accounting_system`
--

CREATE TABLE IF NOT EXISTS `llx_accounting_system` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `pcg_version` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `active` smallint(6) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_accounting_system_pcg_version` (`pcg_version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `llx_accounting_system`
--

INSERT INTO `llx_accounting_system` (`rowid`, `pcg_version`, `label`, `active`) VALUES
(1, 'PCG99-ABREGE', 'The simple accountancy french plan', 1),
(2, 'PCG99-BASE', 'The base accountancy french plan', 1),
(3, 'PCMN-BASE', 'The base accountancy belgium plan', 1),
(4, 'PCG08-PYME', 'The PYME accountancy spanish plan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm`
--

CREATE TABLE IF NOT EXISTS `llx_actioncomm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_ext` varchar(128) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datep` datetime DEFAULT NULL,
  `datep2` datetime DEFAULT NULL,
  `fk_action` int(11) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `fk_user_action` int(11) DEFAULT NULL,
  `fk_user_done` int(11) DEFAULT NULL,
  `transparency` int(11) DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `fulldayevent` smallint(6) NOT NULL DEFAULT '0',
  `punctual` smallint(6) NOT NULL DEFAULT '1',
  `percent` smallint(6) NOT NULL DEFAULT '0',
  `location` varchar(128) DEFAULT NULL,
  `durationp` double DEFAULT NULL,
  `label` varchar(256) NOT NULL,
  `note` text,
  `email_subject` varchar(256) DEFAULT NULL,
  `email_msgid` varchar(256) DEFAULT NULL,
  `email_from` varchar(256) DEFAULT NULL,
  `email_sender` varchar(256) DEFAULT NULL,
  `email_to` varchar(256) DEFAULT NULL,
  `email_tocc` varchar(256) DEFAULT NULL,
  `email_tobcc` varchar(256) DEFAULT NULL,
  `errors_to` varchar(256) DEFAULT NULL,
  `recurid` varchar(128) DEFAULT NULL,
  `recurrule` varchar(128) DEFAULT NULL,
  `recurdateend` datetime DEFAULT NULL,
  `fk_element` int(11) DEFAULT NULL,
  `elementtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_actioncomm_fk_soc` (`fk_soc`),
  KEY `idx_actioncomm_fk_contact` (`fk_contact`),
  KEY `idx_actioncomm_code` (`code`),
  KEY `idx_actioncomm_fk_element` (`fk_element`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_actioncomm_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_actioncomm_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_actioncomm_resources`
--

CREATE TABLE IF NOT EXISTS `llx_actioncomm_resources` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_actioncomm` int(11) NOT NULL,
  `element_type` varchar(50) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `answer_status` varchar(50) DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `transparency` smallint(6) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_actioncomm_resources` (`fk_actioncomm`,`element_type`,`fk_element`),
  KEY `idx_actioncomm_resources_fk_element` (`fk_element`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent`
--

CREATE TABLE IF NOT EXISTS `llx_adherent` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `civility` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `pass_crypted` varchar(128) DEFAULT NULL,
  `fk_adherent_type` int(11) NOT NULL,
  `morphy` varchar(3) NOT NULL,
  `societe` varchar(128) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `datefin` datetime DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `datevalid` datetime DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_adherent_login` (`login`,`entity`),
  UNIQUE KEY `uk_adherent_fk_soc` (`fk_soc`),
  KEY `idx_adherent_fk_adherent_type` (`fk_adherent_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_type`
--

CREATE TABLE IF NOT EXISTS `llx_adherent_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `libelle` varchar(50) NOT NULL,
  `cotisation` varchar(3) NOT NULL DEFAULT 'yes',
  `vote` varchar(3) NOT NULL DEFAULT 'yes',
  `note` text,
  `mail_valid` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_adherent_type_libelle` (`libelle`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_adherent_type_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_adherent_type_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_adherent_type_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_advtargetemailing`
--

CREATE TABLE IF NOT EXISTS `llx_advtargetemailing` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_mailing` int(11) NOT NULL,
  `filtervalue` text,
  `fk_user_author` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `fk_user_mod` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_advtargetemailing_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank`
--

CREATE TABLE IF NOT EXISTS `llx_bank` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datev` date DEFAULT NULL,
  `dateo` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `label` varchar(255) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_rappro` int(11) DEFAULT NULL,
  `fk_type` varchar(6) DEFAULT NULL,
  `num_releve` varchar(50) DEFAULT NULL,
  `num_chq` varchar(50) DEFAULT NULL,
  `rappro` tinyint(4) DEFAULT '0',
  `note` text,
  `fk_bordereau` int(11) DEFAULT '0',
  `banque` varchar(255) DEFAULT NULL,
  `emetteur` varchar(255) DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_bank_datev` (`datev`),
  KEY `idx_bank_dateo` (`dateo`),
  KEY `idx_bank_fk_account` (`fk_account`),
  KEY `idx_bank_rappro` (`rappro`),
  KEY `idx_bank_num_releve` (`num_releve`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_account`
--

CREATE TABLE IF NOT EXISTS `llx_bank_account` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(12) NOT NULL,
  `label` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `bank` varchar(60) DEFAULT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `country_iban` varchar(2) DEFAULT NULL,
  `cle_iban` varchar(2) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `courant` smallint(6) NOT NULL DEFAULT '0',
  `clos` smallint(6) NOT NULL DEFAULT '0',
  `rappro` smallint(6) DEFAULT '1',
  `url` varchar(128) DEFAULT NULL,
  `account_number` varchar(32) DEFAULT NULL,
  `accountancy_journal` varchar(16) DEFAULT NULL,
  `currency_code` varchar(3) NOT NULL,
  `min_allowed` int(11) DEFAULT '0',
  `min_desired` int(11) DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bank_account_label` (`label`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_account_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_bank_account_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_bank_account_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_categ`
--

CREATE TABLE IF NOT EXISTS `llx_bank_categ` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_class`
--

CREATE TABLE IF NOT EXISTS `llx_bank_class` (
  `lineid` int(11) NOT NULL,
  `fk_categ` int(11) NOT NULL,
  UNIQUE KEY `uk_bank_class_lineid` (`lineid`,`fk_categ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bank_url`
--

CREATE TABLE IF NOT EXISTS `llx_bank_url` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_bank` int(11) DEFAULT NULL,
  `url_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(24) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bank_url` (`fk_bank`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bookmark`
--

CREATE TABLE IF NOT EXISTS `llx_bookmark` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `dateb` datetime DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(16) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `favicon` varchar(24) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bookmark_url` (`fk_user`,`url`),
  UNIQUE KEY `uk_bookmark_title` (`fk_user`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_bordereau_cheque`
--

CREATE TABLE IF NOT EXISTS `llx_bordereau_cheque` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `datec` datetime NOT NULL,
  `date_bordereau` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL,
  `nbcheque` smallint(6) NOT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bordereau_cheque` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_boxes`
--

CREATE TABLE IF NOT EXISTS `llx_boxes` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `box_id` int(11) NOT NULL,
  `position` smallint(6) NOT NULL,
  `box_order` varchar(3) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `maxline` int(11) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes` (`entity`,`box_id`,`position`,`fk_user`),
  KEY `idx_boxes_boxid` (`box_id`),
  KEY `idx_boxes_fk_user` (`fk_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `llx_boxes`
--

INSERT INTO `llx_boxes` (`rowid`, `entity`, `box_id`, `position`, `box_order`, `fk_user`, `maxline`, `params`) VALUES
(1, 1, 1, 0, 'A01', 0, NULL, NULL),
(2, 1, 2, 0, 'B16', 0, NULL, NULL),
(3, 1, 3, 0, 'A17', 0, NULL, NULL),
(4, 1, 4, 0, 'B18', 0, NULL, NULL),
(5, 1, 5, 0, 'A19', 0, NULL, NULL),
(6, 1, 6, 0, 'B20', 0, NULL, NULL),
(7, 1, 7, 0, 'A21', 0, NULL, NULL),
(8, 1, 8, 0, 'B22', 0, NULL, NULL),
(9, 1, 9, 0, 'A23', 0, NULL, NULL),
(10, 1, 10, 0, 'B24', 0, NULL, NULL),
(11, 1, 11, 0, 'A25', 0, NULL, NULL),
(20, 1, 20, 0, 'B26', 0, NULL, NULL),
(21, 1, 21, 0, 'A15', 0, NULL, NULL),
(22, 1, 22, 0, 'B14', 0, NULL, NULL),
(23, 1, 23, 0, 'A13', 0, NULL, NULL),
(24, 1, 24, 0, 'B02', 0, NULL, NULL),
(25, 1, 25, 0, 'A03', 0, NULL, NULL),
(34, 1, 34, 0, 'B04', 0, NULL, NULL),
(35, 1, 35, 0, 'A05', 0, NULL, NULL),
(38, 1, 38, 0, 'B06', 0, NULL, NULL),
(39, 1, 39, 0, 'A07', 0, NULL, NULL),
(40, 1, 40, 0, 'B08', 0, NULL, NULL),
(41, 1, 41, 0, 'A09', 0, NULL, NULL),
(42, 1, 42, 0, 'B10', 0, NULL, NULL),
(43, 1, 43, 0, 'A11', 0, NULL, NULL),
(44, 1, 44, 0, 'B12', 0, NULL, NULL),
(45, 1, 45, 0, 'A27', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_boxes_def`
--

CREATE TABLE IF NOT EXISTS `llx_boxes_def` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes_def` (`file`,`entity`,`note`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `llx_boxes_def`
--

INSERT INTO `llx_boxes_def` (`rowid`, `file`, `entity`, `tms`, `note`) VALUES
(1, 'box_members.php', 1, '2006-01-02 00:03:37', NULL),
(2, 'box_clients.php', 1, '2006-01-02 00:04:11', NULL),
(3, 'box_prospect.php', 1, '2006-01-02 00:04:11', NULL),
(4, 'box_contacts.php', 1, '2006-01-02 00:04:11', NULL),
(5, 'box_activity.php', 1, '2006-01-02 00:04:11', '(WarningUsingThisBoxSlowDown)'),
(6, 'box_goodcustomers.php', 1, '2006-01-02 00:04:11', '(WarningUsingThisBoxSlowDown)'),
(7, 'box_commandes.php', 1, '2006-01-02 00:04:13', NULL),
(8, 'box_graph_orders_permonth.php', 1, '2006-01-02 00:04:13', NULL),
(9, 'box_contracts.php', 1, '2006-01-02 00:04:14', NULL),
(10, 'box_services_expired.php', 1, '2006-01-02 00:04:14', NULL),
(11, 'box_ficheinter.php', 1, '2006-01-02 00:04:14', NULL),
(20, 'box_graph_invoices_supplier_permonth.php', 1, '2006-01-02 00:04:25', NULL),
(21, 'box_graph_orders_supplier_permonth.php', 1, '2006-01-02 00:04:25', NULL),
(22, 'box_fournisseurs.php', 1, '2006-01-02 00:04:25', NULL),
(23, 'box_factures_fourn_imp.php', 1, '2006-01-02 00:04:25', NULL),
(24, 'box_factures_fourn.php', 1, '2006-01-02 00:04:25', NULL),
(25, 'box_supplier_orders.php', 1, '2006-01-02 00:04:25', NULL),
(34, 'box_graph_propales_permonth.php', 1, '2006-01-02 00:04:29', NULL),
(35, 'box_propales.php', 1, '2006-01-02 00:04:29', NULL),
(38, 'box_graph_product_distribution.php', 1, '2006-01-02 00:04:29', NULL),
(39, 'box_factures_imp.php', 1, '2006-01-02 00:04:30', NULL),
(40, 'box_factures.php', 1, '2006-01-02 00:04:30', NULL),
(41, 'box_graph_invoices_permonth.php', 1, '2006-01-02 00:04:30', NULL),
(42, 'box_comptes.php', 1, '2006-01-02 00:04:30', NULL),
(43, 'box_project.php', 1, '2006-01-02 00:04:43', NULL),
(44, 'box_task.php', 1, '2006-01-02 00:04:43', NULL),
(45, 'box_actions.php', 1, '2006-01-02 00:04:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_budget`
--

CREATE TABLE IF NOT EXISTS `llx_budget` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_budget_lines`
--

CREATE TABLE IF NOT EXISTS `llx_budget_lines` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_budget` int(11) NOT NULL,
  `fk_project_ids` varchar(255) NOT NULL,
  `amount` double(24,8) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_budget_lines` (`fk_budget`,`fk_project_ids`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie`
--

CREATE TABLE IF NOT EXISTS `llx_categorie` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `description` text,
  `color` varchar(8) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_categorie_ref` (`entity`,`fk_parent`,`label`,`type`),
  KEY `idx_categorie_type` (`type`),
  KEY `idx_categorie_label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categories_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_categories_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_categories_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_account`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_account` (
  `fk_categorie` int(11) NOT NULL,
  `fk_account` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_account`),
  KEY `idx_categorie_account_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_account_fk_account` (`fk_account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_contact`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_contact` (
  `fk_categorie` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_socpeople`),
  KEY `idx_categorie_contact_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_contact_fk_socpeople` (`fk_socpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_fournisseur`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_fournisseur` (
  `fk_categorie` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_soc`),
  KEY `idx_categorie_fournisseur_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_fournisseur_fk_societe` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_lang`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_lang` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_category` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_category_lang` (`fk_category`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_member`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_member` (
  `fk_categorie` int(11) NOT NULL,
  `fk_member` int(11) NOT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_member`),
  KEY `idx_categorie_member_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_member_fk_member` (`fk_member`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_product`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_product` (
  `fk_categorie` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_product`),
  KEY `idx_categorie_product_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_product_fk_product` (`fk_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_project`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_project` (
  `fk_categorie` int(11) NOT NULL,
  `fk_project` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_project`),
  KEY `idx_categorie_project_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_project_fk_project` (`fk_project`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_societe`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_societe` (
  `fk_categorie` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_soc`),
  KEY `idx_categorie_societe_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_societe_fk_societe` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_categorie_user`
--

CREATE TABLE IF NOT EXISTS `llx_categorie_user` (
  `fk_categorie` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_user`),
  KEY `idx_categorie_user_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_user_fk_user` (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_chargesociales`
--

CREATE TABLE IF NOT EXISTS `llx_chargesociales` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_ech` datetime NOT NULL,
  `libelle` varchar(80) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_type` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `periode` date DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande`
--

CREATE TABLE IF NOT EXISTS `llx_commande` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `source` smallint(6) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `amount_ht` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `facture` tinyint(4) DEFAULT '0',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_commande_ref` (`ref`,`entity`),
  KEY `idx_commande_fk_soc` (`fk_soc`),
  KEY `idx_commande_fk_user_author` (`fk_user_author`),
  KEY `idx_commande_fk_user_valid` (`fk_user_valid`),
  KEY `idx_commande_fk_user_cloture` (`fk_user_cloture`),
  KEY `idx_commande_fk_projet` (`fk_projet`),
  KEY `idx_commande_fk_account` (`fk_account`),
  KEY `idx_commande_fk_currency` (`fk_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commandedet`
--

CREATE TABLE IF NOT EXISTS `llx_commandedet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_commandedet_fk_commande` (`fk_commande`),
  KEY `idx_commandedet_fk_product` (`fk_product`),
  KEY `fk_commandedet_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commandedet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_commandedet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commandedet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_commande_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(64) DEFAULT NULL,
  `ref_supplier` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_approve2` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `fk_user_approve2` int(11) DEFAULT NULL,
  `source` smallint(6) NOT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `billed` smallint(6) DEFAULT '0',
  `amount_ht` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` datetime DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `fk_input_method` int(11) DEFAULT '0',
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_commande_fournisseur_ref` (`ref`,`fk_soc`,`entity`),
  KEY `idx_commande_fournisseur_fk_soc` (`fk_soc`),
  KEY `billed` (`billed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseurdet`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseurdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `fk_commande_fournisseurdet_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseurdet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseurdet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseurdet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_dispatch`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur_dispatch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `fk_commandefourndet` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseur_dispatch_fk_commande` (`fk_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseur_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_commande_fournisseur_log`
--

CREATE TABLE IF NOT EXISTS `llx_commande_fournisseur_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datelog` datetime NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_statut` smallint(6) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_const`
--

CREATE TABLE IF NOT EXISTS `llx_const` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `type` varchar(6) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `note` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_const` (`name`,`entity`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=233 ;

--
-- Dumping data for table `llx_const`
--

INSERT INTO `llx_const` (`rowid`, `name`, `entity`, `value`, `type`, `visible`, `note`, `tms`) VALUES
(2, 'MAIN_FEATURES_LEVEL', 0, '0', 'chaine', 1, 'Level of features to show: -1=stable+deprecated, 0=stable only (default), 1=stable+experimental, 2=stable+experimental+development', '2006-01-02 00:02:00'),
(3, 'MAIN_LOGTOHTML', 0, '0', 'chaine', 1, 'If this constants is defined, it is possible to have logs inside pages by adding the parameter &logtohtml=1', '2006-01-02 00:02:00'),
(4, 'MAILING_LIMIT_SENDBYWEB', 0, '25', 'chaine', 1, 'Number of targets to defined packet size when sending mass email', '2006-01-02 00:02:00'),
(5, 'MAIN_ENABLE_LOG_TO_HTML', 0, '0', 'chaine', 1, 'If this option is set to 1, it is possible to see log output at end of HTML sources by adding paramater logtohtml=1 on URL', '2006-01-02 00:02:00'),
(6, 'SYSLOG_HANDLERS', 0, '["mod_syslog_file"]', 'chaine', 0, 'Which logger to use', '2006-01-02 00:02:00'),
(7, 'SYSLOG_FILE', 0, 'DOL_DATA_ROOT/dolibarr.log', 'chaine', 0, 'Directory where to write log file', '2006-01-02 00:02:00'),
(8, 'SYSLOG_LEVEL', 0, '7', 'chaine', 0, 'Level of debug info to show', '2006-01-02 00:02:00'),
(9, 'MAIN_UPLOAD_DOC', 0, '2048', 'chaine', 0, 'Max size for file upload (0 means no upload allowed)', '2006-01-02 00:02:00'),
(10, 'MAIN_MONNAIE', 1, 'EUR', 'chaine', 0, 'Monnaie', '2006-01-02 00:02:00'),
(11, 'MAIN_MAIL_SMTP_SERVER', 1, '', 'chaine', 0, 'Host or ip address for SMTP server', '2006-01-02 00:02:00'),
(12, 'MAIN_MAIL_SMTP_PORT', 1, '', 'chaine', 0, 'Port for SMTP server', '2006-01-02 00:02:00'),
(13, 'MAIN_MAIL_EMAIL_FROM', 1, 'robot@domain.com', 'chaine', 0, 'EMail emetteur pour les emails automatiques Dolibarr', '2006-01-02 00:02:00'),
(14, 'MAIN_SIZE_LISTE_LIMIT', 0, '25', 'chaine', 0, 'Longueur maximum des listes', '2006-01-02 00:02:00'),
(15, 'MAIN_SIZE_SHORTLISTE_LIMIT', 0, '4', 'chaine', 0, 'Longueur maximum des listes courtes (fiche client)', '2006-01-02 00:02:00'),
(16, 'MAIN_SHOW_WORKBOARD', 0, '1', 'yesno', 0, 'Affichage tableau de bord de travail Dolibarr', '2006-01-02 00:02:00'),
(17, 'MAIN_MENU_STANDARD', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users', '2006-01-02 00:02:00'),
(18, 'MAIN_MENUFRONT_STANDARD', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users', '2006-01-02 00:02:00'),
(19, 'MAIN_MENU_SMARTPHONE', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users using smartphones', '2006-01-02 00:02:00'),
(20, 'MAIN_MENUFRONT_SMARTPHONE', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users using smartphones', '2006-01-02 00:02:00'),
(21, 'MAIN_DELAY_ACTIONS_TODO', 1, '7', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur actions planifiÃ©es non rÃ©alisÃ©es', '2006-01-02 00:02:00'),
(22, 'MAIN_DELAY_ORDERS_TO_PROCESS', 1, '2', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur commandes clients non traitÃ©es', '2006-01-02 00:02:00'),
(23, 'MAIN_DELAY_SUPPLIER_ORDERS_TO_PROCESS', 1, '7', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur commandes fournisseurs non traitÃ©es', '2006-01-02 00:02:00'),
(24, 'MAIN_DELAY_PROPALS_TO_CLOSE', 1, '31', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur propales Ã  cloturer', '2006-01-02 00:02:00'),
(25, 'MAIN_DELAY_PROPALS_TO_BILL', 1, '7', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur propales non facturÃ©es', '2006-01-02 00:02:00'),
(26, 'MAIN_DELAY_CUSTOMER_BILLS_UNPAYED', 1, '31', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur factures client impayÃ©es', '2006-01-02 00:02:00'),
(27, 'MAIN_DELAY_SUPPLIER_BILLS_TO_PAY', 1, '2', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur factures fournisseur impayÃ©es', '2006-01-02 00:02:00'),
(28, 'MAIN_DELAY_NOT_ACTIVATED_SERVICES', 1, '0', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur services Ã  activer', '2006-01-02 00:02:00'),
(29, 'MAIN_DELAY_RUNNING_SERVICES', 1, '0', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur services expirÃ©s', '2006-01-02 00:02:00'),
(30, 'MAIN_DELAY_MEMBERS', 1, '31', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur cotisations adhÃ©rent en retard', '2006-01-02 00:02:00'),
(31, 'MAIN_DELAY_TRANSACTIONS_TO_CONCILIATE', 1, '62', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur rapprochements bancaires Ã  faire', '2006-01-02 00:02:00'),
(32, 'MAIN_DELAY_EXPENSEREPORTS_TO_PAY', 1, '31', 'chaine', 0, 'TolÃ©rance de retard avant alerte (en jours) sur les notes de frais impayÃ©es', '2006-01-02 00:02:00'),
(33, 'MAIN_FIX_FOR_BUGGED_MTA', 1, '1', 'chaine', 1, 'Set constant to fix email ending from PHP with some linux ike system', '2006-01-02 00:02:00'),
(34, 'MAILING_EMAIL_FROM', 1, 'dolibarr@domain.com', 'chaine', 0, 'EMail emmetteur pour les envois d emailings', '2006-01-02 00:02:00'),
(35, 'MAIN_MODULE_USER', 0, '1', NULL, 0, NULL, '2006-01-02 00:02:18'),
(36, 'DATABASE_PWD_ENCRYPTED', 1, '1', 'chaine', 0, '', '2006-01-02 00:02:18'),
(37, 'MAIN_VERSION_LAST_INSTALL', 0, '4.0.2', 'chaine', 0, 'Dolibarr version when install', '2006-01-02 00:02:18'),
(39, 'MAIN_MODULE_ADHERENT', 1, '1', NULL, 0, NULL, '2006-01-02 00:03:37'),
(40, 'ADHERENT_MAIL_RESIL', 1, 'Votre adhÃ©sion vient d''Ãªtre rÃ©siliÃ©e.\r\nNous espÃ©rons vous revoir trÃ¨s bientÃ´t', 'texte', 0, 'Mail de rÃ©siliation', '2006-01-02 00:03:37'),
(41, 'ADHERENT_MAIL_VALID', 1, 'Votre adhÃ©sion vient d''Ãªtre validÃ©e. \r\nVoici le rappel de vos coordonnÃ©es (toute information erronÃ©e entrainera la non validation de votre inscription) :\r\n\r\n%INFOS%\r\n\r\n', 'texte', 0, 'Mail de validation', '2006-01-02 00:03:37'),
(42, 'ADHERENT_MAIL_VALID_SUBJECT', 1, 'Votre adhÃ©sion a Ã©tÃ© validÃ©e', 'chaine', 0, 'Sujet du mail de validation', '2006-01-02 00:03:37'),
(43, 'ADHERENT_MAIL_RESIL_SUBJECT', 1, 'RÃ©siliation de votre adhÃ©sion', 'chaine', 0, 'Sujet du mail de rÃ©siliation', '2006-01-02 00:03:37'),
(44, 'ADHERENT_MAIL_FROM', 1, '', 'chaine', 0, 'From des mails', '2006-01-02 00:03:37'),
(45, 'ADHERENT_MAIL_COTIS', 1, 'Bonjour %FIRSTNAME%,\r\nCet email confirme que votre cotisation a Ã©tÃ© reÃ§ue\r\net enregistrÃ©e', 'texte', 0, 'Mail de validation de cotisation', '2006-01-02 00:03:37'),
(46, 'ADHERENT_MAIL_COTIS_SUBJECT', 1, 'ReÃ§u de votre cotisation', 'chaine', 0, 'Sujet du mail de validation de cotisation', '2006-01-02 00:03:37'),
(47, 'ADHERENT_CARD_HEADER_TEXT', 1, '%YEAR%', 'chaine', 0, 'Texte imprimÃ© sur le haut de la carte adhÃ©rent', '2006-01-02 00:03:37'),
(48, 'ADHERENT_CARD_FOOTER_TEXT', 1, '%COMPANY%', 'chaine', 0, 'Texte imprimÃ© sur le bas de la carte adhÃ©rent', '2006-01-02 00:03:37'),
(49, 'ADHERENT_CARD_TEXT', 1, '%FULLNAME%\r\nID: %ID%\r\n%EMAIL%\r\n%ADDRESS%\r\n%ZIP% %TOWN%\r\n%COUNTRY%', 'texte', 0, 'Text to print on member cards', '2006-01-02 00:03:37'),
(50, 'ADHERENT_MAILMAN_ADMINPW', 1, '', 'chaine', 0, 'Mot de passe Admin des liste mailman', '2006-01-02 00:03:37'),
(51, 'ADHERENT_BANK_USE_AUTO', 1, '', 'yesno', 0, 'Insertion automatique des cotisations dans le compte banquaire', '2006-01-02 00:03:37'),
(52, 'ADHERENT_BANK_ACCOUNT', 1, '', 'chaine', 0, 'ID du Compte banquaire utilise', '2006-01-02 00:03:37'),
(53, 'ADHERENT_BANK_CATEGORIE', 1, '', 'chaine', 0, 'ID de la catÃ©gorie banquaire des cotisations', '2006-01-02 00:03:37'),
(54, 'ADHERENT_ETIQUETTE_TYPE', 1, 'L7163', 'chaine', 0, 'Type of address sheets', '2006-01-02 00:03:37'),
(55, 'ADHERENT_ETIQUETTE_TEXT', 1, '%FULLNAME%\n%ADDRESS%\n%ZIP% %TOWN%\n%COUNTRY%', 'texte', 0, 'Text to print on member address sheets', '2006-01-02 00:03:37'),
(56, 'MAIN_MODULE_HOLIDAY', 1, '1', NULL, 0, NULL, '2006-01-02 00:03:40'),
(57, 'MAIN_MODULE_HOLIDAY_TABS_0', 1, 'user:+paidholidays:CPTitreMenu:holiday:$user->rights->holiday->read:/holiday/list.php?mainmenu=holiday&id=__ID__', 'chaine', 0, NULL, '2006-01-02 00:03:40'),
(58, 'MAIN_MODULE_EXPENSEREPORT', 1, '1', NULL, 0, NULL, '2006-01-02 00:03:42'),
(59, 'EXPENSEREPORT_ADDON_PDF', 1, 'standard', 'chaine', 0, 'Name of manager to build PDF expense reports documents', '2006-01-02 00:03:42'),
(60, 'MAIN_MODULE_SALARIES', 1, '1', NULL, 0, NULL, '2006-01-02 00:03:45'),
(61, 'SALARIES_ACCOUNTING_ACCOUNT_PAYMENT', 1, '421', 'chaine', 0, NULL, '2006-01-02 00:03:45'),
(62, 'SALARIES_ACCOUNTING_ACCOUNT_CHARGE', 1, '641', 'chaine', 0, NULL, '2006-01-02 00:03:45'),
(64, 'SOCIETE_CODECLIENT_ADDON', 1, 'mod_codeclient_monkey', 'chaine', 0, 'Module to control third parties codes', '2006-01-02 00:04:11'),
(65, 'SOCIETE_CODECOMPTA_ADDON', 1, 'mod_codecompta_panicum', 'chaine', 0, 'Module to control third parties codes', '2006-01-02 00:04:11'),
(66, 'SOCIETE_FISCAL_MONTH_START', 1, '', 'chaine', 0, 'Mettre le numero du mois du debut d\\''annee fiscale, ex: 9 pour septembre', '2006-01-02 00:04:11'),
(67, 'COMPANY_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/thirdparties', 'chaine', 0, NULL, '2006-01-02 00:04:11'),
(68, 'SOCIETE_ADD_REF_IN_LIST', 1, '', 'yesno', 0, 'Display customer ref into select list', '2006-01-02 00:04:11'),
(69, 'MAIN_MODULE_EXPEDITION', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:13'),
(70, 'EXPEDITION_ADDON_PDF', 1, 'rouget', 'chaine', 0, 'Nom du gestionnaire de generation des bons expeditions en PDF', '2006-01-02 00:04:13'),
(71, 'EXPEDITION_ADDON_NUMBER', 1, 'mod_expedition_safor', 'chaine', 0, 'Nom du gestionnaire de numerotation des expeditions', '2006-01-02 00:04:13'),
(72, 'EXPEDITION_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/shipment', 'chaine', 0, NULL, '2006-01-02 00:04:13'),
(73, 'LIVRAISON_ADDON_PDF', 1, 'typhon', 'chaine', 0, 'Nom du gestionnaire de generation des bons de reception en PDF', '2006-01-02 00:04:13'),
(74, 'LIVRAISON_ADDON_NUMBER', 1, 'mod_livraison_jade', 'chaine', 0, 'Nom du gestionnaire de numerotation des bons de reception', '2006-01-02 00:04:13'),
(75, 'LIVRAISON_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/delivery', 'chaine', 0, NULL, '2006-01-02 00:04:13'),
(76, 'MAIN_SUBMODULE_EXPEDITION', 1, '1', 'chaine', 0, 'Enable shipments', '2006-01-02 00:04:13'),
(77, 'MAIN_MODULE_COMMANDE', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:13'),
(78, 'COMMANDE_ADDON_PDF', 1, 'einstein', 'chaine', 0, 'Name of PDF model of order', '2006-01-02 00:04:13'),
(79, 'COMMANDE_ADDON', 1, 'mod_commande_marbre', 'chaine', 0, 'Name of numbering numerotation rules of order', '2006-01-02 00:04:13'),
(80, 'COMMANDE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/orders', 'chaine', 0, NULL, '2006-01-02 00:04:13'),
(82, 'MAIN_MODULE_CONTRAT', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:14'),
(83, 'CONTRACT_ADDON', 1, 'mod_contract_serpis', 'chaine', 0, 'Nom du gestionnaire de numerotation des contrats', '2006-01-02 00:04:14'),
(85, 'MAIN_MODULE_FICHEINTER', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:14'),
(86, 'FICHEINTER_ADDON_PDF', 1, 'soleil', 'chaine', 0, NULL, '2006-01-02 00:04:14'),
(87, 'FICHEINTER_ADDON', 1, 'pacific', 'chaine', 0, NULL, '2006-01-02 00:04:14'),
(90, 'PROPALE_ADDON_PDF', 1, 'azur', 'chaine', 0, 'Nom du gestionnaire de generation des propales en PDF', '2006-01-02 00:04:17'),
(91, 'PROPALE_ADDON', 1, 'mod_propale_marbre', 'chaine', 0, 'Nom du gestionnaire de numerotation des propales', '2006-01-02 00:04:17'),
(92, 'PROPALE_VALIDITY_DURATION', 1, '15', 'chaine', 0, 'Duration of validity of business proposals', '2006-01-02 00:04:17'),
(93, 'PROPALE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/proposals', 'chaine', 0, NULL, '2006-01-02 00:04:17'),
(96, 'COMMANDE_SUPPLIER_ADDON_PDF', 1, 'muscadet', 'chaine', 0, 'Nom du gestionnaire de generation des bons de commande en PDF', '2006-01-02 00:04:25'),
(97, 'COMMANDE_SUPPLIER_ADDON_NUMBER', 1, 'mod_commande_fournisseur_muguet', 'chaine', 0, 'Nom du gestionnaire de numerotation des commandes fournisseur', '2006-01-02 00:04:25'),
(98, 'INVOICE_SUPPLIER_ADDON_PDF', 1, 'canelle', 'chaine', 0, 'Nom du gestionnaire de generation des factures fournisseur en PDF', '2006-01-02 00:04:25'),
(99, 'INVOICE_SUPPLIER_ADDON_NUMBER', 1, 'mod_facture_fournisseur_cactus', 'chaine', 0, 'Nom du gestionnaire de numerotation des factures fournisseur', '2006-01-02 00:04:25'),
(101, 'MAIN_MODULE_SUPPLIERPROPOSAL', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:25'),
(102, 'SUPPLIER_PROPOSAL_ADDON_PDF', 1, 'aurore', 'chaine', 0, 'Name of submodule to generate PDF for supplier quotation request', '2006-01-02 00:04:25'),
(103, 'SUPPLIER_PROPOSAL_ADDON', 1, 'mod_supplier_proposal_marbre', 'chaine', 0, 'Name of submodule to number supplier quotation request', '2006-01-02 00:04:25'),
(104, 'SUPPLIER_PROPOSAL_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/supplier_proposal', 'chaine', 0, NULL, '2006-01-02 00:04:25'),
(105, 'MAIN_MODULE_FOURNISSEUR', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:25'),
(107, 'MAIN_MODULE_INCOTERM', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:26'),
(108, 'INCOTERM_ACTIVATE', 1, '', 'chaine', 0, 'Description de INCOTERM_ACTIVATE', '2006-01-02 00:04:26'),
(110, 'FACTURE_ADDON_PDF', 1, 'crabe', 'chaine', 0, 'Name of PDF model of invoice', '2006-01-02 00:04:26'),
(111, 'FACTURE_ADDON', 1, 'mod_facture_terre', 'chaine', 0, 'Name of numbering numerotation rules of invoice', '2006-01-02 00:04:26'),
(112, 'FACTURE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/invoices', 'chaine', 0, NULL, '2006-01-02 00:04:26'),
(114, 'MAIN_MODULE_TAX', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:26'),
(115, 'MAIN_MODULE_LOAN', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:27'),
(116, 'LOAN_ACCOUNTING_ACCOUNT_CAPITAL', 1, '164', 'chaine', 0, NULL, '2006-01-02 00:04:27'),
(117, 'LOAN_ACCOUNTING_ACCOUNT_INSURANCE', 1, '6162', 'chaine', 0, NULL, '2006-01-02 00:04:27'),
(118, 'MAIN_MODULE_DON', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:28'),
(119, 'DON_ADDON_MODEL', 1, 'html_cerfafr', 'chaine', 0, 'Nom du gestionnaire de generation de recu de dons', '2006-01-02 00:04:28'),
(120, 'DONATION_ART200', 1, '', 'yesno', 0, 'Option FranÃ§aise - EligibilitÃ© Art200 du CGI', '2006-01-02 00:04:28'),
(121, 'DONATION_ART238', 1, '', 'yesno', 0, 'Option FranÃ§aise - EligibilitÃ© Art238 bis du CGI', '2006-01-02 00:04:28'),
(122, 'DONATION_ART885', 1, '', 'yesno', 0, 'Option FranÃ§aise - EligibilitÃ© Art885-0 V bis du CGI', '2006-01-02 00:04:28'),
(123, 'DONATION_MESSAGE', 1, 'Thank you', 'chaine', 0, 'Message affichÃ© sur le rÃ©cÃ©pissÃ© de versements ou dons', '2006-01-02 00:04:28'),
(124, 'DONATION_ACCOUNTINGACCOUNT', 1, '758', 'chaine', 0, 'Compte comptable de remise des versements ou dons', '2006-01-02 00:04:28'),
(126, 'MAIN_MODULE_PRELEVEMENT', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:28'),
(130, 'MAIN_MODULE_MARGIN', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:29'),
(131, 'MAIN_MODULE_MARGIN_TABS_0', 1, 'product:+margin:Margins:margins:$user->rights->margins->liretous:/margin/tabs/productMargins.php?id=__ID__', 'chaine', 0, NULL, '2006-01-02 00:04:29'),
(132, 'MAIN_MODULE_MARGIN_TABS_1', 1, 'thirdparty:+margin:Margins:margins:empty($user->societe_id) && $user->rights->margins->liretous && ($object->client > 0):/margin/tabs/thirdpartyMargins.php?socid=__ID__', 'chaine', 0, NULL, '2006-01-02 00:04:29'),
(133, 'MARGIN_TYPE', 1, 'costprice', 'chaine', 0, 'Rule for margin calculation by default', '2006-01-02 00:04:29'),
(134, 'MAIN_MODULE_PROPALE', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:29'),
(137, 'PRODUCT_CODEPRODUCT_ADDON', 1, 'mod_codeproduct_leopard', 'chaine', 0, 'Module to control product codes', '2006-01-02 00:04:29'),
(138, 'MAIN_MODULE_COMPTABILITE', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:29'),
(139, 'MAIN_MODULE_FACTURE', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:30'),
(140, 'MAIN_MODULE_SOCIETE', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:30'),
(141, 'MAIN_MODULE_BANQUE', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:30'),
(142, 'MAIN_MODULE_PROJET', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:43'),
(143, 'PROJECT_ADDON_PDF', 1, 'baleine', 'chaine', 0, 'Name of PDF/ODT project manager class', '2006-01-02 00:04:43'),
(144, 'PROJECT_ADDON', 1, 'mod_project_simple', 'chaine', 0, 'Name of Numbering Rule project manager class', '2006-01-02 00:04:43'),
(145, 'PROJECT_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/projects', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(146, 'PROJECT_TASK_ADDON_PDF', 1, '', 'chaine', 0, 'Name of PDF/ODT tasks manager class', '2006-01-02 00:04:43'),
(147, 'PROJECT_TASK_ADDON', 1, 'mod_task_simple', 'chaine', 0, 'Name of Numbering Rule task manager class', '2006-01-02 00:04:43'),
(148, 'PROJECT_TASK_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/tasks', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(149, 'PROJECT_USE_OPPORTUNITIES', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(150, 'MAIN_DELAY_PROJECT_TO_CLOSE', 1, '7', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(151, 'MAIN_DELAY_TASKS_TODO', 1, '7', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(152, 'MAIN_MODULE_AGENDA', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:43'),
(153, 'MAIN_AGENDA_ACTIONAUTO_COMPANY_CREATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(154, 'MAIN_AGENDA_ACTIONAUTO_COMPANY_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(155, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_CLASSIFY_BILLED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(156, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_CLOSE_REFUSED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(157, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_CLOSE_SIGNED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(158, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(159, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(160, 'MAIN_AGENDA_ACTIONAUTO_ORDER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(161, 'MAIN_AGENDA_ACTIONAUTO_ORDER_CLOSE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(162, 'MAIN_AGENDA_ACTIONAUTO_ORDER_CLASSIFY_BILLED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(163, 'MAIN_AGENDA_ACTIONAUTO_ORDER_CANCEL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(164, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(165, 'MAIN_AGENDA_ACTIONAUTO_BILL_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(166, 'MAIN_AGENDA_ACTIONAUTO_BILL_PAYED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(167, 'MAIN_AGENDA_ACTIONAUTO_BILL_CANCEL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(168, 'MAIN_AGENDA_ACTIONAUTO_BILL_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(169, 'MAIN_AGENDA_ACTIONAUTO_BILL_UNVALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(170, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(171, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_APPROVE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(172, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_SUBMIT', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(173, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_RECEIVE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(174, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_REFUSE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(175, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_CLASSIFY_BILLED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(176, 'MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(177, 'MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(178, 'MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_UNVALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(179, 'MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_PAYED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(180, 'MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(181, 'MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_CANCELED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(182, 'MAIN_AGENDA_ACTIONAUTO_CONTRACT_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(183, 'MAIN_AGENDA_ACTIONAUTO_FICHINTER_REOPEN', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(184, 'MAIN_AGENDA_ACTIONAUTO_FICHINTER_CLASSIFY_UNBILLED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(185, 'MAIN_AGENDA_ACTIONAUTO_FICHINTER_CLASSIFY_BILLED', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(186, 'MAIN_AGENDA_ACTIONAUTO_FICHINTER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(187, 'MAIN_AGENDA_ACTIONAUTO_FICHINTER_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(188, 'MAIN_AGENDA_ACTIONAUTO_SHIPPING_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(189, 'MAIN_AGENDA_ACTIONAUTO_SHIPPING_SENTBYMAIL', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(190, 'MAIN_AGENDA_ACTIONAUTO_MEMBER_VALIDATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(191, 'MAIN_AGENDA_ACTIONAUTO_MEMBER_SUBSCRIPTION', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(192, 'MAIN_AGENDA_ACTIONAUTO_MEMBER_RESILIATE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(193, 'MAIN_AGENDA_ACTIONAUTO_MEMBER_MODIFY', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(194, 'MAIN_AGENDA_ACTIONAUTO_MEMBER_DELETE', 1, '1', 'chaine', 0, NULL, '2006-01-02 00:04:43'),
(195, 'MAIN_MODULE_RESOURCE', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:44'),
(196, 'MAIN_MODULE_IMPORT', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:54'),
(197, 'MAIN_MODULE_EXPORT', 1, '1', NULL, 0, NULL, '2006-01-02 00:04:54'),
(198, 'MAIN_MODULE_PRINTING', 1, '1', NULL, 0, NULL, '2006-01-02 00:05:12'),
(199, 'MAIN_APPLICATION_TITLE', 1, 'Computer World cloud erp-crm', 'chaine', 1, '', '2017-06-24 17:45:19'),
(216, 'MAIN_LANG_DEFAULT', 1, 'en_US', 'chaine', 0, '', '2017-06-24 17:48:07'),
(217, 'MAIN_MULTILANGS', 1, '0', 'chaine', 0, '', '2017-06-24 17:48:07'),
(218, 'MAIN_THEME', 1, 'eldy', 'chaine', 0, '', '2017-06-24 17:48:07'),
(219, 'THEME_ELDY_TOPMENU_BACK1', 1, '5,208,135', 'chaine', 0, '', '2017-06-24 17:48:07'),
(220, 'THEME_ELDY_TEXTTITLENOTAB', 1, '0,0,0', 'chaine', 0, '', '2017-06-24 17:48:07'),
(221, 'MAIN_SIZE_LISTE_LIMIT', 1, '25', 'chaine', 0, '', '2017-06-24 17:48:07'),
(222, 'MAIN_SIZE_SHORTLISTE_LIMIT', 1, '4', 'chaine', 0, '', '2017-06-24 17:48:07'),
(223, 'MAIN_DISABLE_JAVASCRIPT', 1, '0', 'chaine', 0, '', '2017-06-24 17:48:07'),
(224, 'MAIN_BUTTON_HIDE_UNAUTHORIZED', 1, '0', 'chaine', 0, '', '2017-06-24 17:48:07'),
(225, 'MAIN_START_WEEK', 1, '1', 'chaine', 0, '', '2017-06-24 17:48:07'),
(226, 'MAIN_DEFAULT_WORKING_DAYS', 1, '1-5', 'chaine', 0, '', '2017-06-24 17:48:07'),
(227, 'MAIN_DEFAULT_WORKING_HOURS', 1, '9-18', 'chaine', 0, '', '2017-06-24 17:48:07'),
(228, 'MAIN_SHOW_LOGO', 1, '1', 'chaine', 0, '', '2017-06-24 17:48:07'),
(229, 'MAIN_FIRSTNAME_NAME_POSITION', 1, '0', 'chaine', 0, '', '2017-06-24 17:48:07'),
(230, 'MAIN_HELPCENTER_DISABLELINK', 0, '0', 'chaine', 0, '', '2017-06-24 17:48:07'),
(231, 'MAIN_HELP_DISABLELINK', 0, '0', 'chaine', 0, '', '2017-06-24 17:48:07'),
(232, 'MAIN_BUGTRACK_ENABLELINK', 1, '0', 'chaine', 0, '', '2017-06-24 17:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `llx_contrat`
--

CREATE TABLE IF NOT EXISTS `llx_contrat` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `ref_supplier` varchar(30) DEFAULT NULL,
  `ref_ext` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_contrat` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `mise_en_service` datetime DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_commercial_signature` int(11) DEFAULT NULL,
  `fk_commercial_suivi` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_mise_en_service` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_contrat_ref` (`ref`,`entity`),
  KEY `idx_contrat_fk_soc` (`fk_soc`),
  KEY `idx_contrat_fk_user_author` (`fk_user_author`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet`
--

CREATE TABLE IF NOT EXISTS `llx_contratdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contrat` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `label` text,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `date_commande` datetime DEFAULT NULL,
  `date_ouverture_prevue` datetime DEFAULT NULL,
  `date_ouverture` datetime DEFAULT NULL,
  `date_fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double NOT NULL,
  `remise_percent` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `price_ht` double DEFAULT NULL,
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '1',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT NULL,
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_ouverture` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `commentaire` text,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_fk_contrat` (`fk_contrat`),
  KEY `idx_contratdet_fk_product` (`fk_product`),
  KEY `idx_contratdet_date_ouverture_prevue` (`date_ouverture_prevue`),
  KEY `idx_contratdet_date_ouverture` (`date_ouverture`),
  KEY `idx_contratdet_date_fin_validite` (`date_fin_validite`),
  KEY `fk_contratdet_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_contratdet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contratdet_log`
--

CREATE TABLE IF NOT EXISTS `llx_contratdet_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contratdet` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `statut` smallint(6) NOT NULL,
  `fk_user_author` int(11) NOT NULL,
  `commentaire` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_log_fk_contratdet` (`fk_contratdet`),
  KEY `idx_contratdet_log_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_contrat_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_contrat_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_contrat_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_cotisation`
--

CREATE TABLE IF NOT EXISTS `llx_cotisation` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `dateadh` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `cotisation` double DEFAULT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_cotisation` (`fk_adherent`,`dateadh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_cronjob`
--

CREATE TABLE IF NOT EXISTS `llx_cronjob` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `jobtype` varchar(10) NOT NULL,
  `label` text NOT NULL,
  `command` varchar(255) DEFAULT NULL,
  `classesname` varchar(255) DEFAULT NULL,
  `objectname` varchar(255) DEFAULT NULL,
  `methodename` varchar(255) DEFAULT NULL,
  `params` text,
  `md5params` varchar(32) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `datelastrun` datetime DEFAULT NULL,
  `datenextrun` datetime DEFAULT NULL,
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `lastresult` text,
  `lastoutput` text,
  `unitfrequency` varchar(255) NOT NULL DEFAULT '3600',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `maxrun` int(11) NOT NULL DEFAULT '0',
  `nbrun` int(11) DEFAULT NULL,
  `autodelete` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `test` varchar(255) DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_mailing` int(11) DEFAULT NULL,
  `note` text,
  `libname` varchar(255) DEFAULT NULL,
  `entity` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_cronjob_status` (`status`),
  KEY `idx_cronjob_datelastrun` (`datelastrun`),
  KEY `idx_cronjob_datenextrun` (`datenextrun`),
  KEY `idx_cronjob_datestart` (`datestart`),
  KEY `idx_cronjob_dateend` (`dateend`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `llx_cronjob`
--

INSERT INTO `llx_cronjob` (`rowid`, `tms`, `datec`, `jobtype`, `label`, `command`, `classesname`, `objectname`, `methodename`, `params`, `md5params`, `module_name`, `priority`, `datelastrun`, `datenextrun`, `datestart`, `dateend`, `datelastresult`, `lastresult`, `lastoutput`, `unitfrequency`, `frequency`, `maxrun`, `nbrun`, `autodelete`, `status`, `test`, `fk_user_author`, `fk_user_mod`, `fk_mailing`, `note`, `libname`, `entity`) VALUES
(3, '2006-01-02 00:04:30', '2006-01-02 02:04:30', 'method', 'RecurringInvoices', NULL, 'compta/facture/class/facture-rec.class.php', 'FactureRec', 'createRecurringInvoices', NULL, NULL, 'facture', 0, NULL, NULL, '2006-01-02 02:04:30', NULL, NULL, NULL, NULL, '86400', 1, 0, NULL, 0, 1, '', NULL, NULL, NULL, 'Generate recurring invoices', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_accounting_category`
--

CREATE TABLE IF NOT EXISTS `llx_c_accounting_category` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `label` varchar(255) NOT NULL,
  `range_account` varchar(255) NOT NULL,
  `sens` tinyint(4) NOT NULL DEFAULT '0',
  `category_type` tinyint(4) NOT NULL DEFAULT '0',
  `formula` varchar(255) NOT NULL,
  `position` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_accounting_category` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `llx_c_accounting_category`
--

INSERT INTO `llx_c_accounting_category` (`rowid`, `code`, `label`, `range_account`, `sens`, `category_type`, `formula`, `position`, `fk_country`, `active`) VALUES
(1, 'VTE', 'Ventes de marchandises', '707xxx', 0, 0, '', 10, 1, 1),
(2, 'MAR', 'CoÃ»t d achats marchandises vendues', '603xxx | 607xxx | 609xxx', 0, 0, '', 20, 1, 1),
(3, 'MARGE', 'Marge commerciale', '', 0, 1, '1 + 2', 30, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_actioncomm`
--

CREATE TABLE IF NOT EXISTS `llx_c_actioncomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'system',
  `libelle` varchar(48) NOT NULL,
  `module` varchar(16) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `todo` tinyint(4) DEFAULT NULL,
  `color` varchar(9) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_actioncomm` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_actioncomm`
--

INSERT INTO `llx_c_actioncomm` (`id`, `code`, `type`, `libelle`, `module`, `active`, `todo`, `color`, `position`) VALUES
(1, 'AC_TEL', 'system', 'Phone call', NULL, 1, NULL, NULL, 2),
(2, 'AC_FAX', 'system', 'Send Fax', NULL, 1, NULL, NULL, 3),
(3, 'AC_PROP', 'systemauto', 'Send commercial proposal by email', 'propal', 0, NULL, NULL, 10),
(4, 'AC_EMAIL', 'system', 'Send Email', NULL, 1, NULL, NULL, 4),
(5, 'AC_RDV', 'system', 'Rendez-vous', NULL, 1, NULL, NULL, 1),
(8, 'AC_COM', 'systemauto', 'Send customer order by email', 'order', 0, NULL, NULL, 8),
(9, 'AC_FAC', 'systemauto', 'Send customer invoice by email', 'invoice', 0, NULL, NULL, 6),
(10, 'AC_SHIP', 'systemauto', 'Send shipping by email', 'shipping', 0, NULL, NULL, 11),
(11, 'AC_INT', 'system', 'Intervention on site', NULL, 1, NULL, NULL, 4),
(30, 'AC_SUP_ORD', 'systemauto', 'Send supplier order by email', 'order_supplier', 0, NULL, NULL, 9),
(31, 'AC_SUP_INV', 'systemauto', 'Send supplier invoice by email', 'invoice_supplier', 0, NULL, NULL, 7),
(40, 'AC_OTH_AUTO', 'systemauto', 'Other (automatically inserted events)', NULL, 1, NULL, NULL, 20),
(50, 'AC_OTH', 'system', 'Other (manually inserted events)', NULL, 1, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_action_trigger`
--

CREATE TABLE IF NOT EXISTS `llx_c_action_trigger` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `elementtype` varchar(16) NOT NULL,
  `code` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_action_trigger_code` (`code`),
  KEY `idx_action_trigger_rang` (`rang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `llx_c_action_trigger`
--

INSERT INTO `llx_c_action_trigger` (`rowid`, `elementtype`, `code`, `label`, `description`, `rang`) VALUES
(1, 'societe', 'COMPANY_CREATE', 'Third party created', 'Executed when a third party is created', 1),
(2, 'societe', 'COMPANY_SENTBYMAIL', 'Mails sent from third party card', 'Executed when you send email from third party card', 1),
(3, 'propal', 'PROPAL_VALIDATE', 'Customer proposal validated', 'Executed when a commercial proposal is validated', 2),
(4, 'propal', 'PROPAL_SENTBYMAIL', 'Commercial proposal sent by mail', 'Executed when a commercial proposal is sent by mail', 3),
(5, 'propal', 'PROPAL_CLOSE_SIGNED', 'Customer proposal closed signed', 'Executed when a customer proposal is closed signed', 2),
(6, 'propal', 'PROPAL_CLOSE_REFUSED', 'Customer proposal closed refused', 'Executed when a customer proposal is closed refused', 2),
(7, 'propal', 'PROPAL_CLASSIFY_BILLED', 'Customer proposal set billed', 'Executed when a customer proposal is set to billed', 2),
(8, 'commande', 'ORDER_VALIDATE', 'Customer order validate', 'Executed when a customer order is validated', 4),
(9, 'commande', 'ORDER_CLOSE', 'Customer order classify delivered', 'Executed when a customer order is set delivered', 5),
(10, 'commande', 'ORDER_CLASSIFY_BILLED', 'Customer order classify billed', 'Executed when a customer order is set to billed', 5),
(11, 'commande', 'ORDER_CANCEL', 'Customer order canceled', 'Executed when a customer order is canceled', 5),
(12, 'commande', 'ORDER_SENTBYMAIL', 'Customer order sent by mail', 'Executed when a customer order is sent by mail ', 5),
(13, 'facture', 'BILL_VALIDATE', 'Customer invoice validated', 'Executed when a customer invoice is approved', 6),
(14, 'facture', 'BILL_PAYED', 'Customer invoice payed', 'Executed when a customer invoice is payed', 7),
(15, 'facture', 'BILL_CANCEL', 'Customer invoice canceled', 'Executed when a customer invoice is conceled', 8),
(16, 'facture', 'BILL_SENTBYMAIL', 'Customer invoice sent by mail', 'Executed when a customer invoice is sent by mail', 9),
(17, 'facture', 'BILL_UNVALIDATE', 'Customer invoice unvalidated', 'Executed when a customer invoice status set back to draft', 10),
(18, 'order_supplier', 'ORDER_SUPPLIER_CREATE', 'Supplier order created', 'Executed when a supplier order is created', 11),
(19, 'order_supplier', 'ORDER_SUPPLIER_VALIDATE', 'Supplier order validated', 'Executed when a supplier order is validated', 12),
(20, 'order_supplier', 'ORDER_SUPPLIER_APPROVE', 'Supplier order request approved', 'Executed when a supplier order is approved', 13),
(21, 'order_supplier', 'ORDER_SUPPLIER_SUBMIT', 'Supplier order request submited', 'Executed when a supplier order is approved', 13),
(22, 'order_supplier', 'ORDER_SUPPLIER_RECEIVE', 'Supplier order request received', 'Executed when a supplier order is received', 13),
(23, 'order_supplier', 'ORDER_SUPPLIER_REFUSE', 'Supplier order request refused', 'Executed when a supplier order is refused', 13),
(24, 'order_supplier', 'ORDER_SUPPLIER_SENTBYMAIL', 'Supplier order sent by mail', 'Executed when a supplier order is sent by mail', 14),
(25, 'order_supplier', 'ORDER_SUPPLIER_CLASSIFY_BILLED', 'Supplier order set billed', 'Executed when a supplier order is set as billed', 14),
(26, 'invoice_supplier', 'BILL_SUPPLIER_VALIDATE', 'Supplier invoice validated', 'Executed when a supplier invoice is validated', 15),
(27, 'invoice_supplier', 'BILL_SUPPLIER_UNVALIDATE', 'Supplier invoice unvalidated', 'Executed when a supplier invoice status is set back to draft', 15),
(28, 'invoice_supplier', 'BILL_SUPPLIER_PAYED', 'Supplier invoice payed', 'Executed when a supplier invoice is payed', 16),
(29, 'invoice_supplier', 'BILL_SUPPLIER_SENTBYMAIL', 'Supplier invoice sent by mail', 'Executed when a supplier invoice is sent by mail', 17),
(30, 'invoice_supplier', 'BILL_SUPPLIER_CANCELED', 'Supplier invoice cancelled', 'Executed when a supplier invoice is cancelled', 17),
(31, 'contrat', 'CONTRACT_VALIDATE', 'Contract validated', 'Executed when a contract is validated', 18),
(32, 'shipping', 'SHIPPING_VALIDATE', 'Shipping validated', 'Executed when a shipping is validated', 20),
(33, 'shipping', 'SHIPPING_SENTBYMAIL', 'Shipping sent by mail', 'Executed when a shipping is sent by mail', 21),
(34, 'member', 'MEMBER_VALIDATE', 'Member validated', 'Executed when a member is validated', 22),
(35, 'member', 'MEMBER_SUBSCRIPTION', 'Member subscribed', 'Executed when a member is subscribed', 23),
(36, 'member', 'MEMBER_RESILIATE', 'Member resiliated', 'Executed when a member is resiliated', 24),
(37, 'member', 'MEMBER_MODIFY', 'Member modified', 'Executed when a member is modified', 24),
(38, 'member', 'MEMBER_DELETE', 'Member deleted', 'Executed when a member is deleted', 25),
(39, 'ficheinter', 'FICHINTER_VALIDATE', 'Intervention validated', 'Executed when a intervention is validated', 19),
(40, 'ficheinter', 'FICHINTER_CLASSIFY_BILLED', 'Intervention set billed', 'Executed when a intervention is set to billed (when option FICHINTER_CLASSIFY_BILLED is set)', 19),
(41, 'ficheinter', 'FICHINTER_CLASSIFY_UNBILLED', 'Intervention set unbilled', 'Executed when a intervention is set to unbilled (when option FICHINTER_CLASSIFY_BILLED is set)', 19),
(42, 'ficheinter', 'FICHINTER_REOPEN', 'Intervention opened', 'Executed when a intervention is re-opened', 19),
(43, 'ficheinter', 'FICHINTER_SENTBYMAIL', 'Intervention sent by mail', 'Executed when a intervention is sent by mail', 19),
(44, 'project', 'PROJECT_CREATE', 'Project creation', 'Executed when a project is created', 140),
(45, 'project', 'PROJECT_MODIFY', 'Project modified', 'Executed when a project is modified', 141),
(46, 'project', 'PROJECT_DELETE', 'Project deleted', 'Executed when a project is deleted', 142),
(47, 'project', 'TASK_CREATE', 'Task created', 'Executed when a project task is created', 150),
(48, 'project', 'TASK_MODIFY', 'Task modified', 'Executed when a project task is modified', 151),
(49, 'project', 'TASK_DELETE', 'Task deleted', 'Executed when a project task is deleted', 152);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_availability`
--

CREATE TABLE IF NOT EXISTS `llx_c_availability` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `label` varchar(60) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_availability` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `llx_c_availability`
--

INSERT INTO `llx_c_availability` (`rowid`, `code`, `label`, `active`) VALUES
(1, 'AV_NOW', 'Immediate', 1),
(2, 'AV_1W', '1 week', 1),
(3, 'AV_2W', '2 weeks', 1),
(4, 'AV_3W', '3 weeks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_barcode_type`
--

CREATE TABLE IF NOT EXISTS `llx_c_barcode_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `libelle` varchar(50) NOT NULL,
  `coder` varchar(16) NOT NULL,
  `example` varchar(16) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_barcode_type` (`code`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_chargesociales`
--

CREATE TABLE IF NOT EXISTS `llx_c_chargesociales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(80) DEFAULT NULL,
  `deductible` smallint(6) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `code` varchar(12) NOT NULL,
  `accountancy_code` varchar(32) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4110 ;

--
-- Dumping data for table `llx_c_chargesociales`
--

INSERT INTO `llx_c_chargesociales` (`id`, `libelle`, `deductible`, `active`, `code`, `accountancy_code`, `fk_pays`, `module`) VALUES
(1, 'Allocations familiales', 1, 1, 'TAXFAM', NULL, 1, NULL),
(2, 'CSG Deductible', 1, 1, 'TAXCSGD', NULL, 1, NULL),
(3, 'CSG/CRDS NON Deductible', 0, 1, 'TAXCSGND', NULL, 1, NULL),
(10, 'Taxe apprentissage', 0, 1, 'TAXAPP', NULL, 1, NULL),
(11, 'Taxe professionnelle', 0, 1, 'TAXPRO', NULL, 1, NULL),
(12, 'Cotisation fonciere des entreprises', 0, 1, 'TAXCFE', NULL, 1, NULL),
(13, 'Cotisation sur la valeur ajoutee des entreprises', 0, 1, 'TAXCVAE', NULL, 1, NULL),
(20, 'Impots locaux/fonciers', 0, 1, 'TAXFON', NULL, 1, NULL),
(25, 'Impots revenus', 0, 1, 'TAXREV', NULL, 1, NULL),
(30, 'Assurance Sante', 0, 1, 'TAXSECU', NULL, 1, NULL),
(40, 'Mutuelle', 0, 1, 'TAXMUT', NULL, 1, NULL),
(50, 'Assurance vieillesse', 0, 1, 'TAXRET', NULL, 1, NULL),
(60, 'Assurance Chomage', 0, 1, 'TAXCHOM', NULL, 1, NULL),
(201, 'ONSS', 1, 1, 'TAXBEONSS', NULL, 2, NULL),
(210, 'Precompte professionnel', 1, 1, 'TAXBEPREPRO', NULL, 2, NULL),
(220, 'Prime existence', 1, 1, 'TAXBEPRIEXI', NULL, 2, NULL),
(230, 'Precompte immobilier', 1, 1, 'TAXBEPREIMMO', NULL, 2, NULL),
(4101, 'Krankenversicherung', 1, 1, 'TAXATKV', NULL, 41, NULL),
(4102, 'Unfallversicherung', 1, 1, 'TAXATUV', NULL, 41, NULL),
(4103, 'Pensionsversicherung', 1, 1, 'TAXATPV', NULL, 41, NULL),
(4104, 'Arbeitslosenversicherung', 1, 1, 'TAXATAV', NULL, 41, NULL),
(4105, 'Insolvenzentgeltsicherungsfond', 1, 1, 'TAXATIESG', NULL, 41, NULL),
(4106, 'WohnbaufÃ¶rderung', 1, 1, 'TAXATWF', NULL, 41, NULL),
(4107, 'Arbeiterkammerumlage', 1, 1, 'TAXATAK', NULL, 41, NULL),
(4108, 'Mitarbeitervorsorgekasse', 1, 1, 'TAXATMVK', NULL, 41, NULL),
(4109, 'Familienlastenausgleichsfond', 1, 1, 'TAXATFLAF', NULL, 41, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_civility`
--

CREATE TABLE IF NOT EXISTS `llx_c_civility` (
  `rowid` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_civility` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_civility`
--

INSERT INTO `llx_c_civility` (`rowid`, `code`, `label`, `active`, `module`) VALUES
(1, 'MME', 'Madame', 1, NULL),
(3, 'MR', 'Monsieur', 1, NULL),
(5, 'MLE', 'Mademoiselle', 1, NULL),
(7, 'MTRE', 'MaÃ®tre', 1, NULL),
(8, 'DR', 'Docteur', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_country`
--

CREATE TABLE IF NOT EXISTS `llx_c_country` (
  `rowid` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `code_iso` varchar(3) DEFAULT NULL,
  `label` varchar(50) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_c_country_code` (`code`),
  UNIQUE KEY `idx_c_country_label` (`label`),
  UNIQUE KEY `idx_c_country_code_iso` (`code_iso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_country`
--

INSERT INTO `llx_c_country` (`rowid`, `code`, `code_iso`, `label`, `active`, `favorite`) VALUES
(0, '', NULL, '-', 1, 1),
(1, 'FR', 'FRA', 'France', 1, 0),
(2, 'BE', 'BEL', 'Belgium', 1, 0),
(3, 'IT', 'ITA', 'Italy', 1, 0),
(4, 'ES', 'ESP', 'Spain', 1, 0),
(5, 'DE', 'DEU', 'Germany', 1, 0),
(6, 'CH', 'CHE', 'Switzerland', 1, 0),
(7, 'GB', 'GBR', 'United Kingdom', 1, 0),
(8, 'IE', 'IRL', 'Irland', 1, 0),
(9, 'CN', 'CHN', 'China', 1, 0),
(10, 'TN', 'TUN', 'Tunisia', 1, 0),
(11, 'US', 'USA', 'United States', 1, 0),
(12, 'MA', 'MAR', 'Maroc', 1, 0),
(13, 'DZ', 'DZA', 'Algeria', 1, 0),
(14, 'CA', 'CAN', 'Canada', 1, 0),
(15, 'TG', 'TGO', 'Togo', 1, 0),
(16, 'GA', 'GAB', 'Gabon', 1, 0),
(17, 'NL', 'NLD', 'Nerderland', 1, 0),
(18, 'HU', 'HUN', 'Hongrie', 1, 0),
(19, 'RU', 'RUS', 'Russia', 1, 0),
(20, 'SE', 'SWE', 'Sweden', 1, 0),
(21, 'CI', 'CIV', 'CÃ´te d''Ivoire', 1, 0),
(22, 'SN', 'SEN', 'Senegal', 1, 0),
(23, 'AR', 'ARG', 'Argentine', 1, 0),
(24, 'CM', 'CMR', 'Cameroun', 1, 0),
(25, 'PT', 'PRT', 'Portugal', 1, 0),
(26, 'SA', 'SAU', 'Saudi Arabia', 1, 0),
(27, 'MC', 'MCO', 'Monaco', 1, 0),
(28, 'AU', 'AUS', 'Australia', 1, 0),
(29, 'SG', 'SGP', 'Singapour', 1, 0),
(30, 'AF', 'AFG', 'Afghanistan', 1, 0),
(31, 'AX', 'ALA', 'Iles Aland', 1, 0),
(32, 'AL', 'ALB', 'Albanie', 1, 0),
(33, 'AS', 'ASM', 'Samoa amÃ©ricaines', 1, 0),
(34, 'AD', 'AND', 'Andorre', 1, 0),
(35, 'AO', 'AGO', 'Angola', 1, 0),
(36, 'AI', 'AIA', 'Anguilla', 1, 0),
(37, 'AQ', 'ATA', 'Antarctique', 1, 0),
(38, 'AG', 'ATG', 'Antigua-et-Barbuda', 1, 0),
(39, 'AM', 'ARM', 'ArmÃ©nie', 1, 0),
(40, 'AW', 'ABW', 'Aruba', 1, 0),
(41, 'AT', 'AUT', 'Autriche', 1, 0),
(42, 'AZ', 'AZE', 'AzerbaÃ¯djan', 1, 0),
(43, 'BS', 'BHS', 'Bahamas', 1, 0),
(44, 'BH', 'BHR', 'BahreÃ¯n', 1, 0),
(45, 'BD', 'BGD', 'Bangladesh', 1, 0),
(46, 'BB', 'BRB', 'Barbade', 1, 0),
(47, 'BY', 'BLR', 'BiÃ©lorussie', 1, 0),
(48, 'BZ', 'BLZ', 'Belize', 1, 0),
(49, 'BJ', 'BEN', 'BÃ©nin', 1, 0),
(50, 'BM', 'BMU', 'Bermudes', 1, 0),
(51, 'BT', 'BTN', 'Bhoutan', 1, 0),
(52, 'BO', 'BOL', 'Bolivie', 1, 0),
(53, 'BA', 'BIH', 'Bosnie-HerzÃ©govine', 1, 0),
(54, 'BW', 'BWA', 'Botswana', 1, 0),
(55, 'BV', 'BVT', 'Ile Bouvet', 1, 0),
(56, 'BR', 'BRA', 'Brazil', 1, 0),
(57, 'IO', 'IOT', 'Territoire britannique de l''OcÃ©an Indien', 1, 0),
(58, 'BN', 'BRN', 'Brunei', 1, 0),
(59, 'BG', 'BGR', 'Bulgarie', 1, 0),
(60, 'BF', 'BFA', 'Burkina Faso', 1, 0),
(61, 'BI', 'BDI', 'Burundi', 1, 0),
(62, 'KH', 'KHM', 'Cambodge', 1, 0),
(63, 'CV', 'CPV', 'Cap-Vert', 1, 0),
(64, 'KY', 'CYM', 'Iles Cayman', 1, 0),
(65, 'CF', 'CAF', 'RÃ©publique centrafricaine', 1, 0),
(66, 'TD', 'TCD', 'Tchad', 1, 0),
(67, 'CL', 'CHL', 'Chili', 1, 0),
(68, 'CX', 'CXR', 'Ile Christmas', 1, 0),
(69, 'CC', 'CCK', 'Iles des Cocos (Keeling)', 1, 0),
(70, 'CO', 'COL', 'Colombie', 1, 0),
(71, 'KM', 'COM', 'Comores', 1, 0),
(72, 'CG', 'COG', 'Congo', 1, 0),
(73, 'CD', 'COD', 'RÃ©publique dÃ©mocratique du Congo', 1, 0),
(74, 'CK', 'COK', 'Iles Cook', 1, 0),
(75, 'CR', 'CRI', 'Costa Rica', 1, 0),
(76, 'HR', 'HRV', 'Croatie', 1, 0),
(77, 'CU', 'CUB', 'Cuba', 1, 0),
(78, 'CY', 'CYP', 'Cyprus', 1, 0),
(79, 'CZ', 'CZE', 'RÃ©publique TchÃ¨que', 1, 0),
(80, 'DK', 'DNK', 'Danemark', 1, 0),
(81, 'DJ', 'DJI', 'Djibouti', 1, 0),
(82, 'DM', 'DMA', 'Dominique', 1, 0),
(83, 'DO', 'DOM', 'RÃ©publique Dominicaine', 1, 0),
(84, 'EC', 'ECU', 'Equateur', 1, 0),
(85, 'EG', 'EGY', 'Egypte', 1, 0),
(86, 'SV', 'SLV', 'Salvador', 1, 0),
(87, 'GQ', 'GNQ', 'GuinÃ©e Equatoriale', 1, 0),
(88, 'ER', 'ERI', 'ErythrÃ©e', 1, 0),
(89, 'EE', 'EST', 'Estonia', 1, 0),
(90, 'ET', 'ETH', 'Ethiopie', 1, 0),
(91, 'FK', 'FLK', 'Iles Falkland', 1, 0),
(92, 'FO', 'FRO', 'Iles FÃ©roÃ©', 1, 0),
(93, 'FJ', 'FJI', 'Iles Fidji', 1, 0),
(94, 'FI', 'FIN', 'Finlande', 1, 0),
(95, 'GF', 'GUF', 'Guyane franÃ§aise', 1, 0),
(96, 'PF', 'PYF', 'PolynÃ©sie franÃ§aise', 1, 0),
(97, 'TF', 'ATF', 'Terres australes franÃ§aises', 1, 0),
(98, 'GM', 'GMB', 'Gambie', 1, 0),
(99, 'GE', 'GEO', 'Georgia', 1, 0),
(100, 'GH', 'GHA', 'Ghana', 1, 0),
(101, 'GI', 'GIB', 'Gibraltar', 1, 0),
(102, 'GR', 'GRC', 'Greece', 1, 0),
(103, 'GL', 'GRL', 'Groenland', 1, 0),
(104, 'GD', 'GRD', 'Grenade', 1, 0),
(106, 'GU', 'GUM', 'Guam', 1, 0),
(107, 'GT', 'GTM', 'Guatemala', 1, 0),
(108, 'GN', 'GIN', 'Guinea', 1, 0),
(109, 'GW', 'GNB', 'Guinea-Bissao', 1, 0),
(111, 'HT', 'HTI', 'Haiti', 1, 0),
(112, 'HM', 'HMD', 'Iles Heard et McDonald', 1, 0),
(113, 'VA', 'VAT', 'Saint-SiÃ¨ge (Vatican)', 1, 0),
(114, 'HN', 'HND', 'Honduras', 1, 0),
(115, 'HK', 'HKG', 'Hong Kong', 1, 0),
(116, 'IS', 'ISL', 'Islande', 1, 0),
(117, 'IN', 'IND', 'India', 1, 0),
(118, 'ID', 'IDN', 'IndonÃ©sie', 1, 0),
(119, 'IR', 'IRN', 'Iran', 1, 0),
(120, 'IQ', 'IRQ', 'Iraq', 1, 0),
(121, 'IL', 'ISR', 'Israel', 1, 0),
(122, 'JM', 'JAM', 'JamaÃ¯que', 1, 0),
(123, 'JP', 'JPN', 'Japon', 1, 0),
(124, 'JO', 'JOR', 'Jordanie', 1, 0),
(125, 'KZ', 'KAZ', 'Kazakhstan', 1, 0),
(126, 'KE', 'KEN', 'Kenya', 1, 0),
(127, 'KI', 'KIR', 'Kiribati', 1, 0),
(128, 'KP', 'PRK', 'North Corea', 1, 0),
(129, 'KR', 'KOR', 'South Corea', 1, 0),
(130, 'KW', 'KWT', 'KoweÃ¯t', 1, 0),
(131, 'KG', 'KGZ', 'Kirghizistan', 1, 0),
(132, 'LA', 'LAO', 'Laos', 1, 0),
(133, 'LV', 'LVA', 'Lettonie', 1, 0),
(134, 'LB', 'LBN', 'Liban', 1, 0),
(135, 'LS', 'LSO', 'Lesotho', 1, 0),
(136, 'LR', 'LBR', 'Liberia', 1, 0),
(137, 'LY', 'LBY', 'Libye', 1, 0),
(138, 'LI', 'LIE', 'Liechtenstein', 1, 0),
(139, 'LT', 'LTU', 'Lituanie', 1, 0),
(140, 'LU', 'LUX', 'Luxembourg', 1, 0),
(141, 'MO', 'MAC', 'Macao', 1, 0),
(142, 'MK', 'MKD', 'ex-RÃ©publique yougoslave de MacÃ©doine', 1, 0),
(143, 'MG', 'MDG', 'Madagascar', 1, 0),
(144, 'MW', 'MWI', 'Malawi', 1, 0),
(145, 'MY', 'MYS', 'Malaisie', 1, 0),
(146, 'MV', 'MDV', 'Maldives', 1, 0),
(147, 'ML', 'MLI', 'Mali', 1, 0),
(148, 'MT', 'MLT', 'Malte', 1, 0),
(149, 'MH', 'MHL', 'Iles Marshall', 1, 0),
(151, 'MR', 'MRT', 'Mauritanie', 1, 0),
(152, 'MU', 'MUS', 'Maurice', 1, 0),
(153, 'YT', 'MYT', 'Mayotte', 1, 0),
(154, 'MX', 'MEX', 'Mexique', 1, 0),
(155, 'FM', 'FSM', 'MicronÃ©sie', 1, 0),
(156, 'MD', 'MDA', 'Moldavie', 1, 0),
(157, 'MN', 'MNG', 'Mongolie', 1, 0),
(158, 'MS', 'MSR', 'Monserrat', 1, 0),
(159, 'MZ', 'MOZ', 'Mozambique', 1, 0),
(160, 'MM', 'MMR', 'Birmanie (Myanmar)', 1, 0),
(161, 'NA', 'NAM', 'Namibie', 1, 0),
(162, 'NR', 'NRU', 'Nauru', 1, 0),
(163, 'NP', 'NPL', 'NÃ©pal', 1, 0),
(164, 'AN', NULL, 'Antilles nÃ©erlandaises', 1, 0),
(165, 'NC', 'NCL', 'Nouvelle-CalÃ©donie', 1, 0),
(166, 'NZ', 'NZL', 'Nouvelle-ZÃ©lande', 1, 0),
(167, 'NI', 'NIC', 'Nicaragua', 1, 0),
(168, 'NE', 'NER', 'Niger', 1, 0),
(169, 'NG', 'NGA', 'Nigeria', 1, 0),
(170, 'NU', 'NIU', 'NiouÃ©', 1, 0),
(171, 'NF', 'NFK', 'Ile Norfolk', 1, 0),
(172, 'MP', 'MNP', 'Mariannes du Nord', 1, 0),
(173, 'NO', 'NOR', 'NorvÃ¨ge', 1, 0),
(174, 'OM', 'OMN', 'Oman', 1, 0),
(175, 'PK', 'PAK', 'Pakistan', 1, 0),
(176, 'PW', 'PLW', 'Palaos', 1, 0),
(177, 'PS', 'PSE', 'Territoire Palestinien OccupÃ©', 1, 0),
(178, 'PA', 'PAN', 'Panama', 1, 0),
(179, 'PG', 'PNG', 'Papouasie-Nouvelle-GuinÃ©e', 1, 0),
(180, 'PY', 'PRY', 'Paraguay', 1, 0),
(181, 'PE', 'PER', 'Peru', 1, 0),
(182, 'PH', 'PHL', 'Philippines', 1, 0),
(183, 'PN', 'PCN', 'Iles Pitcairn', 1, 0),
(184, 'PL', 'POL', 'Pologne', 1, 0),
(185, 'PR', 'PRI', 'Porto Rico', 1, 0),
(186, 'QA', 'QAT', 'Qatar', 1, 0),
(188, 'RO', 'ROU', 'Roumanie', 1, 0),
(189, 'RW', 'RWA', 'Rwanda', 1, 0),
(190, 'SH', 'SHN', 'Sainte-HÃ©lÃ¨ne', 1, 0),
(191, 'KN', 'KNA', 'Saint-Christophe-et-NiÃ©vÃ¨s', 1, 0),
(192, 'LC', 'LCA', 'Sainte-Lucie', 1, 0),
(193, 'PM', 'SPM', 'Saint-Pierre-et-Miquelon', 1, 0),
(194, 'VC', 'VCT', 'Saint-Vincent-et-les-Grenadines', 1, 0),
(195, 'WS', 'WSM', 'Samoa', 1, 0),
(196, 'SM', 'SMR', 'Saint-Marin', 1, 0),
(197, 'ST', 'STP', 'Sao TomÃ©-et-Principe', 1, 0),
(198, 'RS', 'SRB', 'Serbie', 1, 0),
(199, 'SC', 'SYC', 'Seychelles', 1, 0),
(200, 'SL', 'SLE', 'Sierra Leone', 1, 0),
(201, 'SK', 'SVK', 'Slovaquie', 1, 0),
(202, 'SI', 'SVN', 'SlovÃ©nie', 1, 0),
(203, 'SB', 'SLB', 'Iles Salomon', 1, 0),
(204, 'SO', 'SOM', 'Somalie', 1, 0),
(205, 'ZA', 'ZAF', 'Afrique du Sud', 1, 0),
(206, 'GS', 'SGS', 'Iles GÃ©orgie du Sud et Sandwich du Sud', 1, 0),
(207, 'LK', 'LKA', 'Sri Lanka', 1, 0),
(208, 'SD', 'SDN', 'Soudan', 1, 0),
(209, 'SR', 'SUR', 'Suriname', 1, 0),
(210, 'SJ', 'SJM', 'Iles Svalbard et Jan Mayen', 1, 0),
(211, 'SZ', 'SWZ', 'Swaziland', 1, 0),
(212, 'SY', 'SYR', 'Syrie', 1, 0),
(213, 'TW', 'TWN', 'TaÃ¯wan', 1, 0),
(214, 'TJ', 'TJK', 'Tadjikistan', 1, 0),
(215, 'TZ', 'TZA', 'Tanzanie', 1, 0),
(216, 'TH', 'THA', 'ThaÃ¯lande', 1, 0),
(217, 'TL', 'TLS', 'Timor Oriental', 1, 0),
(218, 'TK', 'TKL', 'TokÃ©laou', 1, 0),
(219, 'TO', 'TON', 'Tonga', 1, 0),
(220, 'TT', 'TTO', 'TrinitÃ©-et-Tobago', 1, 0),
(221, 'TR', 'TUR', 'Turquie', 1, 0),
(222, 'TM', 'TKM', 'TurkmÃ©nistan', 1, 0),
(223, 'TC', 'TCA', 'Iles Turks-et-Caicos', 1, 0),
(224, 'TV', 'TUV', 'Tuvalu', 1, 0),
(225, 'UG', 'UGA', 'Ouganda', 1, 0),
(226, 'UA', 'UKR', 'Ukraine', 1, 0),
(227, 'AE', 'ARE', 'Ã‰mirats arabes unis', 1, 0),
(228, 'UM', 'UMI', 'Iles mineures Ã©loignÃ©es des Ã‰tats-Unis', 1, 0),
(229, 'UY', 'URY', 'Uruguay', 1, 0),
(230, 'UZ', 'UZB', 'OuzbÃ©kistan', 1, 0),
(231, 'VU', 'VUT', 'Vanuatu', 1, 0),
(232, 'VE', 'VEN', 'VÃ©nÃ©zuela', 1, 0),
(233, 'VN', 'VNM', 'ViÃªt Nam', 1, 0),
(234, 'VG', 'VGB', 'Iles Vierges britanniques', 1, 0),
(235, 'VI', 'VIR', 'Iles Vierges amÃ©ricaines', 1, 0),
(236, 'WF', 'WLF', 'Wallis-et-Futuna', 1, 0),
(237, 'EH', 'ESH', 'Sahara occidental', 1, 0),
(238, 'YE', 'YEM', 'YÃ©men', 1, 0),
(239, 'ZM', 'ZMB', 'Zambie', 1, 0),
(240, 'ZW', 'ZWE', 'Zimbabwe', 1, 0),
(241, 'GG', 'GGY', 'Guernesey', 1, 0),
(242, 'IM', 'IMN', 'Ile de Man', 1, 0),
(243, 'JE', 'JEY', 'Jersey', 1, 0),
(244, 'ME', 'MNE', 'MontÃ©nÃ©gro', 1, 0),
(245, 'BL', 'BLM', 'Saint-BarthÃ©lemy', 1, 0),
(246, 'MF', 'MAF', 'Saint-Martin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_currencies`
--

CREATE TABLE IF NOT EXISTS `llx_c_currencies` (
  `code_iso` varchar(3) NOT NULL,
  `label` varchar(64) NOT NULL,
  `unicode` varchar(32) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`code_iso`),
  UNIQUE KEY `uk_c_currencies_code_iso` (`code_iso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_currencies`
--

INSERT INTO `llx_c_currencies` (`code_iso`, `label`, `unicode`, `active`) VALUES
('AED', 'United Arab Emirates Dirham', NULL, 1),
('AFN', 'Afghanistan Afghani', '[1547]', 1),
('ALL', 'Albania Lek', '[76,101,107]', 1),
('ANG', 'Netherlands Antilles Guilder', '[402]', 1),
('ARP', 'Pesos argentins', NULL, 0),
('ARS', 'Argentino Peso', '[36]', 1),
('ATS', 'Shiliing autrichiens', NULL, 0),
('AUD', 'Australia Dollar', '[36]', 1),
('AWG', 'Aruba Guilder', '[402]', 1),
('AZN', 'Azerbaijan New Manat', '[1084,1072,1085]', 1),
('BAM', 'Bosnia and Herzegovina Convertible Marka', '[75,77]', 1),
('BBD', 'Barbados Dollar', '[36]', 1),
('BEF', 'Francs belges', NULL, 0),
('BGN', 'Bulgaria Lev', '[1083,1074]', 1),
('BMD', 'Bermuda Dollar', '[36]', 1),
('BND', 'Brunei Darussalam Dollar', '[36]', 1),
('BOB', 'Bolivia Boliviano', '[36,98]', 1),
('BRL', 'Brazil Real', '[82,36]', 1),
('BSD', 'Bahamas Dollar', '[36]', 1),
('BWP', 'Botswana Pula', '[80]', 1),
('BYR', 'Belarus Ruble', '[112,46]', 1),
('BZD', 'Belize Dollar', '[66,90,36]', 1),
('CAD', 'Canada Dollar', '[36]', 1),
('CHF', 'Switzerland Franc', '[67,72,70]', 1),
('CLP', 'Chile Peso', '[36]', 1),
('CNY', 'China Yuan Renminbi', '[165]', 1),
('COP', 'Colombia Peso', '[36]', 1),
('CRC', 'Costa Rica Colon', '[8353]', 1),
('CUP', 'Cuba Peso', '[8369]', 1),
('CZK', 'Czech Republic Koruna', '[75,269]', 1),
('DEM', 'Deutsch mark', NULL, 0),
('DKK', 'Denmark Krone', '[107,114]', 1),
('DOP', 'Dominican Republic Peso', '[82,68,36]', 1),
('DZD', 'Algeria Dinar', NULL, 1),
('EEK', 'Estonia Kroon', '[107,114]', 1),
('EGP', 'Egypt Pound', '[163]', 1),
('ESP', 'Pesete', NULL, 0),
('EUR', 'Euro Member Countries', '[8364]', 1),
('FIM', 'Mark finlandais', NULL, 0),
('FJD', 'Fiji Dollar', '[36]', 1),
('FKP', 'Falkland Islands (Malvinas) Pound', '[163]', 1),
('FRF', 'Francs francais', NULL, 0),
('GBP', 'United Kingdom Pound', '[163]', 1),
('GGP', 'Guernsey Pound', '[163]', 1),
('GHC', 'Ghana Cedis', '[162]', 1),
('GIP', 'Gibraltar Pound', '[163]', 1),
('GNF', 'Franc GuinÃ©en', '[70,71]', 1),
('GRD', 'Drachme (grece)', NULL, 0),
('GTQ', 'Guatemala Quetzal', '[81]', 1),
('GYD', 'Guyana Dollar', '[36]', 1),
('HKD', 'Hong Kong Dollar', '[36]', 1),
('HNL', 'Honduras Lempira', '[76]', 1),
('HRK', 'Croatia Kuna', '[107,110]', 1),
('HUF', 'Hungary Forint', '[70,116]', 1),
('IDR', 'Indonesia Rupiah', '[82,112]', 1),
('IEP', 'Livres irlandaises', NULL, 0),
('ILS', 'Israel Shekel', '[8362]', 1),
('IMP', 'Isle of Man Pound', '[163]', 1),
('INR', 'India Rupee', NULL, 1),
('IRR', 'Iran Rial', '[65020]', 1),
('ISK', 'Iceland Krona', '[107,114]', 1),
('ITL', 'Lires', NULL, 0),
('JEP', 'Jersey Pound', '[163]', 1),
('JMD', 'Jamaica Dollar', '[74,36]', 1),
('JPY', 'Japan Yen', '[165]', 1),
('KES', 'Kenya Shilling', NULL, 1),
('KGS', 'Kyrgyzstan Som', '[1083,1074]', 1),
('KHR', 'Cambodia Riel', '[6107]', 1),
('KPW', 'Korea (North) Won', '[8361]', 1),
('KRW', 'Korea (South) Won', '[8361]', 1),
('KYD', 'Cayman Islands Dollar', '[36]', 1),
('KZT', 'Kazakhstan Tenge', '[1083,1074]', 1),
('LAK', 'Laos Kip', '[8365]', 1),
('LBP', 'Lebanon Pound', '[163]', 1),
('LKR', 'Sri Lanka Rupee', '[8360]', 1),
('LRD', 'Liberia Dollar', '[36]', 1),
('LTL', 'Lithuania Litas', '[76,116]', 1),
('LUF', 'Francs luxembourgeois', NULL, 0),
('LVL', 'Latvia Lat', '[76,115]', 1),
('MAD', 'Morocco Dirham', NULL, 1),
('MKD', 'Macedonia Denar', '[1076,1077,1085]', 1),
('MNT', 'Mongolia Tughrik', '[8366]', 1),
('MRO', 'Mauritania Ouguiya', NULL, 1),
('MUR', 'Mauritius Rupee', '[8360]', 1),
('MXN', 'Mexico Peso', '[36]', 1),
('MXP', 'Pesos Mexicans', NULL, 0),
('MYR', 'Malaysia Ringgit', '[82,77]', 1),
('MZN', 'Mozambique Metical', '[77,84]', 1),
('NAD', 'Namibia Dollar', '[36]', 1),
('NGN', 'Nigeria Naira', '[8358]', 1),
('NIO', 'Nicaragua Cordoba', '[67,36]', 1),
('NLG', 'Florins', NULL, 0),
('NOK', 'Norway Krone', '[107,114]', 1),
('NPR', 'Nepal Rupee', '[8360]', 1),
('NZD', 'New Zealand Dollar', '[36]', 1),
('OMR', 'Oman Rial', '[65020]', 1),
('PAB', 'Panama Balboa', '[66,47,46]', 1),
('PEN', 'Peru Nuevo Sol', '[83,47,46]', 1),
('PHP', 'Philippines Peso', '[8369]', 1),
('PKR', 'Pakistan Rupee', '[8360]', 1),
('PLN', 'Poland Zloty', '[122,322]', 1),
('PTE', 'Escudos', NULL, 0),
('PYG', 'Paraguay Guarani', '[71,115]', 1),
('QAR', 'Qatar Riyal', '[65020]', 1),
('RON', 'Romania New Leu', '[108,101,105]', 1),
('RSD', 'Serbia Dinar', '[1044,1080,1085,46]', 1),
('RUB', 'Russia Ruble', '[1088,1091,1073]', 1),
('SAR', 'Saudi Arabia Riyal', '[65020]', 1),
('SBD', 'Solomon Islands Dollar', '[36]', 1),
('SCR', 'Seychelles Rupee', '[8360]', 1),
('SEK', 'Sweden Krona', '[107,114]', 1),
('SGD', 'Singapore Dollar', '[36]', 1),
('SHP', 'Saint Helena Pound', '[163]', 1),
('SKK', 'Couronnes slovaques', NULL, 0),
('SOS', 'Somalia Shilling', '[83]', 1),
('SRD', 'Suriname Dollar', '[36]', 1),
('SUR', 'Rouble', NULL, 0),
('SVC', 'El Salvador Colon', '[36]', 1),
('SYP', 'Syria Pound', '[163]', 1),
('THB', 'Thailand Baht', '[3647]', 1),
('TND', 'Tunisia Dinar', NULL, 1),
('TRL', 'Turkey Lira', '[84,76]', 1),
('TRY', 'Turkey Lira', '[8356]', 1),
('TTD', 'Trinidad and Tobago Dollar', '[84,84,36]', 1),
('TVD', 'Tuvalu Dollar', '[36]', 1),
('TWD', 'Taiwan New Dollar', '[78,84,36]', 1),
('UAH', 'Ukraine Hryvna', '[8372]', 1),
('USD', 'United States Dollar', '[36]', 1),
('UYU', 'Uruguay Peso', '[36,85]', 1),
('UZS', 'Uzbekistan Som', '[1083,1074]', 1),
('VEF', 'Venezuela Bolivar Fuerte', '[66,115]', 1),
('VND', 'Viet Nam Dong', '[8363]', 1),
('XAF', 'Communaute Financiere Africaine (BEAC) CFA Franc', NULL, 1),
('XCD', 'East Caribbean Dollar', '[36]', 1),
('XEU', 'Ecus', NULL, 0),
('XOF', 'Communaute Financiere Africaine (BCEAO) Franc', NULL, 1),
('XPF', 'Franc pacifique (XPF)', NULL, 1),
('YER', 'Yemen Rial', '[65020]', 1),
('ZAR', 'South Africa Rand', '[82]', 1),
('ZWD', 'Zimbabwe Dollar', '[90,36]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_departements`
--

CREATE TABLE IF NOT EXISTS `llx_c_departements` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code_departement` varchar(6) NOT NULL,
  `fk_region` int(11) DEFAULT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `ncc` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_departements` (`code_departement`,`fk_region`),
  KEY `idx_departements_fk_region` (`fk_region`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1390 ;

--
-- Dumping data for table `llx_c_departements`
--

INSERT INTO `llx_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(1, '0', 0, '0', 0, '-', '-', 1),
(2, '971', 1, '97105', 3, 'GUADELOUPE', 'Guadeloupe', 1),
(3, '972', 2, '97209', 3, 'MARTINIQUE', 'Martinique', 1),
(4, '973', 3, '97302', 3, 'GUYANE', 'Guyane', 1),
(5, '974', 4, '97411', 3, 'REUNION', 'RÃ©union', 1),
(6, '976', 6, '97601', 3, 'MAYOTTE', 'Mayotte', 1),
(7, '01', 82, '01053', 5, 'AIN', 'Ain', 1),
(8, '02', 22, '02408', 5, 'AISNE', 'Aisne', 1),
(9, '03', 83, '03190', 5, 'ALLIER', 'Allier', 1),
(10, '04', 93, '04070', 4, 'ALPES-DE-HAUTE-PROVENCE', 'Alpes-de-Haute-Provence', 1),
(11, '05', 93, '05061', 4, 'HAUTES-ALPES', 'Hautes-Alpes', 1),
(12, '06', 93, '06088', 4, 'ALPES-MARITIMES', 'Alpes-Maritimes', 1),
(13, '07', 82, '07186', 5, 'ARDECHE', 'ArdÃ¨che', 1),
(14, '08', 21, '08105', 4, 'ARDENNES', 'Ardennes', 1),
(15, '09', 73, '09122', 5, 'ARIEGE', 'AriÃ¨ge', 1),
(16, '10', 21, '10387', 5, 'AUBE', 'Aube', 1),
(17, '11', 91, '11069', 5, 'AUDE', 'Aude', 1),
(18, '12', 73, '12202', 5, 'AVEYRON', 'Aveyron', 1),
(19, '13', 93, '13055', 4, 'BOUCHES-DU-RHONE', 'Bouches-du-RhÃ´ne', 1),
(20, '14', 25, '14118', 2, 'CALVADOS', 'Calvados', 1),
(21, '15', 83, '15014', 2, 'CANTAL', 'Cantal', 1),
(22, '16', 54, '16015', 3, 'CHARENTE', 'Charente', 1),
(23, '17', 54, '17300', 3, 'CHARENTE-MARITIME', 'Charente-Maritime', 1),
(24, '18', 24, '18033', 2, 'CHER', 'Cher', 1),
(25, '19', 74, '19272', 3, 'CORREZE', 'CorrÃ¨ze', 1),
(26, '2A', 94, '2A004', 3, 'CORSE-DU-SUD', 'Corse-du-Sud', 1),
(27, '2B', 94, '2B033', 3, 'HAUTE-CORSE', 'Haute-Corse', 1),
(28, '21', 26, '21231', 3, 'COTE-D OR', 'CÃ´te-d Or', 1),
(29, '22', 53, '22278', 4, 'COTES-D ARMOR', 'CÃ´tes-d Armor', 1),
(30, '23', 74, '23096', 3, 'CREUSE', 'Creuse', 1),
(31, '24', 72, '24322', 3, 'DORDOGNE', 'Dordogne', 1),
(32, '25', 43, '25056', 2, 'DOUBS', 'Doubs', 1),
(33, '26', 82, '26362', 3, 'DROME', 'DrÃ´me', 1),
(34, '27', 23, '27229', 5, 'EURE', 'Eure', 1),
(35, '28', 24, '28085', 1, 'EURE-ET-LOIR', 'Eure-et-Loir', 1),
(36, '29', 53, '29232', 2, 'FINISTERE', 'FinistÃ¨re', 1),
(37, '30', 91, '30189', 2, 'GARD', 'Gard', 1),
(38, '31', 73, '31555', 3, 'HAUTE-GARONNE', 'Haute-Garonne', 1),
(39, '32', 73, '32013', 2, 'GERS', 'Gers', 1),
(40, '33', 72, '33063', 3, 'GIRONDE', 'Gironde', 1),
(41, '34', 91, '34172', 5, 'HERAULT', 'HÃ©rault', 1),
(42, '35', 53, '35238', 1, 'ILLE-ET-VILAINE', 'Ille-et-Vilaine', 1),
(43, '36', 24, '36044', 5, 'INDRE', 'Indre', 1),
(44, '37', 24, '37261', 1, 'INDRE-ET-LOIRE', 'Indre-et-Loire', 1),
(45, '38', 82, '38185', 5, 'ISERE', 'IsÃ¨re', 1),
(46, '39', 43, '39300', 2, 'JURA', 'Jura', 1),
(47, '40', 72, '40192', 4, 'LANDES', 'Landes', 1),
(48, '41', 24, '41018', 0, 'LOIR-ET-CHER', 'Loir-et-Cher', 1),
(49, '42', 82, '42218', 3, 'LOIRE', 'Loire', 1),
(50, '43', 83, '43157', 3, 'HAUTE-LOIRE', 'Haute-Loire', 1),
(51, '44', 52, '44109', 3, 'LOIRE-ATLANTIQUE', 'Loire-Atlantique', 1),
(52, '45', 24, '45234', 2, 'LOIRET', 'Loiret', 1),
(53, '46', 73, '46042', 2, 'LOT', 'Lot', 1),
(54, '47', 72, '47001', 0, 'LOT-ET-GARONNE', 'Lot-et-Garonne', 1),
(55, '48', 91, '48095', 3, 'LOZERE', 'LozÃ¨re', 1),
(56, '49', 52, '49007', 0, 'MAINE-ET-LOIRE', 'Maine-et-Loire', 1),
(57, '50', 25, '50502', 3, 'MANCHE', 'Manche', 1),
(58, '51', 21, '51108', 3, 'MARNE', 'Marne', 1),
(59, '52', 21, '52121', 3, 'HAUTE-MARNE', 'Haute-Marne', 1),
(60, '53', 52, '53130', 3, 'MAYENNE', 'Mayenne', 1),
(61, '54', 41, '54395', 0, 'MEURTHE-ET-MOSELLE', 'Meurthe-et-Moselle', 1),
(62, '55', 41, '55029', 3, 'MEUSE', 'Meuse', 1),
(63, '56', 53, '56260', 2, 'MORBIHAN', 'Morbihan', 1),
(64, '57', 41, '57463', 3, 'MOSELLE', 'Moselle', 1),
(65, '58', 26, '58194', 3, 'NIEVRE', 'NiÃ¨vre', 1),
(66, '59', 31, '59350', 2, 'NORD', 'Nord', 1),
(67, '60', 22, '60057', 5, 'OISE', 'Oise', 1),
(68, '61', 25, '61001', 5, 'ORNE', 'Orne', 1),
(69, '62', 31, '62041', 2, 'PAS-DE-CALAIS', 'Pas-de-Calais', 1),
(70, '63', 83, '63113', 2, 'PUY-DE-DOME', 'Puy-de-DÃ´me', 1),
(71, '64', 72, '64445', 4, 'PYRENEES-ATLANTIQUES', 'PyrÃ©nÃ©es-Atlantiques', 1),
(72, '65', 73, '65440', 4, 'HAUTES-PYRENEES', 'Hautes-PyrÃ©nÃ©es', 1),
(73, '66', 91, '66136', 4, 'PYRENEES-ORIENTALES', 'PyrÃ©nÃ©es-Orientales', 1),
(74, '67', 42, '67482', 2, 'BAS-RHIN', 'Bas-Rhin', 1),
(75, '68', 42, '68066', 2, 'HAUT-RHIN', 'Haut-Rhin', 1),
(76, '69', 82, '69123', 2, 'RHONE', 'RhÃ´ne', 1),
(77, '70', 43, '70550', 3, 'HAUTE-SAONE', 'Haute-SaÃ´ne', 1),
(78, '71', 26, '71270', 0, 'SAONE-ET-LOIRE', 'SaÃ´ne-et-Loire', 1),
(79, '72', 52, '72181', 3, 'SARTHE', 'Sarthe', 1),
(80, '73', 82, '73065', 3, 'SAVOIE', 'Savoie', 1),
(81, '74', 82, '74010', 3, 'HAUTE-SAVOIE', 'Haute-Savoie', 1),
(82, '75', 11, '75056', 0, 'PARIS', 'Paris', 1),
(83, '76', 23, '76540', 3, 'SEINE-MARITIME', 'Seine-Maritime', 1),
(84, '77', 11, '77288', 0, 'SEINE-ET-MARNE', 'Seine-et-Marne', 1),
(85, '78', 11, '78646', 4, 'YVELINES', 'Yvelines', 1),
(86, '79', 54, '79191', 4, 'DEUX-SEVRES', 'Deux-SÃ¨vres', 1),
(87, '80', 22, '80021', 3, 'SOMME', 'Somme', 1),
(88, '81', 73, '81004', 2, 'TARN', 'Tarn', 1),
(89, '82', 73, '82121', 0, 'TARN-ET-GARONNE', 'Tarn-et-Garonne', 1),
(90, '83', 93, '83137', 2, 'VAR', 'Var', 1),
(91, '84', 93, '84007', 0, 'VAUCLUSE', 'Vaucluse', 1),
(92, '85', 52, '85191', 3, 'VENDEE', 'VendÃ©e', 1),
(93, '86', 54, '86194', 3, 'VIENNE', 'Vienne', 1),
(94, '87', 74, '87085', 3, 'HAUTE-VIENNE', 'Haute-Vienne', 1),
(95, '88', 41, '88160', 4, 'VOSGES', 'Vosges', 1),
(96, '89', 26, '89024', 5, 'YONNE', 'Yonne', 1),
(97, '90', 43, '90010', 0, 'TERRITOIRE DE BELFORT', 'Territoire de Belfort', 1),
(98, '91', 11, '91228', 5, 'ESSONNE', 'Essonne', 1),
(99, '92', 11, '92050', 4, 'HAUTS-DE-SEINE', 'Hauts-de-Seine', 1),
(100, '93', 11, '93008', 3, 'SEINE-SAINT-DENIS', 'Seine-Saint-Denis', 1),
(101, '94', 11, '94028', 2, 'VAL-DE-MARNE', 'Val-de-Marne', 1),
(102, '95', 11, '95500', 2, 'VAL-D OISE', 'Val-d Oise', 1),
(103, 'B', 4101, NULL, NULL, 'BURGENLAND', 'Burgenland', 1),
(104, 'K', 4101, NULL, NULL, 'KAERNTEN', 'KÃ¤rnten', 1),
(105, 'N', 4101, NULL, NULL, 'NIEDEROESTERREICH', 'NiederÃ¶sterreich', 1),
(106, 'O', 4101, NULL, NULL, 'OBEROESTERREICH', 'OberÃ¶sterreich', 1),
(107, 'S', 4101, NULL, NULL, 'SALZBURG', 'Salzburg', 1),
(108, 'ST', 4101, NULL, NULL, 'STEIERMARK', 'Steiermark', 1),
(109, 'T', 4101, NULL, NULL, 'TIROL', 'Tirol', 1),
(110, 'V', 4101, NULL, NULL, 'VORARLBERG', 'Vorarlberg', 1),
(111, 'W', 4101, NULL, NULL, 'WIEN', 'Wien', 1),
(112, '01', 201, '', 1, 'ANVERS', 'Anvers', 1),
(113, '02', 203, '', 3, 'BRUXELLES-CAPITALE', 'Bruxelles-Capitale', 1),
(114, '03', 202, '', 2, 'BRABANT-WALLON', 'Brabant-Wallon', 1),
(115, '04', 201, '', 1, 'BRABANT-FLAMAND', 'Brabant-Flamand', 1),
(116, '05', 201, '', 1, 'FLANDRE-OCCIDENTALE', 'Flandre-Occidentale', 1),
(117, '06', 201, '', 1, 'FLANDRE-ORIENTALE', 'Flandre-Orientale', 1),
(118, '07', 202, '', 2, 'HAINAUT', 'Hainaut', 1),
(119, '08', 201, '', 2, 'LIEGE', 'LiÃ¨ge', 1),
(120, '09', 202, '', 1, 'LIMBOURG', 'Limbourg', 1),
(121, '10', 202, '', 2, 'LUXEMBOURG', 'Luxembourg', 1),
(122, '11', 201, '', 2, 'NAMUR', 'Namur', 1),
(123, 'AG', 315, NULL, NULL, NULL, 'AGRIGENTO', 1),
(124, 'AL', 312, NULL, NULL, NULL, 'ALESSANDRIA', 1),
(125, 'AN', 310, NULL, NULL, NULL, 'ANCONA', 1),
(126, 'AO', 319, NULL, NULL, NULL, 'AOSTA', 1),
(127, 'AR', 316, NULL, NULL, NULL, 'AREZZO', 1),
(128, 'AP', 310, NULL, NULL, NULL, 'ASCOLI PICENO', 1),
(129, 'AT', 312, NULL, NULL, NULL, 'ASTI', 1),
(130, 'AV', 304, NULL, NULL, NULL, 'AVELLINO', 1),
(131, 'BA', 313, NULL, NULL, NULL, 'BARI', 1),
(132, 'BT', 313, NULL, NULL, NULL, 'BARLETTA-ANDRIA-TRANI', 1),
(133, 'BL', 320, NULL, NULL, NULL, 'BELLUNO', 1),
(134, 'BN', 304, NULL, NULL, NULL, 'BENEVENTO', 1),
(135, 'BG', 309, NULL, NULL, NULL, 'BERGAMO', 1),
(136, 'BI', 312, NULL, NULL, NULL, 'BIELLA', 1),
(137, 'BO', 305, NULL, NULL, NULL, 'BOLOGNA', 1),
(138, 'BZ', 317, NULL, NULL, NULL, 'BOLZANO', 1),
(139, 'BS', 309, NULL, NULL, NULL, 'BRESCIA', 1),
(140, 'BR', 313, NULL, NULL, NULL, 'BRINDISI', 1),
(141, 'CA', 314, NULL, NULL, NULL, 'CAGLIARI', 1),
(142, 'CL', 315, NULL, NULL, NULL, 'CALTANISSETTA', 1),
(143, 'CB', 311, NULL, NULL, NULL, 'CAMPOBASSO', 1),
(144, 'CI', 314, NULL, NULL, NULL, 'CARBONIA-IGLESIAS', 1),
(145, 'CE', 304, NULL, NULL, NULL, 'CASERTA', 1),
(146, 'CT', 315, NULL, NULL, NULL, 'CATANIA', 1),
(147, 'CZ', 303, NULL, NULL, NULL, 'CATANZARO', 1),
(148, 'CH', 301, NULL, NULL, NULL, 'CHIETI', 1),
(149, 'CO', 309, NULL, NULL, NULL, 'COMO', 1),
(150, 'CS', 303, NULL, NULL, NULL, 'COSENZA', 1),
(151, 'CR', 309, NULL, NULL, NULL, 'CREMONA', 1),
(152, 'KR', 303, NULL, NULL, NULL, 'CROTONE', 1),
(153, 'CN', 312, NULL, NULL, NULL, 'CUNEO', 1),
(154, 'EN', 315, NULL, NULL, NULL, 'ENNA', 1),
(155, 'FM', 310, NULL, NULL, NULL, 'FERMO', 1),
(156, 'FE', 305, NULL, NULL, NULL, 'FERRARA', 1),
(157, 'FI', 316, NULL, NULL, NULL, 'FIRENZE', 1),
(158, 'FG', 313, NULL, NULL, NULL, 'FOGGIA', 1),
(159, 'FC', 305, NULL, NULL, NULL, 'FORLI-CESENA', 1),
(160, 'FR', 307, NULL, NULL, NULL, 'FROSINONE', 1),
(161, 'GE', 308, NULL, NULL, NULL, 'GENOVA', 1),
(162, 'GO', 306, NULL, NULL, NULL, 'GORIZIA', 1),
(163, 'GR', 316, NULL, NULL, NULL, 'GROSSETO', 1),
(164, 'IM', 308, NULL, NULL, NULL, 'IMPERIA', 1),
(165, 'IS', 311, NULL, NULL, NULL, 'ISERNIA', 1),
(166, 'SP', 308, NULL, NULL, NULL, 'LA SPEZIA', 1),
(167, 'AQ', 301, NULL, NULL, NULL, 'L AQUILA', 1),
(168, 'LT', 307, NULL, NULL, NULL, 'LATINA', 1),
(169, 'LE', 313, NULL, NULL, NULL, 'LECCE', 1),
(170, 'LC', 309, NULL, NULL, NULL, 'LECCO', 1),
(171, 'LI', 314, NULL, NULL, NULL, 'LIVORNO', 1),
(172, 'LO', 309, NULL, NULL, NULL, 'LODI', 1),
(173, 'LU', 316, NULL, NULL, NULL, 'LUCCA', 1),
(174, 'MC', 310, NULL, NULL, NULL, 'MACERATA', 1),
(175, 'MN', 309, NULL, NULL, NULL, 'MANTOVA', 1),
(176, 'MS', 316, NULL, NULL, NULL, 'MASSA-CARRARA', 1),
(177, 'MT', 302, NULL, NULL, NULL, 'MATERA', 1),
(178, 'VS', 314, NULL, NULL, NULL, 'MEDIO CAMPIDANO', 1),
(179, 'ME', 315, NULL, NULL, NULL, 'MESSINA', 1),
(180, 'MI', 309, NULL, NULL, NULL, 'MILANO', 1),
(181, 'MB', 309, NULL, NULL, NULL, 'MONZA e BRIANZA', 1),
(182, 'MO', 305, NULL, NULL, NULL, 'MODENA', 1),
(183, 'NA', 304, NULL, NULL, NULL, 'NAPOLI', 1),
(184, 'NO', 312, NULL, NULL, NULL, 'NOVARA', 1),
(185, 'NU', 314, NULL, NULL, NULL, 'NUORO', 1),
(186, 'OG', 314, NULL, NULL, NULL, 'OGLIASTRA', 1),
(187, 'OT', 314, NULL, NULL, NULL, 'OLBIA-TEMPIO', 1),
(188, 'OR', 314, NULL, NULL, NULL, 'ORISTANO', 1),
(189, 'PD', 320, NULL, NULL, NULL, 'PADOVA', 1),
(190, 'PA', 315, NULL, NULL, NULL, 'PALERMO', 1),
(191, 'PR', 305, NULL, NULL, NULL, 'PARMA', 1),
(192, 'PV', 309, NULL, NULL, NULL, 'PAVIA', 1),
(193, 'PG', 318, NULL, NULL, NULL, 'PERUGIA', 1),
(194, 'PU', 310, NULL, NULL, NULL, 'PESARO e URBINO', 1),
(195, 'PE', 301, NULL, NULL, NULL, 'PESCARA', 1),
(196, 'PC', 305, NULL, NULL, NULL, 'PIACENZA', 1),
(197, 'PI', 316, NULL, NULL, NULL, 'PISA', 1),
(198, 'PT', 316, NULL, NULL, NULL, 'PISTOIA', 1),
(199, 'PN', 306, NULL, NULL, NULL, 'PORDENONE', 1),
(200, 'PZ', 302, NULL, NULL, NULL, 'POTENZA', 1),
(201, 'PO', 316, NULL, NULL, NULL, 'PRATO', 1),
(202, 'RG', 315, NULL, NULL, NULL, 'RAGUSA', 1),
(203, 'RA', 305, NULL, NULL, NULL, 'RAVENNA', 1),
(204, 'RC', 303, NULL, NULL, NULL, 'REGGIO CALABRIA', 1),
(205, 'RE', 305, NULL, NULL, NULL, 'REGGIO NELL EMILIA', 1),
(206, 'RI', 307, NULL, NULL, NULL, 'RIETI', 1),
(207, 'RN', 305, NULL, NULL, NULL, 'RIMINI', 1),
(208, 'RM', 307, NULL, NULL, NULL, 'ROMA', 1),
(209, 'RO', 320, NULL, NULL, NULL, 'ROVIGO', 1),
(210, 'SA', 304, NULL, NULL, NULL, 'SALERNO', 1),
(211, 'SS', 314, NULL, NULL, NULL, 'SASSARI', 1),
(212, 'SV', 308, NULL, NULL, NULL, 'SAVONA', 1),
(213, 'SI', 316, NULL, NULL, NULL, 'SIENA', 1),
(214, 'SR', 315, NULL, NULL, NULL, 'SIRACUSA', 1),
(215, 'SO', 309, NULL, NULL, NULL, 'SONDRIO', 1),
(216, 'TA', 313, NULL, NULL, NULL, 'TARANTO', 1),
(217, 'TE', 301, NULL, NULL, NULL, 'TERAMO', 1),
(218, 'TR', 318, NULL, NULL, NULL, 'TERNI', 1),
(219, 'TO', 312, NULL, NULL, NULL, 'TORINO', 1),
(220, 'TP', 315, NULL, NULL, NULL, 'TRAPANI', 1),
(221, 'TN', 317, NULL, NULL, NULL, 'TRENTO', 1),
(222, 'TV', 320, NULL, NULL, NULL, 'TREVISO', 1),
(223, 'TS', 306, NULL, NULL, NULL, 'TRIESTE', 1),
(224, 'UD', 306, NULL, NULL, NULL, 'UDINE', 1),
(225, 'VA', 309, NULL, NULL, NULL, 'VARESE', 1),
(226, 'VE', 320, NULL, NULL, NULL, 'VENEZIA', 1),
(227, 'VB', 312, NULL, NULL, NULL, 'VERBANO-CUSIO-OSSOLA', 1),
(228, 'VC', 312, NULL, NULL, NULL, 'VERCELLI', 1),
(229, 'VR', 320, NULL, NULL, NULL, 'VERONA', 1),
(230, 'VV', 303, NULL, NULL, NULL, 'VIBO VALENTIA', 1),
(231, 'VI', 320, NULL, NULL, NULL, 'VICENZA', 1),
(232, 'VT', 307, NULL, NULL, NULL, 'VITERBO', 1),
(233, 'AL01', 1301, '', 0, '', 'Wilaya d''Adrar', 1),
(234, 'AL02', 1301, '', 0, '', 'Wilaya de Chlef', 1),
(235, 'AL03', 1301, '', 0, '', 'Wilaya de Laghouat', 1),
(236, 'AL04', 1301, '', 0, '', 'Wilaya d''Oum El Bouaghi', 1),
(237, 'AL05', 1301, '', 0, '', 'Wilaya de Batna', 1),
(238, 'AL06', 1301, '', 0, '', 'Wilaya de BÃ©jaÃ¯a', 1),
(239, 'AL07', 1301, '', 0, '', 'Wilaya de Biskra', 1),
(240, 'AL08', 1301, '', 0, '', 'Wilaya de BÃ©char', 1),
(241, 'AL09', 1301, '', 0, '', 'Wilaya de Blida', 1),
(242, 'AL10', 1301, '', 0, '', 'Wilaya de Bouira', 1),
(243, 'AL11', 1301, '', 0, '', 'Wilaya de Tamanrasset', 1),
(244, 'AL12', 1301, '', 0, '', 'Wilaya de TÃ©bessa', 1),
(245, 'AL13', 1301, '', 0, '', 'Wilaya de Tlemcen', 1),
(246, 'AL14', 1301, '', 0, '', 'Wilaya de Tiaret', 1),
(247, 'AL15', 1301, '', 0, '', 'Wilaya de Tizi Ouzou', 1),
(248, 'AL16', 1301, '', 0, '', 'Wilaya d''Alger', 1),
(249, 'AL17', 1301, '', 0, '', 'Wilaya de Djelfa', 1),
(250, 'AL18', 1301, '', 0, '', 'Wilaya de Jijel', 1),
(251, 'AL19', 1301, '', 0, '', 'Wilaya de SÃ©tif	', 1),
(252, 'AL20', 1301, '', 0, '', 'Wilaya de SaÃ¯da', 1),
(253, 'AL21', 1301, '', 0, '', 'Wilaya de Skikda', 1),
(254, 'AL22', 1301, '', 0, '', 'Wilaya de Sidi Bel AbbÃ¨s', 1),
(255, 'AL23', 1301, '', 0, '', 'Wilaya d''Annaba', 1),
(256, 'AL24', 1301, '', 0, '', 'Wilaya de Guelma', 1),
(257, 'AL25', 1301, '', 0, '', 'Wilaya de Constantine', 1),
(258, 'AL26', 1301, '', 0, '', 'Wilaya de MÃ©dÃ©a', 1),
(259, 'AL27', 1301, '', 0, '', 'Wilaya de Mostaganem', 1),
(260, 'AL28', 1301, '', 0, '', 'Wilaya de M''Sila', 1),
(261, 'AL29', 1301, '', 0, '', 'Wilaya de Mascara', 1),
(262, 'AL30', 1301, '', 0, '', 'Wilaya d''Ouargla', 1),
(263, 'AL31', 1301, '', 0, '', 'Wilaya d''Oran', 1),
(264, 'AL32', 1301, '', 0, '', 'Wilaya d''El Bayadh', 1),
(265, 'AL33', 1301, '', 0, '', 'Wilaya d''Illizi', 1),
(266, 'AL34', 1301, '', 0, '', 'Wilaya de Bordj Bou Arreridj', 1),
(267, 'AL35', 1301, '', 0, '', 'Wilaya de BoumerdÃ¨s', 1),
(268, 'AL36', 1301, '', 0, '', 'Wilaya d''El Tarf', 1),
(269, 'AL37', 1301, '', 0, '', 'Wilaya de Tindouf', 1),
(270, 'AL38', 1301, '', 0, '', 'Wilaya de Tissemsilt', 1),
(271, 'AL39', 1301, '', 0, '', 'Wilaya d''El Oued', 1),
(272, 'AL40', 1301, '', 0, '', 'Wilaya de Khenchela', 1),
(273, 'AL41', 1301, '', 0, '', 'Wilaya de Souk Ahras', 1),
(274, 'AL42', 1301, '', 0, '', 'Wilaya de Tipaza', 1),
(275, 'AL43', 1301, '', 0, '', 'Wilaya de Mila', 1),
(276, 'AL44', 1301, '', 0, '', 'Wilaya d''AÃ¯n Defla', 1),
(277, 'AL45', 1301, '', 0, '', 'Wilaya de NaÃ¢ma', 1),
(278, 'AL46', 1301, '', 0, '', 'Wilaya d''AÃ¯n TÃ©mouchent', 1),
(279, 'AL47', 1301, '', 0, '', 'Wilaya de Ghardaia', 1),
(280, 'AL48', 1301, '', 0, '', 'Wilaya de Relizane', 1),
(281, 'MA', 1209, '', 0, '', 'Province de Benslimane', 1),
(282, 'MA1', 1209, '', 0, '', 'Province de Berrechid', 1),
(283, 'MA2', 1209, '', 0, '', 'Province de Khouribga', 1),
(284, 'MA3', 1209, '', 0, '', 'Province de Settat', 1),
(285, 'MA4', 1210, '', 0, '', 'Province d''El Jadida', 1),
(286, 'MA5', 1210, '', 0, '', 'Province de Safi', 1),
(287, 'MA6', 1210, '', 0, '', 'Province de Sidi Bennour', 1),
(288, 'MA7', 1210, '', 0, '', 'Province de Youssoufia', 1),
(289, 'MA6B', 1205, '', 0, '', 'PrÃ©fecture de FÃ¨s', 1),
(290, 'MA7B', 1205, '', 0, '', 'Province de Boulemane', 1),
(291, 'MA8', 1205, '', 0, '', 'Province de Moulay Yacoub', 1),
(292, 'MA9', 1205, '', 0, '', 'Province de Sefrou', 1),
(293, 'MA8A', 1202, '', 0, '', 'Province de KÃ©nitra', 1),
(294, 'MA9A', 1202, '', 0, '', 'Province de Sidi Kacem', 1),
(295, 'MA10', 1202, '', 0, '', 'Province de Sidi Slimane', 1),
(296, 'MA11', 1208, '', 0, '', 'PrÃ©fecture de Casablanca', 1),
(297, 'MA12', 1208, '', 0, '', 'PrÃ©fecture de MohammÃ©dia', 1),
(298, 'MA13', 1208, '', 0, '', 'Province de MÃ©diouna', 1),
(299, 'MA14', 1208, '', 0, '', 'Province de Nouaceur', 1),
(300, 'MA15', 1214, '', 0, '', 'Province d''Assa-Zag', 1),
(301, 'MA16', 1214, '', 0, '', 'Province d''Es-Semara', 1),
(302, 'MA17A', 1214, '', 0, '', 'Province de Guelmim', 1),
(303, 'MA18', 1214, '', 0, '', 'Province de Tata', 1),
(304, 'MA19', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(305, 'MA15', 1215, '', 0, '', 'Province de Boujdour', 1),
(306, 'MA16', 1215, '', 0, '', 'Province de LÃ¢ayoune', 1),
(307, 'MA17', 1215, '', 0, '', 'Province de Tarfaya', 1),
(308, 'MA18', 1211, '', 0, '', 'PrÃ©fecture de Marrakech', 1),
(309, 'MA19', 1211, '', 0, '', 'Province d''Al Haouz', 1),
(310, 'MA20', 1211, '', 0, '', 'Province de Chichaoua', 1),
(311, 'MA21', 1211, '', 0, '', 'Province d''El KelÃ¢a des Sraghna', 1),
(312, 'MA22', 1211, '', 0, '', 'Province d''Essaouira', 1),
(313, 'MA23', 1211, '', 0, '', 'Province de Rehamna', 1),
(314, 'MA24', 1206, '', 0, '', 'PrÃ©fecture de MeknÃ¨s', 1),
(315, 'MA25', 1206, '', 0, '', 'Province dâ€™El Hajeb', 1),
(316, 'MA26', 1206, '', 0, '', 'Province d''Errachidia', 1),
(317, 'MA27', 1206, '', 0, '', 'Province dâ€™Ifrane', 1),
(318, 'MA28', 1206, '', 0, '', 'Province de KhÃ©nifra', 1),
(319, 'MA29', 1206, '', 0, '', 'Province de Midelt', 1),
(320, 'MA30', 1204, '', 0, '', 'PrÃ©fecture d''Oujda-Angad', 1),
(321, 'MA31', 1204, '', 0, '', 'Province de Berkane', 1),
(322, 'MA32', 1204, '', 0, '', 'Province de Driouch', 1),
(323, 'MA33', 1204, '', 0, '', 'Province de Figuig', 1),
(324, 'MA34', 1204, '', 0, '', 'Province de Jerada', 1),
(325, 'MA35', 1204, '', 0, '', 'Province de Nadorgg', 1),
(326, 'MA36', 1204, '', 0, '', 'Province de Taourirt', 1),
(327, 'MA37', 1216, '', 0, '', 'Province d''Aousserd', 1),
(328, 'MA38', 1216, '', 0, '', 'Province d''Oued Ed-Dahab', 1),
(329, 'MA39', 1207, '', 0, '', 'PrÃ©fecture de Rabat', 1),
(330, 'MA40', 1207, '', 0, '', 'PrÃ©fecture de Skhirat-TÃ©mara', 1),
(331, 'MA41', 1207, '', 0, '', 'PrÃ©fecture de SalÃ©', 1),
(332, 'MA42', 1207, '', 0, '', 'Province de KhÃ©misset', 1),
(333, 'MA43', 1213, '', 0, '', 'PrÃ©fecture d''Agadir Ida-Outanane', 1),
(334, 'MA44', 1213, '', 0, '', 'PrÃ©fecture d''Inezgane-AÃ¯t Melloul', 1),
(335, 'MA45', 1213, '', 0, '', 'Province de Chtouka-AÃ¯t Baha', 1),
(336, 'MA46', 1213, '', 0, '', 'Province d''Ouarzazate', 1),
(337, 'MA47', 1213, '', 0, '', 'Province de Sidi Ifni', 1),
(338, 'MA48', 1213, '', 0, '', 'Province de Taroudant', 1),
(339, 'MA49', 1213, '', 0, '', 'Province de Tinghir', 1),
(340, 'MA50', 1213, '', 0, '', 'Province de Tiznit', 1),
(341, 'MA51', 1213, '', 0, '', 'Province de Zagora', 1),
(342, 'MA52', 1212, '', 0, '', 'Province d''Azilal', 1),
(343, 'MA53', 1212, '', 0, '', 'Province de Beni Mellal', 1),
(344, 'MA54', 1212, '', 0, '', 'Province de Fquih Ben Salah', 1),
(345, 'MA55', 1201, '', 0, '', 'PrÃ©fecture de M''diq-Fnideq', 1),
(346, 'MA56', 1201, '', 0, '', 'PrÃ©fecture de Tanger-Asilah', 1),
(347, 'MA57', 1201, '', 0, '', 'Province de Chefchaouen', 1),
(348, 'MA58', 1201, '', 0, '', 'Province de Fahs-Anjra', 1),
(349, 'MA59', 1201, '', 0, '', 'Province de Larache', 1),
(350, 'MA60', 1201, '', 0, '', 'Province d''Ouezzane', 1),
(351, 'MA61', 1201, '', 0, '', 'Province de TÃ©touan', 1),
(352, 'MA62', 1203, '', 0, '', 'Province de Guercif', 1),
(353, 'MA63', 1203, '', 0, '', 'Province d''Al HoceÃ¯ma', 1),
(354, 'MA64', 1203, '', 0, '', 'Province de Taounate', 1),
(355, 'MA65', 1203, '', 0, '', 'Province de Taza', 1),
(356, 'MA6A', 1205, '', 0, '', 'PrÃ©fecture de FÃ¨s', 1),
(357, 'MA7A', 1205, '', 0, '', 'Province de Boulemane', 1),
(358, 'MA15A', 1214, '', 0, '', 'Province d''Assa-Zag', 1),
(359, 'MA16A', 1214, '', 0, '', 'Province d''Es-Semara', 1),
(360, 'MA18A', 1211, '', 0, '', 'PrÃ©fecture de Marrakech', 1),
(361, 'MA19A', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(362, 'MA19B', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(363, 'TN01', 1001, '', 0, '', 'Ariana', 1),
(364, 'TN02', 1001, '', 0, '', 'BÃ©ja', 1),
(365, 'TN03', 1001, '', 0, '', 'Ben Arous', 1),
(366, 'TN04', 1001, '', 0, '', 'Bizerte', 1),
(367, 'TN05', 1001, '', 0, '', 'GabÃ¨s', 1),
(368, 'TN06', 1001, '', 0, '', 'Gafsa', 1),
(369, 'TN07', 1001, '', 0, '', 'Jendouba', 1),
(370, 'TN08', 1001, '', 0, '', 'Kairouan', 1),
(371, 'TN09', 1001, '', 0, '', 'Kasserine', 1),
(372, 'TN10', 1001, '', 0, '', 'KÃ©bili', 1),
(373, 'TN11', 1001, '', 0, '', 'La Manouba', 1),
(374, 'TN12', 1001, '', 0, '', 'Le Kef', 1),
(375, 'TN13', 1001, '', 0, '', 'Mahdia', 1),
(376, 'TN14', 1001, '', 0, '', 'MÃ©denine', 1),
(377, 'TN15', 1001, '', 0, '', 'Monastir', 1),
(378, 'TN16', 1001, '', 0, '', 'Nabeul', 1),
(379, 'TN17', 1001, '', 0, '', 'Sfax', 1),
(380, 'TN18', 1001, '', 0, '', 'Sidi Bouzid', 1),
(381, 'TN19', 1001, '', 0, '', 'Siliana', 1),
(382, 'TN20', 1001, '', 0, '', 'Sousse', 1),
(383, 'TN21', 1001, '', 0, '', 'Tataouine', 1),
(384, 'TN22', 1001, '', 0, '', 'Tozeur', 1),
(385, 'TN23', 1001, '', 0, '', 'Tunis', 1),
(386, 'TN24', 1001, '', 0, '', 'Zaghouan', 1),
(387, '001', 5201, '', 0, '', 'Belisario Boeto', 1),
(388, '002', 5201, '', 0, '', 'Hernando Siles', 1),
(389, '003', 5201, '', 0, '', 'Jaime ZudÃ¡Ã±ez', 1),
(390, '004', 5201, '', 0, '', 'Juana Azurduy de Padilla', 1),
(391, '005', 5201, '', 0, '', 'Luis Calvo', 1),
(392, '006', 5201, '', 0, '', 'Nor Cinti', 1),
(393, '007', 5201, '', 0, '', 'Oropeza', 1),
(394, '008', 5201, '', 0, '', 'Sud Cinti', 1),
(395, '009', 5201, '', 0, '', 'Tomina', 1),
(396, '010', 5201, '', 0, '', 'YamparÃ¡ez', 1),
(397, '011', 5202, '', 0, '', 'Abel Iturralde', 1),
(398, '012', 5202, '', 0, '', 'Aroma', 1),
(399, '013', 5202, '', 0, '', 'Bautista Saavedra', 1),
(400, '014', 5202, '', 0, '', 'Caranavi', 1),
(401, '015', 5202, '', 0, '', 'Eliodoro Camacho', 1),
(402, '016', 5202, '', 0, '', 'Franz Tamayo', 1),
(403, '017', 5202, '', 0, '', 'Gualberto Villarroel', 1),
(404, '018', 5202, '', 0, '', 'IngavÃ­', 1),
(405, '019', 5202, '', 0, '', 'Inquisivi', 1),
(406, '020', 5202, '', 0, '', 'JosÃ© RamÃ³n Loayza', 1),
(407, '021', 5202, '', 0, '', 'Larecaja', 1),
(408, '022', 5202, '', 0, '', 'Los Andes (Bolivia)', 1),
(409, '023', 5202, '', 0, '', 'Manco Kapac', 1),
(410, '024', 5202, '', 0, '', 'MuÃ±ecas', 1),
(411, '025', 5202, '', 0, '', 'Nor Yungas', 1),
(412, '026', 5202, '', 0, '', 'Omasuyos', 1),
(413, '027', 5202, '', 0, '', 'Pacajes', 1),
(414, '028', 5202, '', 0, '', 'Pedro Domingo Murillo', 1),
(415, '029', 5202, '', 0, '', 'Sud Yungas', 1),
(416, '030', 5202, '', 0, '', 'General JosÃ© Manuel Pando', 1),
(417, '031', 5203, '', 0, '', 'Arani', 1),
(418, '032', 5203, '', 0, '', 'Arque', 1),
(419, '033', 5203, '', 0, '', 'Ayopaya', 1),
(420, '034', 5203, '', 0, '', 'BolÃ­var (Bolivia)', 1),
(421, '035', 5203, '', 0, '', 'Campero', 1),
(422, '036', 5203, '', 0, '', 'Capinota', 1),
(423, '037', 5203, '', 0, '', 'Cercado (Cochabamba)', 1),
(424, '038', 5203, '', 0, '', 'Esteban Arze', 1),
(425, '039', 5203, '', 0, '', 'GermÃ¡n JordÃ¡n', 1),
(426, '040', 5203, '', 0, '', 'JosÃ© Carrasco', 1),
(427, '041', 5203, '', 0, '', 'Mizque', 1),
(428, '042', 5203, '', 0, '', 'Punata', 1),
(429, '043', 5203, '', 0, '', 'Quillacollo', 1),
(430, '044', 5203, '', 0, '', 'TapacarÃ­', 1),
(431, '045', 5203, '', 0, '', 'Tiraque', 1),
(432, '046', 5203, '', 0, '', 'Chapare', 1),
(433, '047', 5204, '', 0, '', 'Carangas', 1),
(434, '048', 5204, '', 0, '', 'Cercado (Oruro)', 1),
(435, '049', 5204, '', 0, '', 'Eduardo Avaroa', 1),
(436, '050', 5204, '', 0, '', 'Ladislao Cabrera', 1),
(437, '051', 5204, '', 0, '', 'Litoral de Atacama', 1),
(438, '052', 5204, '', 0, '', 'Mejillones', 1),
(439, '053', 5204, '', 0, '', 'Nor Carangas', 1),
(440, '054', 5204, '', 0, '', 'PantaleÃ³n Dalence', 1),
(441, '055', 5204, '', 0, '', 'PoopÃ³', 1),
(442, '056', 5204, '', 0, '', 'Sabaya', 1),
(443, '057', 5204, '', 0, '', 'Sajama', 1),
(444, '058', 5204, '', 0, '', 'San Pedro de Totora', 1),
(445, '059', 5204, '', 0, '', 'SaucarÃ­', 1),
(446, '060', 5204, '', 0, '', 'SebastiÃ¡n Pagador', 1),
(447, '061', 5204, '', 0, '', 'Sud Carangas', 1),
(448, '062', 5204, '', 0, '', 'TomÃ¡s BarrÃ³n', 1),
(449, '063', 5205, '', 0, '', 'Alonso de IbÃ¡Ã±ez', 1),
(450, '064', 5205, '', 0, '', 'Antonio Quijarro', 1),
(451, '065', 5205, '', 0, '', 'Bernardino Bilbao', 1),
(452, '066', 5205, '', 0, '', 'Charcas (PotosÃ­)', 1),
(453, '067', 5205, '', 0, '', 'Chayanta', 1),
(454, '068', 5205, '', 0, '', 'Cornelio Saavedra', 1),
(455, '069', 5205, '', 0, '', 'Daniel Campos', 1),
(456, '070', 5205, '', 0, '', 'Enrique Baldivieso', 1),
(457, '071', 5205, '', 0, '', 'JosÃ© MarÃ­a Linares', 1),
(458, '072', 5205, '', 0, '', 'Modesto Omiste', 1),
(459, '073', 5205, '', 0, '', 'Nor Chichas', 1),
(460, '074', 5205, '', 0, '', 'Nor LÃ­pez', 1),
(461, '075', 5205, '', 0, '', 'Rafael Bustillo', 1),
(462, '076', 5205, '', 0, '', 'Sud Chichas', 1),
(463, '077', 5205, '', 0, '', 'Sud LÃ­pez', 1),
(464, '078', 5205, '', 0, '', 'TomÃ¡s FrÃ­as', 1),
(465, '079', 5206, '', 0, '', 'Aniceto Arce', 1),
(466, '080', 5206, '', 0, '', 'Burdet O''Connor', 1),
(467, '081', 5206, '', 0, '', 'Cercado (Tarija)', 1),
(468, '082', 5206, '', 0, '', 'Eustaquio MÃ©ndez', 1),
(469, '083', 5206, '', 0, '', 'JosÃ© MarÃ­a AvilÃ©s', 1),
(470, '084', 5206, '', 0, '', 'Gran Chaco', 1),
(471, '085', 5207, '', 0, '', 'AndrÃ©s IbÃ¡Ã±ez', 1),
(472, '086', 5207, '', 0, '', 'Caballero', 1),
(473, '087', 5207, '', 0, '', 'Chiquitos', 1),
(474, '088', 5207, '', 0, '', 'Cordillera (Bolivia)', 1),
(475, '089', 5207, '', 0, '', 'Florida', 1),
(476, '090', 5207, '', 0, '', 'GermÃ¡n Busch', 1),
(477, '091', 5207, '', 0, '', 'Guarayos', 1),
(478, '092', 5207, '', 0, '', 'Ichilo', 1),
(479, '093', 5207, '', 0, '', 'Obispo Santistevan', 1),
(480, '094', 5207, '', 0, '', 'Sara', 1),
(481, '095', 5207, '', 0, '', 'Vallegrande', 1),
(482, '096', 5207, '', 0, '', 'Velasco', 1),
(483, '097', 5207, '', 0, '', 'Warnes', 1),
(484, '098', 5207, '', 0, '', 'Ãngel SandÃ³val', 1),
(485, '099', 5207, '', 0, '', 'Ã‘uflo de Chaves', 1),
(486, '100', 5208, '', 0, '', 'Cercado (Beni)', 1),
(487, '101', 5208, '', 0, '', 'ItÃ©nez', 1),
(488, '102', 5208, '', 0, '', 'MamorÃ©', 1),
(489, '103', 5208, '', 0, '', 'MarbÃ¡n', 1),
(490, '104', 5208, '', 0, '', 'Moxos', 1),
(491, '105', 5208, '', 0, '', 'Vaca DÃ­ez', 1),
(492, '106', 5208, '', 0, '', 'Yacuma', 1),
(493, '107', 5208, '', 0, '', 'General JosÃ© BalliviÃ¡n Segurola', 1),
(494, '108', 5209, '', 0, '', 'AbunÃ¡', 1),
(495, '109', 5209, '', 0, '', 'Madre de Dios', 1),
(496, '110', 5209, '', 0, '', 'Manuripi', 1),
(497, '111', 5209, '', 0, '', 'NicolÃ¡s SuÃ¡rez', 1),
(498, '112', 5209, '', 0, '', 'General Federico RomÃ¡n', 1),
(499, 'NSW', 2801, '', 1, '', 'New South Wales', 1),
(500, 'VIC', 2801, '', 1, '', 'Victoria', 1),
(501, 'QLD', 2801, '', 1, '', 'Queensland', 1),
(502, 'SA', 2801, '', 1, '', 'South Australia', 1),
(503, 'ACT', 2801, '', 1, '', 'Australia Capital Territory', 1),
(504, 'TAS', 2801, '', 1, '', 'Tasmania', 1),
(505, 'WA', 2801, '', 1, '', 'Western Australia', 1),
(506, 'NT', 2801, '', 1, '', 'Northern Territory', 1),
(507, 'ON', 1401, '', 1, '', 'Ontario', 1),
(508, 'QC', 1401, '', 1, '', 'Quebec', 1),
(509, 'NS', 1401, '', 1, '', 'Nova Scotia', 1),
(510, 'NB', 1401, '', 1, '', 'New Brunswick', 1),
(511, 'MB', 1401, '', 1, '', 'Manitoba', 1),
(512, 'BC', 1401, '', 1, '', 'British Columbia', 1),
(513, 'PE', 1401, '', 1, '', 'Prince Edward Island', 1),
(514, 'SK', 1401, '', 1, '', 'Saskatchewan', 1),
(515, 'AB', 1401, '', 1, '', 'Alberta', 1),
(516, 'NL', 1401, '', 1, '', 'Newfoundland and Labrador', 1),
(517, 'VI', 419, '', 19, 'ALAVA', 'Ãlava', 1),
(518, 'AB', 404, '', 4, 'ALBACETE', 'Albacete', 1),
(519, 'A', 411, '', 11, 'ALICANTE', 'Alicante', 1),
(520, 'AL', 401, '', 1, 'ALMERIA', 'AlmerÃ­a', 1),
(521, 'AV', 403, '', 3, 'AVILA', 'Avila', 1),
(522, 'BA', 412, '', 12, 'BADAJOZ', 'Badajoz', 1),
(523, 'PM', 414, '', 14, 'ISLAS BALEARES', 'Islas Baleares', 1),
(524, 'B', 406, '', 6, 'BARCELONA', 'Barcelona', 1),
(525, 'BU', 403, '', 8, 'BURGOS', 'Burgos', 1),
(526, 'CC', 412, '', 12, 'CACERES', 'CÃ¡ceres', 1),
(527, 'CA', 401, '', 1, 'CADIZ', 'CÃ¡diz', 1),
(528, 'CS', 411, '', 11, 'CASTELLON', 'CastellÃ³n', 1),
(529, 'CR', 404, '', 4, 'CIUDAD REAL', 'Ciudad Real', 1),
(530, 'CO', 401, '', 1, 'CORDOBA', 'CÃ³rdoba', 1),
(531, 'C', 413, '', 13, 'LA CORUÃ‘A', 'La CoruÃ±a', 1),
(532, 'CU', 404, '', 4, 'CUENCA', 'Cuenca', 1),
(533, 'GI', 406, '', 6, 'GERONA', 'Gerona', 1),
(534, 'GR', 401, '', 1, 'GRANADA', 'Granada', 1),
(535, 'GU', 404, '', 4, 'GUADALAJARA', 'Guadalajara', 1),
(536, 'SS', 419, '', 19, 'GUIPUZCOA', 'GuipÃºzcoa', 1),
(537, 'H', 401, '', 1, 'HUELVA', 'Huelva', 1),
(538, 'HU', 402, '', 2, 'HUESCA', 'Huesca', 1),
(539, 'J', 401, '', 1, 'JAEN', 'JaÃ©n', 1),
(540, 'LE', 403, '', 3, 'LEON', 'LeÃ³n', 1),
(541, 'L', 406, '', 6, 'LERIDA', 'LÃ©rida', 1),
(542, 'LO', 415, '', 15, 'LA RIOJA', 'La Rioja', 1),
(543, 'LU', 413, '', 13, 'LUGO', 'Lugo', 1),
(544, 'M', 416, '', 16, 'MADRID', 'Madrid', 1),
(545, 'MA', 401, '', 1, 'MALAGA', 'MÃ¡laga', 1),
(546, 'MU', 417, '', 17, 'MURCIA', 'Murcia', 1),
(547, 'NA', 408, '', 8, 'NAVARRA', 'Navarra', 1),
(548, 'OR', 413, '', 13, 'ORENSE', 'Orense', 1),
(549, 'O', 418, '', 18, 'ASTURIAS', 'Asturias', 1),
(550, 'P', 403, '', 3, 'PALENCIA', 'Palencia', 1),
(551, 'GC', 405, '', 5, 'LAS PALMAS', 'Las Palmas', 1),
(552, 'PO', 413, '', 13, 'PONTEVEDRA', 'Pontevedra', 1),
(553, 'SA', 403, '', 3, 'SALAMANCA', 'Salamanca', 1),
(554, 'TF', 405, '', 5, 'STA. CRUZ DE TENERIFE', 'Sta. Cruz de Tenerife', 1),
(555, 'S', 410, '', 10, 'CANTABRIA', 'Cantabria', 1),
(556, 'SG', 403, '', 3, 'SEGOVIA', 'Segovia', 1),
(557, 'SE', 401, '', 1, 'SEVILLA', 'Sevilla', 1),
(558, 'SO', 403, '', 3, 'SORIA', 'Soria', 1),
(559, 'T', 406, '', 6, 'TARRAGONA', 'Tarragona', 1),
(560, 'TE', 402, '', 2, 'TERUEL', 'Teruel', 1),
(561, 'TO', 404, '', 5, 'TOLEDO', 'Toledo', 1),
(562, 'V', 411, '', 11, 'VALENCIA', 'Valencia', 1),
(563, 'VA', 403, '', 3, 'VALLADOLID', 'Valladolid', 1),
(564, 'BI', 419, '', 19, 'VIZCAYA', 'Vizcaya', 1),
(565, 'ZA', 403, '', 3, 'ZAMORA', 'Zamora', 1),
(566, 'Z', 402, '', 1, 'ZARAGOZA', 'Zaragoza', 1),
(567, 'CE', 407, '', 7, 'CEUTA', 'Ceuta', 1),
(568, 'ML', 409, '', 9, 'MELILLA', 'Melilla', 1),
(569, 'BW', 501, NULL, NULL, 'BADEN-WÃœRTTEMBERG', 'Baden-WÃ¼rttemberg', 1),
(570, 'BY', 501, NULL, NULL, 'BAYERN', 'Bayern', 1),
(571, 'BE', 501, NULL, NULL, 'BERLIN', 'Berlin', 1),
(572, 'BB', 501, NULL, NULL, 'BRANDENBURG', 'Brandenburg', 1),
(573, 'HB', 501, NULL, NULL, 'BREMEN', 'Bremen', 1),
(574, 'HH', 501, NULL, NULL, 'HAMBURG', 'Hamburg', 1),
(575, 'HE', 501, NULL, NULL, 'HESSEN', 'Hessen', 1),
(576, 'MV', 501, NULL, NULL, 'MECKLENBURG-VORPOMMERN', 'Mecklenburg-Vorpommern', 1),
(577, 'NI', 501, NULL, NULL, 'NIEDERSACHSEN', 'Niedersachsen', 1),
(578, 'NW', 501, NULL, NULL, 'NORDRHEIN-WESTFALEN', 'Nordrhein-Westfalen', 1),
(579, 'RP', 501, NULL, NULL, 'RHEINLAND-PFALZ', 'Rheinland-Pfalz', 1),
(580, 'SL', 501, NULL, NULL, 'SAARLAND', 'Saarland', 1),
(581, 'SN', 501, NULL, NULL, 'SACHSEN', 'Sachsen', 1),
(582, 'ST', 501, NULL, NULL, 'SACHSEN-ANHALT', 'Sachsen-Anhalt', 1),
(583, 'SH', 501, NULL, NULL, 'SCHLESWIG-HOLSTEIN', 'Schleswig-Holstein', 1),
(584, 'TH', 501, NULL, NULL, 'THÃœRINGEN', 'ThÃ¼ringen', 1),
(585, '66', 10201, '', 0, '', '?????', 1),
(586, '67', 10205, '', 0, '', '?????', 1),
(587, '01', 10205, '', 0, '', '?????', 1),
(588, '02', 10205, '', 0, '', '?????', 1),
(589, '03', 10205, '', 0, '', '??????', 1),
(590, '04', 10205, '', 0, '', '?????', 1),
(591, '05', 10205, '', 0, '', '??????', 1),
(592, '06', 10203, '', 0, '', '??????', 1),
(593, '07', 10203, '', 0, '', '???????????', 1),
(594, '08', 10203, '', 0, '', '??????', 1),
(595, '09', 10203, '', 0, '', '?????', 1),
(596, '10', 10203, '', 0, '', '??????', 1),
(597, '11', 10203, '', 0, '', '??????', 1),
(598, '12', 10203, '', 0, '', '?????????', 1),
(599, '13', 10206, '', 0, '', '????', 1),
(600, '14', 10206, '', 0, '', '?????????', 1),
(601, '15', 10206, '', 0, '', '????????', 1),
(602, '16', 10206, '', 0, '', '???????', 1),
(603, '17', 10213, '', 0, '', '???????', 1),
(604, '18', 10213, '', 0, '', '????????', 1),
(605, '19', 10213, '', 0, '', '??????', 1),
(606, '20', 10213, '', 0, '', '???????', 1),
(607, '21', 10212, '', 0, '', '????????', 1),
(608, '22', 10212, '', 0, '', '??????', 1),
(609, '23', 10212, '', 0, '', '????????', 1),
(610, '24', 10212, '', 0, '', '???????', 1),
(611, '25', 10212, '', 0, '', '????????', 1),
(612, '26', 10212, '', 0, '', '???????', 1),
(613, '27', 10202, '', 0, '', '??????', 1),
(614, '28', 10202, '', 0, '', '?????????', 1),
(615, '29', 10202, '', 0, '', '????????', 1),
(616, '30', 10202, '', 0, '', '??????', 1),
(617, '31', 10209, '', 0, '', '????????', 1),
(618, '32', 10209, '', 0, '', '???????', 1),
(619, '33', 10209, '', 0, '', '????????', 1),
(620, '34', 10209, '', 0, '', '???????', 1),
(621, '35', 10209, '', 0, '', '????????', 1),
(622, '36', 10211, '', 0, '', '???????????????', 1),
(623, '37', 10211, '', 0, '', '?????', 1),
(624, '38', 10211, '', 0, '', '?????', 1),
(625, '39', 10207, '', 0, '', '????????', 1),
(626, '40', 10207, '', 0, '', '???????', 1),
(627, '41', 10207, '', 0, '', '??????????', 1),
(628, '42', 10207, '', 0, '', '?????', 1),
(629, '43', 10207, '', 0, '', '???????', 1),
(630, '44', 10208, '', 0, '', '??????', 1),
(631, '45', 10208, '', 0, '', '??????', 1),
(632, '46', 10208, '', 0, '', '??????', 1),
(633, '47', 10208, '', 0, '', '?????', 1),
(634, '48', 10208, '', 0, '', '????', 1),
(635, '49', 10210, '', 0, '', '??????', 1),
(636, '50', 10210, '', 0, '', '????', 1),
(637, '51', 10210, '', 0, '', '????????', 1),
(638, '52', 10210, '', 0, '', '????????', 1),
(639, '53', 10210, '', 0, '', '???-??????', 1),
(640, '54', 10210, '', 0, '', '??', 1),
(641, '55', 10210, '', 0, '', '?????', 1),
(642, '56', 10210, '', 0, '', '???????', 1),
(643, '57', 10210, '', 0, '', '?????', 1),
(644, '58', 10210, '', 0, '', '?????', 1),
(645, '59', 10210, '', 0, '', '?????', 1),
(646, '60', 10210, '', 0, '', '?????', 1),
(647, '61', 10210, '', 0, '', '?????', 1),
(648, '62', 10204, '', 0, '', '????????', 1),
(649, '63', 10204, '', 0, '', '??????', 1),
(650, '64', 10204, '', 0, '', '???????', 1),
(651, '65', 10204, '', 0, '', '?????', 1),
(652, 'AG', 601, NULL, NULL, 'ARGOVIE', 'Argovie', 1),
(653, 'AI', 601, NULL, NULL, 'APPENZELL RHODES INTERIEURES', 'Appenzell Rhodes intÃ©rieures', 1),
(654, 'AR', 601, NULL, NULL, 'APPENZELL RHODES EXTERIEURES', 'Appenzell Rhodes extÃ©rieures', 1),
(655, 'BE', 601, NULL, NULL, 'BERNE', 'Berne', 1),
(656, 'BL', 601, NULL, NULL, 'BALE CAMPAGNE', 'BÃ¢le Campagne', 1),
(657, 'BS', 601, NULL, NULL, 'BALE VILLE', 'BÃ¢le Ville', 1),
(658, 'FR', 601, NULL, NULL, 'FRIBOURG', 'Fribourg', 1),
(659, 'GE', 601, NULL, NULL, 'GENEVE', 'GenÃ¨ve', 1),
(660, 'GL', 601, NULL, NULL, 'GLARIS', 'Glaris', 1),
(661, 'GR', 601, NULL, NULL, 'GRISONS', 'Grisons', 1),
(662, 'JU', 601, NULL, NULL, 'JURA', 'Jura', 1),
(663, 'LU', 601, NULL, NULL, 'LUCERNE', 'Lucerne', 1),
(664, 'NE', 601, NULL, NULL, 'NEUCHATEL', 'NeuchÃ¢tel', 1),
(665, 'NW', 601, NULL, NULL, 'NIDWALD', 'Nidwald', 1),
(666, 'OW', 601, NULL, NULL, 'OBWALD', 'Obwald', 1),
(667, 'SG', 601, NULL, NULL, 'SAINT-GALL', 'Saint-Gall', 1),
(668, 'SH', 601, NULL, NULL, 'SCHAFFHOUSE', 'Schaffhouse', 1),
(669, 'SO', 601, NULL, NULL, 'SOLEURE', 'Soleure', 1),
(670, 'SZ', 601, NULL, NULL, 'SCHWYZ', 'Schwyz', 1),
(671, 'TG', 601, NULL, NULL, 'THURGOVIE', 'Thurgovie', 1),
(672, 'TI', 601, NULL, NULL, 'TESSIN', 'Tessin', 1),
(673, 'UR', 601, NULL, NULL, 'URI', 'Uri', 1),
(674, 'VD', 601, NULL, NULL, 'VAUD', 'Vaud', 1),
(675, 'VS', 601, NULL, NULL, 'VALAIS', 'Valais', 1),
(676, 'ZG', 601, NULL, NULL, 'ZUG', 'Zug', 1),
(677, 'ZH', 601, NULL, NULL, 'ZURICH', 'ZÃ¼rich', 1),
(678, '701', 701, NULL, 0, NULL, 'Bedfordshire', 1),
(679, '702', 701, NULL, 0, NULL, 'Berkshire', 1),
(680, '703', 701, NULL, 0, NULL, 'Bristol, City of', 1),
(681, '704', 701, NULL, 0, NULL, 'Buckinghamshire', 1),
(682, '705', 701, NULL, 0, NULL, 'Cambridgeshire', 1),
(683, '706', 701, NULL, 0, NULL, 'Cheshire', 1),
(684, '707', 701, NULL, 0, NULL, 'Cleveland', 1),
(685, '708', 701, NULL, 0, NULL, 'Cornwall', 1),
(686, '709', 701, NULL, 0, NULL, 'Cumberland', 1),
(687, '710', 701, NULL, 0, NULL, 'Cumbria', 1),
(688, '711', 701, NULL, 0, NULL, 'Derbyshire', 1),
(689, '712', 701, NULL, 0, NULL, 'Devon', 1),
(690, '713', 701, NULL, 0, NULL, 'Dorset', 1),
(691, '714', 701, NULL, 0, NULL, 'Co. Durham', 1),
(692, '715', 701, NULL, 0, NULL, 'East Riding of Yorkshire', 1),
(693, '716', 701, NULL, 0, NULL, 'East Sussex', 1),
(694, '717', 701, NULL, 0, NULL, 'Essex', 1),
(695, '718', 701, NULL, 0, NULL, 'Gloucestershire', 1),
(696, '719', 701, NULL, 0, NULL, 'Greater Manchester', 1),
(697, '720', 701, NULL, 0, NULL, 'Hampshire', 1),
(698, '721', 701, NULL, 0, NULL, 'Hertfordshire', 1),
(699, '722', 701, NULL, 0, NULL, 'Hereford and Worcester', 1),
(700, '723', 701, NULL, 0, NULL, 'Herefordshire', 1),
(701, '724', 701, NULL, 0, NULL, 'Huntingdonshire', 1),
(702, '725', 701, NULL, 0, NULL, 'Isle of Man', 1),
(703, '726', 701, NULL, 0, NULL, 'Isle of Wight', 1),
(704, '727', 701, NULL, 0, NULL, 'Jersey', 1),
(705, '728', 701, NULL, 0, NULL, 'Kent', 1),
(706, '729', 701, NULL, 0, NULL, 'Lancashire', 1),
(707, '730', 701, NULL, 0, NULL, 'Leicestershire', 1),
(708, '731', 701, NULL, 0, NULL, 'Lincolnshire', 1),
(709, '732', 701, NULL, 0, NULL, 'London - City of London', 1),
(710, '733', 701, NULL, 0, NULL, 'Merseyside', 1),
(711, '734', 701, NULL, 0, NULL, 'Middlesex', 1),
(712, '735', 701, NULL, 0, NULL, 'Norfolk', 1),
(713, '736', 701, NULL, 0, NULL, 'North Yorkshire', 1),
(714, '737', 701, NULL, 0, NULL, 'North Riding of Yorkshire', 1),
(715, '738', 701, NULL, 0, NULL, 'Northamptonshire', 1),
(716, '739', 701, NULL, 0, NULL, 'Northumberland', 1),
(717, '740', 701, NULL, 0, NULL, 'Nottinghamshire', 1),
(718, '741', 701, NULL, 0, NULL, 'Oxfordshire', 1),
(719, '742', 701, NULL, 0, NULL, 'Rutland', 1),
(720, '743', 701, NULL, 0, NULL, 'Shropshire', 1),
(721, '744', 701, NULL, 0, NULL, 'Somerset', 1),
(722, '745', 701, NULL, 0, NULL, 'Staffordshire', 1),
(723, '746', 701, NULL, 0, NULL, 'Suffolk', 1),
(724, '747', 701, NULL, 0, NULL, 'Surrey', 1),
(725, '748', 701, NULL, 0, NULL, 'Sussex', 1),
(726, '749', 701, NULL, 0, NULL, 'Tyne and Wear', 1),
(727, '750', 701, NULL, 0, NULL, 'Warwickshire', 1),
(728, '751', 701, NULL, 0, NULL, 'West Midlands', 1),
(729, '752', 701, NULL, 0, NULL, 'West Sussex', 1),
(730, '753', 701, NULL, 0, NULL, 'West Yorkshire', 1),
(731, '754', 701, NULL, 0, NULL, 'West Riding of Yorkshire', 1),
(732, '755', 701, NULL, 0, NULL, 'Wiltshire', 1),
(733, '756', 701, NULL, 0, NULL, 'Worcestershire', 1),
(734, '757', 701, NULL, 0, NULL, 'Yorkshire', 1),
(735, '758', 702, NULL, 0, NULL, 'Anglesey', 1),
(736, '759', 702, NULL, 0, NULL, 'Breconshire', 1),
(737, '760', 702, NULL, 0, NULL, 'Caernarvonshire', 1),
(738, '761', 702, NULL, 0, NULL, 'Cardiganshire', 1),
(739, '762', 702, NULL, 0, NULL, 'Carmarthenshire', 1),
(740, '763', 702, NULL, 0, NULL, 'Ceredigion', 1),
(741, '764', 702, NULL, 0, NULL, 'Denbighshire', 1),
(742, '765', 702, NULL, 0, NULL, 'Flintshire', 1),
(743, '766', 702, NULL, 0, NULL, 'Glamorgan', 1),
(744, '767', 702, NULL, 0, NULL, 'Gwent', 1),
(745, '768', 702, NULL, 0, NULL, 'Gwynedd', 1),
(746, '769', 702, NULL, 0, NULL, 'Merionethshire', 1),
(747, '770', 702, NULL, 0, NULL, 'Monmouthshire', 1),
(748, '771', 702, NULL, 0, NULL, 'Mid Glamorgan', 1),
(749, '772', 702, NULL, 0, NULL, 'Montgomeryshire', 1),
(750, '773', 702, NULL, 0, NULL, 'Pembrokeshire', 1),
(751, '774', 702, NULL, 0, NULL, 'Powys', 1),
(752, '775', 702, NULL, 0, NULL, 'Radnorshire', 1),
(753, '776', 702, NULL, 0, NULL, 'South Glamorgan', 1),
(754, '777', 703, NULL, 0, NULL, 'Aberdeen, City of', 1),
(755, '778', 703, NULL, 0, NULL, 'Angus', 1),
(756, '779', 703, NULL, 0, NULL, 'Argyll', 1),
(757, '780', 703, NULL, 0, NULL, 'Ayrshire', 1),
(758, '781', 703, NULL, 0, NULL, 'Banffshire', 1),
(759, '782', 703, NULL, 0, NULL, 'Berwickshire', 1),
(760, '783', 703, NULL, 0, NULL, 'Bute', 1),
(761, '784', 703, NULL, 0, NULL, 'Caithness', 1),
(762, '785', 703, NULL, 0, NULL, 'Clackmannanshire', 1),
(763, '786', 703, NULL, 0, NULL, 'Dumfriesshire', 1),
(764, '787', 703, NULL, 0, NULL, 'Dumbartonshire', 1),
(765, '788', 703, NULL, 0, NULL, 'Dundee, City of', 1),
(766, '789', 703, NULL, 0, NULL, 'East Lothian', 1),
(767, '790', 703, NULL, 0, NULL, 'Fife', 1),
(768, '791', 703, NULL, 0, NULL, 'Inverness', 1),
(769, '792', 703, NULL, 0, NULL, 'Kincardineshire', 1),
(770, '793', 703, NULL, 0, NULL, 'Kinross-shire', 1),
(771, '794', 703, NULL, 0, NULL, 'Kirkcudbrightshire', 1),
(772, '795', 703, NULL, 0, NULL, 'Lanarkshire', 1),
(773, '796', 703, NULL, 0, NULL, 'Midlothian', 1),
(774, '797', 703, NULL, 0, NULL, 'Morayshire', 1),
(775, '798', 703, NULL, 0, NULL, 'Nairnshire', 1),
(776, '799', 703, NULL, 0, NULL, 'Orkney', 1),
(777, '800', 703, NULL, 0, NULL, 'Peebleshire', 1),
(778, '801', 703, NULL, 0, NULL, 'Perthshire', 1),
(779, '802', 703, NULL, 0, NULL, 'Renfrewshire', 1),
(780, '803', 703, NULL, 0, NULL, 'Ross & Cromarty', 1),
(781, '804', 703, NULL, 0, NULL, 'Roxburghshire', 1),
(782, '805', 703, NULL, 0, NULL, 'Selkirkshire', 1),
(783, '806', 703, NULL, 0, NULL, 'Shetland', 1),
(784, '807', 703, NULL, 0, NULL, 'Stirlingshire', 1),
(785, '808', 703, NULL, 0, NULL, 'Sutherland', 1),
(786, '809', 703, NULL, 0, NULL, 'West Lothian', 1),
(787, '810', 703, NULL, 0, NULL, 'Wigtownshire', 1),
(788, '811', 704, NULL, 0, NULL, 'Antrim', 1),
(789, '812', 704, NULL, 0, NULL, 'Armagh', 1),
(790, '813', 704, NULL, 0, NULL, 'Co. Down', 1),
(791, '814', 704, NULL, 0, NULL, 'Co. Fermanagh', 1),
(792, '815', 704, NULL, 0, NULL, 'Co. Londonderry', 1),
(793, 'AL', 1101, '', 0, 'ALABAMA', 'Alabama', 1),
(794, 'AK', 1101, '', 0, 'ALASKA', 'Alaska', 1),
(795, 'AZ', 1101, '', 0, 'ARIZONA', 'Arizona', 1),
(796, 'AR', 1101, '', 0, 'ARKANSAS', 'Arkansas', 1),
(797, 'CA', 1101, '', 0, 'CALIFORNIA', 'California', 1),
(798, 'CO', 1101, '', 0, 'COLORADO', 'Colorado', 1),
(799, 'CT', 1101, '', 0, 'CONNECTICUT', 'Connecticut', 1),
(800, 'DE', 1101, '', 0, 'DELAWARE', 'Delaware', 1),
(801, 'FL', 1101, '', 0, 'FLORIDA', 'Florida', 1),
(802, 'GA', 1101, '', 0, 'GEORGIA', 'Georgia', 1),
(803, 'HI', 1101, '', 0, 'HAWAII', 'Hawaii', 1),
(804, 'ID', 1101, '', 0, 'IDAHO', 'Idaho', 1),
(805, 'IL', 1101, '', 0, 'ILLINOIS', 'Illinois', 1),
(806, 'IN', 1101, '', 0, 'INDIANA', 'Indiana', 1),
(807, 'IA', 1101, '', 0, 'IOWA', 'Iowa', 1),
(808, 'KS', 1101, '', 0, 'KANSAS', 'Kansas', 1),
(809, 'KY', 1101, '', 0, 'KENTUCKY', 'Kentucky', 1),
(810, 'LA', 1101, '', 0, 'LOUISIANA', 'Louisiana', 1),
(811, 'ME', 1101, '', 0, 'MAINE', 'Maine', 1),
(812, 'MD', 1101, '', 0, 'MARYLAND', 'Maryland', 1),
(813, 'MA', 1101, '', 0, 'MASSACHUSSETTS', 'Massachusetts', 1),
(814, 'MI', 1101, '', 0, 'MICHIGAN', 'Michigan', 1),
(815, 'MN', 1101, '', 0, 'MINNESOTA', 'Minnesota', 1),
(816, 'MS', 1101, '', 0, 'MISSISSIPPI', 'Mississippi', 1),
(817, 'MO', 1101, '', 0, 'MISSOURI', 'Missouri', 1),
(818, 'MT', 1101, '', 0, 'MONTANA', 'Montana', 1),
(819, 'NE', 1101, '', 0, 'NEBRASKA', 'Nebraska', 1),
(820, 'NV', 1101, '', 0, 'NEVADA', 'Nevada', 1),
(821, 'NH', 1101, '', 0, 'NEW HAMPSHIRE', 'New Hampshire', 1),
(822, 'NJ', 1101, '', 0, 'NEW JERSEY', 'New Jersey', 1),
(823, 'NM', 1101, '', 0, 'NEW MEXICO', 'New Mexico', 1),
(824, 'NY', 1101, '', 0, 'NEW YORK', 'New York', 1),
(825, 'NC', 1101, '', 0, 'NORTH CAROLINA', 'North Carolina', 1),
(826, 'ND', 1101, '', 0, 'NORTH DAKOTA', 'North Dakota', 1),
(827, 'OH', 1101, '', 0, 'OHIO', 'Ohio', 1),
(828, 'OK', 1101, '', 0, 'OKLAHOMA', 'Oklahoma', 1),
(829, 'OR', 1101, '', 0, 'OREGON', 'Oregon', 1),
(830, 'PA', 1101, '', 0, 'PENNSYLVANIA', 'Pennsylvania', 1),
(831, 'RI', 1101, '', 0, 'RHODE ISLAND', 'Rhode Island', 1),
(832, 'SC', 1101, '', 0, 'SOUTH CAROLINA', 'South Carolina', 1),
(833, 'SD', 1101, '', 0, 'SOUTH DAKOTA', 'South Dakota', 1),
(834, 'TN', 1101, '', 0, 'TENNESSEE', 'Tennessee', 1),
(835, 'TX', 1101, '', 0, 'TEXAS', 'Texas', 1),
(836, 'UT', 1101, '', 0, 'UTAH', 'Utah', 1),
(837, 'VT', 1101, '', 0, 'VERMONT', 'Vermont', 1),
(838, 'VA', 1101, '', 0, 'VIRGINIA', 'Virginia', 1),
(839, 'WA', 1101, '', 0, 'WASHINGTON', 'Washington', 1),
(840, 'WV', 1101, '', 0, 'WEST VIRGINIA', 'West Virginia', 1),
(841, 'WI', 1101, '', 0, 'WISCONSIN', 'Wisconsin', 1),
(842, 'WY', 1101, '', 0, 'WYOMING', 'Wyoming', 1),
(843, 'GR', 1701, NULL, NULL, NULL, 'Groningen', 1),
(844, 'FR', 1701, NULL, NULL, NULL, 'Friesland', 1),
(845, 'DR', 1701, NULL, NULL, NULL, 'Drenthe', 1),
(846, 'OV', 1701, NULL, NULL, NULL, 'Overijssel', 1),
(847, 'GD', 1701, NULL, NULL, NULL, 'Gelderland', 1),
(848, 'FL', 1701, NULL, NULL, NULL, 'Flevoland', 1),
(849, 'UT', 1701, NULL, NULL, NULL, 'Utrecht', 1),
(850, 'NH', 1701, NULL, NULL, NULL, 'Noord-Holland', 1),
(851, 'ZH', 1701, NULL, NULL, NULL, 'Zuid-Holland', 1),
(852, 'ZL', 1701, NULL, NULL, NULL, 'Zeeland', 1),
(853, 'NB', 1701, NULL, NULL, NULL, 'Noord-Brabant', 1),
(854, 'LB', 1701, NULL, NULL, NULL, 'Limburg', 1),
(855, 'SS', 8601, '', 0, '', 'San Salvador', 1),
(856, 'SA', 8603, '', 0, '', 'Santa Ana', 1),
(857, 'AH', 8603, '', 0, '', 'Ahuachapan', 1),
(858, 'SO', 8603, '', 0, '', 'Sonsonate', 1),
(859, 'US', 8602, '', 0, '', 'Usulutan', 1),
(860, 'SM', 8602, '', 0, '', 'San Miguel', 1),
(861, 'MO', 8602, '', 0, '', 'Morazan', 1),
(862, 'LU', 8602, '', 0, '', 'La Union', 1),
(863, 'LL', 8601, '', 0, '', 'La Libertad', 1),
(864, 'CH', 8601, '', 0, '', 'Chalatenango', 1),
(865, 'CA', 8601, '', 0, '', 'CabaÃ±as', 1),
(866, 'LP', 8601, '', 0, '', 'La Paz', 1),
(867, 'SV', 8601, '', 0, '', 'San Vicente', 1),
(868, 'CU', 8601, '', 0, '', 'Cuscatlan', 1),
(869, '2301', 2301, '', 0, 'CATAMARCA', 'Catamarca', 1),
(870, '2302', 2301, '', 0, 'JUJUY', 'Jujuy', 1),
(871, '2303', 2301, '', 0, 'TUCAMAN', 'TucamÃ¡n', 1),
(872, '2304', 2301, '', 0, 'SANTIAGO DEL ESTERO', 'Santiago del Estero', 1),
(873, '2305', 2301, '', 0, 'SALTA', 'Salta', 1),
(874, '2306', 2302, '', 0, 'CHACO', 'Chaco', 1),
(875, '2307', 2302, '', 0, 'CORRIENTES', 'Corrientes', 1),
(876, '2308', 2302, '', 0, 'ENTRE RIOS', 'Entre RÃ­os', 1),
(877, '2309', 2302, '', 0, 'FORMOSA', 'Formosa', 1),
(878, '2310', 2302, '', 0, 'SANTA FE', 'Santa Fe', 1),
(879, '2311', 2303, '', 0, 'LA RIOJA', 'La Rioja', 1),
(880, '2312', 2303, '', 0, 'MENDOZA', 'Mendoza', 1),
(881, '2313', 2303, '', 0, 'SAN JUAN', 'San Juan', 1),
(882, '2314', 2303, '', 0, 'SAN LUIS', 'San Luis', 1),
(883, '2315', 2304, '', 0, 'CORDOBA', 'CÃ³rdoba', 1),
(884, '2316', 2304, '', 0, 'BUENOS AIRES', 'Buenos Aires', 1),
(885, '2317', 2304, '', 0, 'CABA', 'Caba', 1),
(886, '2318', 2305, '', 0, 'LA PAMPA', 'La Pampa', 1),
(887, '2319', 2305, '', 0, 'NEUQUEN', 'NeuquÃ©n', 1),
(888, '2320', 2305, '', 0, 'RIO NEGRO', 'RÃ­o Negro', 1),
(889, '2321', 2305, '', 0, 'CHUBUT', 'Chubut', 1),
(890, '2322', 2305, '', 0, 'SANTA CRUZ', 'Santa Cruz', 1),
(891, '2323', 2305, '', 0, 'TIERRA DEL FUEGO', 'Tierra del Fuego', 1),
(892, '2324', 2305, '', 0, 'ISLAS MALVINAS', 'Islas Malvinas', 1),
(893, '2325', 2305, '', 0, 'ANTARTIDA', 'AntÃ¡rtida', 1),
(894, '2326', 2305, '', 0, 'MISIONES', 'Misiones', 1),
(895, 'CC', 4601, 'Oistins', 0, 'CC', 'Christ Church', 1),
(896, 'SA', 4601, 'Greenland', 0, 'SA', 'Saint Andrew', 1),
(897, 'SG', 4601, 'Bulkeley', 0, 'SG', 'Saint George', 1),
(898, 'JA', 4601, 'Holetown', 0, 'JA', 'Saint James', 1),
(899, 'SJ', 4601, 'Four Roads', 0, 'SJ', 'Saint John', 1),
(900, 'SB', 4601, 'Bathsheba', 0, 'SB', 'Saint Joseph', 1),
(901, 'SL', 4601, 'Crab Hill', 0, 'SL', 'Saint Lucy', 1),
(902, 'SM', 4601, 'Bridgetown', 0, 'SM', 'Saint Michael', 1),
(903, 'SP', 4601, 'Speightstown', 0, 'SP', 'Saint Peter', 1),
(904, 'SC', 4601, 'Crane', 0, 'SC', 'Saint Philip', 1),
(905, 'ST', 4601, 'Hillaby', 0, 'ST', 'Saint Thomas', 1),
(906, 'AC', 5601, 'ACRE', 0, 'AC', 'Acre', 1),
(907, 'AL', 5601, 'ALAGOAS', 0, 'AL', 'Alagoas', 1),
(908, 'AP', 5601, 'AMAPA', 0, 'AP', 'AmapÃ¡', 1),
(909, 'AM', 5601, 'AMAZONAS', 0, 'AM', 'Amazonas', 1),
(910, 'BA', 5601, 'BAHIA', 0, 'BA', 'Bahia', 1),
(911, 'CE', 5601, 'CEARA', 0, 'CE', 'CearÃ¡', 1),
(912, 'ES', 5601, 'ESPIRITO SANTO', 0, 'ES', 'Espirito Santo', 1),
(913, 'GO', 5601, 'GOIAS', 0, 'GO', 'GoiÃ¡s', 1),
(914, 'MA', 5601, 'MARANHAO', 0, 'MA', 'MaranhÃ£o', 1),
(915, 'MT', 5601, 'MATO GROSSO', 0, 'MT', 'Mato Grosso', 1),
(916, 'MS', 5601, 'MATO GROSSO DO SUL', 0, 'MS', 'Mato Grosso do Sul', 1),
(917, 'MG', 5601, 'MINAS GERAIS', 0, 'MG', 'Minas Gerais', 1),
(918, 'PA', 5601, 'PARA', 0, 'PA', 'ParÃ¡', 1),
(919, 'PB', 5601, 'PARAIBA', 0, 'PB', 'Paraiba', 1),
(920, 'PR', 5601, 'PARANA', 0, 'PR', 'ParanÃ¡', 1),
(921, 'PE', 5601, 'PERNAMBUCO', 0, 'PE', 'Pernambuco', 1),
(922, 'PI', 5601, 'PIAUI', 0, 'PI', 'PiauÃ­', 1),
(923, 'RJ', 5601, 'RIO DE JANEIRO', 0, 'RJ', 'Rio de Janeiro', 1),
(924, 'RN', 5601, 'RIO GRANDE DO NORTE', 0, 'RN', 'Rio Grande do Norte', 1),
(925, 'RS', 5601, 'RIO GRANDE DO SUL', 0, 'RS', 'Rio Grande do Sul', 1),
(926, 'RO', 5601, 'RONDONIA', 0, 'RO', 'RondÃ´nia', 1),
(927, 'RR', 5601, 'RORAIMA', 0, 'RR', 'Roraima', 1),
(928, 'SC', 5601, 'SANTA CATARINA', 0, 'SC', 'Santa Catarina', 1),
(929, 'SE', 5601, 'SERGIPE', 0, 'SE', 'Sergipe', 1),
(930, 'SP', 5601, 'SAO PAULO', 0, 'SP', 'Sao Paulo', 1),
(931, 'TO', 5601, 'TOCANTINS', 0, 'TO', 'Tocantins', 1),
(932, 'DF', 5601, 'DISTRITO FEDERAL', 0, 'DF', 'Distrito Federal', 1),
(933, '151', 6715, '', 0, '151', 'Arica', 1),
(934, '152', 6715, '', 0, '152', 'Parinacota', 1),
(935, '011', 6701, '', 0, '011', 'Iquique', 1),
(936, '014', 6701, '', 0, '014', 'Tamarugal', 1),
(937, '021', 6702, '', 0, '021', 'Antofagasa', 1),
(938, '022', 6702, '', 0, '022', 'El Loa', 1),
(939, '023', 6702, '', 0, '023', 'Tocopilla', 1),
(940, '031', 6703, '', 0, '031', 'CopiapÃ³', 1),
(941, '032', 6703, '', 0, '032', 'ChaÃ±aral', 1),
(942, '033', 6703, '', 0, '033', 'Huasco', 1),
(943, '041', 6704, '', 0, '041', 'Elqui', 1),
(944, '042', 6704, '', 0, '042', 'Choapa', 1),
(945, '043', 6704, '', 0, '043', 'LimarÃ­', 1),
(946, '051', 6705, '', 0, '051', 'ValparaÃ­so', 1),
(947, '052', 6705, '', 0, '052', 'Isla de Pascua', 1),
(948, '053', 6705, '', 0, '053', 'Los Andes', 1),
(949, '054', 6705, '', 0, '054', 'Petorca', 1),
(950, '055', 6705, '', 0, '055', 'Quillota', 1),
(951, '056', 6705, '', 0, '056', 'San Antonio', 1),
(952, '057', 6705, '', 0, '057', 'San Felipe de Aconcagua', 1),
(953, '058', 6705, '', 0, '058', 'Marga Marga', 1),
(954, '061', 6706, '', 0, '061', 'Cachapoal', 1),
(955, '062', 6706, '', 0, '062', 'Cardenal Caro', 1),
(956, '063', 6706, '', 0, '063', 'Colchagua', 1),
(957, '071', 6707, '', 0, '071', 'Talca', 1),
(958, '072', 6707, '', 0, '072', 'Cauquenes', 1),
(959, '073', 6707, '', 0, '073', 'CuricÃ³', 1),
(960, '074', 6707, '', 0, '074', 'Linares', 1),
(961, '081', 6708, '', 0, '081', 'ConcepciÃ³n', 1),
(962, '082', 6708, '', 0, '082', 'Arauco', 1),
(963, '083', 6708, '', 0, '083', 'BiobÃ­o', 1),
(964, '084', 6708, '', 0, '084', 'Ã‘uble', 1);
INSERT INTO `llx_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(965, '091', 6709, '', 0, '091', 'CautÃ­n', 1),
(966, '092', 6709, '', 0, '092', 'Malleco', 1),
(967, '141', 6714, '', 0, '141', 'Valdivia', 1),
(968, '142', 6714, '', 0, '142', 'Ranco', 1),
(969, '101', 6710, '', 0, '101', 'Llanquihue', 1),
(970, '102', 6710, '', 0, '102', 'ChiloÃ©', 1),
(971, '103', 6710, '', 0, '103', 'Osorno', 1),
(972, '104', 6710, '', 0, '104', 'Palena', 1),
(973, '111', 6711, '', 0, '111', 'Coihaique', 1),
(974, '112', 6711, '', 0, '112', 'AisÃ©n', 1),
(975, '113', 6711, '', 0, '113', 'CapitÃ¡n Prat', 1),
(976, '114', 6711, '', 0, '114', 'General Carrera', 1),
(977, '121', 6712, '', 0, '121', 'Magallanes', 1),
(978, '122', 6712, '', 0, '122', 'AntÃ¡rtica Chilena', 1),
(979, '123', 6712, '', 0, '123', 'Tierra del Fuego', 1),
(980, '124', 6712, '', 0, '124', 'Ãšltima Esperanza', 1),
(981, '131', 6713, '', 0, '131', 'Santiago', 1),
(982, '132', 6713, '', 0, '132', 'Cordillera', 1),
(983, '133', 6713, '', 0, '133', 'Chacabuco', 1),
(984, '134', 6713, '', 0, '134', 'Maipo', 1),
(985, '135', 6713, '', 0, '135', 'Melipilla', 1),
(986, '136', 6713, '', 0, '136', 'Talagante', 1),
(987, 'AN', 11701, NULL, 0, 'AN', 'Andaman & Nicobar', 1),
(988, 'AP', 11701, NULL, 0, 'AP', 'Andhra Pradesh', 1),
(989, 'AR', 11701, NULL, 0, 'AR', 'Arunachal Pradesh', 1),
(990, 'AS', 11701, NULL, 0, 'AS', 'Assam', 1),
(991, 'BR', 11701, NULL, 0, 'BR', 'Bihar', 1),
(992, 'CG', 11701, NULL, 0, 'CG', 'Chattisgarh', 1),
(993, 'CH', 11701, NULL, 0, 'CH', 'Chandigarh', 1),
(994, 'DD', 11701, NULL, 0, 'DD', 'Daman & Diu', 1),
(995, 'DL', 11701, NULL, 0, 'DL', 'Delhi', 1),
(996, 'DN', 11701, NULL, 0, 'DN', 'Dadra and Nagar Haveli', 1),
(997, 'GA', 11701, NULL, 0, 'GA', 'Goa', 1),
(998, 'GJ', 11701, NULL, 0, 'GJ', 'Gujarat', 1),
(999, 'HP', 11701, NULL, 0, 'HP', 'Himachal Pradesh', 1),
(1000, 'HR', 11701, NULL, 0, 'HR', 'Haryana', 1),
(1001, 'JH', 11701, NULL, 0, 'JH', 'Jharkhand', 1),
(1002, 'JK', 11701, NULL, 0, 'JK', 'Jammu & Kashmir', 1),
(1003, 'KA', 11701, NULL, 0, 'KA', 'Karnataka', 1),
(1004, 'KL', 11701, NULL, 0, 'KL', 'Kerala', 1),
(1005, 'LD', 11701, NULL, 0, 'LD', 'Lakshadweep', 1),
(1006, 'MH', 11701, NULL, 0, 'MH', 'Maharashtra', 1),
(1007, 'ML', 11701, NULL, 0, 'ML', 'Meghalaya', 1),
(1008, 'MN', 11701, NULL, 0, 'MN', 'Manipur', 1),
(1009, 'MP', 11701, NULL, 0, 'MP', 'Madhya Pradesh', 1),
(1010, 'MZ', 11701, NULL, 0, 'MZ', 'Mizoram', 1),
(1011, 'NL', 11701, NULL, 0, 'NL', 'Nagaland', 1),
(1012, 'OR', 11701, NULL, 0, 'OR', 'Orissa', 1),
(1013, 'PB', 11701, NULL, 0, 'PB', 'Punjab', 1),
(1014, 'PY', 11701, NULL, 0, 'PY', 'Puducherry', 1),
(1015, 'RJ', 11701, NULL, 0, 'RJ', 'Rajasthan', 1),
(1016, 'SK', 11701, NULL, 0, 'SK', 'Sikkim', 1),
(1017, 'TN', 11701, NULL, 0, 'TN', 'Tamil Nadu', 1),
(1018, 'TR', 11701, NULL, 0, 'TR', 'Tripura', 1),
(1019, 'UL', 11701, NULL, 0, 'UL', 'Uttarakhand', 1),
(1020, 'UP', 11701, NULL, 0, 'UP', 'Uttar Pradesh', 1),
(1021, 'WB', 11701, NULL, 0, 'WB', 'West Bengal', 1),
(1022, 'DIF', 15401, '', 0, 'DIF', 'Distrito Federal', 1),
(1023, 'AGS', 15401, '', 0, 'AGS', 'Aguascalientes', 1),
(1024, 'BCN', 15401, '', 0, 'BCN', 'Baja California Norte', 1),
(1025, 'BCS', 15401, '', 0, 'BCS', 'Baja California Sur', 1),
(1026, 'CAM', 15401, '', 0, 'CAM', 'Campeche', 1),
(1027, 'CHP', 15401, '', 0, 'CHP', 'Chiapas', 1),
(1028, 'CHI', 15401, '', 0, 'CHI', 'Chihuahua', 1),
(1029, 'COA', 15401, '', 0, 'COA', 'Coahuila', 1),
(1030, 'COL', 15401, '', 0, 'COL', 'Colima', 1),
(1031, 'DUR', 15401, '', 0, 'DUR', 'Durango', 1),
(1032, 'GTO', 15401, '', 0, 'GTO', 'Guanajuato', 1),
(1033, 'GRO', 15401, '', 0, 'GRO', 'Guerrero', 1),
(1034, 'HGO', 15401, '', 0, 'HGO', 'Hidalgo', 1),
(1035, 'JAL', 15401, '', 0, 'JAL', 'Jalisco', 1),
(1036, 'MEX', 15401, '', 0, 'MEX', 'MÃ©xico', 1),
(1037, 'MIC', 15401, '', 0, 'MIC', 'MichoacÃ¡n de Ocampo', 1),
(1038, 'MOR', 15401, '', 0, 'MOR', 'Morelos', 1),
(1039, 'NAY', 15401, '', 0, 'NAY', 'Nayarit', 1),
(1040, 'NLE', 15401, '', 0, 'NLE', 'Nuevo LeÃ³n', 1),
(1041, 'OAX', 15401, '', 0, 'OAX', 'Oaxaca', 1),
(1042, 'PUE', 15401, '', 0, 'PUE', 'Puebla', 1),
(1043, 'QRO', 15401, '', 0, 'QRO', 'QuerÃ©taro', 1),
(1044, 'ROO', 15401, '', 0, 'ROO', 'Quintana Roo', 1),
(1045, 'SLP', 15401, '', 0, 'SLP', 'San Luis PotosÃ­', 1),
(1046, 'SIN', 15401, '', 0, 'SIN', 'Sinaloa', 1),
(1047, 'SON', 15401, '', 0, 'SON', 'Sonora', 1),
(1048, 'TAB', 15401, '', 0, 'TAB', 'Tabasco', 1),
(1049, 'TAM', 15401, '', 0, 'TAM', 'Tamaulipas', 1),
(1050, 'TLX', 15401, '', 0, 'TLX', 'Tlaxcala', 1),
(1051, 'VER', 15401, '', 0, 'VER', 'Veracruz', 1),
(1052, 'YUC', 15401, '', 0, 'YUC', 'YucatÃ¡n', 1),
(1053, 'ZAC', 15401, '', 0, 'ZAC', 'Zacatecas', 1),
(1054, 'ANT', 7001, '', 0, 'ANT', 'Antioquia', 1),
(1055, 'BOL', 7001, '', 0, 'BOL', 'BolÃ­var', 1),
(1056, 'BOY', 7001, '', 0, 'BOY', 'BoyacÃ¡', 1),
(1057, 'CAL', 7001, '', 0, 'CAL', 'Caldas', 1),
(1058, 'CAU', 7001, '', 0, 'CAU', 'Cauca', 1),
(1059, 'CUN', 7001, '', 0, 'CUN', 'Cundinamarca', 1),
(1060, 'HUI', 7001, '', 0, 'HUI', 'Huila', 1),
(1061, 'LAG', 7001, '', 0, 'LAG', 'La Guajira', 1),
(1062, 'MET', 7001, '', 0, 'MET', 'Meta', 1),
(1063, 'NAR', 7001, '', 0, 'NAR', 'NariÃ±o', 1),
(1064, 'NDS', 7001, '', 0, 'NDS', 'Norte de Santander', 1),
(1065, 'SAN', 7001, '', 0, 'SAN', 'Santander', 1),
(1066, 'SUC', 7001, '', 0, 'SUC', 'Sucre', 1),
(1067, 'TOL', 7001, '', 0, 'TOL', 'Tolima', 1),
(1068, 'VAC', 7001, '', 0, 'VAC', 'Valle del Cauca', 1),
(1069, 'RIS', 7001, '', 0, 'RIS', 'Risalda', 1),
(1070, 'ATL', 7001, '', 0, 'ATL', 'AtlÃ¡ntico', 1),
(1071, 'COR', 7001, '', 0, 'COR', 'CÃ³rdoba', 1),
(1072, 'SAP', 7001, '', 0, 'SAP', 'San AndrÃ©s, Providencia y Santa Catalina', 1),
(1073, 'ARA', 7001, '', 0, 'ARA', 'Arauca', 1),
(1074, 'CAS', 7001, '', 0, 'CAS', 'Casanare', 1),
(1075, 'AMA', 7001, '', 0, 'AMA', 'Amazonas', 1),
(1076, 'CAQ', 7001, '', 0, 'CAQ', 'CaquetÃ¡', 1),
(1077, 'CHO', 7001, '', 0, 'CHO', 'ChocÃ³', 1),
(1078, 'GUA', 7001, '', 0, 'GUA', 'GuainÃ­a', 1),
(1079, 'GUV', 7001, '', 0, 'GUV', 'Guaviare', 1),
(1080, 'PUT', 7001, '', 0, 'PUT', 'Putumayo', 1),
(1081, 'QUI', 7001, '', 0, 'QUI', 'QuindÃ­o', 1),
(1082, 'VAU', 7001, '', 0, 'VAU', 'VaupÃ©s', 1),
(1083, 'BOG', 7001, '', 0, 'BOG', 'BogotÃ¡', 1),
(1084, 'VID', 7001, '', 0, 'VID', 'Vichada', 1),
(1085, 'CES', 7001, '', 0, 'CES', 'Cesar', 1),
(1086, 'MAG', 7001, '', 0, 'MAG', 'Magdalena', 1),
(1087, 'AT', 11401, '', 0, 'AT', 'AtlÃ¡ntida', 1),
(1088, 'CH', 11401, '', 0, 'CH', 'Choluteca', 1),
(1089, 'CL', 11401, '', 0, 'CL', 'ColÃ³n', 1),
(1090, 'CM', 11401, '', 0, 'CM', 'Comayagua', 1),
(1091, 'CO', 11401, '', 0, 'CO', 'CopÃ¡n', 1),
(1092, 'CR', 11401, '', 0, 'CR', 'CortÃ©s', 1),
(1093, 'EP', 11401, '', 0, 'EP', 'El ParaÃ­so', 1),
(1094, 'FM', 11401, '', 0, 'FM', 'Francisco MorazÃ¡n', 1),
(1095, 'GD', 11401, '', 0, 'GD', 'Gracias a Dios', 1),
(1096, 'IN', 11401, '', 0, 'IN', 'IntibucÃ¡', 1),
(1097, 'IB', 11401, '', 0, 'IB', 'Islas de la BahÃ­a', 1),
(1098, 'LP', 11401, '', 0, 'LP', 'La Paz', 1),
(1099, 'LM', 11401, '', 0, 'LM', 'Lempira', 1),
(1100, 'OC', 11401, '', 0, 'OC', 'Ocotepeque', 1),
(1101, 'OL', 11401, '', 0, 'OL', 'Olancho', 1),
(1102, 'SB', 11401, '', 0, 'SB', 'Santa BÃ¡rbara', 1),
(1103, 'VL', 11401, '', 0, 'VL', 'Valle', 1),
(1104, 'YO', 11401, '', 0, 'YO', 'Yoro', 1),
(1105, 'DC', 11401, '', 0, 'DC', 'Distrito Central', 1),
(1106, 'AB', 18801, '', 0, '', 'Alba', 1),
(1107, 'AR', 18801, '', 0, '', 'Arad', 1),
(1108, 'AG', 18801, '', 0, '', 'Arge?', 1),
(1109, 'BC', 18801, '', 0, '', 'Bac?u', 1),
(1110, 'BH', 18801, '', 0, '', 'Bihor', 1),
(1111, 'BN', 18801, '', 0, '', 'Bistri?a-N?s?ud', 1),
(1112, 'BT', 18801, '', 0, '', 'Boto?ani', 1),
(1113, 'BV', 18801, '', 0, '', 'Bra?ov', 1),
(1114, 'BR', 18801, '', 0, '', 'Br?ila', 1),
(1115, 'BZ', 18801, '', 0, '', 'Buz?u', 1),
(1116, 'CL', 18801, '', 0, '', 'C?l?ra?i', 1),
(1117, 'CS', 18801, '', 0, '', 'Cara?-Severin', 1),
(1118, 'CJ', 18801, '', 0, '', 'Cluj', 1),
(1119, 'CT', 18801, '', 0, '', 'Constan?a', 1),
(1120, 'CV', 18801, '', 0, '', 'Covasna', 1),
(1121, 'DB', 18801, '', 0, '', 'DÃ¢mbovi?a', 1),
(1122, 'DJ', 18801, '', 0, '', 'Dolj', 1),
(1123, 'GL', 18801, '', 0, '', 'Gala?i', 1),
(1124, 'GR', 18801, '', 0, '', 'Giurgiu', 1),
(1125, 'GJ', 18801, '', 0, '', 'Gorj', 1),
(1126, 'HR', 18801, '', 0, '', 'Harghita', 1),
(1127, 'HD', 18801, '', 0, '', 'Hunedoara', 1),
(1128, 'IL', 18801, '', 0, '', 'Ialomi?a', 1),
(1129, 'IS', 18801, '', 0, '', 'Ia?i', 1),
(1130, 'IF', 18801, '', 0, '', 'Ilfov', 1),
(1131, 'MM', 18801, '', 0, '', 'Maramure?', 1),
(1132, 'MH', 18801, '', 0, '', 'Mehedin?i', 1),
(1133, 'MS', 18801, '', 0, '', 'Mure?', 1),
(1134, 'NT', 18801, '', 0, '', 'Neam?', 1),
(1135, 'OT', 18801, '', 0, '', 'Olt', 1),
(1136, 'PH', 18801, '', 0, '', 'Prahova', 1),
(1137, 'SM', 18801, '', 0, '', 'Satu Mare', 1),
(1138, 'SJ', 18801, '', 0, '', 'S?laj', 1),
(1139, 'SB', 18801, '', 0, '', 'Sibiu', 1),
(1140, 'SV', 18801, '', 0, '', 'Suceava', 1),
(1141, 'TR', 18801, '', 0, '', 'Teleorman', 1),
(1142, 'TM', 18801, '', 0, '', 'Timi?', 1),
(1143, 'TL', 18801, '', 0, '', 'Tulcea', 1),
(1144, 'VS', 18801, '', 0, '', 'Vaslui', 1),
(1145, 'VL', 18801, '', 0, '', 'VÃ¢lcea', 1),
(1146, 'VN', 18801, '', 0, '', 'Vrancea', 1),
(1147, 'BU', 18801, '', 0, '', 'Bucuresti', 1),
(1148, 'VE-L', 23201, '', 0, 'VE-L', 'MÃ©rida', 1),
(1149, 'VE-T', 23201, '', 0, 'VE-T', 'Trujillo', 1),
(1150, 'VE-E', 23201, '', 0, 'VE-E', 'Barinas', 1),
(1151, 'VE-M', 23202, '', 0, 'VE-M', 'Miranda', 1),
(1152, 'VE-W', 23202, '', 0, 'VE-W', 'Vargas', 1),
(1153, 'VE-A', 23202, '', 0, 'VE-A', 'Distrito Capital', 1),
(1154, 'VE-D', 23203, '', 0, 'VE-D', 'Aragua', 1),
(1155, 'VE-G', 23203, '', 0, 'VE-G', 'Carabobo', 1),
(1156, 'VE-I', 23204, '', 0, 'VE-I', 'FalcÃ³n', 1),
(1157, 'VE-K', 23204, '', 0, 'VE-K', 'Lara', 1),
(1158, 'VE-U', 23204, '', 0, 'VE-U', 'Yaracuy', 1),
(1159, 'VE-F', 23205, '', 0, 'VE-F', 'BolÃ­var', 1),
(1160, 'VE-X', 23205, '', 0, 'VE-X', 'Amazonas', 1),
(1161, 'VE-Y', 23205, '', 0, 'VE-Y', 'Delta Amacuro', 1),
(1162, 'VE-O', 23206, '', 0, 'VE-O', 'Nueva Esparta', 1),
(1163, 'VE-Z', 23206, '', 0, 'VE-Z', 'Dependencias Federales', 1),
(1164, 'VE-C', 23207, '', 0, 'VE-C', 'Apure', 1),
(1165, 'VE-J', 23207, '', 0, 'VE-J', 'GuÃ¡rico', 1),
(1166, 'VE-H', 23207, '', 0, 'VE-H', 'Cojedes', 1),
(1167, 'VE-P', 23207, '', 0, 'VE-P', 'Portuguesa', 1),
(1168, 'VE-B', 23208, '', 0, 'VE-B', 'AnzoÃ¡tegui', 1),
(1169, 'VE-N', 23208, '', 0, 'VE-N', 'Monagas', 1),
(1170, 'VE-R', 23208, '', 0, 'VE-R', 'Sucre', 1),
(1171, 'VE-V', 23209, '', 0, 'VE-V', 'Zulia', 1),
(1172, 'VE-S', 23209, '', 0, 'VE-S', 'TÃ¡chira', 1),
(1173, 'LU0001', 14001, '', 0, '', 'Clervaux', 1),
(1174, 'LU0002', 14001, '', 0, '', 'Diekirch', 1),
(1175, 'LU0003', 14001, '', 0, '', 'Redange', 1),
(1176, 'LU0004', 14001, '', 0, '', 'Vianden', 1),
(1177, 'LU0005', 14001, '', 0, '', 'Wiltz', 1),
(1178, 'LU0006', 14002, '', 0, '', 'Echternach', 1),
(1179, 'LU0007', 14002, '', 0, '', 'Grevenmacher', 1),
(1180, 'LU0008', 14002, '', 0, '', 'Remich', 1),
(1181, 'LU0009', 14003, '', 0, '', 'Capellen', 1),
(1182, 'LU0010', 14003, '', 0, '', 'Esch-sur-Alzette', 1),
(1183, 'LU0011', 14003, '', 0, '', 'Luxembourg', 1),
(1184, 'LU0012', 14003, '', 0, '', 'Mersch', 1),
(1185, '0101', 18101, '', 0, '', 'Chachapoyas', 1),
(1186, '0102', 18101, '', 0, '', 'Bagua', 1),
(1187, '0103', 18101, '', 0, '', 'BongarÃ¡', 1),
(1188, '0104', 18101, '', 0, '', 'Condorcanqui', 1),
(1189, '0105', 18101, '', 0, '', 'Luya', 1),
(1190, '0106', 18101, '', 0, '', 'RodrÃ­guez de Mendoza', 1),
(1191, '0107', 18101, '', 0, '', 'Utcubamba', 1),
(1192, '0201', 18102, '', 0, '', 'Huaraz', 1),
(1193, '0202', 18102, '', 0, '', 'Aija', 1),
(1194, '0203', 18102, '', 0, '', 'Antonio Raymondi', 1),
(1195, '0204', 18102, '', 0, '', 'AsunciÃ³n', 1),
(1196, '0205', 18102, '', 0, '', 'Bolognesi', 1),
(1197, '0206', 18102, '', 0, '', 'Carhuaz', 1),
(1198, '0207', 18102, '', 0, '', 'Carlos FermÃ­n Fitzcarrald', 1),
(1199, '0208', 18102, '', 0, '', 'Casma', 1),
(1200, '0209', 18102, '', 0, '', 'Corongo', 1),
(1201, '0210', 18102, '', 0, '', 'Huari', 1),
(1202, '0211', 18102, '', 0, '', 'Huarmey', 1),
(1203, '0212', 18102, '', 0, '', 'Huaylas', 1),
(1204, '0213', 18102, '', 0, '', 'Mariscal Luzuriaga', 1),
(1205, '0214', 18102, '', 0, '', 'Ocros', 1),
(1206, '0215', 18102, '', 0, '', 'Pallasca', 1),
(1207, '0216', 18102, '', 0, '', 'Pomabamba', 1),
(1208, '0217', 18102, '', 0, '', 'Recuay', 1),
(1209, '0218', 18102, '', 0, '', 'PapÃ¡', 1),
(1210, '0219', 18102, '', 0, '', 'Sihuas', 1),
(1211, '0220', 18102, '', 0, '', 'Yungay', 1),
(1212, '0301', 18103, '', 0, '', 'Abancay', 1),
(1213, '0302', 18103, '', 0, '', 'Andahuaylas', 1),
(1214, '0303', 18103, '', 0, '', 'Antabamba', 1),
(1215, '0304', 18103, '', 0, '', 'Aymaraes', 1),
(1216, '0305', 18103, '', 0, '', 'Cotabambas', 1),
(1217, '0306', 18103, '', 0, '', 'Chincheros', 1),
(1218, '0307', 18103, '', 0, '', 'Grau', 1),
(1219, '0401', 18104, '', 0, '', 'Arequipa', 1),
(1220, '0402', 18104, '', 0, '', 'CamanÃ¡', 1),
(1221, '0403', 18104, '', 0, '', 'CaravelÃ­', 1),
(1222, '0404', 18104, '', 0, '', 'Castilla', 1),
(1223, '0405', 18104, '', 0, '', 'Caylloma', 1),
(1224, '0406', 18104, '', 0, '', 'Condesuyos', 1),
(1225, '0407', 18104, '', 0, '', 'Islay', 1),
(1226, '0408', 18104, '', 0, '', 'La UniÃ³n', 1),
(1227, '0501', 18105, '', 0, '', 'Huamanga', 1),
(1228, '0502', 18105, '', 0, '', 'Cangallo', 1),
(1229, '0503', 18105, '', 0, '', 'Huanca Sancos', 1),
(1230, '0504', 18105, '', 0, '', 'Huanta', 1),
(1231, '0505', 18105, '', 0, '', 'La Mar', 1),
(1232, '0506', 18105, '', 0, '', 'Lucanas', 1),
(1233, '0507', 18105, '', 0, '', 'Parinacochas', 1),
(1234, '0508', 18105, '', 0, '', 'PÃ¡ucar del Sara Sara', 1),
(1235, '0509', 18105, '', 0, '', 'Sucre', 1),
(1236, '0510', 18105, '', 0, '', 'VÃ­ctor Fajardo', 1),
(1237, '0511', 18105, '', 0, '', 'Vilcas HuamÃ¡n', 1),
(1238, '0601', 18106, '', 0, '', 'Cajamarca', 1),
(1239, '0602', 18106, '', 0, '', 'Cajabamba', 1),
(1240, '0603', 18106, '', 0, '', 'CelendÃ­n', 1),
(1241, '0604', 18106, '', 0, '', 'Chota', 1),
(1242, '0605', 18106, '', 0, '', 'ContumazÃ¡', 1),
(1243, '0606', 18106, '', 0, '', 'Cutervo', 1),
(1244, '0607', 18106, '', 0, '', 'Hualgayoc', 1),
(1245, '0608', 18106, '', 0, '', 'JaÃ©n', 1),
(1246, '0609', 18106, '', 0, '', 'San Ignacio', 1),
(1247, '0610', 18106, '', 0, '', 'San Marcos', 1),
(1248, '0611', 18106, '', 0, '', 'San Miguel', 1),
(1249, '0612', 18106, '', 0, '', 'San Pablo', 1),
(1250, '0613', 18106, '', 0, '', 'Santa Cruz', 1),
(1251, '0701', 18107, '', 0, '', 'Callao', 1),
(1252, '0801', 18108, '', 0, '', 'Cusco', 1),
(1253, '0802', 18108, '', 0, '', 'Acomayo', 1),
(1254, '0803', 18108, '', 0, '', 'Anta', 1),
(1255, '0804', 18108, '', 0, '', 'Calca', 1),
(1256, '0805', 18108, '', 0, '', 'Canas', 1),
(1257, '0806', 18108, '', 0, '', 'Canchis', 1),
(1258, '0807', 18108, '', 0, '', 'Chumbivilcas', 1),
(1259, '0808', 18108, '', 0, '', 'Espinar', 1),
(1260, '0809', 18108, '', 0, '', 'La ConvenciÃ³n', 1),
(1261, '0810', 18108, '', 0, '', 'Paruro', 1),
(1262, '0811', 18108, '', 0, '', 'Paucartambo', 1),
(1263, '0812', 18108, '', 0, '', 'Quispicanchi', 1),
(1264, '0813', 18108, '', 0, '', 'Urubamba', 1),
(1265, '0901', 18109, '', 0, '', 'Huancavelica', 1),
(1266, '0902', 18109, '', 0, '', 'Acobamba', 1),
(1267, '0903', 18109, '', 0, '', 'Angaraes', 1),
(1268, '0904', 18109, '', 0, '', 'Castrovirreyna', 1),
(1269, '0905', 18109, '', 0, '', 'Churcampa', 1),
(1270, '0906', 18109, '', 0, '', 'HuaytarÃ¡', 1),
(1271, '0907', 18109, '', 0, '', 'Tayacaja', 1),
(1272, '1001', 18110, '', 0, '', 'HuÃ¡nuco', 1),
(1273, '1002', 18110, '', 0, '', 'AmbÃ³n', 1),
(1274, '1003', 18110, '', 0, '', 'Dos de Mayo', 1),
(1275, '1004', 18110, '', 0, '', 'Huacaybamba', 1),
(1276, '1005', 18110, '', 0, '', 'HuamalÃ­es', 1),
(1277, '1006', 18110, '', 0, '', 'Leoncio Prado', 1),
(1278, '1007', 18110, '', 0, '', 'MaraÃ±Ã³n', 1),
(1279, '1008', 18110, '', 0, '', 'Pachitea', 1),
(1280, '1009', 18110, '', 0, '', 'Puerto Inca', 1),
(1281, '1010', 18110, '', 0, '', 'Lauricocha', 1),
(1282, '1011', 18110, '', 0, '', 'Yarowilca', 1),
(1283, '1101', 18111, '', 0, '', 'Ica', 1),
(1284, '1102', 18111, '', 0, '', 'Chincha', 1),
(1285, '1103', 18111, '', 0, '', 'Nazca', 1),
(1286, '1104', 18111, '', 0, '', 'Palpa', 1),
(1287, '1105', 18111, '', 0, '', 'Pisco', 1),
(1288, '1201', 18112, '', 0, '', 'Huancayo', 1),
(1289, '1202', 18112, '', 0, '', 'ConcepciÃ³n', 1),
(1290, '1203', 18112, '', 0, '', 'Chanchamayo', 1),
(1291, '1204', 18112, '', 0, '', 'Jauja', 1),
(1292, '1205', 18112, '', 0, '', 'JunÃ­n', 1),
(1293, '1206', 18112, '', 0, '', 'Satipo', 1),
(1294, '1207', 18112, '', 0, '', 'Tarma', 1),
(1295, '1208', 18112, '', 0, '', 'Yauli', 1),
(1296, '1209', 18112, '', 0, '', 'Chupaca', 1),
(1297, '1301', 18113, '', 0, '', 'Trujillo', 1),
(1298, '1302', 18113, '', 0, '', 'Ascope', 1),
(1299, '1303', 18113, '', 0, '', 'BolÃ­var', 1),
(1300, '1304', 18113, '', 0, '', 'ChepÃ©n', 1),
(1301, '1305', 18113, '', 0, '', 'JulcÃ¡n', 1),
(1302, '1306', 18113, '', 0, '', 'Otuzco', 1),
(1303, '1307', 18113, '', 0, '', 'Pacasmayo', 1),
(1304, '1308', 18113, '', 0, '', 'Pataz', 1),
(1305, '1309', 18113, '', 0, '', 'SÃ¡nchez CarriÃ³n', 1),
(1306, '1310', 18113, '', 0, '', 'Santiago de Chuco', 1),
(1307, '1311', 18113, '', 0, '', 'Gran ChimÃº', 1),
(1308, '1312', 18113, '', 0, '', 'VirÃº', 1),
(1309, '1401', 18114, '', 0, '', 'Chiclayo', 1),
(1310, '1402', 18114, '', 0, '', 'FerreÃ±afe', 1),
(1311, '1403', 18114, '', 0, '', 'Lambayeque', 1),
(1312, '1501', 18115, '', 0, '', 'Lima', 1),
(1313, '1502', 18116, '', 0, '', 'Huaura', 1),
(1314, '1503', 18116, '', 0, '', 'Barranca', 1),
(1315, '1504', 18116, '', 0, '', 'Cajatambo', 1),
(1316, '1505', 18116, '', 0, '', 'Canta', 1),
(1317, '1506', 18116, '', 0, '', 'CaÃ±ete', 1),
(1318, '1507', 18116, '', 0, '', 'Huaral', 1),
(1319, '1508', 18116, '', 0, '', 'HuarochirÃ­', 1),
(1320, '1509', 18116, '', 0, '', 'OyÃ³n', 1),
(1321, '1510', 18116, '', 0, '', 'Yauyos', 1),
(1322, '1601', 18117, '', 0, '', 'Maynas', 1),
(1323, '1602', 18117, '', 0, '', 'Alto Amazonas', 1),
(1324, '1603', 18117, '', 0, '', 'Loreto', 1),
(1325, '1604', 18117, '', 0, '', 'Mariscal RamÃ³n Castilla', 1),
(1326, '1605', 18117, '', 0, '', 'Requena', 1),
(1327, '1606', 18117, '', 0, '', 'Ucayali', 1),
(1328, '1607', 18117, '', 0, '', 'Datem del MaraÃ±Ã³n', 1),
(1329, '1701', 18118, '', 0, '', 'Tambopata', 1),
(1330, '1702', 18118, '', 0, '', 'ManÃº', 1),
(1331, '1703', 18118, '', 0, '', 'Tahuamanu', 1),
(1332, '1801', 18119, '', 0, '', 'Mariscal Nieto', 1),
(1333, '1802', 18119, '', 0, '', 'General SÃ¡nchez Cerro', 1),
(1334, '1803', 18119, '', 0, '', 'Ilo', 1),
(1335, '1901', 18120, '', 0, '', 'Pasco', 1),
(1336, '1902', 18120, '', 0, '', 'Daniel Alcides CarriÃ³n', 1),
(1337, '1903', 18120, '', 0, '', 'Oxapampa', 1),
(1338, '2001', 18121, '', 0, '', 'Piura', 1),
(1339, '2002', 18121, '', 0, '', 'Ayabaca', 1),
(1340, '2003', 18121, '', 0, '', 'Huancabamba', 1),
(1341, '2004', 18121, '', 0, '', 'MorropÃ³n', 1),
(1342, '2005', 18121, '', 0, '', 'Paita', 1),
(1343, '2006', 18121, '', 0, '', 'Sullana', 1),
(1344, '2007', 18121, '', 0, '', 'Talara', 1),
(1345, '2008', 18121, '', 0, '', 'Sechura', 1),
(1346, '2101', 18122, '', 0, '', 'Puno', 1),
(1347, '2102', 18122, '', 0, '', 'AzÃ¡ngaro', 1),
(1348, '2103', 18122, '', 0, '', 'Carabaya', 1),
(1349, '2104', 18122, '', 0, '', 'Chucuito', 1),
(1350, '2105', 18122, '', 0, '', 'El Collao', 1),
(1351, '2106', 18122, '', 0, '', 'HuancanÃ©', 1),
(1352, '2107', 18122, '', 0, '', 'Lampa', 1),
(1353, '2108', 18122, '', 0, '', 'Melgar', 1),
(1354, '2109', 18122, '', 0, '', 'Moho', 1),
(1355, '2110', 18122, '', 0, '', 'San Antonio de Putina', 1),
(1356, '2111', 18122, '', 0, '', 'San RomÃ¡n', 1),
(1357, '2112', 18122, '', 0, '', 'Sandia', 1),
(1358, '2113', 18122, '', 0, '', 'Yunguyo', 1),
(1359, '2201', 18123, '', 0, '', 'Moyobamba', 1),
(1360, '2202', 18123, '', 0, '', 'Bellavista', 1),
(1361, '2203', 18123, '', 0, '', 'El Dorado', 1),
(1362, '2204', 18123, '', 0, '', 'Huallaga', 1),
(1363, '2205', 18123, '', 0, '', 'Lamas', 1),
(1364, '2206', 18123, '', 0, '', 'Mariscal CÃ¡ceres', 1),
(1365, '2207', 18123, '', 0, '', 'Picota', 1),
(1366, '2208', 18123, '', 0, '', 'La Rioja', 1),
(1367, '2209', 18123, '', 0, '', 'San MartÃ­n', 1),
(1368, '2210', 18123, '', 0, '', 'Tocache', 1),
(1369, '2301', 18124, '', 0, '', 'Tacna', 1),
(1370, '2302', 18124, '', 0, '', 'Candarave', 1),
(1371, '2303', 18124, '', 0, '', 'Jorge Basadre', 1),
(1372, '2304', 18124, '', 0, '', 'Tarata', 1),
(1373, '2401', 18125, '', 0, '', 'Tumbes', 1),
(1374, '2402', 18125, '', 0, '', 'Contralmirante Villar', 1),
(1375, '2403', 18125, '', 0, '', 'Zarumilla', 1),
(1376, '2501', 18126, '', 0, '', 'Coronel Portillo', 1),
(1377, '2502', 18126, '', 0, '', 'Atalaya', 1),
(1378, '2503', 18126, '', 0, '', 'Padre Abad', 1),
(1379, '2504', 18126, '', 0, '', 'PurÃºs', 1),
(1380, 'PA-1', 17801, '', 0, '', 'Bocas del Toro', 1),
(1381, 'PA-2', 17801, '', 0, '', 'CoclÃ©', 1),
(1382, 'PA-3', 17801, '', 0, '', 'ColÃ³n', 1),
(1383, 'PA-4', 17801, '', 0, '', 'ChiriquÃ­', 1),
(1384, 'PA-5', 17801, '', 0, '', 'DariÃ©n', 1),
(1385, 'PA-6', 17801, '', 0, '', 'Herrera', 1),
(1386, 'PA-7', 17801, '', 0, '', 'Los Santos', 1),
(1387, 'PA-8', 17801, '', 0, '', 'PanamÃ¡', 1),
(1388, 'PA-9', 17801, '', 0, '', 'Veraguas', 1),
(1389, 'PA-13', 17801, '', 0, '', 'PanamÃ¡ Oeste', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ecotaxe`
--

CREATE TABLE IF NOT EXISTS `llx_c_ecotaxe` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_ecotaxe` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `llx_c_ecotaxe`
--

INSERT INTO `llx_c_ecotaxe` (`rowid`, `code`, `libelle`, `price`, `organization`, `fk_pays`, `active`) VALUES
(1, 'ER-A-A', 'Materiels electriques < 0,2kg', 0.01000000, 'ERP', 1, 1),
(2, 'ER-A-B', 'Materiels electriques >= 0,2 kg et < 0,5 kg', 0.03000000, 'ERP', 1, 1),
(3, 'ER-A-C', 'Materiels electriques >= 0,5 kg et < 1 kg', 0.04000000, 'ERP', 1, 1),
(4, 'ER-A-D', 'Materiels electriques >= 1 kg et < 2 kg', 0.13000000, 'ERP', 1, 1),
(5, 'ER-A-E', 'Materiels electriques >= 2 kg et < 4kg', 0.21000000, 'ERP', 1, 1),
(6, 'ER-A-F', 'Materiels electriques >= 4 kg et < 8 kg', 0.42000000, 'ERP', 1, 1),
(7, 'ER-A-G', 'Materiels electriques >= 8 kg et < 15 kg', 0.84000000, 'ERP', 1, 1),
(8, 'ER-A-H', 'Materiels electriques >= 15 kg et < 20 kg', 1.25000000, 'ERP', 1, 1),
(9, 'ER-A-I', 'Materiels electriques >= 20 kg et < 30 kg', 1.88000000, 'ERP', 1, 1),
(10, 'ER-A-J', 'Materiels electriques >= 30 kg', 3.34000000, 'ERP', 1, 1),
(11, 'ER-M-1', 'TV, Moniteurs < 9kg', 0.84000000, 'ERP', 1, 1),
(12, 'ER-M-2', 'TV, Moniteurs >= 9kg et < 15kg', 1.67000000, 'ERP', 1, 1),
(13, 'ER-M-3', 'TV, Moniteurs >= 15kg et < 30kg', 3.34000000, 'ERP', 1, 1),
(14, 'ER-M-4', 'TV, Moniteurs >= 30 kg', 6.69000000, 'ERP', 1, 1),
(15, 'EC-A-A', 'Materiels electriques  0,2 kg max', 0.00840000, 'Ecologic', 1, 1),
(16, 'EC-A-B', 'Materiels electriques 0,21 kg min - 0,50 kg max', 0.02500000, 'Ecologic', 1, 1),
(17, 'EC-A-C', 'Materiels electriques  0,51 kg min - 1 kg max', 0.04000000, 'Ecologic', 1, 1),
(18, 'EC-A-D', 'Materiels electriques  1,01 kg min - 2,5 kg max', 0.13000000, 'Ecologic', 1, 1),
(19, 'EC-A-E', 'Materiels electriques  2,51 kg min - 4 kg max', 0.21000000, 'Ecologic', 1, 1),
(20, 'EC-A-F', 'Materiels electriques 4,01 kg min - 8 kg max', 0.42000000, 'Ecologic', 1, 1),
(21, 'EC-A-G', 'Materiels electriques  8,01 kg min - 12 kg max', 0.63000000, 'Ecologic', 1, 1),
(22, 'EC-A-H', 'Materiels electriques 12,01 kg min - 20 kg max', 1.05000000, 'Ecologic', 1, 1),
(23, 'EC-A-I', 'Materiels electriques  20,01 kg min', 1.88000000, 'Ecologic', 1, 1),
(24, 'EC-M-1', 'TV, Moniteurs 9 kg max', 0.84000000, 'Ecologic', 1, 1),
(25, 'EC-M-2', 'TV, Moniteurs 9,01 kg min - 18 kg max', 1.67000000, 'Ecologic', 1, 1),
(26, 'EC-M-3', 'TV, Moniteurs 18,01 kg min - 36 kg max', 3.34000000, 'Ecologic', 1, 1),
(27, 'EC-M-4', 'TV, Moniteurs 36,01 kg min', 6.69000000, 'Ecologic', 1, 1),
(28, 'ES-M-1', 'TV, Moniteurs <= 20 pouces', 0.84000000, 'Eco-systemes', 1, 1),
(29, 'ES-M-2', 'TV, Moniteurs > 20 pouces et <= 32 pouces', 3.34000000, 'Eco-systemes', 1, 1),
(30, 'ES-M-3', 'TV, Moniteurs > 32 pouces et autres grands ecrans', 6.69000000, 'Eco-systemes', 1, 1),
(31, 'ES-A-A', 'Ordinateur fixe, Audio home systems (HIFI), elements hifi separes', 0.84000000, 'Eco-systemes', 1, 1),
(32, 'ES-A-B', 'Ordinateur portable, CD-RCR, VCR, lecteurs et enregistreurs DVD, instruments de musique et caisses de resonance, haut parleurs...', 0.25000000, 'Eco-systemes', 1, 1),
(33, 'ES-A-C', 'Imprimante, photocopieur, telecopieur', 0.42000000, 'Eco-systemes', 1, 1),
(34, 'ES-A-D', 'Accessoires, clavier, souris, PDA, imprimante photo, appareil photo, gps, telephone, repondeur, telephone sans fil, modem, telecommande, casque, camescope, baladeur mp3, radio portable, radio K7 et CD portable, radio reveil', 0.08400000, 'Eco-systemes', 1, 1),
(35, 'ES-A-E', 'GSM', 0.00840000, 'Eco-systemes', 1, 1),
(36, 'ES-A-F', 'Jouets et equipements de loisirs et de sports < 0,5 kg', 0.04200000, 'Eco-systemes', 1, 1),
(37, 'ES-A-G', 'Jouets et equipements de loisirs et de sports > 0,5 kg', 0.17000000, 'Eco-systemes', 1, 1),
(38, 'ES-A-H', 'Jouets et equipements de loisirs et de sports > 10 kg', 1.25000000, 'Eco-systemes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_effectif`
--

CREATE TABLE IF NOT EXISTS `llx_c_effectif` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_effectif` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_effectif`
--

INSERT INTO `llx_c_effectif` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(0, 'EF0', '-', 1, NULL),
(1, 'EF1-5', '1 - 5', 1, NULL),
(2, 'EF6-10', '6 - 10', 1, NULL),
(3, 'EF11-50', '11 - 50', 1, NULL),
(4, 'EF51-100', '51 - 100', 1, NULL),
(5, 'EF100-500', '100 - 500', 1, NULL),
(6, 'EF500-', '> 500', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_email_templates`
--

CREATE TABLE IF NOT EXISTS `llx_c_email_templates` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `type_template` varchar(32) DEFAULT NULL,
  `lang` varchar(6) DEFAULT NULL,
  `private` smallint(6) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `topic` text,
  `content` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_email_templates` (`entity`,`label`,`lang`),
  KEY `idx_type` (`type_template`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_field_list`
--

CREATE TABLE IF NOT EXISTS `llx_c_field_list` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `element` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `alias` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `align` varchar(6) DEFAULT 'left',
  `sort` tinyint(4) NOT NULL DEFAULT '1',
  `search` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` varchar(255) DEFAULT '1',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_format_cards`
--

CREATE TABLE IF NOT EXISTS `llx_c_format_cards` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `paper_size` varchar(20) NOT NULL,
  `orientation` varchar(1) NOT NULL,
  `metric` varchar(5) NOT NULL,
  `leftmargin` double(24,8) NOT NULL,
  `topmargin` double(24,8) NOT NULL,
  `nx` int(11) NOT NULL,
  `ny` int(11) NOT NULL,
  `spacex` double(24,8) NOT NULL,
  `spacey` double(24,8) NOT NULL,
  `width` double(24,8) NOT NULL,
  `height` double(24,8) NOT NULL,
  `font_size` int(11) NOT NULL,
  `custom_x` double(24,8) NOT NULL,
  `custom_y` double(24,8) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `llx_c_format_cards`
--

INSERT INTO `llx_c_format_cards` (`rowid`, `code`, `name`, `paper_size`, `orientation`, `metric`, `leftmargin`, `topmargin`, `nx`, `ny`, `spacex`, `spacey`, `width`, `height`, `font_size`, `custom_x`, `custom_y`, `active`) VALUES
(1, '5160', 'Avery-5160, WL-875WX', 'letter', 'P', 'mm', 5.58165000, 12.70000000, 3, 10, 3.55600000, 0.00000000, 65.87490000, 25.40000000, 7, 0.00000000, 0.00000000, 1),
(2, '5161', 'Avery-5161, WL-75WX', 'letter', 'P', 'mm', 4.44500000, 12.70000000, 2, 10, 3.96800000, 0.00000000, 101.60000000, 25.40000000, 7, 0.00000000, 0.00000000, 1),
(3, '5162', 'Avery-5162, WL-100WX', 'letter', 'P', 'mm', 3.87350000, 22.35200000, 2, 7, 4.95400000, 0.00000000, 101.60000000, 33.78100000, 8, 0.00000000, 0.00000000, 1),
(4, '5163', 'Avery-5163, WL-125WX', 'letter', 'P', 'mm', 4.57200000, 12.70000000, 2, 5, 3.55600000, 0.00000000, 101.60000000, 50.80000000, 10, 0.00000000, 0.00000000, 1),
(5, '5164', '5164 (Letter)', 'letter', 'P', 'in', 0.14800000, 0.50000000, 2, 3, 0.20310000, 0.00000000, 4.00000000, 3.33000000, 12, 0.00000000, 0.00000000, 0),
(6, '8600', 'Avery-8600', 'letter', 'P', 'mm', 7.10000000, 19.00000000, 3, 10, 9.50000000, 3.10000000, 66.60000000, 25.40000000, 7, 0.00000000, 0.00000000, 1),
(7, '99012', 'DYMO 99012 89*36mm', 'custom', 'L', 'mm', 1.00000000, 1.00000000, 1, 1, 0.00000000, 0.00000000, 36.00000000, 89.00000000, 10, 36.00000000, 89.00000000, 1),
(8, '99014', 'DYMO 99014 101*54mm', 'custom', 'L', 'mm', 1.00000000, 1.00000000, 1, 1, 0.00000000, 0.00000000, 54.00000000, 101.00000000, 10, 54.00000000, 101.00000000, 1),
(9, 'AVERYC32010', 'Avery-C32010', 'A4', 'P', 'mm', 15.00000000, 13.00000000, 2, 5, 10.00000000, 0.00000000, 85.00000000, 54.00000000, 10, 0.00000000, 0.00000000, 1),
(10, 'CARD', 'Dolibarr Business cards', 'A4', 'P', 'mm', 15.00000000, 15.00000000, 2, 5, 0.00000000, 0.00000000, 85.00000000, 54.00000000, 10, 0.00000000, 0.00000000, 1),
(11, 'L7163', 'Avery-L7163', 'A4', 'P', 'mm', 5.00000000, 15.00000000, 2, 7, 2.50000000, 0.00000000, 99.10000000, 38.10000000, 8, 0.00000000, 0.00000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_forme_juridique`
--

CREATE TABLE IF NOT EXISTS `llx_c_forme_juridique` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `isvatexempted` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_forme_juridique` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=238 ;

--
-- Dumping data for table `llx_c_forme_juridique`
--

INSERT INTO `llx_c_forme_juridique` (`rowid`, `code`, `fk_pays`, `libelle`, `isvatexempted`, `active`, `module`, `position`) VALUES
(1, 0, 0, '-', 0, 1, NULL, 0),
(2, 2301, 23, 'Monotributista', 0, 1, NULL, 0),
(3, 2302, 23, 'Sociedad Civil', 0, 1, NULL, 0),
(4, 2303, 23, 'Sociedades Comerciales', 0, 1, NULL, 0),
(5, 2304, 23, 'Sociedades de Hecho', 0, 1, NULL, 0),
(6, 2305, 23, 'Sociedades Irregulares', 0, 1, NULL, 0),
(7, 2306, 23, 'Sociedad Colectiva', 0, 1, NULL, 0),
(8, 2307, 23, 'Sociedad en Comandita Simple', 0, 1, NULL, 0),
(9, 2308, 23, 'Sociedad de Capital e Industria', 0, 1, NULL, 0),
(10, 2309, 23, 'Sociedad Accidental o en participaciÃ³n', 0, 1, NULL, 0),
(11, 2310, 23, 'Sociedad de Responsabilidad Limitada', 0, 1, NULL, 0),
(12, 2311, 23, 'Sociedad AnÃ³nima', 0, 1, NULL, 0),
(13, 2312, 23, 'Sociedad AnÃ³nima con ParticipaciÃ³n Estatal Mayoritaria', 0, 1, NULL, 0),
(14, 2313, 23, 'Sociedad en Comandita por Acciones (arts. 315 a 324, LSC)', 0, 1, NULL, 0),
(15, 4100, 41, 'GmbH - Gesellschaft mit beschrÃ¤nkter Haftung', 0, 1, NULL, 0),
(16, 4101, 41, 'GesmbH - Gesellschaft mit beschrÃ¤nkter Haftung', 0, 1, NULL, 0),
(17, 4102, 41, 'AG - Aktiengesellschaft', 0, 1, NULL, 0),
(18, 4103, 41, 'EWIV - EuropÃ¤ische wirtschaftliche Interessenvereinigung', 0, 1, NULL, 0),
(19, 4104, 41, 'KEG - Kommanditerwerbsgesellschaft', 0, 1, NULL, 0),
(20, 4105, 41, 'OEG - Offene Erwerbsgesellschaft', 0, 1, NULL, 0),
(21, 4106, 41, 'OHG - Offene Handelsgesellschaft', 0, 1, NULL, 0),
(22, 4107, 41, 'AG & Co KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(23, 4108, 41, 'GmbH & Co KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(24, 4109, 41, 'KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(25, 4110, 41, 'OG - Offene Gesellschaft', 0, 1, NULL, 0),
(26, 4111, 41, 'GbR - Gesellschaft nach bÃ¼rgerlichem Recht', 0, 1, NULL, 0),
(27, 4112, 41, 'GesbR - Gesellschaft nach bÃ¼rgerlichem Recht', 0, 1, NULL, 0),
(28, 4113, 41, 'GesnbR - Gesellschaft nach bÃ¼rgerlichem Recht', 0, 1, NULL, 0),
(29, 4114, 41, 'e.U. - eingetragener Einzelunternehmer', 0, 1, NULL, 0),
(30, 11, 1, 'Artisan CommerÃ§ant (EI)', 0, 1, NULL, 0),
(31, 12, 1, 'CommerÃ§ant (EI)', 0, 1, NULL, 0),
(32, 13, 1, 'Artisan (EI)', 0, 1, NULL, 0),
(33, 14, 1, 'Officier public ou ministÃ©riel', 0, 1, NULL, 0),
(34, 15, 1, 'Profession libÃ©rale (EI)', 0, 1, NULL, 0),
(35, 16, 1, 'Exploitant agricole', 0, 1, NULL, 0),
(36, 17, 1, 'Agent commercial', 0, 1, NULL, 0),
(37, 18, 1, 'AssociÃ© GÃ©rant de sociÃ©tÃ©', 0, 1, NULL, 0),
(38, 19, 1, 'Personne physique', 0, 1, NULL, 0),
(39, 21, 1, 'Indivision', 0, 1, NULL, 0),
(40, 22, 1, 'SociÃ©tÃ© crÃ©Ã©e de fait', 0, 1, NULL, 0),
(41, 23, 1, 'SociÃ©tÃ© en participation', 0, 1, NULL, 0),
(42, 27, 1, 'Paroisse hors zone concordataire', 0, 1, NULL, 0),
(43, 29, 1, 'Groupement de droit privÃ© non dotÃ© de la personnalitÃ© morale', 0, 1, NULL, 0),
(44, 31, 1, 'Personne morale de droit Ã©tranger, immatriculÃ©e au RCS', 0, 1, NULL, 0),
(45, 32, 1, 'Personne morale de droit Ã©tranger, non immatriculÃ©e au RCS', 0, 1, NULL, 0),
(46, 35, 1, 'RÃ©gime auto-entrepreneur', 0, 1, NULL, 0),
(47, 41, 1, 'Etablissement public ou rÃ©gie Ã  caractÃ¨re industriel ou commercial', 0, 1, NULL, 0),
(48, 51, 1, 'SociÃ©tÃ© coopÃ©rative commerciale particuliÃ¨re', 0, 1, NULL, 0),
(49, 52, 1, 'SociÃ©tÃ© en nom collectif', 0, 1, NULL, 0),
(50, 53, 1, 'SociÃ©tÃ© en commandite', 0, 1, NULL, 0),
(51, 54, 1, 'SociÃ©tÃ© Ã  responsabilitÃ© limitÃ©e (SARL)', 0, 1, NULL, 0),
(52, 55, 1, 'SociÃ©tÃ© anonyme Ã  conseil d administration', 0, 1, NULL, 0),
(53, 56, 1, 'SociÃ©tÃ© anonyme Ã  directoire', 0, 1, NULL, 0),
(54, 57, 1, 'SociÃ©tÃ© par actions simplifiÃ©e (SAS)', 0, 1, NULL, 0),
(55, 58, 1, 'Entreprise Unipersonnelle Ã  ResponsabilitÃ© LimitÃ©e (EURL)', 0, 1, NULL, 0),
(56, 59, 1, 'SociÃ©tÃ© par actions simplifiÃ©e unipersonnelle (SASU)', 0, 1, NULL, 0),
(57, 60, 1, 'Entreprise Individuelle Ã  ResponsabilitÃ© LimitÃ©e (EIRL)', 0, 1, NULL, 0),
(58, 61, 1, 'Caisse d''Ã©pargne et de prÃ©voyance', 0, 1, NULL, 0),
(59, 62, 1, 'Groupement d''intÃ©rÃªt Ã©conomique (GIE)', 0, 1, NULL, 0),
(60, 63, 1, 'SociÃ©tÃ© coopÃ©rative agricole', 0, 1, NULL, 0),
(61, 64, 1, 'SociÃ©tÃ© non commerciale d assurances', 0, 1, NULL, 0),
(62, 65, 1, 'SociÃ©tÃ© civile', 0, 1, NULL, 0),
(63, 69, 1, 'Personnes de droit privÃ© inscrites au RCS', 0, 1, NULL, 0),
(64, 71, 1, 'Administration de l Ã©tat', 0, 1, NULL, 0),
(65, 72, 1, 'CollectivitÃ© territoriale', 0, 1, NULL, 0),
(66, 73, 1, 'Etablissement public administratif', 0, 1, NULL, 0),
(67, 74, 1, 'Personne morale de droit public administratif', 0, 1, NULL, 0),
(68, 81, 1, 'Organisme gÃ©rant rÃ©gime de protection social Ã  adhÃ©sion obligatoire', 0, 1, NULL, 0),
(69, 82, 1, 'Organisme mutualiste', 0, 1, NULL, 0),
(70, 83, 1, 'ComitÃ© d entreprise', 0, 1, NULL, 0),
(71, 84, 1, 'Organisme professionnel', 0, 1, NULL, 0),
(72, 85, 1, 'Organisme de retraite Ã  adhÃ©sion non obligatoire', 0, 1, NULL, 0),
(73, 91, 1, 'Syndicat de propriÃ©taires', 0, 1, NULL, 0),
(74, 92, 1, 'Association loi 1901 ou assimilÃ©', 0, 1, NULL, 0),
(75, 93, 1, 'Fondation', 0, 1, NULL, 0),
(76, 99, 1, 'Personne morale de droit privÃ©', 0, 1, NULL, 0),
(77, 200, 2, 'IndÃ©pendant', 0, 1, NULL, 0),
(78, 201, 2, 'SPRL - SociÃ©tÃ© Ã  responsabilitÃ© limitÃ©e', 0, 1, NULL, 0),
(79, 202, 2, 'SA   - SociÃ©tÃ© Anonyme', 0, 1, NULL, 0),
(80, 203, 2, 'SCRL - SociÃ©tÃ© coopÃ©rative Ã  responsabilitÃ© limitÃ©e', 0, 1, NULL, 0),
(81, 204, 2, 'ASBL - Association sans but Lucratif', 0, 1, NULL, 0),
(82, 205, 2, 'SCRI - SociÃ©tÃ© coopÃ©rative Ã  responsabilitÃ© illimitÃ©e', 0, 1, NULL, 0),
(83, 206, 2, 'SCS  - SociÃ©tÃ© en commandite simple', 0, 1, NULL, 0),
(84, 207, 2, 'SCA  - SociÃ©tÃ© en commandite par action', 0, 1, NULL, 0),
(85, 208, 2, 'SNC  - SociÃ©tÃ© en nom collectif', 0, 1, NULL, 0),
(86, 209, 2, 'GIE  - Groupement d intÃ©rÃªt Ã©conomique', 0, 1, NULL, 0),
(87, 210, 2, 'GEIE - Groupement europÃ©en d intÃ©rÃªt Ã©conomique', 0, 1, NULL, 0),
(88, 220, 2, 'Eenmanszaak', 0, 1, NULL, 0),
(89, 221, 2, 'BVBA - Besloten vennootschap met beperkte aansprakelijkheid', 0, 1, NULL, 0),
(90, 222, 2, 'NV   - Naamloze Vennootschap', 0, 1, NULL, 0),
(91, 223, 2, 'CVBA - CoÃ¶peratieve vennootschap met beperkte aansprakelijkheid', 0, 1, NULL, 0),
(92, 224, 2, 'VZW  - Vereniging zonder winstoogmerk', 0, 1, NULL, 0),
(93, 225, 2, 'CVOA - CoÃ¶peratieve vennootschap met onbeperkte aansprakelijkheid ', 0, 1, NULL, 0),
(94, 226, 2, 'GCV  - Gewone commanditaire vennootschap', 0, 1, NULL, 0),
(95, 227, 2, 'Comm.VA - Commanditaire vennootschap op aandelen', 0, 1, NULL, 0),
(96, 228, 2, 'VOF  - Vennootschap onder firma', 0, 1, NULL, 0),
(97, 229, 2, 'VS0  - Vennootschap met sociaal oogmerk', 0, 1, NULL, 0),
(98, 500, 5, 'GmbH - Gesellschaft mit beschrÃ¤nkter Haftung', 0, 1, NULL, 0),
(99, 501, 5, 'AG - Aktiengesellschaft ', 0, 1, NULL, 0),
(100, 502, 5, 'GmbH&Co. KG - Gesellschaft mit beschrÃ¤nkter Haftung & Compagnie Kommanditgesellschaft', 0, 1, NULL, 0),
(101, 503, 5, 'Gewerbe - Personengesellschaft', 0, 1, NULL, 0),
(102, 504, 5, 'UG - Unternehmergesellschaft -haftungsbeschrÃ¤nkt-', 0, 1, NULL, 0),
(103, 505, 5, 'GbR - Gesellschaft des bÃ¼rgerlichen Rechts', 0, 1, NULL, 0),
(104, 506, 5, 'KG - Kommanditgesellschaft', 0, 1, NULL, 0),
(105, 507, 5, 'Ltd. - Limited Company', 0, 1, NULL, 0),
(106, 508, 5, 'OHG - Offene Handelsgesellschaft', 0, 1, NULL, 0),
(107, 10201, 102, '??????? ??????????', 0, 1, NULL, 0),
(108, 10202, 102, '????????  ??????????', 0, 1, NULL, 0),
(109, 10203, 102, '????????? ???????? ?.?', 0, 1, NULL, 0),
(110, 10204, 102, '??????????? ???????? ?.?', 0, 1, NULL, 0),
(111, 10205, 102, '???????? ????????????? ??????? ?.?.?', 0, 1, NULL, 0),
(112, 10206, 102, '??????? ???????? ?.?', 0, 1, NULL, 0),
(113, 10207, 102, '??????? ?????????? ???????? ?.?.?', 0, 1, NULL, 0),
(114, 10208, 102, '?????????????', 0, 1, NULL, 0),
(115, 10209, 102, '??????????????', 0, 1, NULL, 0),
(116, 301, 3, 'SocietÃ  semplice', 0, 1, NULL, 0),
(117, 302, 3, 'SocietÃ  in nome collettivo s.n.c.', 0, 1, NULL, 0),
(118, 303, 3, 'SocietÃ  in accomandita semplice s.a.s.', 0, 1, NULL, 0),
(119, 304, 3, 'SocietÃ  per azioni s.p.a.', 0, 1, NULL, 0),
(120, 305, 3, 'SocietÃ  a responsabilitÃ  limitata s.r.l.', 0, 1, NULL, 0),
(121, 306, 3, 'SocietÃ  in accomandita per azioni s.a.p.a.', 0, 1, NULL, 0),
(122, 307, 3, 'SocietÃ  cooperativa a r.l.', 0, 1, NULL, 0),
(123, 308, 3, 'SocietÃ  consortile', 0, 1, NULL, 0),
(124, 309, 3, 'SocietÃ  europea', 0, 1, NULL, 0),
(125, 310, 3, 'SocietÃ  cooperativa europea', 0, 1, NULL, 0),
(126, 311, 3, 'SocietÃ  unipersonale', 0, 1, NULL, 0),
(127, 312, 3, 'SocietÃ  di professionisti', 0, 1, NULL, 0),
(128, 313, 3, 'SocietÃ  di fatto', 0, 1, NULL, 0),
(129, 315, 3, 'SocietÃ  apparente', 0, 1, NULL, 0),
(130, 316, 3, 'Impresa individuale ', 0, 1, NULL, 0),
(131, 317, 3, 'Impresa coniugale', 0, 1, NULL, 0),
(132, 318, 3, 'Impresa familiare', 0, 1, NULL, 0),
(133, 319, 3, 'Consorzio cooperativo', 0, 1, NULL, 0),
(134, 320, 3, 'SocietÃ  cooperativa sociale', 0, 1, NULL, 0),
(135, 321, 3, 'SocietÃ  cooperativa di consumo', 0, 1, NULL, 0),
(136, 322, 3, 'SocietÃ  cooperativa agricola', 0, 1, NULL, 0),
(137, 323, 3, 'A.T.I. Associazione temporanea di imprese', 0, 1, NULL, 0),
(138, 324, 3, 'R.T.I. Raggruppamento temporaneo di imprese', 0, 1, NULL, 0),
(139, 325, 3, 'Studio associato', 0, 1, NULL, 0),
(140, 600, 6, 'Raison Individuelle', 0, 1, NULL, 0),
(141, 601, 6, 'SociÃ©tÃ© Simple', 0, 1, NULL, 0),
(142, 602, 6, 'SociÃ©tÃ© en nom collectif', 0, 1, NULL, 0),
(143, 603, 6, 'SociÃ©tÃ© en commandite', 0, 1, NULL, 0),
(144, 604, 6, 'SociÃ©tÃ© anonyme (SA)', 0, 1, NULL, 0),
(145, 605, 6, 'SociÃ©tÃ© en commandite par actions', 0, 1, NULL, 0),
(146, 606, 6, 'SociÃ©tÃ© Ã  responsabilitÃ© limitÃ©e (SARL)', 0, 1, NULL, 0),
(147, 607, 6, 'SociÃ©tÃ© coopÃ©rative', 0, 1, NULL, 0),
(148, 608, 6, 'Association', 0, 1, NULL, 0),
(149, 609, 6, 'Fondation', 0, 1, NULL, 0),
(150, 700, 7, 'Sole Trader', 0, 1, NULL, 0),
(151, 701, 7, 'Partnership', 0, 1, NULL, 0),
(152, 702, 7, 'Private Limited Company by shares (LTD)', 0, 1, NULL, 0),
(153, 703, 7, 'Public Limited Company', 0, 1, NULL, 0),
(154, 704, 7, 'Workers Cooperative', 0, 1, NULL, 0),
(155, 705, 7, 'Limited Liability Partnership', 0, 1, NULL, 0),
(156, 706, 7, 'Franchise', 0, 1, NULL, 0),
(157, 1000, 10, 'SociÃ©tÃ© Ã  responsabilitÃ© limitÃ©e (SARL)', 0, 1, NULL, 0),
(158, 1001, 10, 'SociÃ©tÃ© en Nom Collectif (SNC)', 0, 1, NULL, 0),
(159, 1002, 10, 'SociÃ©tÃ© en Commandite Simple (SCS)', 0, 1, NULL, 0),
(160, 1003, 10, 'sociÃ©tÃ© en participation', 0, 1, NULL, 0),
(161, 1004, 10, 'SociÃ©tÃ© Anonyme (SA)', 0, 1, NULL, 0),
(162, 1005, 10, 'SociÃ©tÃ© Unipersonnelle Ã  ResponsabilitÃ© LimitÃ©e (SUARL)', 0, 1, NULL, 0),
(163, 1006, 10, 'Groupement d''intÃ©rÃªt Ã©conomique (GEI)', 0, 1, NULL, 0),
(164, 1007, 10, 'Groupe de sociÃ©tÃ©s', 0, 1, NULL, 0),
(165, 1701, 17, 'Eenmanszaak', 0, 1, NULL, 0),
(166, 1702, 17, 'Maatschap', 0, 1, NULL, 0),
(167, 1703, 17, 'Vennootschap onder firma', 0, 1, NULL, 0),
(168, 1704, 17, 'Commanditaire vennootschap', 0, 1, NULL, 0),
(169, 1705, 17, 'Besloten vennootschap (BV)', 0, 1, NULL, 0),
(170, 1706, 17, 'Naamloze Vennootschap (NV)', 0, 1, NULL, 0),
(171, 1707, 17, 'Vereniging', 0, 1, NULL, 0),
(172, 1708, 17, 'Stichting', 0, 1, NULL, 0),
(173, 1709, 17, 'CoÃ¶peratie met beperkte aansprakelijkheid (BA)', 0, 1, NULL, 0),
(174, 1710, 17, 'CoÃ¶peratie met uitgesloten aansprakelijkheid (UA)', 0, 1, NULL, 0),
(175, 1711, 17, 'CoÃ¶peratie met wettelijke aansprakelijkheid (WA)', 0, 1, NULL, 0),
(176, 1712, 17, 'Onderlinge waarborgmaatschappij', 0, 1, NULL, 0),
(177, 401, 4, 'Empresario Individual', 0, 1, NULL, 0),
(178, 402, 4, 'Comunidad de Bienes', 0, 1, NULL, 0),
(179, 403, 4, 'Sociedad Civil', 0, 1, NULL, 0),
(180, 404, 4, 'Sociedad Colectiva', 0, 1, NULL, 0),
(181, 405, 4, 'Sociedad Limitada', 0, 1, NULL, 0),
(182, 406, 4, 'Sociedad AnÃ³nima', 0, 1, NULL, 0),
(183, 407, 4, 'Sociedad Comanditaria por Acciones', 0, 1, NULL, 0),
(184, 408, 4, 'Sociedad Comanditaria Simple', 0, 1, NULL, 0),
(185, 409, 4, 'Sociedad Laboral', 0, 1, NULL, 0),
(186, 410, 4, 'Sociedad Cooperativa', 0, 1, NULL, 0),
(187, 411, 4, 'Sociedad de GarantÃ­a RecÃ­proca', 0, 1, NULL, 0),
(188, 412, 4, 'Entidad de Capital-Riesgo', 0, 1, NULL, 0),
(189, 413, 4, 'AgrupaciÃ³n de InterÃ©s EconÃ³mico', 0, 1, NULL, 0),
(190, 414, 4, 'Sociedad de InversiÃ³n Mobiliaria', 0, 1, NULL, 0),
(191, 415, 4, 'AgrupaciÃ³n sin Ãnimo de Lucro', 0, 1, NULL, 0),
(192, 15201, 152, 'Mauritius Private Company Limited By Shares', 0, 1, NULL, 0),
(193, 15202, 152, 'Mauritius Company Limited By Guarantee', 0, 1, NULL, 0),
(194, 15203, 152, 'Mauritius Public Company Limited By Shares', 0, 1, NULL, 0),
(195, 15204, 152, 'Mauritius Foreign Company', 0, 1, NULL, 0),
(196, 15205, 152, 'Mauritius GBC1 (Offshore Company)', 0, 1, NULL, 0),
(197, 15206, 152, 'Mauritius GBC2 (International Company)', 0, 1, NULL, 0),
(198, 15207, 152, 'Mauritius General Partnership', 0, 1, NULL, 0),
(199, 15208, 152, 'Mauritius Limited Partnership', 0, 1, NULL, 0),
(200, 15209, 152, 'Mauritius Sole Proprietorship', 0, 1, NULL, 0),
(201, 15210, 152, 'Mauritius Trusts', 0, 1, NULL, 0),
(202, 15401, 154, 'Sociedad en nombre colectivo', 0, 1, NULL, 0),
(203, 15402, 154, 'Sociedad en comandita simple', 0, 1, NULL, 0),
(204, 15403, 154, 'Sociedad de responsabilidad limitada', 0, 1, NULL, 0),
(205, 15404, 154, 'Sociedad anÃ³nima', 0, 1, NULL, 0),
(206, 15405, 154, 'Sociedad en comandita por acciones', 0, 1, NULL, 0),
(207, 15406, 154, 'Sociedad cooperativa', 0, 1, NULL, 0),
(208, 14001, 140, 'Entreprise individuelle', 0, 1, NULL, 0),
(209, 14002, 140, 'SociÃ©tÃ© en nom collectif (SENC)', 0, 1, NULL, 0),
(210, 14003, 140, 'SociÃ©tÃ© en commandite simple (SECS)', 0, 1, NULL, 0),
(211, 14004, 140, 'SociÃ©tÃ© en commandite par actions (SECA)', 0, 1, NULL, 0),
(212, 14005, 140, 'SociÃ©tÃ© Ã  responsabilitÃ© limitÃ©e (SARL)', 0, 1, NULL, 0),
(213, 14006, 140, 'SociÃ©tÃ© anonyme (SA)', 0, 1, NULL, 0),
(214, 14007, 140, 'SociÃ©tÃ© coopÃ©rative (SC)', 0, 1, NULL, 0),
(215, 14008, 140, 'SociÃ©tÃ© europÃ©enne (SE)', 0, 1, NULL, 0),
(216, 18801, 188, 'AFJ - Alte forme juridice', 0, 1, NULL, 0),
(217, 18802, 188, 'ASF - Asociatie familialÃ£', 0, 1, NULL, 0),
(218, 18803, 188, 'CON - Concesiune', 0, 1, NULL, 0),
(219, 18804, 188, 'CRL - Soc civilÃ£ profesionala cu pers. juridica si rÃ£spundere limitata (SPRL)', 0, 1, NULL, 0),
(220, 18805, 188, 'INC - ÃŽnchiriere', 0, 1, NULL, 0),
(221, 18806, 188, 'LOC - Loca?ie de gestiune', 0, 1, NULL, 0),
(222, 18807, 188, 'OC1 - Organiza?ie cooperatistÃ£ me?te?ugÃ£reascÃ£', 0, 1, NULL, 0),
(223, 18808, 188, 'OC2 - Organiza?ie cooperatistÃ£ de consum', 0, 1, NULL, 0),
(224, 18809, 188, 'OC3 - Organiza?ie cooperatistÃ£ de credit', 0, 1, NULL, 0),
(225, 18810, 188, 'PFA - PersoanÃ£ fizicÃ£ independentÃ£', 0, 1, NULL, 0),
(226, 18811, 188, 'RA - Regie autonomÃ£', 0, 1, NULL, 0),
(227, 18812, 188, 'SA - Societate comercialÃ£ pe ac?iuni', 0, 1, NULL, 0),
(228, 18813, 188, 'SCS - Societate comercialÃ£ Ã®n comanditÃ£ simplÃ£', 0, 1, NULL, 0),
(229, 18814, 188, 'SNC - Societate comercialÃ£ Ã®n nume colectiv', 0, 1, NULL, 0),
(230, 18815, 188, 'SPI - Societate profesionala practicieni in insolventa (SPPI)', 0, 1, NULL, 0),
(231, 18816, 188, 'SRL - Societate comercialÃ£ cu rÃ£spundere limitatÃ£', 0, 1, NULL, 0),
(232, 18817, 188, 'URL - Intreprindere profesionala unipersonala cu rÃ£spundere limitata (IPURL)', 0, 1, NULL, 0),
(233, 17801, 178, 'Empresa individual', 0, 1, NULL, 0),
(234, 17802, 178, 'AsociaciÃ³n General', 0, 1, NULL, 0),
(235, 17803, 178, 'Sociedad de Responsabilidad Limitada', 0, 1, NULL, 0),
(236, 17804, 178, 'Sociedad Civil', 0, 1, NULL, 0),
(237, 17805, 178, 'Sociedad AnÃ³nima', 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_holiday_types`
--

CREATE TABLE IF NOT EXISTS `llx_c_holiday_types` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `label` varchar(255) NOT NULL,
  `affect` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `newByMonth` double(8,5) NOT NULL DEFAULT '0.00000',
  `fk_country` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_holiday_types` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `llx_c_holiday_types`
--

INSERT INTO `llx_c_holiday_types` (`rowid`, `code`, `label`, `affect`, `delay`, `newByMonth`, `fk_country`, `active`) VALUES
(1, 'LEAVE_SICK', 'Sick leave', 0, 0, 0.00000, NULL, 1),
(2, 'LEAVE_OTHER', 'Other leave', 0, 0, 0.00000, NULL, 1),
(3, 'LEAVE_PAID', 'Paid vacation', 1, 7, 0.00000, NULL, 0),
(4, 'LEAVE_RTT_FR', 'RTT', 1, 7, 0.83000, 1, 1),
(5, 'LEAVE_PAID_FR', 'Paid vacation', 1, 30, 2.08334, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_hrm_department`
--

CREATE TABLE IF NOT EXISTS `llx_c_hrm_department` (
  `rowid` int(11) NOT NULL,
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `code` varchar(16) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_hrm_department`
--

INSERT INTO `llx_c_hrm_department` (`rowid`, `pos`, `code`, `label`, `active`) VALUES
(1, 5, 'MANAGEMENT', 'Management', 1),
(2, 10, 'GESTION', 'Gestion', 1),
(3, 15, 'TRAINING', 'Training', 1),
(4, 20, 'IT', 'Inform. Technology (IT)', 1),
(5, 25, 'MARKETING', 'Marketing', 1),
(6, 30, 'SALES', 'Sales', 1),
(7, 35, 'LEGAL', 'Legal', 1),
(8, 40, 'FINANCIAL', 'Financial accounting', 1),
(9, 45, 'HUMANRES', 'Human resources', 1),
(10, 50, 'PURCHASING', 'Purchasing', 1),
(11, 55, 'SERVICES', 'Services', 1),
(12, 60, 'CUSTOMSERV', 'Customer service', 1),
(13, 65, 'CONSULTING', 'Consulting', 1),
(14, 70, 'LOGISTIC', 'Logistics', 1),
(15, 75, 'CONSTRUCT', 'Engineering/design', 1),
(16, 80, 'PRODUCTION', 'Manufacturing', 1),
(17, 85, 'QUALITY', 'Quality assurance', 1),
(18, 85, 'MAINT', 'Plant assurance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_hrm_function`
--

CREATE TABLE IF NOT EXISTS `llx_c_hrm_function` (
  `rowid` int(11) NOT NULL,
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `code` varchar(16) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `c_level` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_hrm_function`
--

INSERT INTO `llx_c_hrm_function` (`rowid`, `pos`, `code`, `label`, `c_level`, `active`) VALUES
(1, 5, 'EXECBOARD', 'Executive board', 0, 1),
(2, 10, 'MANAGDIR', 'Managing director', 1, 1),
(3, 15, 'ACCOUNTMANAG', 'Account manager', 0, 1),
(4, 20, 'ENGAGDIR', 'Engagement director', 1, 1),
(5, 25, 'DIRECTOR', 'Director', 1, 1),
(6, 30, 'PROJMANAG', 'Project manager', 0, 1),
(7, 35, 'DEPHEAD', 'Department head', 0, 1),
(8, 40, 'SECRETAR', 'Secretary', 0, 1),
(9, 45, 'EMPLOYEE', 'Department employee', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_incoterms`
--

CREATE TABLE IF NOT EXISTS `llx_c_incoterms` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_incoterms` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `llx_c_incoterms`
--

INSERT INTO `llx_c_incoterms` (`rowid`, `code`, `libelle`, `active`) VALUES
(1, 'EXW', 'Ex Works, au dÃ©part non chargÃ©, non dÃ©douanÃ© sortie d''usine (uniquement adaptÃ© aux flux domestiques, nationaux)', 1),
(2, 'FCA', 'Free Carrier, marchandises dÃ©douanÃ©es et chargÃ©es dans le pays de dÃ©part, chez le vendeur ou chez le commissionnaire de transport de l''acheteur', 1),
(3, 'FAS', 'Free Alongside Ship, sur le quai du port de dÃ©part', 1),
(4, 'FOB', 'Free On Board, chargÃ© sur le bateau, les frais de chargement dans celui-ci Ã©tant fonction du liner term indiquÃ© par la compagnie maritime (Ã  la charge du vendeur)', 1),
(5, 'CFR', 'Cost and Freight, chargÃ© dans le bateau, livraison au port de dÃ©part, frais payÃ©s jusqu''au port d''arrivÃ©e, sans assurance pour le transport, non dÃ©chargÃ© du navire Ã  destination (les frais de dÃ©chargement sont inclus ou non au port d''arrivÃ©e)', 1),
(6, 'CIF', 'Cost, Insurance and Freight, chargÃ© sur le bateau, frais jusqu''au port d''arrivÃ©e, avec l''assurance marchandise transportÃ©e souscrite par le vendeur pour le compte de l''acheteur', 1),
(7, 'CPT', 'Carriage Paid To, livraison au premier transporteur, frais jusqu''au dÃ©chargement du mode de transport, sans assurance pour le transport', 1),
(8, 'CIP', 'Carriage and Insurance Paid to, idem CPT, avec assurance marchandise transportÃ©e souscrite par le vendeur pour le compte de l''acheteur', 1),
(9, 'DAT', 'Delivered At Terminal, marchandises (dÃ©chargÃ©es) livrÃ©es sur quai, dans un terminal maritime, fluvial, aÃ©rien, routier ou ferroviaire dÃ©signÃ© (dÃ©douanement import, et post-acheminement payÃ©s par l''acheteur)', 1),
(10, 'DAP', 'Delivered At Place, marchandises (non dÃ©chargÃ©es) mises Ã  disposition de l''acheteur dans le pays d''importation au lieu prÃ©cisÃ© dans le contrat (dÃ©chargement, dÃ©douanement import payÃ© par l''acheteur)', 1),
(11, 'DDP', 'Delivered Duty Paid, marchandises (non dÃ©chargÃ©es) livrÃ©es Ã  destination finale, dÃ©douanement import et taxes Ã  la charge du vendeur ; l''acheteur prend en charge uniquement le dÃ©chargement (si exclusion des taxes type TVA, le prÃ©ciser clairement)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_input_method`
--

CREATE TABLE IF NOT EXISTS `llx_c_input_method` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `libelle` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_input_method` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `llx_c_input_method`
--

INSERT INTO `llx_c_input_method` (`rowid`, `code`, `libelle`, `active`, `module`) VALUES
(1, 'OrderByMail', 'Courrier', 1, NULL),
(2, 'OrderByFax', 'Fax', 1, NULL),
(3, 'OrderByEMail', 'EMail', 1, NULL),
(4, 'OrderByPhone', 'TÃ©lÃ©phone', 1, NULL),
(5, 'OrderByWWW', 'En ligne', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_input_reason`
--

CREATE TABLE IF NOT EXISTS `llx_c_input_reason` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `label` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_input_reason` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `llx_c_input_reason`
--

INSERT INTO `llx_c_input_reason` (`rowid`, `code`, `label`, `active`, `module`) VALUES
(1, 'SRC_INTE', 'Web site', 1, NULL),
(2, 'SRC_CAMP_MAIL', 'Mailing campaign', 1, NULL),
(3, 'SRC_CAMP_PHO', 'Phone campaign', 1, NULL),
(4, 'SRC_CAMP_FAX', 'Fax campaign', 1, NULL),
(5, 'SRC_COMM', 'Commercial contact', 1, NULL),
(6, 'SRC_SHOP', 'Shop contact', 1, NULL),
(7, 'SRC_CAMP_EMAIL', 'EMailing campaign', 1, NULL),
(8, 'SRC_WOM', 'Word of mouth', 1, NULL),
(9, 'SRC_PARTNER', 'Partner', 1, NULL),
(10, 'SRC_EMPLOYEE', 'Employee', 1, NULL),
(11, 'SRC_SPONSORING', 'Sponsorship', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_lead_status`
--

CREATE TABLE IF NOT EXISTS `llx_c_lead_status` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `percent` double(5,2) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_lead_status_code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `llx_c_lead_status`
--

INSERT INTO `llx_c_lead_status` (`rowid`, `code`, `label`, `position`, `percent`, `active`) VALUES
(1, 'PROSP', 'Prospection', 10, 0.00, 1),
(2, 'QUAL', 'Qualification', 20, 20.00, 1),
(3, 'PROPO', 'Proposal', 30, 40.00, 1),
(4, 'NEGO', 'Negotiation', 40, 60.00, 1),
(5, 'PENDING', 'Pending', 50, 50.00, 0),
(6, 'WON', 'Won', 60, 100.00, 1),
(7, 'LOST', 'Lost', 70, 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_paiement`
--

CREATE TABLE IF NOT EXISTS `llx_c_paiement` (
  `id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `libelle` varchar(62) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code` varchar(32) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_paiement` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_paiement`
--

INSERT INTO `llx_c_paiement` (`id`, `code`, `libelle`, `type`, `active`, `accountancy_code`, `module`) VALUES
(0, '', '-', 3, 1, NULL, NULL),
(1, 'TIP', 'TIP', 2, 0, NULL, NULL),
(2, 'VIR', 'Virement', 2, 1, NULL, NULL),
(3, 'PRE', 'PrÃ©lÃ¨vement', 2, 1, NULL, NULL),
(4, 'LIQ', 'EspÃ¨ces', 2, 1, NULL, NULL),
(6, 'CB', 'Carte Bancaire', 2, 1, NULL, NULL),
(7, 'CHQ', 'ChÃ¨que', 2, 1, NULL, NULL),
(50, 'VAD', 'Paiement en ligne', 2, 0, NULL, NULL),
(51, 'TRA', 'Traite', 2, 0, NULL, NULL),
(52, 'LCR', 'LCR', 2, 0, NULL, NULL),
(53, 'FAC', 'Factor', 2, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_paper_format`
--

CREATE TABLE IF NOT EXISTS `llx_c_paper_format` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `label` varchar(50) NOT NULL,
  `width` float(6,2) DEFAULT '0.00',
  `height` float(6,2) DEFAULT '0.00',
  `unit` varchar(5) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

--
-- Dumping data for table `llx_c_paper_format`
--

INSERT INTO `llx_c_paper_format` (`rowid`, `code`, `label`, `width`, `height`, `unit`, `active`, `module`) VALUES
(1, 'EU4A0', 'Format 4A0', 1682.00, 2378.00, 'mm', 1, NULL),
(2, 'EU2A0', 'Format 2A0', 1189.00, 1682.00, 'mm', 1, NULL),
(3, 'EUA0', 'Format A0', 840.00, 1189.00, 'mm', 1, NULL),
(4, 'EUA1', 'Format A1', 594.00, 840.00, 'mm', 1, NULL),
(5, 'EUA2', 'Format A2', 420.00, 594.00, 'mm', 1, NULL),
(6, 'EUA3', 'Format A3', 297.00, 420.00, 'mm', 1, NULL),
(7, 'EUA4', 'Format A4', 210.00, 297.00, 'mm', 1, NULL),
(8, 'EUA5', 'Format A5', 148.00, 210.00, 'mm', 1, NULL),
(9, 'EUA6', 'Format A6', 105.00, 148.00, 'mm', 1, NULL),
(100, 'USLetter', 'Format Letter (A)', 216.00, 279.00, 'mm', 1, NULL),
(105, 'USLegal', 'Format Legal', 216.00, 356.00, 'mm', 1, NULL),
(110, 'USExecutive', 'Format Executive', 190.00, 254.00, 'mm', 1, NULL),
(115, 'USLedger', 'Format Ledger/Tabloid (B)', 279.00, 432.00, 'mm', 1, NULL),
(200, 'CAP1', 'Format Canadian P1', 560.00, 860.00, 'mm', 1, NULL),
(205, 'CAP2', 'Format Canadian P2', 430.00, 560.00, 'mm', 1, NULL),
(210, 'CAP3', 'Format Canadian P3', 280.00, 430.00, 'mm', 1, NULL),
(215, 'CAP4', 'Format Canadian P4', 215.00, 280.00, 'mm', 1, NULL),
(220, 'CAP5', 'Format Canadian P5', 140.00, 215.00, 'mm', 1, NULL),
(225, 'CAP6', 'Format Canadian P6', 107.00, 140.00, 'mm', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_payment_term`
--

CREATE TABLE IF NOT EXISTS `llx_c_payment_term` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `libelle` varchar(255) DEFAULT NULL,
  `libelle_facture` text,
  `fdm` tinyint(4) DEFAULT NULL,
  `nbjour` smallint(6) DEFAULT NULL,
  `decalage` smallint(6) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_payment_term`
--

INSERT INTO `llx_c_payment_term` (`rowid`, `code`, `sortorder`, `active`, `libelle`, `libelle_facture`, `fdm`, `nbjour`, `decalage`, `module`) VALUES
(1, 'RECEP', 1, 1, 'A rÃ©ception de facture', 'RÃ©ception de facture', 0, 1, NULL, NULL),
(2, '30D', 2, 1, '30 jours', 'RÃ©glement Ã  30 jours', 0, 30, NULL, NULL),
(3, '30DENDMONTH', 3, 1, '30 jours fin de mois', 'RÃ©glement Ã  30 jours fin de mois', 1, 30, NULL, NULL),
(4, '60D', 4, 1, '60 jours', 'RÃ©glement Ã  60 jours', 0, 60, NULL, NULL),
(5, '60DENDMONTH', 5, 1, '60 jours fin de mois', 'RÃ©glement Ã  60 jours fin de mois', 1, 60, NULL, NULL),
(6, 'PT_ORDER', 6, 1, 'A rÃ©ception de commande', 'A rÃ©ception de commande', 0, 1, NULL, NULL),
(7, 'PT_DELIVERY', 7, 1, 'Livraison', 'RÃ¨glement Ã  la livraison', 0, 1, NULL, NULL),
(8, 'PT_5050', 8, 1, '50 et 50', 'RÃ¨glement 50% Ã  la commande, 50% Ã  la livraison', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_price_expression`
--

CREATE TABLE IF NOT EXISTS `llx_c_price_expression` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `expression` varchar(80) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_price_global_variable`
--

CREATE TABLE IF NOT EXISTS `llx_c_price_global_variable` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `description` text,
  `value` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_price_global_variable_updater`
--

CREATE TABLE IF NOT EXISTS `llx_c_price_global_variable_updater` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `description` text,
  `parameters` text,
  `fk_variable` int(11) NOT NULL,
  `update_interval` int(11) DEFAULT '0',
  `next_update` int(11) DEFAULT '0',
  `last_status` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_propalst`
--

CREATE TABLE IF NOT EXISTS `llx_c_propalst` (
  `id` smallint(6) NOT NULL,
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_propalst` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_propalst`
--

INSERT INTO `llx_c_propalst` (`id`, `code`, `label`, `active`) VALUES
(0, 'PR_DRAFT', 'Brouillon', 1),
(1, 'PR_OPEN', 'Ouverte', 1),
(2, 'PR_SIGNED', 'SignÃ©e', 1),
(3, 'PR_NOTSIGNED', 'Non SignÃ©e', 1),
(4, 'PR_FAC', 'FacturÃ©e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_prospectlevel`
--

CREATE TABLE IF NOT EXISTS `llx_c_prospectlevel` (
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_prospectlevel`
--

INSERT INTO `llx_c_prospectlevel` (`code`, `label`, `sortorder`, `active`, `module`) VALUES
('PL_HIGH', 'High', 4, 1, NULL),
('PL_LOW', 'Low', 2, 1, NULL),
('PL_MEDIUM', 'Medium', 3, 1, NULL),
('PL_NONE', 'None', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_regions`
--

CREATE TABLE IF NOT EXISTS `llx_c_regions` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code_region` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_code_region` (`code_region`),
  KEY `idx_c_regions_fk_pays` (`fk_pays`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `llx_c_regions`
--

INSERT INTO `llx_c_regions` (`rowid`, `code_region`, `fk_pays`, `cheflieu`, `tncc`, `nom`, `active`) VALUES
(1, 0, 0, '0', 0, '-', 1),
(2, 1, 1, '97105', 3, 'Guadeloupe', 1),
(3, 2, 1, '97209', 3, 'Martinique', 1),
(4, 3, 1, '97302', 3, 'Guyane', 1),
(5, 4, 1, '97411', 3, 'RÃ©union', 1),
(6, 6, 1, '97601', 3, 'Mayotte', 1),
(7, 11, 1, '75056', 1, 'ÃŽle-de-France', 1),
(8, 21, 1, '51108', 0, 'Champagne-Ardenne', 1),
(9, 22, 1, '80021', 0, 'Picardie', 1),
(10, 23, 1, '76540', 0, 'Haute-Normandie', 1),
(11, 24, 1, '45234', 2, 'Centre', 1),
(12, 25, 1, '14118', 0, 'Basse-Normandie', 1),
(13, 26, 1, '21231', 0, 'Bourgogne', 1),
(14, 31, 1, '59350', 2, 'Nord-Pas-de-Calais', 1),
(15, 41, 1, '57463', 0, 'Lorraine', 1),
(16, 42, 1, '67482', 1, 'Alsace', 1),
(17, 43, 1, '25056', 0, 'Franche-ComtÃ©', 1),
(18, 52, 1, '44109', 4, 'Pays de la Loire', 1),
(19, 53, 1, '35238', 0, 'Bretagne', 1),
(20, 54, 1, '86194', 2, 'Poitou-Charentes', 1),
(21, 72, 1, '33063', 1, 'Aquitaine', 1),
(22, 73, 1, '31555', 0, 'Midi-PyrÃ©nÃ©es', 1),
(23, 74, 1, '87085', 2, 'Limousin', 1),
(24, 82, 1, '69123', 2, 'RhÃ´ne-Alpes', 1),
(25, 83, 1, '63113', 1, 'Auvergne', 1),
(26, 91, 1, '34172', 2, 'Languedoc-Roussillon', 1),
(27, 93, 1, '13055', 0, 'Provence-Alpes-CÃ´te d''Azur', 1),
(28, 94, 1, '2A004', 0, 'Corse', 1),
(29, 4101, 41, '', 0, 'Ã–sterreich', 1),
(30, 201, 2, '', 1, 'Flandre', 1),
(31, 202, 2, '', 2, 'Wallonie', 1),
(32, 203, 2, '', 3, 'Bruxelles-Capitale', 1),
(33, 301, 3, NULL, 1, 'Abruzzo', 1),
(34, 302, 3, NULL, 1, 'Basilicata', 1),
(35, 303, 3, NULL, 1, 'Calabria', 1),
(36, 304, 3, NULL, 1, 'Campania', 1),
(37, 305, 3, NULL, 1, 'Emilia-Romagna', 1),
(38, 306, 3, NULL, 1, 'Friuli-Venezia Giulia', 1),
(39, 307, 3, NULL, 1, 'Lazio', 1),
(40, 308, 3, NULL, 1, 'Liguria', 1),
(41, 309, 3, NULL, 1, 'Lombardia', 1),
(42, 310, 3, NULL, 1, 'Marche', 1),
(43, 311, 3, NULL, 1, 'Molise', 1),
(44, 312, 3, NULL, 1, 'Piemonte', 1),
(45, 313, 3, NULL, 1, 'Puglia', 1),
(46, 314, 3, NULL, 1, 'Sardegna', 1),
(47, 315, 3, NULL, 1, 'Sicilia', 1),
(48, 316, 3, NULL, 1, 'Toscana', 1),
(49, 317, 3, NULL, 1, 'Trentino-Alto Adige', 1),
(50, 318, 3, NULL, 1, 'Umbria', 1),
(51, 319, 3, NULL, 1, 'Valle d Aosta', 1),
(52, 320, 3, NULL, 1, 'Veneto', 1),
(53, 401, 4, '', 0, 'Andalucia', 1),
(54, 402, 4, '', 0, 'AragÃ³n', 1),
(55, 403, 4, '', 0, 'Castilla y LeÃ³n', 1),
(56, 404, 4, '', 0, 'Castilla la Mancha', 1),
(57, 405, 4, '', 0, 'Canarias', 1),
(58, 406, 4, '', 0, 'CataluÃ±a', 1),
(59, 407, 4, '', 0, 'Comunidad de Ceuta', 1),
(60, 408, 4, '', 0, 'Comunidad Foral de Navarra', 1),
(61, 409, 4, '', 0, 'Comunidad de Melilla', 1),
(62, 410, 4, '', 0, 'Cantabria', 1),
(63, 411, 4, '', 0, 'Comunidad Valenciana', 1),
(64, 412, 4, '', 0, 'Extemadura', 1),
(65, 413, 4, '', 0, 'Galicia', 1),
(66, 414, 4, '', 0, 'Islas Baleares', 1),
(67, 415, 4, '', 0, 'La Rioja', 1),
(68, 416, 4, '', 0, 'Comunidad de Madrid', 1),
(69, 417, 4, '', 0, 'RegiÃ³n de Murcia', 1),
(70, 418, 4, '', 0, 'Principado de Asturias', 1),
(71, 419, 4, '', 0, 'Pais Vasco', 1),
(72, 420, 4, '', 0, 'Otros', 1),
(73, 501, 5, '', 0, 'Deutschland', 1),
(74, 10201, 102, NULL, NULL, '??????', 1),
(75, 10202, 102, NULL, NULL, '?????? ??????', 1),
(76, 10203, 102, NULL, NULL, '???????? ?????????', 1),
(77, 10204, 102, NULL, NULL, '?????', 1),
(78, 10205, 102, NULL, NULL, '????????? ????????? ??? ?????', 1),
(79, 10206, 102, NULL, NULL, '???????', 1),
(80, 10207, 102, NULL, NULL, '????? ?????', 1),
(81, 10208, 102, NULL, NULL, '?????? ??????', 1),
(82, 10209, 102, NULL, NULL, '????????????', 1),
(83, 10210, 102, NULL, NULL, '????? ??????', 1),
(84, 10211, 102, NULL, NULL, '?????? ??????', 1),
(85, 10212, 102, NULL, NULL, '????????', 1),
(86, 10213, 102, NULL, NULL, '?????? ?????????', 1),
(87, 601, 6, '', 1, 'Cantons', 1),
(88, 701, 7, '', 0, 'England', 1),
(89, 702, 7, '', 0, 'Wales', 1),
(90, 703, 7, '', 0, 'Scotland', 1),
(91, 704, 7, '', 0, 'Northern Ireland', 1),
(92, 1001, 10, '', 0, 'Ariana', 1),
(93, 1002, 10, '', 0, 'BÃ©ja', 1),
(94, 1003, 10, '', 0, 'Ben Arous', 1),
(95, 1004, 10, '', 0, 'Bizerte', 1),
(96, 1005, 10, '', 0, 'GabÃ¨s', 1),
(97, 1006, 10, '', 0, 'Gafsa', 1),
(98, 1007, 10, '', 0, 'Jendouba', 1),
(99, 1008, 10, '', 0, 'Kairouan', 1),
(100, 1009, 10, '', 0, 'Kasserine', 1),
(101, 1010, 10, '', 0, 'KÃ©bili', 1),
(102, 1011, 10, '', 0, 'La Manouba', 1),
(103, 1012, 10, '', 0, 'Le Kef', 1),
(104, 1013, 10, '', 0, 'Mahdia', 1),
(105, 1014, 10, '', 0, 'MÃ©denine', 1),
(106, 1015, 10, '', 0, 'Monastir', 1),
(107, 1016, 10, '', 0, 'Nabeul', 1),
(108, 1017, 10, '', 0, 'Sfax', 1),
(109, 1018, 10, '', 0, 'Sidi Bouzid', 1),
(110, 1019, 10, '', 0, 'Siliana', 1),
(111, 1020, 10, '', 0, 'Sousse', 1),
(112, 1021, 10, '', 0, 'Tataouine', 1),
(113, 1022, 10, '', 0, 'Tozeur', 1),
(114, 1023, 10, '', 0, 'Tunis', 1),
(115, 1024, 10, '', 0, 'Zaghouan', 1),
(116, 1101, 11, '', 0, 'United-States', 1),
(117, 1301, 13, '', 0, 'Algerie', 1),
(118, 1401, 14, '', 0, 'Canada', 1),
(119, 1701, 17, '', 0, 'Provincies van Nederland ', 1),
(120, 2301, 23, '', 0, 'Norte', 1),
(121, 2302, 23, '', 0, 'Litoral', 1),
(122, 2303, 23, '', 0, 'Cuyana', 1),
(123, 2304, 23, '', 0, 'Central', 1),
(124, 2305, 23, '', 0, 'Patagonia', 1),
(125, 2801, 28, '', 0, 'Australia', 1),
(126, 4601, 46, '', 0, 'Barbados', 1),
(127, 5201, 52, '', 0, 'Chuquisaca', 1),
(128, 5202, 52, '', 0, 'La Paz', 1),
(129, 5203, 52, '', 0, 'Cochabamba', 1),
(130, 5204, 52, '', 0, 'Oruro', 1),
(131, 5205, 52, '', 0, 'PotosÃ­', 1),
(132, 5206, 52, '', 0, 'Tarija', 1),
(133, 5207, 52, '', 0, 'Santa Cruz', 1),
(134, 5208, 52, '', 0, 'El Beni', 1),
(135, 5209, 52, '', 0, 'Pando', 1),
(136, 5601, 56, '', 0, 'Brasil', 1),
(137, 7001, 70, '', 0, 'Colombie', 1),
(138, 6701, 67, NULL, NULL, 'TarapacÃ¡', 1),
(139, 6702, 67, NULL, NULL, 'Antofagasta', 1),
(140, 6703, 67, NULL, NULL, 'Atacama', 1),
(141, 6704, 67, NULL, NULL, 'Coquimbo', 1),
(142, 6705, 67, NULL, NULL, 'ValparaÃ­so', 1),
(143, 6706, 67, NULL, NULL, 'General Bernardo O Higgins', 1),
(144, 6707, 67, NULL, NULL, 'Maule', 1),
(145, 6708, 67, NULL, NULL, 'BiobÃ­o', 1),
(146, 6709, 67, NULL, NULL, 'RaucanÃ­a', 1),
(147, 6710, 67, NULL, NULL, 'Los Lagos', 1),
(148, 6711, 67, NULL, NULL, 'AysÃ©n General Carlos IbÃ¡Ã±ez del Campo', 1),
(149, 6712, 67, NULL, NULL, 'Magallanes y AntÃ¡rtica Chilena', 1),
(150, 6713, 67, NULL, NULL, 'Metropolitana de Santiago', 1),
(151, 6714, 67, NULL, NULL, 'Los RÃ­os', 1),
(152, 6715, 67, NULL, NULL, 'Arica y Parinacota', 1),
(153, 8601, 86, NULL, NULL, 'Central', 1),
(154, 8602, 86, NULL, NULL, 'Oriental', 1),
(155, 8603, 86, NULL, NULL, 'Occidental', 1),
(156, 11401, 114, '', 0, 'Honduras', 1),
(157, 11701, 117, '', 0, 'India', 1),
(158, 1201, 12, '', 0, 'Tanger-TÃ©touan', 1),
(159, 1202, 12, '', 0, 'Gharb-Chrarda-Beni Hssen', 1),
(160, 1203, 12, '', 0, 'Taza-Al Hoceima-Taounate', 1),
(161, 1204, 12, '', 0, 'L''Oriental', 1),
(162, 1205, 12, '', 0, 'FÃ¨s-Boulemane', 1),
(163, 1206, 12, '', 0, 'MeknÃ¨s-Tafialet', 1),
(164, 1207, 12, '', 0, 'Rabat-SalÃ©-Zemour-ZaÃ«r', 1),
(165, 1208, 12, '', 0, 'Grand Cassablanca', 1),
(166, 1209, 12, '', 0, 'Chaouia-Ouardigha', 1),
(167, 1210, 12, '', 0, 'Doukahla-Adba', 1),
(168, 1211, 12, '', 0, 'Marrakech-Tensift-Al Haouz', 1),
(169, 1212, 12, '', 0, 'Tadla-Azilal', 1),
(170, 1213, 12, '', 0, 'Sous-Massa-DrÃ¢a', 1),
(171, 1214, 12, '', 0, 'Guelmim-Es Smara', 1),
(172, 1215, 12, '', 0, 'LaÃ¢youne-Boujdour-Sakia el Hamra', 1),
(173, 1216, 12, '', 0, 'Oued Ed-Dahab Lagouira', 1),
(174, 14001, 140, '', 0, 'Diekirch', 1),
(175, 14002, 140, '', 0, 'Grevenmacher', 1),
(176, 14003, 140, '', 0, 'Luxembourg', 1),
(177, 15201, 152, '', 0, 'RiviÃ¨re Noire', 1),
(178, 15202, 152, '', 0, 'Flacq', 1),
(179, 15203, 152, '', 0, 'Grand Port', 1),
(180, 15204, 152, '', 0, 'Moka', 1),
(181, 15205, 152, '', 0, 'Pamplemousses', 1),
(182, 15206, 152, '', 0, 'Plaines Wilhems', 1),
(183, 15207, 152, '', 0, 'Port-Louis', 1),
(184, 15208, 152, '', 0, 'RiviÃ¨re du Rempart', 1),
(185, 15209, 152, '', 0, 'Savanne', 1),
(186, 15210, 152, '', 0, 'Rodrigues', 1),
(187, 15211, 152, '', 0, 'Les Ã®les AgalÃ©ga', 1),
(188, 15212, 152, '', 0, 'Les Ã©cueils des Cargados Carajos', 1),
(189, 15401, 154, '', 0, 'Mexique', 1),
(190, 18801, 188, '', 0, 'Romania', 1),
(191, 23201, 232, '', 0, 'Los Andes', 1),
(192, 23202, 232, '', 0, 'Capital', 1),
(193, 23203, 232, '', 0, 'Central', 1),
(194, 23204, 232, '', 0, 'Cento Occidental', 1),
(195, 23205, 232, '', 0, 'Guayana', 1),
(196, 23206, 232, '', 0, 'Insular', 1),
(197, 23207, 232, '', 0, 'Los Llanos', 1),
(198, 23208, 232, '', 0, 'Nor-Oriental', 1),
(199, 23209, 232, '', 0, 'Zuliana', 1),
(200, 18101, 181, '', 0, 'Amazonas', 1),
(201, 18102, 181, '', 0, 'Ancash', 1),
(202, 18103, 181, '', 0, 'Apurimac', 1),
(203, 18104, 181, '', 0, 'Arequipa', 1),
(204, 18105, 181, '', 0, 'Ayacucho', 1),
(205, 18106, 181, '', 0, 'Cajamarca', 1),
(206, 18107, 181, '', 0, 'Callao', 1),
(207, 18108, 181, '', 0, 'Cuzco', 1),
(208, 18109, 181, '', 0, 'Huancavelica', 1),
(209, 18110, 181, '', 0, 'Huanuco', 1),
(210, 18111, 181, '', 0, 'Ica', 1),
(211, 18112, 181, '', 0, 'Junin', 1),
(212, 18113, 181, '', 0, 'La Libertad', 1),
(213, 18114, 181, '', 0, 'Lambayeque', 1),
(214, 18115, 181, '', 0, 'Lima Metropolitana', 1),
(215, 18116, 181, '', 0, 'Lima', 1),
(216, 18117, 181, '', 0, 'Loreto', 1),
(217, 18118, 181, '', 0, 'Madre de Dios', 1),
(218, 18119, 181, '', 0, 'Moquegua', 1),
(219, 18120, 181, '', 0, 'Pasco', 1),
(220, 18121, 181, '', 0, 'Piura', 1),
(221, 18122, 181, '', 0, 'Puno', 1),
(222, 18123, 181, '', 0, 'San MartÃ­n', 1),
(223, 18124, 181, '', 0, 'Tacna', 1),
(224, 18125, 181, '', 0, 'Tumbes', 1),
(225, 18126, 181, '', 0, 'Ucayali', 1),
(226, 17801, 178, '', 0, 'Panama', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_revenuestamp`
--

CREATE TABLE IF NOT EXISTS `llx_c_revenuestamp` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pays` int(11) NOT NULL,
  `taux` double NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(32) DEFAULT NULL,
  `accountancy_code_buy` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `llx_c_revenuestamp`
--

INSERT INTO `llx_c_revenuestamp` (`rowid`, `fk_pays`, `taux`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(101, 10, 0.4, 'Revenue stamp tunisia', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_shipment_mode`
--

CREATE TABLE IF NOT EXISTS `llx_c_shipment_mode` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(30) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `description` text,
  `tracking` varchar(255) NOT NULL,
  `active` tinyint(4) DEFAULT '0',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_shipment_mode` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `llx_c_shipment_mode`
--

INSERT INTO `llx_c_shipment_mode` (`rowid`, `tms`, `code`, `libelle`, `description`, `tracking`, `active`, `module`) VALUES
(1, '2006-01-02 00:02:00', 'CATCH', 'Catch', 'Catch by client', '', 1, NULL),
(2, '2006-01-02 00:02:00', 'TRANS', 'Transporter', 'Generic transporter', '', 1, NULL),
(3, '2006-01-02 00:02:00', 'COLSUI', 'Colissimo Suivi', 'Colissimo Suivi', 'http://www.colissimo.fr/portail_colissimo/suivre.do?colispart={TRACKID}', 0, NULL),
(4, '2006-01-02 00:02:00', 'LETTREMAX', 'Lettre Max', 'Courrier Suivi et Lettre Max', '', 0, NULL),
(5, '2006-01-02 00:02:00', 'UPS', 'UPS', 'United Parcel Service', 'http://wwwapps.ups.com/etracking/tracking.cgi?InquiryNumber2=&InquiryNumber3=&tracknums_displayed=3&loc=fr_FR&TypeOfInquiryNumber=T&HTMLVersion=4.0&InquiryNumber22=&InquiryNumber32=&track=Track&Suivi.x=64&Suivi.y=7&Suivi=Valider&InquiryNumber1={TRACKID}', 0, NULL),
(6, '2006-01-02 00:02:00', 'KIALA', 'KIALA', 'Relais Kiala', 'http://www.kiala.fr/tnt/delivery/{TRACKID}', 0, NULL),
(7, '2006-01-02 00:02:00', 'GLS', 'GLS', 'General Logistics Systems', 'https://gls-group.eu/FR/fr/suivi-colis?match={TRACKID}', 0, NULL),
(8, '2006-01-02 00:02:00', 'CHRONO', 'Chronopost', 'Chronopost', 'http://www.chronopost.fr/expedier/inputLTNumbersNoJahia.do?listeNumeros={TRACKID}', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_stcomm`
--

CREATE TABLE IF NOT EXISTS `llx_c_stcomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `picto` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_stcomm` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_stcomm`
--

INSERT INTO `llx_c_stcomm` (`id`, `code`, `libelle`, `picto`, `active`) VALUES
(-1, 'ST_NO', 'Do not contact', NULL, 1),
(0, 'ST_NEVER', 'Never contacted', NULL, 1),
(1, 'ST_TODO', 'To contact', NULL, 1),
(2, 'ST_PEND', 'Contact in progress', NULL, 1),
(3, 'ST_DONE', 'Contacted', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_tva`
--

CREATE TABLE IF NOT EXISTS `llx_c_tva` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pays` int(11) NOT NULL,
  `code` varchar(10) DEFAULT '',
  `taux` double NOT NULL,
  `localtax1` varchar(20) NOT NULL DEFAULT '0',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2` varchar(20) NOT NULL DEFAULT '0',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(32) DEFAULT NULL,
  `accountancy_code_buy` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_tva_id` (`fk_pays`,`code`,`taux`,`recuperableonly`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2469 ;

--
-- Dumping data for table `llx_c_tva`
--

INSERT INTO `llx_c_tva` (`rowid`, `fk_pays`, `code`, `taux`, `localtax1`, `localtax1_type`, `localtax2`, `localtax2_type`, `recuperableonly`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(11, 1, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate (France hors DOM-TOM)', 1, NULL, NULL),
(12, 1, '', 8.5, '0', '0', '0', '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(13, 1, '', 8.5, '0', '0', '0', '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perÃ§u par le vendeur mais rÃ©cupÃ©rable par acheteur', 0, NULL, NULL),
(14, 1, '', 5.5, '0', '0', '0', '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 1, NULL, NULL),
(15, 1, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(16, 1, '', 2.1, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(17, 1, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(21, 2, '', 21, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(22, 2, '', 6, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(23, 2, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(24, 2, '', 12, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(31, 3, '', 22, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(32, 3, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(33, 3, '', 4, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(34, 3, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(41, 4, '', 21, '5.2', '3', '-19:-15:-9', '5', 0, 'VAT standard rate', 1, NULL, NULL),
(42, 4, '', 10, '1.4', '3', '-19:-15:-9', '5', 0, 'VAT reduced rate', 1, NULL, NULL),
(43, 4, '', 4, '0.5', '3', '-19:-15:-9', '5', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(44, 4, '', 0, '0', '3', '-19:-15:-9', '5', 0, 'VAT Rate 0', 1, NULL, NULL),
(51, 5, '', 19, '0', '0', '0', '0', 0, 'allgemeine Ust.', 1, NULL, NULL),
(52, 5, '', 7, '0', '0', '0', '0', 0, 'ermÃ¤ÃŸigte USt.', 1, NULL, NULL),
(53, 5, '', 0, '0', '0', '0', '0', 0, 'keine USt.', 1, NULL, NULL),
(54, 5, '', 5.5, '0', '0', '0', '0', 0, 'USt. Forst', 0, NULL, NULL),
(55, 5, '', 10.7, '0', '0', '0', '0', 0, 'USt. Landwirtschaft', 0, NULL, NULL),
(61, 6, '', 8, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(62, 6, '', 3.8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(63, 6, '', 2.5, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(64, 6, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(71, 7, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(72, 7, '', 17.5, '0', '0', '0', '0', 0, 'VAT standard rate before 2011', 1, NULL, NULL),
(73, 7, '', 5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(74, 7, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(81, 8, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(82, 8, '', 23, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(83, 8, '', 13.5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(84, 8, '', 9, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(85, 8, '', 4.8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(91, 9, '', 17, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(92, 9, '', 13, '0', '0', '0', '0', 0, 'VAT reduced rate 0', 1, NULL, NULL),
(93, 9, '', 3, '0', '0', '0', '0', 0, 'VAT super reduced rate 0', 1, NULL, NULL),
(94, 9, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(101, 10, '', 6, '1', '4', '0', '0', 0, 'VAT 6%', 1, NULL, NULL),
(102, 10, '', 12, '1', '4', '0', '0', 0, 'VAT 12%', 1, NULL, NULL),
(103, 10, '', 18, '1', '4', '0', '0', 0, 'VAT 18%', 1, NULL, NULL),
(104, 10, '', 7.5, '1', '4', '0', '0', 0, 'VAT 6% MajorÃ© Ã  25% (7.5%)', 1, NULL, NULL),
(105, 10, '', 15, '1', '4', '0', '0', 0, 'VAT 12% MajorÃ© Ã  25% (15%)', 1, NULL, NULL),
(106, 10, '', 22.5, '1', '4', '0', '0', 0, 'VAT 18% MajorÃ© Ã  25% (22.5%)', 1, NULL, NULL),
(107, 10, '', 0, '1', '4', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(111, 11, '', 0, '0', '0', '0', '0', 0, 'No Sales Tax', 1, NULL, NULL),
(112, 11, '', 4, '0', '0', '0', '0', 0, 'Sales Tax 4%', 1, NULL, NULL),
(113, 11, '', 6, '0', '0', '0', '0', 0, 'Sales Tax 6%', 1, NULL, NULL),
(121, 12, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(122, 12, '', 14, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(123, 12, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(124, 12, '', 7, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(125, 12, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(141, 14, '', 7, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(142, 14, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(143, 14, '', 5, '9.975', '1', '0', '0', 0, 'GST/TPS and PST/TVQ rate for Province', 1, NULL, NULL),
(171, 17, '', 19, '0', '0', '0', '0', 0, 'Algemeen BTW tarief', 1, NULL, NULL),
(172, 17, '', 6, '0', '0', '0', '0', 0, 'Verlaagd BTW tarief', 1, NULL, NULL),
(173, 17, '', 0, '0', '0', '0', '0', 0, '0 BTW tarief', 1, NULL, NULL),
(174, 17, '', 21, '0', '0', '0', '0', 0, 'Algemeen BTW tarief (vanaf 1 oktober 2012)', 0, NULL, NULL),
(201, 20, '', 25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(202, 20, '', 12, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(203, 20, '', 6, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(204, 20, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(211, 21, '', 0, '0', '0', '0', '0', 0, 'IVA Rate 0', 1, NULL, NULL),
(212, 21, '', 18, '7.5', '2', '0', '0', 0, 'IVA standard rate', 1, NULL, NULL),
(221, 22, '', 18, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(222, 22, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(223, 22, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(231, 23, '', 21, '0', '0', '0', '0', 0, 'IVA standard rate', 1, NULL, NULL),
(232, 23, '', 10.5, '0', '0', '0', '0', 0, 'IVA reduced rate', 1, NULL, NULL),
(233, 23, '', 0, '0', '0', '0', '0', 0, 'IVA Rate 0', 1, NULL, NULL),
(241, 24, '', 19.25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(242, 24, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(251, 25, '', 23, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(252, 25, '', 13, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(253, 25, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(254, 25, '', 6, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(261, 26, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(271, 27, '', 19.6, '0', '0', '0', '0', 0, 'VAT standard rate (France hors DOM-TOM)', 1, NULL, NULL),
(272, 27, '', 8.5, '0', '0', '0', '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(273, 27, '', 8.5, '0', '0', '0', '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perÃ§u par le vendeur mais rÃ©cupÃ©rable par acheteur', 0, NULL, NULL),
(274, 27, '', 5.5, '0', '0', '0', '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 0, NULL, NULL),
(275, 27, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0 ou non applicable', 1, NULL, NULL),
(276, 27, '', 2.1, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(277, 27, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(281, 28, '', 10, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(282, 28, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(411, 41, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(412, 41, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(413, 41, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(461, 46, '', 0, '0', '0', '0', '0', 0, 'No VAT', 1, NULL, NULL),
(462, 46, '', 15, '0', '0', '0', '0', 0, 'VAT 15%', 1, NULL, NULL),
(463, 46, '', 7.5, '0', '0', '0', '0', 0, 'VAT 7.5%', 1, NULL, NULL),
(561, 56, '', 0, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(591, 59, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(592, 59, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(593, 59, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(671, 67, '', 19, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(672, 67, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(781, 78, '', 19, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(784, 78, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(801, 80, '', 25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(802, 80, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(861, 86, '', 13, '0', '0', '0', '0', 0, 'IVA 13', 1, NULL, NULL),
(862, 86, '', 0, '0', '0', '0', '0', 0, 'SIN IVA', 1, NULL, NULL),
(1141, 114, '', 0, '0', '0', '0', '0', 0, 'No ISV', 1, NULL, NULL),
(1142, 114, '', 12, '0', '0', '0', '0', 0, 'ISV 12%', 1, NULL, NULL),
(1161, 116, '', 25.5, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1162, 116, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1163, 116, '', 0, '0', '0', '0', '0', 0, 'VAT rate 0', 1, NULL, NULL),
(1171, 117, '', 12.5, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1172, 117, '', 4, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1173, 117, '', 1, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(1174, 117, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1231, 123, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1232, 123, '', 5, '0', '0', '0', '0', 0, 'VAT Rate 5', 1, NULL, NULL),
(1401, 140, '', 17, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1402, 140, '', 14, '0', '0', '0', '0', 0, 'VAT intermediary rate', 1, NULL, NULL),
(1403, 140, '', 8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1404, 140, '', 3, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(1405, 140, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1481, 148, '', 18, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1482, 148, '', 7, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1483, 148, '', 5, '0', '0', '0', '0', 0, 'VAT super-reduced rate', 1, NULL, NULL),
(1484, 148, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1511, 151, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1512, 151, '', 14, '0', '0', '0', '0', 0, 'VAT Rate 14', 1, NULL, NULL),
(1521, 152, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1522, 152, '', 15, '0', '0', '0', '0', 0, 'VAT Rate 15', 1, NULL, NULL),
(1541, 154, '', 0, '0', '0', '0', '0', 0, 'No VAT', 1, NULL, NULL),
(1542, 154, '', 16, '0', '0', '0', '0', 0, 'VAT 16%', 1, NULL, NULL),
(1543, 154, '', 10, '0', '0', '0', '0', 0, 'VAT Frontero', 1, NULL, NULL),
(1662, 166, '', 15, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1663, 166, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1692, 169, '', 5, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1693, 169, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1731, 173, '', 25, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1732, 173, '', 14, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1733, 173, '', 8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1734, 173, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1781, 178, '', 7, '0', '0', '0', '0', 0, 'ITBMS standard rate', 1, NULL, NULL),
(1782, 178, '', 0, '0', '0', '0', '0', 0, 'ITBMS Rate 0', 1, NULL, NULL),
(1811, 181, '', 18, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1812, 181, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1841, 184, '', 23, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1842, 184, '', 8, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1843, 184, '', 3, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1844, 184, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1881, 188, '', 20, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(1882, 188, '', 9, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1883, 188, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(1884, 188, '', 5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(1931, 193, '', 0, '0', '0', '0', '0', 0, 'No VAT in SPM', 1, NULL, NULL),
(2011, 201, '', 19, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(2012, 201, '', 10, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(2013, 201, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2021, 202, '', 22, '0', '0', '0', '0', 0, 'VAT standard rate', 1, NULL, NULL),
(2022, 202, '', 9.5, '0', '0', '0', '0', 0, 'VAT reduced rate', 1, NULL, NULL),
(2023, 202, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2051, 205, '', 0, '0', '0', '0', '0', 0, 'No VAT', 1, NULL, NULL),
(2052, 205, '', 14, '0', '0', '0', '0', 0, 'VAT 14%', 1, NULL, NULL),
(2131, 213, '', 5, '0', '0', '0', '0', 0, 'VAT 5%', 1, NULL, NULL),
(2261, 226, '', 20, '0', '0', '0', '0', 0, 'VAT standart rate', 1, NULL, NULL),
(2262, 226, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2321, 232, '', 0, '0', '0', '0', '0', 0, 'No VAT', 1, NULL, NULL),
(2322, 232, '', 12, '0', '0', '0', '0', 0, 'VAT 12%', 1, NULL, NULL),
(2323, 232, '', 8, '0', '0', '0', '0', 0, 'VAT 8%', 1, NULL, NULL),
(2461, 246, '', 0, '0', '0', '0', '0', 0, 'VAT Rate 0', 1, NULL, NULL),
(2462, 102, '', 24, '0', '0', '0', '0', 0, '????????? ?.?.?.', 1, NULL, NULL),
(2463, 102, '', 0, '0', '0', '0', '0', 0, '???????? ?.?.?.', 1, NULL, NULL),
(2464, 102, '', 13, '0', '0', '0', '0', 0, '????????? ?.?.?.', 1, NULL, NULL),
(2465, 102, '', 6.5, '0', '0', '0', '0', 0, '????????????? ?.?.?.', 1, NULL, NULL),
(2466, 102, '', 16, '0', '0', '0', '0', 0, '????? ????????? ?.?.?.', 1, NULL, NULL),
(2467, 102, '', 9, '0', '0', '0', '0', 0, '????? ????????? ?.?.?.', 1, NULL, NULL),
(2468, 102, '', 5, '0', '0', '0', '0', 0, '????? ????????????? ?.?.?.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_typent`
--

CREATE TABLE IF NOT EXISTS `llx_c_typent` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_typent` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_typent`
--

INSERT INTO `llx_c_typent` (`id`, `code`, `libelle`, `fk_country`, `active`, `module`, `position`) VALUES
(0, 'TE_UNKNOWN', '-', NULL, 1, NULL, 0),
(1, 'TE_STARTUP', 'Start-up', NULL, 0, NULL, 0),
(2, 'TE_GROUP', 'Grand groupe', NULL, 1, NULL, 0),
(3, 'TE_MEDIUM', 'PME/PMI', NULL, 1, NULL, 0),
(4, 'TE_SMALL', 'TPE', NULL, 1, NULL, 0),
(5, 'TE_ADMIN', 'Administration', NULL, 1, NULL, 0),
(6, 'TE_WHOLE', 'Grossiste', NULL, 0, NULL, 0),
(7, 'TE_RETAIL', 'Revendeur', NULL, 0, NULL, 0),
(8, 'TE_PRIVATE', 'Particulier', NULL, 1, NULL, 0),
(100, 'TE_OTHER', 'Autres', NULL, 1, NULL, 0),
(231, 'TE_A_RI', 'Responsable Inscripto', 23, 0, NULL, 0),
(232, 'TE_B_RNI', 'Responsable No Inscripto', 23, 0, NULL, 0),
(233, 'TE_C_FE', 'Consumidor Final/Exento', 23, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_contact`
--

CREATE TABLE IF NOT EXISTS `llx_c_type_contact` (
  `rowid` int(11) NOT NULL,
  `element` varchar(30) NOT NULL,
  `source` varchar(8) NOT NULL DEFAULT 'external',
  `code` varchar(32) NOT NULL,
  `libelle` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_contact_id` (`element`,`source`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_c_type_contact`
--

INSERT INTO `llx_c_type_contact` (`rowid`, `element`, `source`, `code`, `libelle`, `active`, `module`, `position`) VALUES
(10, 'contrat', 'internal', 'SALESREPSIGN', 'Commercial signataire du contrat', 1, NULL, 0),
(11, 'contrat', 'internal', 'SALESREPFOLL', 'Commercial suivi du contrat', 1, NULL, 0),
(20, 'contrat', 'external', 'BILLING', 'Contact client facturation contrat', 1, NULL, 0),
(21, 'contrat', 'external', 'CUSTOMER', 'Contact client suivi contrat', 1, NULL, 0),
(22, 'contrat', 'external', 'SALESREPSIGN', 'Contact client signataire contrat', 1, NULL, 0),
(31, 'propal', 'internal', 'SALESREPFOLL', 'Commercial Ã  l''origine de la propale', 1, NULL, 0),
(40, 'propal', 'external', 'BILLING', 'Contact client facturation propale', 1, NULL, 0),
(41, 'propal', 'external', 'CUSTOMER', 'Contact client suivi propale', 1, NULL, 0),
(50, 'facture', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL, 0),
(60, 'facture', 'external', 'BILLING', 'Contact client facturation', 1, NULL, 0),
(61, 'facture', 'external', 'SHIPPING', 'Contact client livraison', 1, NULL, 0),
(62, 'facture', 'external', 'SERVICE', 'Contact client prestation', 1, NULL, 0),
(70, 'invoice_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL, 0),
(71, 'invoice_supplier', 'external', 'BILLING', 'Contact fournisseur facturation', 1, NULL, 0),
(72, 'invoice_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison', 1, NULL, 0),
(73, 'invoice_supplier', 'external', 'SERVICE', 'Contact fournisseur prestation', 1, NULL, 0),
(80, 'agenda', 'internal', 'ACTOR', 'Responsable', 1, NULL, 0),
(81, 'agenda', 'internal', 'GUEST', 'Guest', 1, NULL, 0),
(85, 'agenda', 'external', 'ACTOR', 'Responsable', 1, NULL, 0),
(86, 'agenda', 'external', 'GUEST', 'Guest', 1, NULL, 0),
(91, 'commande', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL, 0),
(100, 'commande', 'external', 'BILLING', 'Contact client facturation commande', 1, NULL, 0),
(101, 'commande', 'external', 'CUSTOMER', 'Contact client suivi commande', 1, NULL, 0),
(102, 'commande', 'external', 'SHIPPING', 'Contact client livraison commande', 1, NULL, 0),
(120, 'fichinter', 'internal', 'INTERREPFOLL', 'Responsable suivi de l''intervention', 1, NULL, 0),
(121, 'fichinter', 'internal', 'INTERVENING', 'Intervenant', 1, NULL, 0),
(130, 'fichinter', 'external', 'BILLING', 'Contact client facturation intervention', 1, NULL, 0),
(131, 'fichinter', 'external', 'CUSTOMER', 'Contact client suivi de l''intervention', 1, NULL, 0),
(140, 'order_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL, 0),
(141, 'order_supplier', 'internal', 'SHIPPING', 'Responsable rÃ©ception de la commande', 1, NULL, 0),
(142, 'order_supplier', 'external', 'BILLING', 'Contact fournisseur facturation commande', 1, NULL, 0),
(143, 'order_supplier', 'external', 'CUSTOMER', 'Contact fournisseur suivi commande', 1, NULL, 0),
(145, 'order_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison commande', 1, NULL, 0),
(150, 'dolresource', 'internal', 'USERINCHARGE', 'In charge of resource', 1, NULL, 0),
(151, 'dolresource', 'external', 'THIRDINCHARGE', 'In charge of resource', 1, NULL, 0),
(160, 'project', 'internal', 'PROJECTLEADER', 'Chef de Projet', 1, NULL, 0),
(161, 'project', 'internal', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(170, 'project', 'external', 'PROJECTLEADER', 'Chef de Projet', 1, NULL, 0),
(171, 'project', 'external', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(180, 'project_task', 'internal', 'TASKEXECUTIVE', 'Responsable', 1, NULL, 0),
(181, 'project_task', 'internal', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL, 0),
(190, 'project_task', 'external', 'TASKEXECUTIVE', 'Responsable', 1, NULL, 0),
(191, 'project_task', 'external', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_fees`
--

CREATE TABLE IF NOT EXISTS `llx_c_type_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `accountancy_code` varchar(32) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_type_fees` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `llx_c_type_fees`
--

INSERT INTO `llx_c_type_fees` (`id`, `code`, `label`, `accountancy_code`, `active`, `module`, `position`) VALUES
(1, 'TF_OTHER', 'Other', NULL, 1, NULL, 0),
(2, 'TF_TRIP', 'Transportation', NULL, 1, NULL, 0),
(3, 'TF_LUNCH', 'Lunch', NULL, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_type_resource`
--

CREATE TABLE IF NOT EXISTS `llx_c_type_resource` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `label` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_resource_id` (`label`,`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `llx_c_type_resource`
--

INSERT INTO `llx_c_type_resource` (`rowid`, `code`, `label`, `active`) VALUES
(1, 'RES_ROOMS', 'Rooms', 1),
(2, 'RES_CARS', 'Cars', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_units`
--

CREATE TABLE IF NOT EXISTS `llx_c_units` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `short_label` varchar(5) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_units_code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `llx_c_units`
--

INSERT INTO `llx_c_units` (`rowid`, `code`, `label`, `short_label`, `active`) VALUES
(1, 'P', 'piece', 'p', 1),
(2, 'SET', 'set', 'se', 1),
(3, 'S', 'second', 's', 1),
(4, 'H', 'hour', 'h', 1),
(5, 'D', 'day', 'd', 1),
(6, 'KG', 'kilogram', 'kg', 1),
(7, 'G', 'gram', 'g', 1),
(8, 'M', 'meter', 'm', 1),
(9, 'LM', 'linear meter', 'lm', 1),
(10, 'M2', 'square meter', 'm2', 1),
(11, 'M3', 'cubic meter', 'm3', 1),
(12, 'L', 'liter', 'l', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_c_ziptown`
--

CREATE TABLE IF NOT EXISTS `llx_c_ziptown` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `fk_county` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(10) NOT NULL,
  `town` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ziptown_fk_pays` (`zip`,`town`,`fk_pays`),
  KEY `idx_c_ziptown_fk_county` (`fk_county`),
  KEY `idx_c_ziptown_fk_pays` (`fk_pays`),
  KEY `idx_c_ziptown_zip` (`zip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_deplacement`
--

CREATE TABLE IF NOT EXISTS `llx_deplacement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dated` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `type` varchar(12) NOT NULL,
  `fk_statut` int(11) NOT NULL DEFAULT '1',
  `km` double DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_document_model`
--

CREATE TABLE IF NOT EXISTS `llx_document_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_document_model` (`nom`,`type`,`entity`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `llx_document_model`
--

INSERT INTO `llx_document_model` (`rowid`, `nom`, `entity`, `type`, `libelle`, `description`) VALUES
(1, 'standard', 1, 'expensereport', NULL, NULL),
(2, 'rouget', 1, 'shipping', NULL, NULL),
(3, 'typhon', 1, 'delivery', NULL, NULL),
(4, 'einstein', 1, 'order', NULL, NULL),
(5, 'soleil', 1, 'ficheinter', NULL, NULL),
(8, 'aurore', 1, 'supplier_proposal', NULL, NULL),
(9, 'muscadet', 1, 'order_supplier', NULL, NULL),
(11, 'html_cerfafr', 1, 'donation', NULL, NULL),
(13, 'azur', 1, 'propal', NULL, NULL),
(14, 'crabe', 1, 'invoice', NULL, NULL),
(15, 'baleine', 1, 'project', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_don`
--

CREATE TABLE IF NOT EXISTS `llx_don` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `datedon` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_payment` int(11) DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `societe` varchar(50) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `fk_country` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `phone_mobile` varchar(24) DEFAULT NULL,
  `public` smallint(6) NOT NULL DEFAULT '1',
  `fk_projet` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_don_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_don_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_don_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ecm_directories`
--

CREATE TABLE IF NOT EXISTS `llx_ecm_directories` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cachenbofdoc` int(11) NOT NULL DEFAULT '0',
  `fullpath` varchar(750) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ecm_directories` (`label`,`fk_parent`,`entity`),
  KEY `idx_ecm_directories_fk_user_c` (`fk_user_c`),
  KEY `idx_ecm_directories_fk_user_m` (`fk_user_m`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_ecm_files`
--

CREATE TABLE IF NOT EXISTS `llx_ecm_files` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `filename` varchar(255) NOT NULL,
  `fullpath` varchar(750) NOT NULL,
  `fullpath_orig` varchar(750) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `cover` text,
  `extraparams` varchar(255) DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ecm_files` (`label`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_contact`
--

CREATE TABLE IF NOT EXISTS `llx_element_contact` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datecreate` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '5',
  `element_id` int(11) NOT NULL,
  `fk_c_type_contact` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_contact_idx1` (`element_id`,`fk_c_type_contact`,`fk_socpeople`),
  KEY `fk_element_contact_fk_c_type_contact` (`fk_c_type_contact`),
  KEY `idx_element_contact_fk_socpeople` (`fk_socpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_element`
--

CREATE TABLE IF NOT EXISTS `llx_element_element` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_source` int(11) NOT NULL,
  `sourcetype` varchar(32) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_element_idx1` (`fk_source`,`sourcetype`,`fk_target`,`targettype`),
  KEY `idx_element_element_fk_target` (`fk_target`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_resources`
--

CREATE TABLE IF NOT EXISTS `llx_element_resources` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `element_id` int(11) DEFAULT NULL,
  `element_type` varchar(64) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(64) DEFAULT NULL,
  `busy` int(11) DEFAULT NULL,
  `mandatory` int(11) DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_resources_idx1` (`resource_id`,`resource_type`,`element_id`,`element_type`),
  KEY `idx_element_element_element_id` (`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_element_tag`
--

CREATE TABLE IF NOT EXISTS `llx_element_tag` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(5) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `element` varchar(64) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_element_tag` (`entity`,`lang`,`tag`,`fk_element`,`element`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_entrepot`
--

CREATE TABLE IF NOT EXISTS `llx_entrepot` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `description` text,
  `lieu` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `statut` tinyint(4) DEFAULT '1',
  `valo_pmp` float(12,4) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_entrepot_label` (`label`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_establishment`
--

CREATE TABLE IF NOT EXISTS `llx_establishment` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `profid1` varchar(20) DEFAULT NULL,
  `profid2` varchar(20) DEFAULT NULL,
  `profid3` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_events`
--

CREATE TABLE IF NOT EXISTS `llx_events` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(32) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `dateevent` datetime DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `fk_object` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_events_dateevent` (`dateevent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_event_element`
--

CREATE TABLE IF NOT EXISTS `llx_event_element` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_source` int(11) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expedition`
--

CREATE TABLE IF NOT EXISTS `llx_expedition` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_expedition` datetime DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `billed` smallint(6) DEFAULT '0',
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `size_units` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `weight_units` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_expedition_uk_ref` (`ref`,`entity`),
  KEY `idx_expedition_fk_soc` (`fk_soc`),
  KEY `idx_expedition_fk_user_author` (`fk_user_author`),
  KEY `idx_expedition_fk_user_valid` (`fk_user_valid`),
  KEY `idx_expedition_fk_shipping_method` (`fk_shipping_method`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet`
--

CREATE TABLE IF NOT EXISTS `llx_expeditiondet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expedition` int(11) NOT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_expeditiondet_fk_expedition` (`fk_expedition`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet_batch`
--

CREATE TABLE IF NOT EXISTS `llx_expeditiondet_batch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expeditiondet` int(11) NOT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `fk_origin_stock` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_fk_expeditiondet` (`fk_expeditiondet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expeditiondet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_expeditiondet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_expeditiondet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expedition_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_expedition_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_expedition_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expensereport`
--

CREATE TABLE IF NOT EXISTS `llx_expensereport` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_number_int` int(11) DEFAULT NULL,
  `ref_ext` int(11) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `date_create` datetime NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_validator` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `fk_statut` int(11) NOT NULL,
  `fk_c_paiement` int(11) DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `note_public` text,
  `note_private` text,
  `detail_refuse` varchar(255) DEFAULT NULL,
  `detail_cancel` varchar(255) DEFAULT NULL,
  `integration_compta` int(11) DEFAULT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `model_pdf` varchar(50) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_expensereport_det`
--

CREATE TABLE IF NOT EXISTS `llx_expensereport_det` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expensereport` int(11) NOT NULL,
  `fk_c_type_fees` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `comments` text NOT NULL,
  `product_type` int(11) DEFAULT '-1',
  `qty` double NOT NULL,
  `value_unit` double NOT NULL,
  `remise_percent` double DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `total_ht` double(24,8) NOT NULL DEFAULT '0.00000000',
  `total_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `date` date NOT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_facture` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_export_compta`
--

CREATE TABLE IF NOT EXISTS `llx_export_compta` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(12) NOT NULL,
  `date_export` datetime NOT NULL,
  `fk_user` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_export_model`
--

CREATE TABLE IF NOT EXISTS `llx_export_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `field` text NOT NULL,
  `filter` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_export_model` (`label`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `elementtype` varchar(64) NOT NULL DEFAULT 'member',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) NOT NULL,
  `type` varchar(8) DEFAULT NULL,
  `size` varchar(8) DEFAULT NULL,
  `fieldunique` int(11) DEFAULT '0',
  `fieldrequired` int(11) DEFAULT '0',
  `perms` varchar(255) DEFAULT NULL,
  `pos` int(11) DEFAULT '0',
  `alwayseditable` int(11) DEFAULT '0',
  `param` text,
  `list` int(11) DEFAULT '0',
  `ishidden` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_extrafields_name` (`name`,`entity`,`elementtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture`
--

CREATE TABLE IF NOT EXISTS `llx_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `facnumber` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `increment` varchar(10) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `date_pointoftax` date DEFAULT NULL,
  `date_valid` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) NOT NULL DEFAULT '1',
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `situation_cycle_ref` smallint(6) DEFAULT NULL,
  `situation_counter` smallint(6) DEFAULT NULL,
  `situation_final` smallint(6) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_facture_uk_facnumber` (`facnumber`,`entity`),
  KEY `idx_facture_fk_soc` (`fk_soc`),
  KEY `idx_facture_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_fk_user_valid` (`fk_user_valid`),
  KEY `idx_facture_fk_facture_source` (`fk_facture_source`),
  KEY `idx_facture_fk_projet` (`fk_projet`),
  KEY `idx_facture_fk_account` (`fk_account`),
  KEY `idx_facture_fk_currency` (`fk_currency`),
  KEY `idx_facture_fk_statut` (`fk_statut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet`
--

CREATE TABLE IF NOT EXISTS `llx_facturedet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_contract_line` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `situation_percent` double DEFAULT NULL,
  `fk_prev_id` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_fk_remise_except` (`fk_remise_except`,`fk_facture`),
  KEY `idx_facturedet_fk_facture` (`fk_facture`),
  KEY `idx_facturedet_fk_product` (`fk_product`),
  KEY `fk_facturedet_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_facturedet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facturedet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facturedet_rec`
--

CREATE TABLE IF NOT EXISTS `llx_facturedet_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(10) unsigned DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_contract_line` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `fk_facturedet_rec_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_facture_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn`
--

CREATE TABLE IF NOT EXISTS `llx_facture_fourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `ref_supplier` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `libelle` varchar(255) DEFAULT NULL,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double(24,8) DEFAULT '0.00000000',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_facture_fourn_ref` (`ref`,`entity`),
  UNIQUE KEY `uk_facture_fourn_ref_supplier` (`ref_supplier`,`fk_soc`,`entity`),
  KEY `idx_facture_fourn_date_lim_reglement` (`date_lim_reglement`),
  KEY `idx_facture_fourn_fk_soc` (`fk_soc`),
  KEY `idx_facture_fourn_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_fourn_fk_user_valid` (`fk_user_valid`),
  KEY `idx_facture_fourn_fk_projet` (`fk_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_det`
--

CREATE TABLE IF NOT EXISTS `llx_facture_fourn_det` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture_fourn` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `pu_ht` double(24,8) DEFAULT NULL,
  `pu_ttc` double(24,8) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_det_fk_facture` (`fk_facture_fourn`),
  KEY `fk_facture_fourn_det_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_det_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_facture_fourn_det_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_det_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_fourn_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_facture_fourn_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_facture_rec`
--

CREATE TABLE IF NOT EXISTS `llx_facture_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT '0',
  `fk_mode_reglement` int(11) DEFAULT '0',
  `date_lim_reglement` date DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `usenewprice` int(11) DEFAULT '0',
  `frequency` int(11) DEFAULT NULL,
  `unit_frequency` varchar(2) DEFAULT 'm',
  `date_when` datetime DEFAULT NULL,
  `date_last_gen` datetime DEFAULT NULL,
  `nb_gen_done` int(11) DEFAULT NULL,
  `nb_gen_max` int(11) DEFAULT NULL,
  `auto_validate` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_facture_rec_uk_titre` (`titre`,`entity`),
  KEY `idx_facture_rec_fk_soc` (`fk_soc`),
  KEY `idx_facture_rec_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_rec_fk_projet` (`fk_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinter`
--

CREATE TABLE IF NOT EXISTS `llx_fichinter` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `fk_contrat` int(11) DEFAULT '0',
  `ref` varchar(30) NOT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `datei` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `datet` date DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `description` text,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_fichinter_ref` (`ref`,`entity`),
  KEY `idx_fichinter_fk_soc` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinterdet`
--

CREATE TABLE IF NOT EXISTS `llx_fichinterdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_fichinter` int(11) DEFAULT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` text,
  `duree` int(11) DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_fichinterdet_fk_fichinter` (`fk_fichinter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinterdet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_fichinterdet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_ficheinterdet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_fichinter_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_fichinter_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_ficheinter_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday`
--

CREATE TABLE IF NOT EXISTS `llx_holiday` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `fk_type` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `halfday` int(11) DEFAULT '0',
  `statut` int(11) NOT NULL DEFAULT '1',
  `fk_validator` int(11) NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `detail_refuse` varchar(250) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  KEY `idx_holiday_entity` (`entity`),
  KEY `idx_holiday_fk_user` (`fk_user`),
  KEY `idx_holiday_fk_user_create` (`fk_user_create`),
  KEY `idx_holiday_date_create` (`date_create`),
  KEY `idx_holiday_date_debut` (`date_debut`),
  KEY `idx_holiday_date_fin` (`date_fin`),
  KEY `idx_holiday_fk_validator` (`fk_validator`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_config`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_config` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `llx_holiday_config`
--

INSERT INTO `llx_holiday_config` (`rowid`, `name`, `value`) VALUES
(1, 'lastUpdate', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_events`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_events` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_holiday_name` (`name`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_logs`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_logs` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_action` datetime NOT NULL,
  `fk_user_action` int(11) NOT NULL,
  `fk_user_update` int(11) NOT NULL,
  `fk_type` int(11) NOT NULL,
  `type_action` varchar(255) NOT NULL,
  `prev_solde` varchar(255) NOT NULL,
  `new_solde` varchar(255) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_holiday_users`
--

CREATE TABLE IF NOT EXISTS `llx_holiday_users` (
  `fk_user` int(11) NOT NULL,
  `fk_type` int(11) NOT NULL,
  `nb_holiday` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_import_model`
--

CREATE TABLE IF NOT EXISTS `llx_import_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `field` text NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_import_model` (`label`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_links`
--

CREATE TABLE IF NOT EXISTS `llx_links` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datea` datetime NOT NULL,
  `url` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `objecttype` varchar(255) NOT NULL,
  `objectid` int(11) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraison`
--

CREATE TABLE IF NOT EXISTS `llx_livraison` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_livraison_uk_ref` (`ref`,`entity`),
  KEY `idx_livraison_fk_soc` (`fk_soc`),
  KEY `idx_livraison_fk_user_author` (`fk_user_author`),
  KEY `idx_livraison_fk_user_valid` (`fk_user_valid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraisondet`
--

CREATE TABLE IF NOT EXISTS `llx_livraisondet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_livraison` int(11) DEFAULT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `description` text,
  `qty` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_livraisondet_fk_expedition` (`fk_livraison`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraisondet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_livraisondet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_livraisondet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_livraison_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_livraison_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_livraison_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_loan`
--

CREATE TABLE IF NOT EXISTS `llx_loan` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(80) NOT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `capital` double NOT NULL DEFAULT '0',
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `nbterm` double DEFAULT NULL,
  `rate` double NOT NULL,
  `note_private` text,
  `note_public` text,
  `capital_position` double DEFAULT '0',
  `date_position` date DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `accountancy_account_capital` varchar(32) DEFAULT NULL,
  `accountancy_account_insurance` varchar(32) DEFAULT NULL,
  `accountancy_account_interest` varchar(32) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_localtax`
--

CREATE TABLE IF NOT EXISTS `llx_localtax` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `localtaxtype` tinyint(4) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_mailing`
--

CREATE TABLE IF NOT EXISTS `llx_mailing` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `statut` smallint(6) DEFAULT '0',
  `titre` varchar(60) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `sujet` varchar(60) DEFAULT NULL,
  `body` mediumtext,
  `bgcolor` varchar(8) DEFAULT NULL,
  `bgimage` varchar(255) DEFAULT NULL,
  `cible` varchar(60) DEFAULT NULL,
  `nbemail` int(11) DEFAULT NULL,
  `email_from` varchar(160) DEFAULT NULL,
  `email_replyto` varchar(160) DEFAULT NULL,
  `email_errorsto` varchar(160) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `date_creat` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_appro` datetime DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_appro` int(11) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `joined_file1` varchar(255) DEFAULT NULL,
  `joined_file2` varchar(255) DEFAULT NULL,
  `joined_file3` varchar(255) DEFAULT NULL,
  `joined_file4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_mailing_cibles`
--

CREATE TABLE IF NOT EXISTS `llx_mailing_cibles` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_mailing` int(11) NOT NULL,
  `fk_contact` int(11) NOT NULL,
  `lastname` varchar(160) DEFAULT NULL,
  `firstname` varchar(160) DEFAULT NULL,
  `email` varchar(160) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `source_url` varchar(160) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(16) DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_mailing_cibles` (`fk_mailing`,`email`),
  KEY `idx_mailing_cibles_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_menu`
--

CREATE TABLE IF NOT EXISTS `llx_menu` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_handler` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(64) DEFAULT NULL,
  `type` varchar(4) NOT NULL,
  `mainmenu` varchar(100) NOT NULL,
  `leftmenu` varchar(100) DEFAULT NULL,
  `fk_menu` int(11) NOT NULL,
  `fk_mainmenu` varchar(24) DEFAULT NULL,
  `fk_leftmenu` varchar(24) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(100) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `langs` varchar(100) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT '1',
  `usertype` int(11) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_menu_uk_menu` (`menu_handler`,`fk_menu`,`position`,`url`,`entity`),
  KEY `idx_menu_menuhandler_type` (`menu_handler`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `llx_menu`
--

INSERT INTO `llx_menu` (`rowid`, `menu_handler`, `entity`, `module`, `type`, `mainmenu`, `leftmenu`, `fk_menu`, `fk_mainmenu`, `fk_leftmenu`, `position`, `url`, `target`, `titre`, `langs`, `level`, `perms`, `enabled`, `usertype`, `tms`) VALUES
(1, 'all', 1, 'expensereport', 'left', 'hrm', 'expensereport', -1, 'hrm', NULL, 100, '/expensereport/index.php', '', 'TripsAndExpenses', 'trips', NULL, '$user->rights->expensereport->lire', '$conf->expensereport->enabled', 2, '2006-01-02 00:03:42'),
(2, 'all', 1, 'expensereport', 'left', 'hrm', 'expensereport_detailnew', -1, 'hrm', 'expensereport', 100, '/expensereport/card.php?action=create', '', 'New', 'trips', NULL, '$user->rights->expensereport->creer', '$conf->expensereport->enabled', 2, '2006-01-02 00:03:42'),
(3, 'all', 1, 'expensereport', 'left', 'hrm', 'expensereport_detaillist', -1, 'hrm', 'expensereport', 100, '/expensereport/list.php', '', 'List', 'trips', NULL, '$user->rights->expensereport->lire', '$conf->expensereport->enabled', 2, '2006-01-02 00:03:42'),
(4, 'all', 1, 'expensereport', 'left', 'hrm', 'expensereport_detaillist_approve', -1, 'hrm', 'expensereport_detaillist', 100, '/expensereport/list.php?search_status=2', '', 'ListToApprove', 'trips', NULL, '$user->rights->expensereport->approve', '$conf->expensereport->enabled', 2, '2006-01-02 00:03:42'),
(5, 'all', 1, 'expensereport', 'left', 'hrm', 'expensereport_detail', -1, 'hrm', 'expensereport', 100, '/expensereport/stats/index.php', '', 'Statistics', 'trips', NULL, '$user->rights->expensereport->lire', '$conf->expensereport->enabled', 2, '2006-01-02 00:03:42'),
(6, 'all', 1, 'expensereport', 'left', 'hrm', 'expensereport_detail', -1, 'hrm', 'expensereport', 100, '/expensereport/export_csv.php', '', 'ExportTripCSV', 'expensereport', NULL, '$user->rights->expensereport->lire', '$conf->global->DEPLACEMENT_TO_CLEAN', 2, '2006-01-02 00:03:42'),
(7, 'all', 1, 'expensereport', 'left', 'hrm', 'expensereport_detail', -1, 'hrm', 'expensereport', 100, '/expensereport/synchro_compta.php', '', 'Synchro_Compta', 'expensereport', NULL, '$user->rights->expensereport->lire', '$conf->global->DEPLACEMENT_TO_CLEAN', 2, '2006-01-02 00:03:42'),
(8, 'all', 1, 'supplier_proposal', 'left', 'commercial', 'supplier_proposalsubmenu', -1, 'commercial', NULL, 300, '/supplier_proposal/index.php', '', 'SupplierProposalsShort', 'supplier_proposal', NULL, '$user->rights->supplier_proposal->lire', '$conf->supplier_proposal->enabled', 2, '2006-01-02 00:04:25'),
(9, 'all', 1, 'supplier_proposal', 'left', 'commercial', NULL, -1, 'commercial', 'supplier_proposalsubmenu', 301, '/supplier_proposal/card.php?action=create&amp;leftmenu=supplier_proposals', '', 'SupplierProposalNew', 'supplier_proposal', NULL, '$user->rights->supplier_proposal->creer', '$conf->supplier_proposal->enabled', 2, '2006-01-02 00:04:25'),
(10, 'all', 1, 'supplier_proposal', 'left', 'commercial', NULL, -1, 'commercial', 'supplier_proposalsubmenu', 302, '/supplier_proposal/list.php?leftmenu=supplier_proposals', '', 'List', 'supplier_proposal', NULL, '$user->rights->supplier_proposal->lire', '$conf->supplier_proposal->enabled', 2, '2006-01-02 00:04:25'),
(11, 'all', 1, 'supplier_proposal', 'left', 'commercial', NULL, -1, 'commercial', 'supplier_proposalsubmenu', 303, '/comm/propal/stats/index.php?leftmenu=supplier_proposals&amp;mode=supplier', '', 'Statistics', 'supplier_proposal', NULL, '$user->rights->supplier_proposal->lire', '$conf->supplier_proposal->enabled', 2, '2006-01-02 00:04:25'),
(12, 'all', 1, 'margins', 'left', 'accountancy', 'margins', -1, 'accountancy', NULL, 100, '/margin/index.php', '', 'Margins', 'margins', NULL, '$user->rights->margins->liretous', '$conf->margin->enabled', 2, '2006-01-02 00:04:29'),
(13, 'all', 1, 'agenda', 'top', 'agenda', NULL, 0, NULL, NULL, 100, '/comm/action/index.php', '', 'Agenda', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(14, 'all', 1, 'agenda', 'left', 'agenda', NULL, 13, NULL, NULL, 100, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Actions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(15, 'all', 1, 'agenda', 'left', 'agenda', NULL, 14, NULL, NULL, 101, '/comm/action/card.php?mainmenu=agenda&amp;leftmenu=agenda&amp;action=create', '', 'NewAction', 'commercial', NULL, '($user->rights->agenda->myactions->create||$user->rights->agenda->allactions->create)', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(16, 'all', 1, 'agenda', 'left', 'agenda', NULL, 14, NULL, NULL, 102, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Agenda', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(17, 'all', 1, 'agenda', 'left', 'agenda', NULL, 16, NULL, NULL, 103, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine', '', 'MenuToDoMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(18, 'all', 1, 'agenda', 'left', 'agenda', NULL, 16, NULL, NULL, 104, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine', '', 'MenuDoneMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(19, 'all', 1, 'agenda', 'left', 'agenda', NULL, 16, NULL, NULL, 105, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filtert=-1', '', 'MenuToDoActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2006-01-02 00:04:44'),
(20, 'all', 1, 'agenda', 'left', 'agenda', NULL, 16, NULL, NULL, 106, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filtert=-1', '', 'MenuDoneActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2006-01-02 00:04:44'),
(21, 'all', 1, 'agenda', 'left', 'agenda', NULL, 14, NULL, NULL, 112, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'List', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(22, 'all', 1, 'agenda', 'left', 'agenda', NULL, 21, NULL, NULL, 113, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine', '', 'MenuToDoMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(23, 'all', 1, 'agenda', 'left', 'agenda', NULL, 21, NULL, NULL, 114, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine', '', 'MenuDoneMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(24, 'all', 1, 'agenda', 'left', 'agenda', NULL, 21, NULL, NULL, 115, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filtert=-1', '', 'MenuToDoActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2006-01-02 00:04:44'),
(25, 'all', 1, 'agenda', 'left', 'agenda', NULL, 21, NULL, NULL, 116, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filtert=-1', '', 'MenuDoneActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2006-01-02 00:04:44'),
(26, 'all', 1, 'agenda', 'left', 'agenda', NULL, 14, NULL, NULL, 120, '/comm/action/rapport/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Reportings', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$conf->agenda->enabled', 2, '2006-01-02 00:04:44'),
(27, 'all', 1, 'resource', 'left', 'tools', 'resource', -1, 'tools', NULL, 100, '/resource/list.php', '', 'MenuResourceIndex', 'resource', NULL, '$user->rights->resource->read', '1', 0, '2006-01-02 00:04:44'),
(28, 'all', 1, 'resource', 'left', 'tools', NULL, -1, 'tools', 'resource', 101, '/resource/add.php', '', 'MenuResourceAdd', 'resource', NULL, '$user->rights->resource->read', '1', 0, '2006-01-02 00:04:44'),
(29, 'all', 1, 'resource', 'left', 'tools', NULL, -1, 'tools', 'resource', 102, '/resource/list.php', '', 'List', 'resource', NULL, '$user->rights->resource->read', '1', 0, '2006-01-02 00:04:44'),
(30, 'all', 1, 'printing', 'left', 'home', NULL, -1, 'home', 'admintools', 300, '/printing/index.php?mainmenu=home&leftmenu=admintools', '', 'MenuDirectPrinting', 'printing', NULL, '$user->rights->printing->read', '$conf->printing->enabled && $leftmenu==''admintools''', 0, '2006-01-02 00:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `llx_multicurrency`
--

CREATE TABLE IF NOT EXISTS `llx_multicurrency` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_multicurrency_rate`
--

CREATE TABLE IF NOT EXISTS `llx_multicurrency_rate` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_sync` datetime DEFAULT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `fk_multicurrency` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_notify`
--

CREATE TABLE IF NOT EXISTS `llx_notify` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `daten` datetime DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'email',
  `objet_type` varchar(24) NOT NULL,
  `objet_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_notify_def`
--

CREATE TABLE IF NOT EXISTS `llx_notify_def` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` date DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'email',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_oauth_state`
--

CREATE TABLE IF NOT EXISTS `llx_oauth_state` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(36) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `entity` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_oauth_token`
--

CREATE TABLE IF NOT EXISTS `llx_oauth_token` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(36) DEFAULT NULL,
  `token` text,
  `fk_user` int(11) DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `entity` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_comments`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_comments` (
  `id_comment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_sondage` char(16) NOT NULL,
  `comment` text NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usercomment` text,
  PRIMARY KEY (`id_comment`),
  KEY `idx_id_comment` (`id_comment`),
  KEY `idx_id_sondage` (`id_sondage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_formquestions`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_formquestions` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `id_sondage` varchar(16) DEFAULT NULL,
  `question` text,
  `available_answers` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_sondage`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_sondage` (
  `id_sondage` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `commentaires` text,
  `mail_admin` varchar(128) DEFAULT NULL,
  `nom_admin` varchar(64) DEFAULT NULL,
  `fk_user_creat` int(11) NOT NULL,
  `titre` text NOT NULL,
  `date_fin` datetime NOT NULL,
  `status` int(11) DEFAULT '1',
  `format` varchar(2) NOT NULL,
  `mailsonde` tinyint(4) NOT NULL DEFAULT '0',
  `allow_comments` tinyint(4) NOT NULL DEFAULT '1',
  `allow_spy` tinyint(4) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sujet` text,
  PRIMARY KEY (`id_sondage`),
  KEY `idx_date_fin` (`date_fin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_user_formanswers`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_user_formanswers` (
  `fk_user_survey` int(11) NOT NULL,
  `fk_question` int(11) NOT NULL,
  `reponses` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_opensurvey_user_studs`
--

CREATE TABLE IF NOT EXISTS `llx_opensurvey_user_studs` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(64) NOT NULL,
  `id_sondage` varchar(16) NOT NULL,
  `reponses` varchar(100) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_users`),
  KEY `idx_opensurvey_user_studs_id_users` (`id_users`),
  KEY `idx_opensurvey_user_studs_nom` (`nom`),
  KEY `idx_opensurvey_user_studs_id_sondage` (`id_sondage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_overwrite_trans`
--

CREATE TABLE IF NOT EXISTS `llx_overwrite_trans` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(5) DEFAULT NULL,
  `transkey` varchar(128) DEFAULT NULL,
  `transvalue` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_overwrite_trans` (`lang`,`transkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiement`
--

CREATE TABLE IF NOT EXISTS `llx_paiement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_export_compta` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementcharge`
--

CREATE TABLE IF NOT EXISTS `llx_paiementcharge` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_charge` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_typepaiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementfourn`
--

CREATE TABLE IF NOT EXISTS `llx_paiementfourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiementfourn_facturefourn`
--

CREATE TABLE IF NOT EXISTS `llx_paiementfourn_facturefourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_paiementfourn` int(11) DEFAULT NULL,
  `fk_facturefourn` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_paiementfourn_facturefourn` (`fk_paiementfourn`,`fk_facturefourn`),
  KEY `idx_paiementfourn_facturefourn_fk_facture` (`fk_facturefourn`),
  KEY `idx_paiementfourn_facturefourn_fk_paiement` (`fk_paiementfourn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_paiement_facture`
--

CREATE TABLE IF NOT EXISTS `llx_paiement_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_paiement` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_paiement_facture` (`fk_paiement`,`fk_facture`),
  KEY `idx_paiement_facture_fk_facture` (`fk_facture`),
  KEY `idx_paiement_facture_fk_paiement` (`fk_paiement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_donation`
--

CREATE TABLE IF NOT EXISTS `llx_payment_donation` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_donation` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_expensereport`
--

CREATE TABLE IF NOT EXISTS `llx_payment_expensereport` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expensereport` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_loan`
--

CREATE TABLE IF NOT EXISTS `llx_payment_loan` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_loan` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount_capital` double DEFAULT '0',
  `amount_insurance` double DEFAULT '0',
  `amount_interest` double DEFAULT '0',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_payment_salary`
--

CREATE TABLE IF NOT EXISTS `llx_payment_salary` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `datesp` date DEFAULT NULL,
  `dateep` date DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_payment_salary_ref` (`num_payment`),
  KEY `idx_payment_salary_user` (`fk_user`,`entity`),
  KEY `idx_payment_salary_datep` (`datep`),
  KEY `idx_payment_salary_datesp` (`datesp`),
  KEY `idx_payment_salary_dateep` (`dateep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_bons`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_bons` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(12) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `statut` smallint(6) DEFAULT '0',
  `credite` smallint(6) DEFAULT '0',
  `note` text,
  `date_trans` datetime DEFAULT NULL,
  `method_trans` smallint(6) DEFAULT NULL,
  `fk_user_trans` int(11) DEFAULT NULL,
  `date_credit` datetime DEFAULT NULL,
  `fk_user_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_prelevement_bons_ref` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_facture`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_prelevement_lignes` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_prelevement_facture_fk_prelevement_lignes` (`fk_prelevement_lignes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_facture_demande`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_facture_demande` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date_demande` datetime NOT NULL,
  `traite` smallint(6) DEFAULT '0',
  `date_traite` datetime DEFAULT NULL,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_user_demande` int(11) NOT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_lignes`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_lignes` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `statut` smallint(6) DEFAULT '0',
  `client_nom` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_prelevement_lignes_fk_prelevement_bons` (`fk_prelevement_bons`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_prelevement_rejet`
--

CREATE TABLE IF NOT EXISTS `llx_prelevement_rejet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_prelevement_lignes` int(11) DEFAULT NULL,
  `date_rejet` datetime DEFAULT NULL,
  `motif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_creation` int(11) DEFAULT NULL,
  `note` text,
  `afacturer` tinyint(4) DEFAULT '0',
  `fk_facture` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_printing`
--

CREATE TABLE IF NOT EXISTS `llx_printing` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `printer_name` text NOT NULL,
  `printer_location` text NOT NULL,
  `printer_id` varchar(255) NOT NULL,
  `copy` int(11) NOT NULL DEFAULT '1',
  `module` varchar(16) NOT NULL,
  `driver` varchar(16) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product`
--

CREATE TABLE IF NOT EXISTS `llx_product` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_parent` int(11) DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note_public` text,
  `note` text,
  `customcode` varchar(32) DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `cost_price` double(24,8) DEFAULT NULL,
  `default_vat_code` varchar(10) DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `tobuy` tinyint(4) DEFAULT '1',
  `onportal` tinyint(4) DEFAULT '0',
  `tobatch` tinyint(4) NOT NULL DEFAULT '0',
  `fk_product_type` int(11) DEFAULT '0',
  `duration` varchar(6) DEFAULT NULL,
  `seuil_stock_alerte` int(11) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT NULL,
  `accountancy_code_sell` varchar(32) DEFAULT NULL,
  `accountancy_code_buy` varchar(32) DEFAULT NULL,
  `partnumber` varchar(32) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weight_units` tinyint(4) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `length_units` tinyint(4) DEFAULT NULL,
  `width` float DEFAULT NULL,
  `width_units` tinyint(4) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `height_units` tinyint(4) DEFAULT NULL,
  `surface` float DEFAULT NULL,
  `surface_units` tinyint(4) DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `volume_units` tinyint(4) DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `pmp` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fifo` double(24,8) DEFAULT NULL,
  `lifo` double(24,8) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `finished` tinyint(4) DEFAULT NULL,
  `hidden` tinyint(4) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_price_expression` int(11) DEFAULT NULL,
  `desiredstock` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `price_autogen` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_ref` (`ref`,`entity`),
  UNIQUE KEY `uk_product_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  KEY `idx_product_label` (`label`),
  KEY `idx_product_barcode` (`barcode`),
  KEY `idx_product_import_key` (`import_key`),
  KEY `idx_product_seuil_stock_alerte` (`seuil_stock_alerte`),
  KEY `idx_product_fk_country` (`fk_country`),
  KEY `idx_product_fk_user_author` (`fk_user_author`),
  KEY `idx_product_fk_barcode_type` (`fk_barcode_type`),
  KEY `fk_product_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_association`
--

CREATE TABLE IF NOT EXISTS `llx_product_association` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_pere` int(11) NOT NULL DEFAULT '0',
  `fk_product_fils` int(11) NOT NULL DEFAULT '0',
  `qty` double DEFAULT NULL,
  `incdec` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_association` (`fk_product_pere`,`fk_product_fils`),
  KEY `idx_product_association_fils` (`fk_product_fils`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_batch`
--

CREATE TABLE IF NOT EXISTS `llx_product_batch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product_stock` int(11) NOT NULL,
  `eatby` datetime DEFAULT NULL,
  `sellby` datetime DEFAULT NULL,
  `batch` varchar(30) NOT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_batch` (`fk_product_stock`,`batch`),
  KEY `idx_fk_product_stock` (`fk_product_stock`),
  KEY `idx_batch` (`batch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_customer_price`
--

CREATE TABLE IF NOT EXISTS `llx_product_customer_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_customer_price_fk_product_fk_soc` (`fk_product`,`fk_soc`),
  KEY `idx_product_customer_price_fk_user` (`fk_user`),
  KEY `idx_product_customer_price_fk_soc` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_customer_price_log`
--

CREATE TABLE IF NOT EXISTS `llx_product_customer_price_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_product_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_product_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_fournisseur_price`
--

CREATE TABLE IF NOT EXISTS `llx_product_fournisseur_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `ref_fourn` varchar(30) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  `charges` double(24,8) DEFAULT '0.00000000',
  `unitcharges` double(24,8) DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL,
  `info_bits` int(11) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `fk_supplier_price_expression` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `delivery_time_days` int(11) DEFAULT NULL,
  `supplier_reputation` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_fournisseur_price_ref` (`ref_fourn`,`fk_soc`,`quantity`,`entity`),
  KEY `idx_product_fournisseur_price_fk_user` (`fk_user`),
  KEY `idx_product_fourn_price_fk_product` (`fk_product`,`entity`),
  KEY `idx_product_fourn_price_fk_soc` (`fk_soc`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_fournisseur_price_log`
--

CREATE TABLE IF NOT EXISTS `llx_product_fournisseur_price_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `fk_product_fournisseur` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_lang`
--

CREATE TABLE IF NOT EXISTS `llx_product_lang` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note` text,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_lang` (`fk_product`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_lot`
--

CREATE TABLE IF NOT EXISTS `llx_product_lot` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_lot` (`fk_product`,`batch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_price`
--

CREATE TABLE IF NOT EXISTS `llx_product_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `date_price` datetime NOT NULL,
  `price_level` smallint(6) DEFAULT '1',
  `price` double(24,8) DEFAULT NULL,
  `price_ttc` double(24,8) DEFAULT NULL,
  `price_min` double(24,8) DEFAULT NULL,
  `price_min_ttc` double(24,8) DEFAULT NULL,
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) NOT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `price_by_qty` int(11) NOT NULL DEFAULT '0',
  `fk_price_expression` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_price` double(24,8) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_product_price_fk_user_author` (`fk_user_author`),
  KEY `idx_product_price_fk_product` (`fk_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_pricerules`
--

CREATE TABLE IF NOT EXISTS `llx_product_pricerules` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `fk_level` int(11) NOT NULL,
  `var_percent` float NOT NULL,
  `var_min_percent` float NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `unique_level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_price_by_qty`
--

CREATE TABLE IF NOT EXISTS `llx_product_price_by_qty` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_price` int(11) NOT NULL,
  `date_price` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_price_by_qty_level` (`fk_product_price`,`quantity`),
  KEY `idx_product_price_by_qty_fk_product_price` (`fk_product_price`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_product_stock`
--

CREATE TABLE IF NOT EXISTS `llx_product_stock` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `reel` double DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_stock` (`fk_product`,`fk_entrepot`),
  KEY `idx_product_stock_fk_product` (`fk_product`),
  KEY `idx_product_stock_fk_entrepot` (`fk_entrepot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet`
--

CREATE TABLE IF NOT EXISTS `llx_projet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `datec` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` text,
  `fk_user_creat` int(11) NOT NULL,
  `public` int(11) DEFAULT NULL,
  `fk_statut` int(11) NOT NULL DEFAULT '0',
  `fk_opp_status` int(11) DEFAULT NULL,
  `opp_percent` double(5,2) DEFAULT NULL,
  `date_close` datetime DEFAULT NULL,
  `fk_user_close` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `opp_amount` double(24,8) DEFAULT NULL,
  `budget_amount` double(24,8) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_projet_ref` (`ref`,`entity`),
  KEY `idx_projet_fk_soc` (`fk_soc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_projet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task`
--

CREATE TABLE IF NOT EXISTS `llx_projet_task` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_projet` int(11) NOT NULL,
  `fk_task_parent` int(11) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `datev` datetime DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `description` text,
  `duration_effective` double DEFAULT '0',
  `planned_workload` double DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `rang` int(11) DEFAULT '0',
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_task_fk_projet` (`fk_projet`),
  KEY `idx_projet_task_fk_user_creat` (`fk_user_creat`),
  KEY `idx_projet_task_fk_user_valid` (`fk_user_valid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_projet_task_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_task_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_projet_task_time`
--

CREATE TABLE IF NOT EXISTS `llx_projet_task_time` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_task` int(11) NOT NULL,
  `task_date` date DEFAULT NULL,
  `task_datehour` datetime DEFAULT NULL,
  `task_date_withhour` int(11) DEFAULT '0',
  `task_duration` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `invoice_line_id` int(11) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_task_time_task` (`fk_task`),
  KEY `idx_projet_task_time_date` (`task_date`),
  KEY `idx_projet_task_time_datehour` (`task_datehour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal`
--

CREATE TABLE IF NOT EXISTS `llx_propal` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_propal_ref` (`ref`,`entity`),
  KEY `idx_propal_fk_soc` (`fk_soc`),
  KEY `idx_propal_fk_user_author` (`fk_user_author`),
  KEY `idx_propal_fk_user_valid` (`fk_user_valid`),
  KEY `idx_propal_fk_user_cloture` (`fk_user_cloture`),
  KEY `idx_propal_fk_projet` (`fk_projet`),
  KEY `idx_propal_fk_account` (`fk_account`),
  KEY `idx_propal_fk_currency` (`fk_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propaldet`
--

CREATE TABLE IF NOT EXISTS `llx_propaldet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_propal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_propaldet_fk_propal` (`fk_propal`),
  KEY `idx_propaldet_fk_product` (`fk_product`),
  KEY `fk_propaldet_fk_unit` (`fk_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propaldet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_propaldet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_propaldet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_propal_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_propal_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_propal_merge_pdf_product`
--

CREATE TABLE IF NOT EXISTS `llx_propal_merge_pdf_product` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_resource`
--

CREATE TABLE IF NOT EXISTS `llx_resource` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(255) DEFAULT NULL,
  `asset_number` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_code_type_resource` varchar(32) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_public` text,
  `note_private` text,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  KEY `fk_code_type_resource_idx` (`fk_code_type_resource`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_rights_def`
--

CREATE TABLE IF NOT EXISTS `llx_rights_def` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `module` varchar(64) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `perms` varchar(50) DEFAULT NULL,
  `subperms` varchar(50) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `bydefault` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_rights_def`
--

INSERT INTO `llx_rights_def` (`id`, `libelle`, `module`, `entity`, `perms`, `subperms`, `type`, `bydefault`) VALUES
(11, 'Lire les factures', 'facture', 1, 'lire', NULL, 'a', 1),
(12, 'Creer/modifier les factures', 'facture', 1, 'creer', NULL, 'a', 0),
(13, 'DÃ©valider les factures', 'facture', 1, 'invoice_advance', 'unvalidate', 'a', 0),
(14, 'Valider les factures', 'facture', 1, 'invoice_advance', 'validate', 'a', 0),
(15, 'Envoyer les factures par mail', 'facture', 1, 'invoice_advance', 'send', 'a', 0),
(16, 'Emettre des paiements sur les factures', 'facture', 1, 'paiement', NULL, 'a', 0),
(19, 'Supprimer les factures', 'facture', 1, 'supprimer', NULL, 'a', 0),
(21, 'Lire les propositions commerciales', 'propale', 1, 'lire', NULL, 'r', 1),
(22, 'Creer/modifier les propositions commerciales', 'propale', 1, 'creer', NULL, 'w', 0),
(24, 'Valider les propositions commerciales', 'propale', 1, 'propal_advance', 'validate', 'd', 0),
(25, 'Envoyer les propositions commerciales aux clients', 'propale', 1, 'propal_advance', 'send', 'd', 0),
(26, 'Cloturer les propositions commerciales', 'propale', 1, 'cloturer', NULL, 'd', 0),
(27, 'Supprimer les propositions commerciales', 'propale', 1, 'supprimer', NULL, 'd', 0),
(28, 'Exporter les propositions commerciales et attributs', 'propale', 1, 'export', NULL, 'r', 0),
(41, 'Read projects and tasks (shared projects or projects I am contact for). Can also enter time consumed on assigned tasks (timesheet)', 'projet', 1, 'lire', NULL, 'r', 1),
(42, 'Create/modify projects and tasks (shared projects or projects I am contact for)', 'projet', 1, 'creer', NULL, 'w', 0),
(44, 'Delete project and tasks (shared projects or projects I am contact for)', 'projet', 1, 'supprimer', NULL, 'd', 0),
(45, 'Export projects', 'projet', 1, 'export', NULL, 'd', 0),
(61, 'Lire les fiches d''intervention', 'ficheinter', 1, 'lire', NULL, 'r', 1),
(62, 'Creer/modifier les fiches d''intervention', 'ficheinter', 1, 'creer', NULL, 'w', 0),
(64, 'Supprimer les fiches d''intervention', 'ficheinter', 1, 'supprimer', NULL, 'd', 0),
(67, 'Exporter les fiches interventions', 'ficheinter', 1, 'export', NULL, 'r', 0),
(68, 'Envoyer les fiches d''intervention par courriel', 'ficheinter', 1, 'ficheinter_advance', 'send', 'r', 0),
(69, 'Valider les fiches d''intervention ', 'ficheinter', 1, 'ficheinter_advance', 'validate', 'a', 0),
(70, 'DÃ©valider les fiches d''intervention', 'ficheinter', 1, 'ficheinter_advance', 'unvalidate', 'a', 0),
(71, 'Read members'' card', 'adherent', 1, 'lire', NULL, 'r', 1),
(72, 'Create/modify members (need also user module permissions if member linked to a user)', 'adherent', 1, 'creer', NULL, 'w', 0),
(74, 'Remove members', 'adherent', 1, 'supprimer', NULL, 'd', 0),
(75, 'Setup types of membership', 'adherent', 1, 'configurer', NULL, 'w', 0),
(76, 'Export members', 'adherent', 1, 'export', NULL, 'r', 0),
(78, 'Read subscriptions', 'adherent', 1, 'cotisation', 'lire', 'r', 1),
(79, 'Create/modify/remove subscriptions', 'adherent', 1, 'cotisation', 'creer', 'w', 0),
(81, 'Lire les commandes clients', 'commande', 1, 'lire', NULL, 'r', 1),
(82, 'Creer/modifier les commandes clients', 'commande', 1, 'creer', NULL, 'w', 0),
(84, 'Valider les commandes clients', 'commande', 1, 'order_advance', 'validate', 'd', 0),
(86, 'Envoyer les commandes clients', 'commande', 1, 'order_advance', 'send', 'd', 0),
(87, 'Cloturer les commandes clients', 'commande', 1, 'cloturer', NULL, 'd', 0),
(88, 'Annuler les commandes clients', 'commande', 1, 'order_advance', 'annuler', 'd', 0),
(89, 'Supprimer les commandes clients', 'commande', 1, 'supprimer', NULL, 'd', 0),
(91, 'Lire les charges', 'tax', 1, 'charges', 'lire', 'r', 1),
(92, 'Creer/modifier les charges', 'tax', 1, 'charges', 'creer', 'w', 0),
(93, 'Supprimer les charges', 'tax', 1, 'charges', 'supprimer', 'd', 0),
(94, 'Exporter les charges', 'tax', 1, 'charges', 'export', 'r', 0),
(95, 'Lire CA, bilans, resultats', 'compta', 1, 'resultat', 'lire', 'r', 1),
(101, 'Lire les expeditions', 'expedition', 1, 'lire', NULL, 'r', 1),
(102, 'Creer modifier les expeditions', 'expedition', 1, 'creer', NULL, 'w', 0),
(104, 'Valider les expeditions', 'expedition', 1, 'shipping_advance', 'validate', 'd', 0),
(105, 'Envoyer les expeditions aux clients', 'expedition', 1, 'shipping_advance', 'send', 'd', 0),
(106, 'Exporter les expeditions', 'expedition', 1, 'shipment', 'export', 'r', 0),
(109, 'Supprimer les expeditions', 'expedition', 1, 'supprimer', NULL, 'd', 0),
(111, 'Lire les comptes bancaires', 'banque', 1, 'lire', NULL, 'r', 1),
(112, 'Creer/modifier montant/supprimer ecriture bancaire', 'banque', 1, 'modifier', NULL, 'w', 0),
(113, 'Configurer les comptes bancaires (creer, gerer categories)', 'banque', 1, 'configurer', NULL, 'a', 0),
(114, 'Rapprocher les ecritures bancaires', 'banque', 1, 'consolidate', NULL, 'w', 0),
(115, 'Exporter transactions et releves', 'banque', 1, 'export', NULL, 'r', 0),
(116, 'Virements entre comptes', 'banque', 1, 'transfer', NULL, 'w', 0),
(117, 'Gerer les envois de cheques', 'banque', 1, 'cheque', NULL, 'w', 0),
(121, 'Lire les societes', 'societe', 1, 'lire', NULL, 'r', 1),
(122, 'Creer modifier les societes', 'societe', 1, 'creer', NULL, 'w', 0),
(125, 'Supprimer les societes', 'societe', 1, 'supprimer', NULL, 'd', 0),
(126, 'Exporter les societes', 'societe', 1, 'export', NULL, 'r', 0),
(141, 'Read all projects and tasks (also private projects I am not contact for)', 'projet', 1, 'all', 'lire', 'r', 0),
(142, 'Create/modify all projects and tasks (also private projects I am not contact for)', 'projet', 1, 'all', 'creer', 'w', 0),
(144, 'Delete all projects and tasks (also private projects I am not contact for)', 'projet', 1, 'all', 'supprimer', 'd', 0),
(151, 'Read withdrawals', 'prelevement', 1, 'bons', 'lire', 'r', 1),
(152, 'Create/modify a withdrawals', 'prelevement', 1, 'bons', 'creer', 'w', 0),
(153, 'Send withdrawals to bank', 'prelevement', 1, 'bons', 'send', 'a', 0),
(154, 'credit/refuse withdrawals', 'prelevement', 1, 'bons', 'credit', 'a', 0),
(161, 'Lire les contrats', 'contrat', 1, 'lire', NULL, 'r', 1),
(162, 'Creer / modifier les contrats', 'contrat', 1, 'creer', NULL, 'w', 0),
(163, 'Activer un service d''un contrat', 'contrat', 1, 'activer', NULL, 'w', 0),
(164, 'Desactiver un service d''un contrat', 'contrat', 1, 'desactiver', NULL, 'w', 0),
(165, 'Supprimer un contrat', 'contrat', 1, 'supprimer', NULL, 'd', 0),
(167, 'Export contracts', 'contrat', 1, 'export', NULL, 'r', 0),
(251, 'Consulter les autres utilisateurs', 'user', 1, 'user', 'lire', 'r', 0),
(252, 'Consulter les permissions des autres utilisateurs', 'user', 1, 'user_advance', 'readperms', 'r', 0),
(253, 'Creer/modifier utilisateurs internes et externes', 'user', 1, 'user', 'creer', 'w', 0),
(254, 'Creer/modifier utilisateurs externes seulement', 'user', 1, 'user_advance', 'write', 'w', 0),
(255, 'Modifier le mot de passe des autres utilisateurs', 'user', 1, 'user', 'password', 'w', 0),
(256, 'Supprimer ou desactiver les autres utilisateurs', 'user', 1, 'user', 'supprimer', 'd', 0),
(262, 'Consulter tous les tiers par utilisateurs internes (sinon uniquement si contact commercial). Non effectif pour utilisateurs externes (tjs limitÃ©s Ã  eux-meme).', 'societe', 1, 'client', 'voir', 'r', 1),
(281, 'Lire les contacts', 'societe', 1, 'contact', 'lire', 'r', 1),
(282, 'Creer modifier les contacts', 'societe', 1, 'contact', 'creer', 'w', 0),
(283, 'Supprimer les contacts', 'societe', 1, 'contact', 'supprimer', 'd', 0),
(286, 'Exporter les contacts', 'societe', 1, 'contact', 'export', 'd', 0),
(341, 'Consulter ses propres permissions', 'user', 1, 'self_advance', 'readperms', 'r', 1),
(342, 'Creer/modifier ses propres infos utilisateur', 'user', 1, 'self', 'creer', 'w', 1),
(343, 'Modifier son propre mot de passe', 'user', 1, 'self', 'password', 'w', 1),
(344, 'Modifier ses propres permissions', 'user', 1, 'self_advance', 'writeperms', 'w', 1),
(351, 'Consulter les groupes', 'user', 1, 'group_advance', 'read', 'r', 0),
(352, 'Consulter les permissions des groupes', 'user', 1, 'group_advance', 'readperms', 'r', 0),
(353, 'Creer/modifier les groupes et leurs permissions', 'user', 1, 'group_advance', 'write', 'w', 0),
(354, 'Supprimer ou desactiver les groupes', 'user', 1, 'group_advance', 'delete', 'd', 0),
(358, 'Exporter les utilisateurs', 'user', 1, 'user', 'export', 'r', 0),
(510, 'Read salaries', 'salaries', 1, 'read', NULL, 'r', 0),
(512, 'Create/modify salaries', 'salaries', 1, 'write', NULL, 'w', 0),
(514, 'Delete salaries', 'salaries', 1, 'delete', NULL, 'd', 0),
(517, 'Export salaries', 'salaries', 1, 'export', NULL, 'r', 0),
(520, 'Read loans', 'loan', 1, 'read', NULL, 'r', 1),
(522, 'Create/modify loans', 'loan', 1, 'write', NULL, 'w', 0),
(524, 'Delete loans', 'loan', 1, 'delete', NULL, 'd', 0),
(525, 'Access loan calculator', 'loan', 1, 'calc', NULL, 'r', 0),
(527, 'Export loans', 'loan', 1, 'export', NULL, 'r', 0),
(701, 'Lire les dons', 'don', 1, 'lire', NULL, 'r', 1),
(702, 'Creer/modifier les dons', 'don', 1, 'creer', NULL, 'w', 0),
(703, 'Supprimer les dons', 'don', 1, 'supprimer', NULL, 'd', 0),
(771, 'Read expense reports (yours and your subordinates)', 'expensereport', 1, 'lire', NULL, 'r', 1),
(772, 'Create/modify expense reports', 'expensereport', 1, 'creer', NULL, 'w', 0),
(773, 'Delete expense reports', 'expensereport', 1, 'supprimer', NULL, 'd', 0),
(774, 'Read all expense reports', 'expensereport', 1, 'readall', NULL, 'r', 1),
(775, 'Approve expense reports', 'expensereport', 1, 'approve', NULL, 'w', 0),
(776, 'Pay expense reports', 'expensereport', 1, 'to_paid', NULL, 'w', 0),
(779, 'Export expense reports', 'expensereport', 1, 'export', NULL, 'r', 0),
(1101, 'Lire les bons de livraison', 'expedition', 1, 'livraison', 'lire', 'r', 1),
(1102, 'Creer modifier les bons de livraison', 'expedition', 1, 'livraison', 'creer', 'w', 0),
(1104, 'Valider les bons de livraison', 'expedition', 1, 'livraison_advance', 'validate', 'd', 0),
(1109, 'Supprimer les bons de livraison', 'expedition', 1, 'livraison', 'supprimer', 'd', 0),
(1121, 'Read supplier proposals', 'supplier_proposal', 1, 'lire', NULL, 'w', 1),
(1122, 'Create/modify supplier proposals', 'supplier_proposal', 1, 'creer', NULL, 'w', 1),
(1123, 'Validate supplier proposals', 'supplier_proposal', 1, 'validate_advance', NULL, 'w', 0),
(1124, 'Envoyer les demandes fournisseurs', 'supplier_proposal', 1, 'send_advance', NULL, 'w', 0),
(1125, 'Delete supplier proposals', 'supplier_proposal', 1, 'supprimer', NULL, 'w', 0),
(1126, 'Close supplier price requests', 'supplier_proposal', 1, 'cloturer', NULL, 'w', 0),
(1181, 'Consulter les fournisseurs', 'fournisseur', 1, 'lire', NULL, 'r', 1),
(1182, 'Consulter les commandes fournisseur', 'fournisseur', 1, 'commande', 'lire', 'r', 1),
(1183, 'Creer une commande fournisseur', 'fournisseur', 1, 'commande', 'creer', 'w', 0),
(1184, 'Valider une commande fournisseur', 'fournisseur', 1, 'supplier_order_advance', 'validate', 'w', 0),
(1185, 'Approuver une commande fournisseur', 'fournisseur', 1, 'commande', 'approuver', 'w', 0),
(1186, 'Commander une commande fournisseur', 'fournisseur', 1, 'commande', 'commander', 'w', 0),
(1187, 'Receptionner une commande fournisseur', 'fournisseur', 1, 'commande', 'receptionner', 'd', 0),
(1188, 'Supprimer une commande fournisseur', 'fournisseur', 1, 'commande', 'supprimer', 'd', 0),
(1189, 'Check/Uncheck a supplier order reception', 'fournisseur', 1, 'commande_advance', 'check', 'w', 0),
(1201, 'Lire les exports', 'export', 1, 'lire', NULL, 'r', 1),
(1202, 'Creer/modifier un export', 'export', 1, 'creer', NULL, 'w', 0),
(1231, 'Consulter les factures fournisseur', 'fournisseur', 1, 'facture', 'lire', 'r', 1),
(1232, 'Creer une facture fournisseur', 'fournisseur', 1, 'facture', 'creer', 'w', 0),
(1233, 'Valider une facture fournisseur', 'fournisseur', 1, 'supplier_invoice_advance', 'validate', 'w', 0),
(1234, 'Supprimer une facture fournisseur', 'fournisseur', 1, 'facture', 'supprimer', 'd', 0),
(1235, 'Envoyer les factures par mail', 'fournisseur', 1, 'supplier_invoice_advance', 'send', 'a', 0),
(1236, 'Exporter les factures fournisseurs, attributs et reglements', 'fournisseur', 1, 'facture', 'export', 'r', 0),
(1237, 'Exporter les commande fournisseurs, attributs', 'fournisseur', 1, 'commande', 'export', 'r', 0),
(1251, 'Run mass imports of external data (data load)', 'import', 1, 'run', NULL, 'r', 0),
(1321, 'Exporter les factures clients, attributs et reglements', 'facture', 1, 'facture', 'export', 'r', 0),
(1421, 'Exporter les commandes clients et attributs', 'commande', 1, 'commande', 'export', 'r', 0),
(2401, 'Read actions/tasks linked to his account', 'agenda', 1, 'myactions', 'read', 'r', 1),
(2402, 'Create/modify actions/tasks linked to his account', 'agenda', 1, 'myactions', 'create', 'w', 0),
(2403, 'Delete actions/tasks linked to his account', 'agenda', 1, 'myactions', 'delete', 'w', 0),
(2411, 'Read actions/tasks of others', 'agenda', 1, 'allactions', 'read', 'r', 0),
(2412, 'Create/modify actions/tasks of others', 'agenda', 1, 'allactions', 'create', 'w', 0),
(2413, 'Delete actions/tasks of others', 'agenda', 1, 'allactions', 'delete', 'w', 0),
(2414, 'Export actions/tasks of others', 'agenda', 1, 'export', NULL, 'w', 0),
(20001, 'Read your own holidays', 'holiday', 1, 'read', NULL, 'w', 1),
(20002, 'Create/modify your own holidays', 'holiday', 1, 'write', NULL, 'w', 1),
(20003, 'Delete holidays', 'holiday', 1, 'delete', NULL, 'w', 0),
(20004, 'Read holidays for everybody', 'holiday', 1, 'read_all', NULL, 'w', 0),
(20005, 'Create/modify holidays for everybody', 'holiday', 1, 'write_all', NULL, 'w', 0),
(20006, 'Setup holidays of users (setup and update balance)', 'holiday', 1, 'define_holiday', NULL, 'w', 0),
(59001, 'Visualiser les marges', 'margins', 1, 'liretous', NULL, 'r', 1),
(59002, 'DÃ©finir les marges', 'margins', 1, 'creer', NULL, 'w', 0),
(59003, 'Read every user margin', 'margins', 1, 'read', 'all', 'r', 0),
(63001, 'Read resources', 'resource', 1, 'read', NULL, 'w', 0),
(63002, 'Create/Modify resources', 'resource', 1, 'write', NULL, 'w', 0),
(63003, 'Delete resources', 'resource', 1, 'delete', NULL, 'w', 0),
(63004, 'Link resources to agenda events', 'resource', 1, 'link', NULL, 'w', 0),
(64001, 'DirectPrint', 'printing', 1, 'read', NULL, 'r', 1);

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe`
--

CREATE TABLE IF NOT EXISTS `llx_societe` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) DEFAULT NULL,
  `name_alias` varchar(128) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `ref_int` varchar(60) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `code_client` varchar(24) DEFAULT NULL,
  `code_fournisseur` varchar(24) DEFAULT NULL,
  `code_compta` varchar(24) DEFAULT NULL,
  `code_compta_fournisseur` varchar(24) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT '0',
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `fk_effectif` int(11) DEFAULT '0',
  `fk_typent` int(11) DEFAULT '0',
  `fk_forme_juridique` int(11) DEFAULT '0',
  `fk_currency` varchar(3) DEFAULT NULL,
  `siren` varchar(128) DEFAULT NULL,
  `siret` varchar(128) DEFAULT NULL,
  `ape` varchar(128) DEFAULT NULL,
  `idprof4` varchar(128) DEFAULT NULL,
  `idprof5` varchar(128) DEFAULT NULL,
  `idprof6` varchar(128) DEFAULT NULL,
  `tva_intra` varchar(20) DEFAULT NULL,
  `capital` double DEFAULT NULL,
  `fk_stcomm` int(11) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `prefix_comm` varchar(5) DEFAULT NULL,
  `client` tinyint(4) DEFAULT '0',
  `fournisseur` tinyint(4) DEFAULT '0',
  `supplier_account` varchar(32) DEFAULT NULL,
  `fk_prospectlevel` varchar(12) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `customer_bad` tinyint(4) DEFAULT '0',
  `customer_rate` double DEFAULT '0',
  `supplier_rate` double DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `remise_client` double DEFAULT '0',
  `mode_reglement` tinyint(4) DEFAULT NULL,
  `cond_reglement` tinyint(4) DEFAULT NULL,
  `mode_reglement_supplier` tinyint(4) DEFAULT NULL,
  `cond_reglement_supplier` tinyint(4) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tva_assuj` tinyint(4) DEFAULT '1',
  `localtax1_assuj` tinyint(4) DEFAULT '0',
  `localtax1_value` double(6,3) DEFAULT NULL,
  `localtax2_assuj` tinyint(4) DEFAULT '0',
  `localtax2_value` double(6,3) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `price_level` int(11) DEFAULT NULL,
  `outstanding_limit` double(24,8) DEFAULT NULL,
  `default_lang` varchar(6) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `webservices_url` varchar(255) DEFAULT NULL,
  `webservices_key` varchar(128) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_prefix_comm` (`prefix_comm`,`entity`),
  UNIQUE KEY `uk_societe_code_client` (`code_client`,`entity`),
  UNIQUE KEY `uk_societe_code_fournisseur` (`code_fournisseur`,`entity`),
  UNIQUE KEY `uk_societe_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  KEY `idx_societe_user_creat` (`fk_user_creat`),
  KEY `idx_societe_user_modif` (`fk_user_modif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_address`
--

CREATE TABLE IF NOT EXISTS `llx_societe_address` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `note` text,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_commerciaux`
--

CREATE TABLE IF NOT EXISTS `llx_societe_commerciaux` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_commerciaux` (`fk_soc`,`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_societe_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_log`
--

CREATE TABLE IF NOT EXISTS `llx_societe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datel` datetime DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_statut` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_prices`
--

CREATE TABLE IF NOT EXISTS `llx_societe_prices` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `price_level` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_remise`
--

CREATE TABLE IF NOT EXISTS `llx_societe_remise` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `remise_client` double(6,3) NOT NULL DEFAULT '0.000',
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_remise_except`
--

CREATE TABLE IF NOT EXISTS `llx_societe_remise_except` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `amount_ht` double(24,8) NOT NULL,
  `amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL DEFAULT '0.000',
  `fk_user` int(11) NOT NULL,
  `fk_facture_line` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `multicurrency_amount_ht` double(24,8) NOT NULL DEFAULT '0.00000000',
  `multicurrency_amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `multicurrency_amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_societe_remise_except_fk_user` (`fk_user`),
  KEY `idx_societe_remise_except_fk_soc` (`fk_soc`),
  KEY `idx_societe_remise_except_fk_facture_line` (`fk_facture_line`),
  KEY `idx_societe_remise_except_fk_facture` (`fk_facture`),
  KEY `idx_societe_remise_except_fk_facture_source` (`fk_facture_source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_societe_rib`
--

CREATE TABLE IF NOT EXISTS `llx_societe_rib` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(20) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `default_rib` smallint(6) NOT NULL DEFAULT '0',
  `rum` varchar(32) DEFAULT NULL,
  `date_rum` date DEFAULT NULL,
  `frstrecur` varchar(16) DEFAULT 'FRST',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_socpeople`
--

CREATE TABLE IF NOT EXISTS `llx_socpeople` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_soc` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `civility` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `poste` varchar(80) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabberid` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `no_email` smallint(6) NOT NULL DEFAULT '0',
  `priv` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT '0',
  `fk_user_modif` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `default_lang` varchar(6) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  KEY `idx_socpeople_fk_soc` (`fk_soc`),
  KEY `idx_socpeople_fk_user_creat` (`fk_user_creat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_socpeople_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_socpeople_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_socpeople_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_stock_mouvement`
--

CREATE TABLE IF NOT EXISTS `llx_stock_mouvement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datem` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `value` double DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `type_mouvement` smallint(6) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `inventorycode` varchar(128) DEFAULT NULL,
  `fk_origin` int(11) DEFAULT NULL,
  `origintype` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_stock_mouvement_fk_product` (`fk_product`),
  KEY `idx_stock_mouvement_fk_entrepot` (`fk_entrepot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposal`
--

CREATE TABLE IF NOT EXISTS `llx_supplier_proposal` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposaldet`
--

CREATE TABLE IF NOT EXISTS `llx_supplier_proposaldet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_supplier_proposal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `ref_fourn` varchar(30) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposaldet_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_supplier_proposaldet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_supplier_proposal_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_supplier_proposal_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_tva`
--

CREATE TABLE IF NOT EXISTS `llx_tva` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `fk_typepayment` int(11) DEFAULT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user`
--

CREATE TABLE IF NOT EXISTS `llx_user` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(50) DEFAULT NULL,
  `ref_int` varchar(50) DEFAULT NULL,
  `employee` tinyint(4) DEFAULT '1',
  `fk_establishment` int(11) DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `login` varchar(24) NOT NULL,
  `pass` varchar(128) DEFAULT NULL,
  `pass_crypted` varchar(128) DEFAULT NULL,
  `pass_temp` varchar(128) DEFAULT NULL,
  `api_key` varchar(128) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `civility` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `job` varchar(128) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL,
  `office_fax` varchar(20) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `signature` text,
  `admin` smallint(6) DEFAULT '0',
  `module_comm` smallint(6) DEFAULT '1',
  `module_compta` smallint(6) DEFAULT '1',
  `fk_soc` int(11) DEFAULT NULL,
  `fk_socpeople` int(11) DEFAULT NULL,
  `fk_member` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `note_public` text,
  `note` text,
  `datelastlogin` datetime DEFAULT NULL,
  `datepreviouslogin` datetime DEFAULT NULL,
  `egroupware_id` int(11) DEFAULT NULL,
  `ldap_sid` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL,
  `lang` varchar(6) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `accountancy_code` varchar(32) DEFAULT NULL,
  `nb_holiday` int(11) DEFAULT '0',
  `thm` double(24,8) DEFAULT NULL,
  `tjm` double(24,8) DEFAULT NULL,
  `salary` double(24,8) DEFAULT NULL,
  `salaryextra` double(24,8) DEFAULT NULL,
  `weeklyhours` double(16,8) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_user_login` (`login`,`entity`),
  UNIQUE KEY `uk_user_fk_socpeople` (`fk_socpeople`),
  UNIQUE KEY `uk_user_fk_member` (`fk_member`),
  UNIQUE KEY `uk_user_api_key` (`api_key`),
  KEY `idx_user_fk_societe` (`fk_soc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup`
--

CREATE TABLE IF NOT EXISTS `llx_usergroup` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_usergroup_name` (`nom`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_usergroup_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_usergroup_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_rights`
--

CREATE TABLE IF NOT EXISTS `llx_usergroup_rights` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usergroup` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `fk_usergroup` (`fk_usergroup`,`fk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_usergroup_user`
--

CREATE TABLE IF NOT EXISTS `llx_usergroup_user` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_usergroup` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_usergroup_user` (`entity`,`fk_user`,`fk_usergroup`),
  KEY `fk_usergroup_user_fk_user` (`fk_user`),
  KEY `fk_usergroup_user_fk_usergroup` (`fk_usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_alert`
--

CREATE TABLE IF NOT EXISTS `llx_user_alert` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_clicktodial`
--

CREATE TABLE IF NOT EXISTS `llx_user_clicktodial` (
  `fk_user` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `login` varchar(32) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `poste` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_extrafields`
--

CREATE TABLE IF NOT EXISTS `llx_user_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_user_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_param`
--

CREATE TABLE IF NOT EXISTS `llx_user_param` (
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `param` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `uk_user_param` (`fk_user`,`param`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_user_param`
--

INSERT INTO `llx_user_param` (`fk_user`, `entity`, `param`, `value`) VALUES
(1, 1, 'MAIN_LANG_DEFAULT', 'el_GR');

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_rib`
--

CREATE TABLE IF NOT EXISTS `llx_user_rib` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_user_rights`
--

CREATE TABLE IF NOT EXISTS `llx_user_rights` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_user_rights` (`fk_user`,`fk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=488 ;

--
-- Dumping data for table `llx_user_rights`
--

INSERT INTO `llx_user_rights` (`rowid`, `fk_user`, `fk_id`) VALUES
(422, 1, 11),
(416, 1, 12),
(417, 1, 13),
(418, 1, 14),
(419, 1, 15),
(421, 1, 16),
(423, 1, 19),
(389, 1, 21),
(382, 1, 22),
(383, 1, 24),
(384, 1, 25),
(386, 1, 26),
(388, 1, 27),
(390, 1, 28),
(411, 1, 31),
(408, 1, 32),
(410, 1, 34),
(412, 1, 38),
(458, 1, 41),
(455, 1, 42),
(457, 1, 44),
(459, 1, 45),
(134, 1, 61),
(131, 1, 62),
(133, 1, 64),
(135, 1, 67),
(136, 1, 68),
(137, 1, 69),
(138, 1, 70),
(12, 1, 71),
(7, 1, 72),
(9, 1, 74),
(13, 1, 75),
(11, 1, 76),
(15, 1, 78),
(16, 1, 79),
(85, 1, 81),
(79, 1, 82),
(80, 1, 84),
(81, 1, 86),
(83, 1, 87),
(84, 1, 88),
(86, 1, 89),
(302, 1, 91),
(299, 1, 92),
(301, 1, 93),
(303, 1, 94),
(413, 1, 95),
(69, 1, 101),
(65, 1, 102),
(66, 1, 104),
(67, 1, 105),
(68, 1, 106),
(70, 1, 109),
(451, 1, 111),
(442, 1, 112),
(444, 1, 113),
(446, 1, 114),
(448, 1, 115),
(450, 1, 116),
(452, 1, 117),
(430, 1, 121),
(427, 1, 122),
(429, 1, 125),
(431, 1, 126),
(463, 1, 141),
(462, 1, 142),
(464, 1, 144),
(336, 1, 151),
(333, 1, 152),
(335, 1, 153),
(337, 1, 154),
(112, 1, 161),
(105, 1, 162),
(107, 1, 163),
(109, 1, 164),
(111, 1, 165),
(113, 1, 167),
(432, 1, 262),
(438, 1, 281),
(435, 1, 282),
(437, 1, 283),
(439, 1, 286),
(1, 1, 341),
(2, 1, 342),
(3, 1, 343),
(4, 1, 344),
(46, 1, 510),
(43, 1, 512),
(45, 1, 514),
(47, 1, 517),
(311, 1, 520),
(306, 1, 522),
(308, 1, 524),
(310, 1, 525),
(312, 1, 527),
(316, 1, 701),
(315, 1, 702),
(317, 1, 703),
(39, 1, 771),
(30, 1, 772),
(32, 1, 773),
(34, 1, 774),
(36, 1, 775),
(38, 1, 776),
(40, 1, 779),
(75, 1, 1101),
(73, 1, 1102),
(74, 1, 1104),
(76, 1, 1109),
(229, 1, 1121),
(222, 1, 1122),
(224, 1, 1123),
(226, 1, 1124),
(228, 1, 1125),
(230, 1, 1126),
(231, 1, 1181),
(254, 1, 1182),
(234, 1, 1183),
(235, 1, 1184),
(237, 1, 1185),
(239, 1, 1186),
(241, 1, 1187),
(244, 1, 1188),
(242, 1, 1189),
(485, 1, 1201),
(486, 1, 1202),
(252, 1, 1231),
(247, 1, 1232),
(248, 1, 1233),
(250, 1, 1234),
(251, 1, 1235),
(253, 1, 1236),
(255, 1, 1237),
(483, 1, 1251),
(424, 1, 1321),
(87, 1, 1421),
(468, 1, 2401),
(467, 1, 2402),
(469, 1, 2403),
(473, 1, 2411),
(472, 1, 2412),
(474, 1, 2413),
(475, 1, 2414),
(26, 1, 20001),
(19, 1, 20002),
(21, 1, 20003),
(23, 1, 20004),
(25, 1, 20005),
(27, 1, 20006),
(377, 1, 59001),
(378, 1, 59002),
(379, 1, 59003),
(481, 1, 63001),
(478, 1, 63002),
(480, 1, 63003),
(482, 1, 63004),
(487, 1, 64001);

-- --------------------------------------------------------

--
-- Table structure for table `llx_website`
--

CREATE TABLE IF NOT EXISTS `llx_website` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '1',
  `ref` varchar(24) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `fk_default_home` int(11) DEFAULT NULL,
  `virtualhost` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_modification` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_website_ref` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `llx_website_page`
--

CREATE TABLE IF NOT EXISTS `llx_website_page` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_website` int(11) NOT NULL,
  `pageurl` varchar(16) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_modification` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_website_page_url` (`fk_website`,`pageurl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `llx_accounting_account`
--
ALTER TABLE `llx_accounting_account`
  ADD CONSTRAINT `fk_accounting_account_fk_pcg_version` FOREIGN KEY (`fk_pcg_version`) REFERENCES `llx_accounting_system` (`pcg_version`);

--
-- Constraints for table `llx_adherent`
--
ALTER TABLE `llx_adherent`
  ADD CONSTRAINT `fk_adherent_adherent_type` FOREIGN KEY (`fk_adherent_type`) REFERENCES `llx_adherent_type` (`rowid`),
  ADD CONSTRAINT `adherent_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_boxes`
--
ALTER TABLE `llx_boxes`
  ADD CONSTRAINT `fk_boxes_box_id` FOREIGN KEY (`box_id`) REFERENCES `llx_boxes_def` (`rowid`);

--
-- Constraints for table `llx_budget_lines`
--
ALTER TABLE `llx_budget_lines`
  ADD CONSTRAINT `fk_budget_lines_budget` FOREIGN KEY (`fk_budget`) REFERENCES `llx_budget` (`rowid`);

--
-- Constraints for table `llx_categorie_account`
--
ALTER TABLE `llx_categorie_account`
  ADD CONSTRAINT `fk_categorie_account_fk_account` FOREIGN KEY (`fk_account`) REFERENCES `llx_bank_account` (`rowid`),
  ADD CONSTRAINT `fk_categorie_account_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_contact`
--
ALTER TABLE `llx_categorie_contact`
  ADD CONSTRAINT `fk_categorie_contact_fk_socpeople` FOREIGN KEY (`fk_socpeople`) REFERENCES `llx_socpeople` (`rowid`),
  ADD CONSTRAINT `fk_categorie_contact_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_fournisseur`
--
ALTER TABLE `llx_categorie_fournisseur`
  ADD CONSTRAINT `fk_categorie_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_categorie_fournisseur_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_lang`
--
ALTER TABLE `llx_categorie_lang`
  ADD CONSTRAINT `fk_category_lang_fk_category` FOREIGN KEY (`fk_category`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_member`
--
ALTER TABLE `llx_categorie_member`
  ADD CONSTRAINT `fk_categorie_member_member_rowid` FOREIGN KEY (`fk_member`) REFERENCES `llx_adherent` (`rowid`),
  ADD CONSTRAINT `fk_categorie_member_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_product`
--
ALTER TABLE `llx_categorie_product`
  ADD CONSTRAINT `fk_categorie_product_product_rowid` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_categorie_product_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_project`
--
ALTER TABLE `llx_categorie_project`
  ADD CONSTRAINT `fk_categorie_project_fk_project_rowid` FOREIGN KEY (`fk_project`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_categorie_project_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_societe`
--
ALTER TABLE `llx_categorie_societe`
  ADD CONSTRAINT `fk_categorie_societe_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_categorie_societe_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_categorie_user`
--
ALTER TABLE `llx_categorie_user`
  ADD CONSTRAINT `fk_categorie_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_categorie_user_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`);

--
-- Constraints for table `llx_commande`
--
ALTER TABLE `llx_commande`
  ADD CONSTRAINT `fk_commande_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_commandedet`
--
ALTER TABLE `llx_commandedet`
  ADD CONSTRAINT `fk_commandedet_fk_commande` FOREIGN KEY (`fk_commande`) REFERENCES `llx_commande` (`rowid`),
  ADD CONSTRAINT `fk_commandedet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_commande_fournisseur`
--
ALTER TABLE `llx_commande_fournisseur`
  ADD CONSTRAINT `fk_commande_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_commande_fournisseurdet`
--
ALTER TABLE `llx_commande_fournisseurdet`
  ADD CONSTRAINT `fk_commande_fournisseurdet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_contrat`
--
ALTER TABLE `llx_contrat`
  ADD CONSTRAINT `fk_contrat_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_contrat_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_contratdet`
--
ALTER TABLE `llx_contratdet`
  ADD CONSTRAINT `fk_contratdet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`),
  ADD CONSTRAINT `fk_contratdet_fk_contrat` FOREIGN KEY (`fk_contrat`) REFERENCES `llx_contrat` (`rowid`),
  ADD CONSTRAINT `fk_contratdet_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_contratdet_log`
--
ALTER TABLE `llx_contratdet_log`
  ADD CONSTRAINT `fk_contratdet_log_fk_contratdet` FOREIGN KEY (`fk_contratdet`) REFERENCES `llx_contratdet` (`rowid`);

--
-- Constraints for table `llx_c_departements`
--
ALTER TABLE `llx_c_departements`
  ADD CONSTRAINT `fk_departements_fk_region` FOREIGN KEY (`fk_region`) REFERENCES `llx_c_regions` (`code_region`);

--
-- Constraints for table `llx_c_regions`
--
ALTER TABLE `llx_c_regions`
  ADD CONSTRAINT `fk_c_regions_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `llx_c_country` (`rowid`);

--
-- Constraints for table `llx_c_ziptown`
--
ALTER TABLE `llx_c_ziptown`
  ADD CONSTRAINT `fk_c_ziptown_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `llx_c_country` (`rowid`),
  ADD CONSTRAINT `fk_c_ziptown_fk_county` FOREIGN KEY (`fk_county`) REFERENCES `llx_c_departements` (`rowid`);

--
-- Constraints for table `llx_ecm_directories`
--
ALTER TABLE `llx_ecm_directories`
  ADD CONSTRAINT `fk_ecm_directories_fk_user_m` FOREIGN KEY (`fk_user_m`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_ecm_directories_fk_user_c` FOREIGN KEY (`fk_user_c`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_element_contact`
--
ALTER TABLE `llx_element_contact`
  ADD CONSTRAINT `fk_element_contact_fk_c_type_contact` FOREIGN KEY (`fk_c_type_contact`) REFERENCES `llx_c_type_contact` (`rowid`);

--
-- Constraints for table `llx_expedition`
--
ALTER TABLE `llx_expedition`
  ADD CONSTRAINT `fk_expedition_fk_shipping_method` FOREIGN KEY (`fk_shipping_method`) REFERENCES `llx_c_shipment_mode` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_expeditiondet`
--
ALTER TABLE `llx_expeditiondet`
  ADD CONSTRAINT `fk_expeditiondet_fk_expedition` FOREIGN KEY (`fk_expedition`) REFERENCES `llx_expedition` (`rowid`);

--
-- Constraints for table `llx_expeditiondet_batch`
--
ALTER TABLE `llx_expeditiondet_batch`
  ADD CONSTRAINT `fk_expeditiondet_batch_fk_expeditiondet` FOREIGN KEY (`fk_expeditiondet`) REFERENCES `llx_expeditiondet` (`rowid`);

--
-- Constraints for table `llx_facture`
--
ALTER TABLE `llx_facture`
  ADD CONSTRAINT `fk_facture_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_facturedet`
--
ALTER TABLE `llx_facturedet`
  ADD CONSTRAINT `fk_facturedet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`),
  ADD CONSTRAINT `fk_facturedet_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`);

--
-- Constraints for table `llx_facturedet_rec`
--
ALTER TABLE `llx_facturedet_rec`
  ADD CONSTRAINT `fk_facturedet_rec_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_facture_fourn`
--
ALTER TABLE `llx_facture_fourn`
  ADD CONSTRAINT `fk_facture_fourn_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_facture_fourn_det`
--
ALTER TABLE `llx_facture_fourn_det`
  ADD CONSTRAINT `fk_facture_fourn_det_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_det_fk_facture` FOREIGN KEY (`fk_facture_fourn`) REFERENCES `llx_facture_fourn` (`rowid`);

--
-- Constraints for table `llx_facture_rec`
--
ALTER TABLE `llx_facture_rec`
  ADD CONSTRAINT `fk_facture_rec_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_fichinter`
--
ALTER TABLE `llx_fichinter`
  ADD CONSTRAINT `fk_fichinter_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_fichinterdet`
--
ALTER TABLE `llx_fichinterdet`
  ADD CONSTRAINT `fk_fichinterdet_fk_fichinter` FOREIGN KEY (`fk_fichinter`) REFERENCES `llx_fichinter` (`rowid`);

--
-- Constraints for table `llx_livraison`
--
ALTER TABLE `llx_livraison`
  ADD CONSTRAINT `fk_livraison_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_livraisondet`
--
ALTER TABLE `llx_livraisondet`
  ADD CONSTRAINT `fk_livraisondet_fk_livraison` FOREIGN KEY (`fk_livraison`) REFERENCES `llx_livraison` (`rowid`);

--
-- Constraints for table `llx_paiement_facture`
--
ALTER TABLE `llx_paiement_facture`
  ADD CONSTRAINT `fk_paiement_facture_fk_paiement` FOREIGN KEY (`fk_paiement`) REFERENCES `llx_paiement` (`rowid`),
  ADD CONSTRAINT `fk_paiement_facture_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`);

--
-- Constraints for table `llx_payment_salary`
--
ALTER TABLE `llx_payment_salary`
  ADD CONSTRAINT `fk_payment_salary_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_prelevement_facture`
--
ALTER TABLE `llx_prelevement_facture`
  ADD CONSTRAINT `fk_prelevement_facture_fk_prelevement_lignes` FOREIGN KEY (`fk_prelevement_lignes`) REFERENCES `llx_prelevement_lignes` (`rowid`);

--
-- Constraints for table `llx_prelevement_lignes`
--
ALTER TABLE `llx_prelevement_lignes`
  ADD CONSTRAINT `fk_prelevement_lignes_fk_prelevement_bons` FOREIGN KEY (`fk_prelevement_bons`) REFERENCES `llx_prelevement_bons` (`rowid`);

--
-- Constraints for table `llx_product`
--
ALTER TABLE `llx_product`
  ADD CONSTRAINT `fk_product_barcode_type` FOREIGN KEY (`fk_barcode_type`) REFERENCES `llx_c_barcode_type` (`rowid`),
  ADD CONSTRAINT `fk_product_fk_country` FOREIGN KEY (`fk_country`) REFERENCES `llx_c_country` (`rowid`),
  ADD CONSTRAINT `fk_product_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_product_batch`
--
ALTER TABLE `llx_product_batch`
  ADD CONSTRAINT `fk_product_batch_fk_product_stock` FOREIGN KEY (`fk_product_stock`) REFERENCES `llx_product_stock` (`rowid`);

--
-- Constraints for table `llx_product_customer_price`
--
ALTER TABLE `llx_product_customer_price`
  ADD CONSTRAINT `fk_product_customer_price_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_product_fournisseur_price`
--
ALTER TABLE `llx_product_fournisseur_price`
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`),
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_product_lang`
--
ALTER TABLE `llx_product_lang`
  ADD CONSTRAINT `fk_product_lang_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_product_price`
--
ALTER TABLE `llx_product_price`
  ADD CONSTRAINT `fk_product_price_product` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_product_price_user_author` FOREIGN KEY (`fk_product`) REFERENCES `llx_product` (`rowid`);

--
-- Constraints for table `llx_product_price_by_qty`
--
ALTER TABLE `llx_product_price_by_qty`
  ADD CONSTRAINT `fk_product_price_by_qty_fk_product_price` FOREIGN KEY (`fk_product_price`) REFERENCES `llx_product_price` (`rowid`);

--
-- Constraints for table `llx_projet`
--
ALTER TABLE `llx_projet`
  ADD CONSTRAINT `fk_projet_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_projet_task`
--
ALTER TABLE `llx_projet_task`
  ADD CONSTRAINT `fk_projet_task_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_propal`
--
ALTER TABLE `llx_propal`
  ADD CONSTRAINT `fk_propal_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `llx_projet` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `llx_user` (`rowid`);

--
-- Constraints for table `llx_propaldet`
--
ALTER TABLE `llx_propaldet`
  ADD CONSTRAINT `fk_propaldet_fk_propal` FOREIGN KEY (`fk_propal`) REFERENCES `llx_propal` (`rowid`),
  ADD CONSTRAINT `fk_propaldet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `llx_c_units` (`rowid`);

--
-- Constraints for table `llx_societe_remise_except`
--
ALTER TABLE `llx_societe_remise_except`
  ADD CONSTRAINT `fk_societe_remise_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `llx_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_soc_remise_fk_facture_line` FOREIGN KEY (`fk_facture_line`) REFERENCES `llx_facturedet` (`rowid`),
  ADD CONSTRAINT `fk_soc_remise_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_socpeople`
--
ALTER TABLE `llx_socpeople`
  ADD CONSTRAINT `fk_socpeople_user_creat_user_rowid` FOREIGN KEY (`fk_user_creat`) REFERENCES `llx_user` (`rowid`),
  ADD CONSTRAINT `fk_socpeople_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `llx_societe` (`rowid`);

--
-- Constraints for table `llx_usergroup_rights`
--
ALTER TABLE `llx_usergroup_rights`
  ADD CONSTRAINT `fk_usergroup_rights_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `llx_usergroup` (`rowid`);

--
-- Constraints for table `llx_usergroup_user`
--
ALTER TABLE `llx_usergroup_user`
  ADD CONSTRAINT `fk_usergroup_user_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `llx_usergroup` (`rowid`),
  ADD CONSTRAINT `fk_usergroup_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `llx_user` (`rowid`);




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
