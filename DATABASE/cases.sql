-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 11:33 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `caaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
`id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `issues` varchar(200) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `case_num` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `solve_name2` varchar(50) NOT NULL,
  `solve_name` varchar(50) NOT NULL,
  `solve_remarks` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `employee_id`, `date`, `issues`, `notes`, `case_num`, `branch`, `department`, `status`, `solve_name2`, `solve_name`, `solve_remarks`) VALUES
(75, 'JHR009', '2023-01-21 19:15:57', 'Other Issue', '<p>cannot access network dnpbackuppc</p>', '20230121121557.2666', 'MUAR', 'DIGI', 0, '', '', ''),
(76, 'JHR028', '2023-01-21 19:18:08', 'Printer Issue (PRINTER ERROR)', '<p>&nbsp;</p>', '20230121121808.7696', 'MUAR', 'TM', 0, '', '', ''),
(78, 'JHR134', '2023-01-21 19:21:39', 'Software Issue (ANNECTO ERROR)', '<p>Anecto hang dah 3 kali pagi ni</p>', '20230121122139.5366', 'MUAR', 'TM', 0, '', '', ''),
(79, 'JHR010', '2023-01-21 19:25:09', 'Other Issue', '<p>Pintu tak boleh buka</p>', '20230121122509.6726', 'MUAR', 'AEON WO', 0, '', '', ''),
(80, 'JHR047', '2023-01-21 19:27:56', 'Software Issue (VOIP ERROR)', '<p>voip line 7</p>', '20230121122756.9782', 'MUAR', 'DIGI', 0, '', '', ''),
(81, 'JHR180', '2023-01-21 19:30:52', 'Hardware Issue (PC ERROR)', '<p>pc natasha problem</p>', '20230121123052.1934', 'MUAR', 'TM', 0, '', '', ''),
(82, 'JHR046', '2023-01-22 15:51:13', 'Software Issue (VOIP ERROR)', '<p>VOIP NURNAZIRAH PROBLEM SEBAB CALL UNREACHABLE JE . Fetty CALL ADA RINGING</p>', '20230122085113.2476', 'MUAR', 'COURTS', 0, '', '', ''),
(83, 'JHR180', '2023-01-22 16:06:11', 'Hardware Issue (PC ERROR)', '<p>cpu error</p>', '20230122090611.1143', 'MUAR', 'TM', 0, '', '', ''),
(84, 'JHR047', '2023-01-22 16:13:23', 'Software Issue (VOIP ERROR)', '<p>voip line 7</p>', '20230122091323.1307', 'MUAR', 'DIGI', 0, '', '', ''),
(85, 'JHR180', '2023-01-22 16:25:16', 'Hardware Issue (PC ERROR)', '<p>pc error</p>', '20230122092516.3377', 'MUAR', 'TM', 0, '', '', ''),
(86, 'JHR134', '2023-01-22 16:27:25', 'Software Issue (MS OFFICE ERROR)', '<p>excel tak boleh buka</p>', '20230122092725.9281', 'MUAR', 'TM', 0, '', '', ''),
(87, 'JHR015', '2023-01-22 16:39:30', 'Software Issue (ANNECTO ERROR)', '<p>pc kerap lagging and slow</p>', '20230122093930.2462', 'MUAR', 'DIGI', 0, '', '', ''),
(88, 'JHR051', '2023-01-22 16:43:29', 'Software Issue (ANNECTO ERROR)', '<p>PC hang setiap kali nk buat call dan bila nak update remark</p>', '20230122094329.9906', 'MUAR', 'DIGI', 0, '', '', ''),
(89, 'JHR051', '2023-01-22 16:44:41', 'Hardware Issue (PC ERROR)', '<p>PC TERUS HANG TAK BOLEH TEKAN APA-APA</p>', '20230122094441.1524', 'MUAR', 'DIGI', 0, '', '', ''),
(90, 'JHR053', '2023-01-22 16:45:40', 'Software Issue (VOIP ERROR)', '<p>&nbsp;</p>', '20230122094540.8376', 'MUAR', 'DIGI', 0, '', '', ''),
(91, 'JHR041', '2023-01-22 16:47:36', 'Software Issue (VOIP ERROR)', '<p>VOIP LINE 7,8,9 LEVEL &nbsp;TEAM TM PROBLEM</p>', '20230122094736.1213', 'MUAR', 'TM', 0, '', '', ''),
(92, 'JHR013', '2023-01-22 16:49:45', 'Software Issue (MS OFFICE ERROR)', '<p>MICROSOSOFT EXCEL FAILED TO VIEW</p>', '20230122094945.1773', 'MUAR', 'COURTS', 0, '', '', ''),
(93, 'JHR028', '2023-01-22 16:52:24', 'Hardware Issue (PC ERROR)', '<p>pc hang</p>', '20230122095224.4209', 'MUAR', 'TM', 0, '', '', ''),
(94, 'JHR247', '2023-01-22 16:55:58', 'Software Issue (VOIP ERROR)', '<p>voip problem</p>', '20230122095558.1525', 'MUAR', 'DIGI', 0, '', '', ''),
(95, 'JHR035', '2023-01-22 16:58:28', 'Hardware Issue (PC ERROR)', '<p>CPU TAK BOLEH ON, STUCK DEKAT WINDOWS, ANNECTO CRO PUN KERAP TERKELUAR SENDIRI</p>', '20230122095828.4649', 'MUAR', 'AEON WO', 0, '', '', ''),
(96, 'JHR143', '2023-01-22 17:06:46', 'Hardware Issue (PC ERROR)', '<p>&nbsp;</p>', '20230122100646.7299', 'MUAR', 'DIGI', 0, '', '', ''),
(97, 'JHR041', '2023-01-22 17:08:18', 'Software Issue (MS OFFICE ERROR)', '<p>excel khai tak boleh bukak</p>', '20230122100818.4064', 'MUAR', 'TM', 0, '', '', ''),
(98, 'JHR139', '2023-01-22 17:10:17', 'Software Issue (VOIP ERROR)', '<p>Voip no 7 tendang tak boleh pakai</p>', '20230122101017.3667', 'MUAR', 'DIGI', 0, '', '', ''),
(99, 'JHR241', '2023-01-22 17:11:43', 'Hardware Issue (KEYBOARD ERROR)', '<p>&nbsp;</p>', '20230122101143.7063', 'MUAR', 'DIGI', 0, '', '', ''),
(100, 'JHR241', '2023-01-22 17:12:09', 'Software Issue (VOIP ERROR)', '<p>voip problem</p>', '20230122101209.5910', 'MUAR', 'DIGI', 0, '', '', ''),
(101, 'JHR025', '2023-01-24 10:05:04', 'Hardware Issue (PC ERROR)', '<p>Komputer Tak Boleh On</p>', '20230124030504.3987', 'MUAR', 'ADMIN', 0, '', '', ''),
(102, 'JHR027', '2023-01-24 10:06:13', 'Other Issue', '<p>date and time pc problem</p>', '20230124030613.7570', 'MUAR', 'TM', 0, '', '', ''),
(103, 'JHR241', '2023-01-24 10:09:01', 'Software Issue (ANNECTO ERROR)', '<p>&nbsp;</p>', '20230124030901.3273', 'MUAR', 'DIGI', 0, '', '', ''),
(104, 'JHR023', '2023-01-24 13:32:36', 'Hardware Issue (PC ERROR)', '<p>Komputer nabila intern tetiba shut down</p>', '20230124063236.9873', 'MUAR', 'ADMIN', 0, '', '', ''),
(105, 'JHR041', '2023-01-24 14:45:54', 'Other Issue', '<p>time issue. dah fix tapi still sama</p>', '20230124074554.8018', 'MUAR', 'TM', 0, '', '', ''),
(106, 'JHR028', '2023-01-25 09:06:19', 'Network Issue (NO INTERNET ACCESS)', '<p>no internet access</p>', '20230125020619.4596', 'MUAR', 'TM', 0, '', '', ''),
(107, 'JHR027', '2023-01-25 09:53:32', 'Other Issue', '<p>voice logger problem</p>', '20230125025332.8664', 'MUAR', 'TM', 0, '', '', ''),
(108, 'JHR088', '2023-01-25 11:01:57', 'Network Issue (NO INTERNET ACCESS)', '<p>tiada internet</p>', '20230125040157.9722', 'MUAR', 'ADMIN', 0, '', '', ''),
(109, 'JHR027', '2023-01-25 12:36:36', 'Software Issue (VOIP ERROR)', '<p>&nbsp;</p>', '20230125053636.9573', 'MUAR', 'TM', 0, '', '', ''),
(110, 'JHR027', '2023-01-25 12:37:44', 'Software Issue (ANNECTO ERROR)', '<p>Anecto problem bila nak ke next file. 2 kali cuba sama je</p>', '20230125053744.8662', 'MUAR', 'TM', 0, '', '', ''),
(112, 'PP001', '2023-01-26 12:39:50', 'Software Issue (VOIP ERROR)', '<p>&nbsp;</p>', '20230126053950.7880', 'PULAU PINANG', 'P1/WIMAX', 0, '', '', ''),
(113, 'PP001', '2023-01-26 12:40:29', 'Software Issue (ANNECTO ERROR)', '<p>&nbsp;</p>', '20230126054029.7150', 'PULAU PINANG', 'P1/WIMAX', 0, '', '', ''),
(114, 'KL004', '2023-03-26 12:54:07', 'Software Issue (VOIP ERROR)', '<p>line voip</p>', '20230126055407.5924', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'NUR IZAL NAZA (KL097)', 'restart annecto dan repair.'),
(117, 'KL004', '2023-01-27 17:16:41', 'Software Issue (VOIP ERROR)', '<p>VOIP CALL BREAKING</p>', '20230127101641.4387', 'MUAR', 'AEON NPL', 0, '', '', ''),
(118, 'JHR129', '2023-01-29 10:26:14', 'Hardware Issue (PC ERROR)', '<p>&nbsp;</p>', '20230129032614.5578', 'MUAR', 'ADMIN', 0, '', '', ''),
(119, 'JHR022', '2023-01-29 18:08:56', 'Printer Issue (PRINTER ERROR)', '<p>tak boleh connect dengan printer Canon LBP6030&nbsp;</p>', '20230129110856.6987', 'MUAR', 'FACILITY ASSETS', 0, '', '', ''),
(120, 'JHR009', '2023-01-30 15:11:34', 'Software Issue (VOIP ERROR)', '<p>line 7</p>', '20230130081134.8922', 'MUAR', 'DIGI', 0, '', '', ''),
(121, 'JHR028', '2023-01-30 17:42:51', 'Hardware Issue (PC ERROR)', '<p>&nbsp;</p>', '20230130104251.1772', 'MUAR', 'TM', 0, '', '', ''),
(122, 'JHR034', '2023-01-31 18:20:19', 'Hardware Issue (PC ERROR)', '<p>cro ainul kipas bunyi kuat</p>', '20230131112019.7498', 'MUAR', 'AEON WO', 0, '', '', ''),
(123, 'JHR027', '2023-02-01 16:39:11', 'Software Issue (ANNECTO ERROR)', '<p>ANECTO HANG PC CRO IZAH.&nbsp;</p>', '20230201093911.9115', 'MUAR', 'TM', 0, '', '', ''),
(124, 'JHR170', '2023-02-02 09:07:22', 'Hardware Issue (MOUSE ERROR)', '<p>MOUSE FINANCE PROBLEM. PLEASE BRING ANOTHER MOUSE.</p>', '20230202020722.8583', 'MUAR', 'FINANCE', 0, '', '', ''),
(125, 'JHR028', '2023-02-02 13:47:46', 'Hardware Issue (PC ERROR)', '<ol><li>PC HANG DAN HANG LEPAS ITU SHUT DOWN. PLEASE FIT ASAP&nbsp;</li></ol>', '20230202064746.6408', 'MUAR', 'TM', 0, '', '', ''),
(126, 'JHR015', '2023-02-02 14:59:04', 'Software Issue (VOIP ERROR)', '<p>EXT 311, NEW JOINER VOIP PROBLEM</p>', '20230202075904.7646', 'MUAR', 'DIGI', 0, '', '', ''),
(127, 'JHR058', '2023-02-02 15:56:30', 'Hardware Issue (PC ERROR)', '<p>Pc asyik hang kalau buka banyak tab. Nanti annecto hang asyik terkeluar2 je. Nak buat kerja laju sikit nanti dia hang.&nbsp;</p>', '20230202085630.6671', 'MUAR', 'TM', 0, '', '', ''),
(128, 'JHR009', '2023-02-03 09:17:23', 'Software Issue (VOIP ERROR)', '<p>line 7 problem</p>', '20230203021723.7286', 'MUAR', 'DIGI', 0, '', '', ''),
(129, 'JHR078', '2023-02-03 09:26:47', 'Hardware Issue (MONITOR ERROR)', '<p>MOHON BANTUAN MONITOR LIYANA PROBLEM. GAMBAR BLUR.&nbsp;</p>', '20230203022647.4256', 'MUAR', 'TM', 0, '', '', ''),
(130, 'JHR202', '2023-02-03 11:44:32', 'Software Issue (VOIP ERROR)', '<p>VOIP 7 TENDANG , CANNOT USE&nbsp;</p>', '20230203044432.5208', 'MUAR', 'DIGI', 0, '', '', ''),
(131, 'JHR246', '2023-02-03 12:14:34', 'Hardware Issue (MONITOR ERROR)', '<p>PC KABUR&nbsp;</p>', '20230203051434.9568', 'MUAR', 'DIGI', 0, '', '', ''),
(132, 'JHR242', '2023-02-03 12:22:32', 'Hardware Issue (HEADPHONE ERROR)', '<p>KALAU CUCUK DKT PANEL LAIN DIA TAK BOLEH DENGAR</p>', '20230203052232.8519', 'MUAR', 'DIGI', 0, '', '', ''),
(133, 'JHR046', '2023-02-03 14:38:33', 'Software Issue (VOIP ERROR)', '<p>TAK BOLEH CALL</p><p>CRO AQILLA</p><p>COURTS</p>', '20230203073833.5615', 'MUAR', 'COURTS', 0, '', '', ''),
(134, 'JHR109', '2023-02-03 14:39:58', 'Software Issue (VOIP ERROR)', '<p>bila call customer, dia tendang semula. hanya 0.00 saat</p>', '20230203073958.6296', 'MUAR', 'COURTS', 0, '', '', ''),
(135, 'JHR057', '2023-02-03 14:50:00', 'Software Issue (VOIP ERROR)', '<p>ALL VOIP LINE IS NOT CONNECTED&nbsp;</p>', '20230203075000.8433', 'MUAR', 'DIGI', 0, '', '', ''),
(136, 'JHR242', '2023-02-03 15:49:44', 'Software Issue (VOIP ERROR)', '<p>VOIP 7 TAK BOLEH GUNA. SEOARANG LAGI CRO BERNAMA ABDUL AZIM TURUT TIDAK BOLEH GUNA VOIP 7. DIA SAMPAI STRESS</p>', '20230203084944.9594', 'MUAR', 'DIGI', 0, '', '', ''),
(137, 'JHR172', '2023-02-06 08:50:15', 'Hardware Issue (PC ERROR)', '<p>PC TAK HIDUP</p>', '20230206015015.4780', 'MUAR', 'TM', 0, '', '', ''),
(138, 'JHR083', '2023-02-06 10:41:46', 'Software Issue (MS OFFICE ERROR)', '<p>problem on license</p>', '20230206034146.3450', 'MUAR', 'FINANCE', 0, '', '', ''),
(139, 'JHR247', '2023-02-06 11:13:47', 'Hardware Issue (HEADPHONE ERROR)', '<p>cust tak dengr suara panel cro tk bole dgr voice dri cst</p>', '20230206041347.9804', 'MUAR', 'DIGI', 0, '', '', ''),
(140, 'JHR247', '2023-02-06 11:30:46', 'Hardware Issue (HEADPHONE ERROR)', '<p>CRO MENTION, X DENGAR SUARA CUST BILA BUAT CALL</p>', '20230206043046.7714', 'MUAR', 'DIGI', 0, '', '', ''),
(141, 'JHR118', '2023-02-06 11:33:51', 'Other Issue', '<p>TRY LOG IN D&amp;P REPORTING SYSTEM, TP X BOLEH</p>', '20230206043351.6641', 'MUAR', 'DIGI', 0, '', '', ''),
(142, 'JHR109', '2023-02-06 14:18:34', 'Software Issue (VOIP ERROR)', '<p>customer tak dengar suara saya. tapi saya dengar suara customer.</p>', '20230206071834.4112', 'MUAR', 'COURTS', 0, '', '', ''),
(143, 'JHR241', '2023-02-06 16:04:45', 'Hardware Issue (MONITOR ERROR)', '<p>SCREEN TAK BERAPA CLEAR, DAH TRY EDIT RESOLUTION PUN STILL WORD TAK AUTO FOCUS, PENING BILA TGK SCREEN LAMA-LAMA.&nbsp;</p>', '20230206090445.3763', 'MUAR', 'DIGI', 0, '', '', ''),
(144, 'JHR136', '2023-02-06 17:20:44', 'Other Issue', '<p>CONCISE PROBLEM&nbsp;</p><figure class="image"><img src="blob:https://web.whatsapp.com/1d05ea4a-dce7-4761-8c04-2922f18fbb2c"></figure>', '20230206102044.2114', 'MUAR', 'TM', 0, '', '', ''),
(145, 'JHR057', '2023-02-06 17:30:58', 'Other Issue', '<p>NETWORK (DNPBACKUP) CANNOT ACCESS</p>', '20230206103058.9007', 'MUAR', 'DIGI', 0, '', '', ''),
(146, 'JHR027', '2023-02-07 09:08:32', 'Software Issue (VOIP ERROR)', '<p>suara cust x dengar. volume x.</p>', '20230207020832.7178', 'MUAR', 'TM', 0, '', '', ''),
(147, 'JHR247', '2023-02-07 11:17:46', 'Software Issue (ANNECTO ERROR)', '<p>anncto lag setiap 10 mnt</p>', '20230207041746.7370', 'MUAR', 'DIGI', 0, '', '', ''),
(148, 'JHR242', '2023-02-07 11:18:40', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO LAGG BANYAK KALI</p>', '20230207041840.8978', 'MUAR', 'DIGI', 0, '', '', ''),
(149, 'JHR015', '2023-02-07 15:20:46', 'Other Issue', '<p>DDMS ID BLOCK , LOG IN MORE THAN 3 TIMES</p>', '20230207082046.7846', 'MUAR', 'DIGI', 0, '', '', ''),
(150, 'JHR124', '2023-02-07 16:19:00', 'Hardware Issue (PC ERROR)', '<p>Asyik lag sahaja, kadang okey kadang tak. Tiap hari macam ni tpi ada masa. Time lag kena restart, dalam 1 hari mesti kena restart balik. TQ</p>', '20230207091900.1565', 'MUAR', 'TM', 0, '', '', ''),
(151, 'JHR057', '2023-02-07 17:28:02', 'Software Issue (VOIP ERROR)', '<p>Line 7 auto disconnected. Line 8 putus-putus</p>', '20230207102802.7412', 'MUAR', 'DIGI', 0, '', '', ''),
(152, 'JHR040', '2023-02-08 08:12:50', 'Software Issue (OS/WINDOWS FAULTY)', '<p>cpu error</p>', '20230208011250.1957', 'MUAR', 'AEON WO', 0, '', '', ''),
(153, 'JHR242', '2023-02-08 10:22:12', 'Software Issue (VOIP ERROR)', '<p>ASAL NAK CALL JE LAGG</p>', '20230208032212.8531', 'MUAR', 'DIGI', 0, '', '', ''),
(154, 'JHR138', '2023-02-08 10:30:45', 'Hardware Issue (HEADPHONE ERROR)', '<p>Sound tak dengar&nbsp;</p>', '20230208033045.3284', 'MUAR', 'DIGI', 0, '', '', ''),
(155, 'JHR118', '2023-02-08 10:40:26', 'Software Issue (ANNECTO ERROR)', '<p>Sistem annecto kerap terkeluar sendiri semasa tengah buat panggilan. Ada masa tiba-tiba CRO tidak dapat dengar suara pelanggan, tetapi pelanggan boleh dengar suara CRO. Untuk selesaikan isu ini, CR', '20230208034026.4958', 'MUAR', 'DIGI', 0, '', '', ''),
(156, 'JHR247', '2023-02-08 11:00:56', 'Software Issue (ANNECTO ERROR)', '<p>ANNCTO ASYIK LAG</p>', '20230208040056.4920', 'MUAR', 'DIGI', 0, '', '', ''),
(157, 'JHR009', '2023-02-08 12:21:58', 'Hardware Issue (PC ERROR)', '<p>pc shutdown sendiri&nbsp;</p>', '20230208052158.6665', 'MUAR', 'DIGI', 0, '', '', ''),
(158, 'JHR253', '2023-02-08 13:07:34', 'Facility Assets Issue', '<ol><li>lampu pendaflour kelip kelip di IT side</li></ol>', '20230208060734.6102', 'MUAR', 'INFORMATION TECHNOLOGY', 0, '', '', ''),
(159, 'JHR028', '2023-02-08 14:15:20', 'Software Issue (VOIP ERROR)', '<p><strong>VL STAFF JHR 267 TIDAK BOLEH DENGAR</strong></p>', '20230208071520.4732', 'MUAR', 'TM', 0, '', '', ''),
(160, 'JHR129', '2023-02-09 09:08:48', 'Other Issue', '<p>cpu berbunyi&nbsp;</p>', '20230209020848.4108', 'MUAR', 'ADMIN', 0, '', '', ''),
(161, 'JHR189', '2023-02-10 09:34:45', 'Software Issue (VOIP ERROR)', '<p>call tak dengar&nbsp;</p>', '20230210023445.8148', 'MUAR', 'COURTS', 0, '', '', ''),
(162, 'JHR118', '2023-02-10 10:56:48', 'Hardware Issue (PC ERROR)', '<p>PC kerap shut down dengan sendiri apabila CRO sedang buat kerja. CPU dah berbunyi kuat.&nbsp;</p>', '20230210035648.2485', 'MUAR', 'DIGI', 0, '', '', ''),
(163, '', '2023-02-10 14:55:13', 'Software Issue (ANNECTO ERROR)', '<p>JHR 269 EXT 315, ISSUE ANNECTO CRASH, INTERNET TIADA. LPS TAMBAH RAM</p>', '20230210075513.3401', 'MUAR', 'DIGI', 0, '', '', ''),
(164, 'JHR129', '2023-02-13 10:23:02', 'Other Issue', '<p>CPU BERBUNYI&nbsp;</p>', '20230213032302.8569', 'MUAR', 'ADMIN', 0, '', '', ''),
(165, 'JHR247', '2023-02-13 10:23:02', 'Hardware Issue (HEADPHONE ERROR)', '<p>cust tak dengr suara cro</p>', '20230213032302.2268', 'MUAR', 'DIGI', 0, '', '', ''),
(166, 'JHR247', '2023-02-13 11:14:52', 'Hardware Issue (HEADPHONE ERROR)', '<p>cust tak dapat dengr suara panel</p>', '20230213041452.2188', 'MUAR', 'DIGI', 0, '', '', ''),
(167, 'JHR047', '2023-02-13 12:34:31', 'Software Issue (MS OFFICE ERROR)', '<p>powerpoint tak boleh read</p>', '20230213053431.9040', 'MUAR', 'ZAKAT', 0, '', '', ''),
(168, 'JHR148', '2023-02-14 08:56:49', 'Hardware Issue (RAM ERROR)', '<p>PC KEEP RESTARTING SEVERAL TIME PLEASE ASSISTS</p>', '20230214015649.2030', 'MUAR', 'AEON WO', 0, '', '', ''),
(169, 'JHR139', '2023-02-14 09:10:21', 'Other Issue', '<p>semalam dah tukar password dekat dmms tapi tak boleh masuk , failed dan dmms kena block&nbsp;</p>', '20230214021021.1926', 'MUAR', 'DIGI', 0, '', '', ''),
(170, 'JHR139', '2023-02-14 10:48:48', 'Other Issue', '<p>LINE NO 7 PROBLEM&nbsp;</p>', '20230214034848.8864', 'MUAR', 'DIGI', 0, '', '', ''),
(171, 'JHR041', '2023-02-14 11:44:30', 'Other Issue', '<p>PC MANAGER SHIKIN TIME AND DATE SETTING LARI. MINTA IT TEAM UNTUK SOLVE TQ&nbsp;</p>', '20230214044430.6577', 'MUAR', 'TM', 0, '', '', ''),
(172, 'JHR242', '2023-02-14 15:12:51', 'Hardware Issue (PC ERROR)', '<p>KALAU NAK CALL, CONNECTING TERUS LAGG/TERKELUAR</p>', '20230214081251.2873', 'MUAR', 'DIGI', 0, '', '', ''),
(173, 'JHR046', '2023-02-14 16:42:09', 'Software Issue (VOIP ERROR)', '<p>voip cro anisa tak dengar</p>', '20230214094209.1003', 'MUAR', 'COURTS', 0, '', '', ''),
(174, 'JHR242', '2023-02-15 09:41:49', 'Software Issue (ANNECTO ERROR)', '<p>BILA CALL, CONNECTING TERUS LOADING AND LAGG</p>', '20230215024149.8997', 'MUAR', 'DIGI', 0, '', '', ''),
(175, 'JHR017', '2023-02-16 09:17:10', 'Other Issue', '<p>Morning... tolong update kepada window 10</p>', '20230216021710.9867', 'MUAR', 'AEON WO', 0, '', '', ''),
(176, 'JHR242', '2023-02-16 10:48:38', 'Software Issue (ANNECTO ERROR)', '<p>NAK CALL, CONNECTING TERUS LAGG</p>', '20230216034838.1515', 'MUAR', 'DIGI', 0, '', '', ''),
(177, 'JHR053', '2023-02-16 12:51:43', 'Hardware Issue (PC ERROR)', '<p>CPU PROBLEM MATI TIBA-TIBA</p>', '20230216055143.8257', 'MUAR', 'DIGI', 0, '', '', ''),
(178, 'JHR242', '2023-02-16 17:51:39', 'Software Issue (ANNECTO ERROR)', '<p>BILA CALL, CONNECTING AND LAGG</p>', '20230216105139.7877', 'MUAR', 'DIGI', 0, '', '', ''),
(179, 'JHR242', '2023-02-17 09:47:43', 'Software Issue (ANNECTO ERROR)', '<p>CALL, CONECCTING LAGG</p>', '20230217024743.9165', 'MUAR', 'DIGI', 0, '', '', ''),
(180, 'JHR202', '2023-02-17 14:34:08', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO SELALU SANGAT LAG BILA TEKAN CALL DAN AKAN KELUAR POP UP WINDOWS PROBLEM . PAGI TADI DAH ADA IT STAFF BETULKAN TAPI MASIH BERULANG LAGI</p>', '20230217073408.6575', 'MUAR', 'DIGI', 0, '', '', ''),
(181, 'JHR057', '2023-02-20 10:24:35', 'Other Issue', '<p>WHATSAPP TK BOLEH ACCESS</p>', '20230220032435.2797', 'MUAR', 'DIGI', 0, '', '', ''),
(184, 'JHR266', '2023-02-21 08:56:03', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO KEEP BUFFERING &amp; FORCE TO CLOSED. PC SLOW AND BUFFERING TOO</p>', '20230221015603.8851', 'MUAR', 'COURTS', 0, '', '', ''),
(185, 'JHR261', '2023-02-22 09:03:44', 'Hardware Issue (PC ERROR)', '<p>pc lack</p>', '20230222020344.1611', 'MUAR', 'AEON WO', 0, '', '', ''),
(186, 'JHR022', '2023-02-22 10:40:23', 'Printer Issue (PRINTER ERROR)', '<p>paper stuck.&nbsp;</p>', '20230222034023.9851', 'MUAR', 'FACILITY ASSETS', 0, '', '', ''),
(187, 'JHR202', '2023-02-22 11:51:30', 'Software Issue (ANNECTO ERROR)', '<p>annecto lag setiap kali tekan button call . dan keluar pop up&nbsp;</p>', '20230222045130.7993', 'MUAR', 'DIGI', 0, '', '', ''),
(188, 'JHR041', '2023-02-22 16:12:59', 'Other Issue', '<p>DDMS CANNOT BE LOG IN PLEASE CHECK N FIX. TQ&nbsp;</p>', '20230222091259.5279', 'MUAR', 'TM', 0, '', '', ''),
(189, 'JHR267', '2023-02-22 16:21:14', 'Software Issue (MS OFFICE ERROR)', '<p>MS OFFICE (EXCEL CANNOT EDIT)</p>', '20230222092114.3368', 'MUAR', 'TM', 0, '', '', ''),
(190, 'JHR242', '2023-02-23 08:51:50', 'Hardware Issue (MONITOR ERROR)', '<p>MONITOR PROBLEM, TERMATI SENDIRI</p>', '20230223015150.6236', 'MUAR', 'DIGI', 0, '', '', ''),
(191, 'JHR138', '2023-02-23 12:59:28', 'Hardware Issue (HEADPHONE ERROR)', '<p>Sound problem</p>', '20230223055928.6907', 'MUAR', 'DIGI', 0, '', '', ''),
(192, 'JHR022', '2023-02-23 14:14:00', 'Printer Issue (PRINTER ERROR)', '<p>paper jam. da banyak kali tarik paper masih lagi sangkut.</p>', '20230223071400.5692', 'MUAR', 'FACILITY ASSETS', 0, '', '', ''),
(193, 'JHR202', '2023-02-23 14:40:05', 'Software Issue (ANNECTO ERROR)', '<p>annecto lag lagi sekali setiap kali tekan call .</p>', '20230223074005.7791', 'MUAR', 'DIGI', 0, '', '', ''),
(194, 'JHR266', '2023-02-23 16:41:46', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO DAH LEBIH 5 KALI STUCK AND REFORCED TO CLOSED&nbsp;</p>', '20230223094146.1073', 'MUAR', 'COURTS', 0, '', '', ''),
(195, 'JHR076', '2023-02-23 18:07:00', 'Other Issue', '<p>Nak request 1 set PC baru untuk new joiner (team adli)</p>', '20230223110700.3813', 'MUAR', 'COURTS', 0, '', '', ''),
(196, 'JHR118', '2023-02-24 11:04:21', 'Software Issue (ANNECTO ERROR)', '<p>annecto problem , waktu call, tak dengar suara cust &amp; cust tak dengar suara CRO</p>', '20230224040421.3496', 'MUAR', 'DIGI', 0, '', '', ''),
(197, 'JHR118', '2023-02-24 12:19:43', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO PROBLEM, TAK DENGAR SUARA RECEIVER CALL AND RECEIVER CALL TAK DENGAR SUARA CRO</p>', '20230224051943.1534', 'MUAR', 'DIGI', 0, '', '', ''),
(198, 'JHR252', '2023-02-24 15:39:16', 'Hardware Issue (KEYBOARD ERROR)', '<p>Request for new keyboard</p>', '20230224083916.1348', 'MUAR', 'HUMAN RESOURCE', 0, '', '', ''),
(199, 'JHR088', '2023-02-26 09:15:22', 'Network Issue (NO INTERNET ACCESS)', '<p>&nbsp;</p>', '20230226021522.8513', 'MUAR', 'ADMIN', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(200, 'JHR117', '2023-02-26 12:56:30', 'Other Issue', '<p>&nbsp;</p>', '20230226055630.7089', 'MUAR', 'COURTS', 0, '', '', ''),
(201, 'JHR046', '2023-02-26 16:55:00', 'Other Issue', '<p>boleh tlg setup kan 1 pc utk new joiner courts team amelia</p>', '20230226095500.5640', 'MUAR', 'COURTS', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done'),
(202, '', '2023-02-27 16:35:35', 'Other Issue', '<p><strong>REQUEST 1 SET PC UNTUK NEW JOINER (NURMIZA) - TEAM ADLI</strong></p>', '20230227093535.7880', 'MUAR', 'COURTS', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done'),
(203, '', '2023-02-28 10:46:33', 'Other Issue', '<p>WEBMAIL LOGIN FAILED.</p>', '20230228034633.9180', 'MUAR', 'MANAGEMENT/SLT', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Done via new links'),
(204, '', '2023-02-28 16:50:08', 'Network Issue (NO INTERNET ACCESS)', '<p>PC NEW JOINER NURULWANI&nbsp;</p>', '20230228095008.2901', 'MUAR', 'COURTS', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done'),
(205, '', '2023-02-28 17:24:52', 'Other Issue', '<p>ddms locked id..</p>', '20230228102452.1977', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(206, '', '2023-03-01 10:34:40', 'Other Issue', '<p>ID DDMS SYSTEM MASIH TAK BOLEH LOG IN</p>', '20230301033440.6464', 'MUAR', 'ADMIN', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(207, 'JHR223', '2023-03-01 13:44:03', 'Other Issue', '<p>&nbsp;</p>', '20230301064403.6364', 'MUAR', 'DIGITAL MARKETING', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Done pulangkan laptop dpacc'),
(208, 'JHR066', '2023-03-02 11:20:09', 'Other Issue', '<p>&nbsp;</p><p>Assalamualaikum, &nbsp;sya &nbsp;nak maklumkn cro berikut gagal untuk login ddms dan dah kena locked, mohon jasa baik pihak it untuk assist dan rectify the issue &nbsp;&nbsp;</p><p>&nbsp;1. MUHAMMAD HANIF BIN ROSLI &nbsp;JHR226&nbsp;</p><p>2. NUR AINUL JANNAH BINTI ABD RAZAK &nbsp; JHR122 &nbsp;&nbsp;</p><p>3.NUR NAZIRAH BINTI ROKMAN &nbsp; JHR262 &nbsp;&nbsp;</p><p>4. MUHAMMAD ALIF AQEEM BIN KHAMIS &nbsp; JHR 272</p>', '20230302042009.3461', 'MUAR', 'COURTS', 0, 'NUR ELINADIRA (JHR273)', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(209, 'JHR202', '2023-03-02 11:48:26', 'Software Issue (ANNECTO ERROR)', '<p>ANNENTO KERAP LAG SEMULA SETIAP KALI TEKAN BUTTON CALL DAN AKAN TERKELUAR SENDIRI&nbsp;</p>', '20230302044826.4661', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(210, 'JHR172', '2023-03-03 09:28:30', 'Hardware Issue (HEADPHONE ERROR)', '<p>TIME CALL CUSTOMER TAK DENGAR SUARA KITA</p>', '20230303022830.3250', 'MUAR', 'TM', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done'),
(211, 'JHR043', '2023-03-03 14:44:11', 'Hardware Issue (MOUSE ERROR)', '<p>mouse tak boleh gerak</p>', '20230303074411.8685', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done. Change to new mouse'),
(212, 'JHR009', '2023-03-05 14:33:40', 'Other Issue', '<p>Request set up 1 set pc (new joiner)&nbsp;</p>', '20230305073340.8415', 'MUAR', 'DIGI', 0, 'NUR ELINADIRA (JHR273)', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(213, 'JHR091', '2023-03-06 12:08:03', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO KERAP SANGAT HANG, DAH OK HARI TU, TAPI HARI YANG SAMA WAKTU BERLAINAN AKAN HANG SEMULA</p>', '20230306050803.6140', 'MUAR', 'AEON WO', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(214, 'JHR170', '2023-03-07 10:15:18', 'Other Issue', '<p>IP UBS PROBLEM. PLEASE SOLVE ASAP. TQ!</p>', '20230307031518.6250', 'MUAR', 'FINANCE', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(215, 'JHR041', '2023-03-07 17:21:04', 'Other Issue', '<p>DNPBACKUPPC cannot access. kindly please help to check and fixed it immediately. thankyou&nbsp;</p>', '20230307102104.1921', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(216, 'JHR058', '2023-03-07 17:31:02', 'Hardware Issue (HEADPHONE ERROR)', '<p>CALL CUSTOMER TAK DENGAR SUARA KITA</p>', '20230307103102.4552', 'MUAR', 'TM', 0, 'NUR ELINADIRA (JHR273)', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(217, 'JHR242', '2023-03-07 17:45:46', 'Software Issue (VOIP ERROR)', '<p>VOIP TK &nbsp;JELAS</p>', '20230307104546.9192', 'MUAR', 'DIGI', 0, 'ABDUL HADI HASSAN (JHR253)', 'HAIRUL NIZAM MOHD (JHR018)', 'cuba tukar tempat duduk  dengan org lain untuk test voip id / dms id....# dah tukar pc # dah tukar kabel network tetapi network port belum dikemaskini # dah repair dms software + voip setting'),
(218, 'JHR136', '2023-03-08 09:01:19', 'Other Issue', '<p>DDSM system cannot login. please check and fix it tq&nbsp;</p>', '20230308020119.6837', 'MUAR', 'TM', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(219, 'JHR202', '2023-03-08 13:47:16', 'Software Issue (ANNECTO ERROR)', '<p>annecto lag kerap sangat bila tekan call . then ada &nbsp;pop up error</p>', '20230308064716.1666', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(220, 'JHR009', '2023-03-08 17:23:57', 'Other Issue', '<p>WEBMAIL PROBLEM</p>', '20230308102357.5965', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(221, 'JHR026', '2023-03-08 17:34:29', 'Other Issue', '<p>Webmail " The login is invalid "</p>', '20230308103429.5076', 'MUAR', 'ADMIN', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(222, 'JHR015', '2023-03-09 10:23:09', 'Hardware Issue (PC ERROR)', '<p>JHR 242 EXT 301 &amp; JHR 269 EXT 312, PC LAG DAN SHUTDOWN TIBA2 BERLAKU DGN KERAP SEPANJANG HARI . MOHON TINDAKAN SEGERA</p>', '20230309032309.1165', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(223, 'JHR056', '2023-03-13 11:16:57', 'Other Issue', '<p>DDMS TIDAK BOLEH LOG IN</p>', '20230313041657.1485', 'MUAR', 'ADMIN', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(224, 'JHR139', '2023-03-14 09:36:47', 'Software Issue (VOIP ERROR)', '<p>Line no 7 tendang</p>', '20230314023647.9234', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(225, 'JHR240', '2023-03-14 10:50:48', 'Hardware Issue (PC ERROR)', '<p>&nbsp;</p>', '20230314035048.7100', 'MUAR', 'DIGI', 0, 'NUR ELINADIRA (JHR273)', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(226, 'JHR240', '2023-03-14 10:53:11', 'Hardware Issue (PC ERROR)', '<p>&nbsp;</p>', '20230314035311.2486', 'MUAR', 'DIGI', 0, 'NUR ELINADIRA (JHR273)', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(227, 'JHR118', '2023-03-15 14:31:18', 'Software Issue (VOIP ERROR)', '<p>cust x dgr suara cro. setiap kali issue ni berlaku, dah restart pc, tapi another 20 minutes jadi balik perkara yg sama . PLEASE RESPOND IMMEDIATELY&nbsp;</p>', '20230315073118.7532', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(228, 'JHR118', '2023-03-15 14:53:24', 'Software Issue (VOIP ERROR)', '<p>CUST X DGR SUARA CRO , IT OFFICER BARU BETULKAN TETAPI ISU YANG SAMA TERJADI SEMULA. PLEASE RESPOND IMMEDIATELY</p>', '20230315075324.6610', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(229, 'JHR118', '2023-03-16 10:53:07', 'Software Issue (VOIP ERROR)', '<p>CUST TAK DGR SUARA CRO SEMASA CALL, ISU YANG SAMA ASYIK BERULANG. PLEASE RESPOND IMMEDIATELY.</p>', '20230316035307.6930', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(230, 'JHR118', '2023-03-16 11:04:13', 'Software Issue (VOIP ERROR)', '<p>CUST TAK DGR SUARA CRO SEMASA CALL, ISU YANG SAMA ASYIK BERULANG. PLEASE RESPOND IMMEDIATELY.</p>', '20230316040413.8240', 'MUAR', 'DIGI', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(231, 'JHR041', '2023-03-16 17:06:05', 'Other Issue', '<p>DNPBACKPPC cannot view. kindly please help to check and fix immediately tq</p>', '20230316100605.5659', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(233, 'JHR076', '2023-03-16 17:39:40', 'Software Issue (ANNECTO ERROR)', '<p><strong>ANNECTO ALAUDIN PROBLEM KEJAP2 HANG</strong></p>', '20230316103940.6509', 'MUAR', 'COURTS', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(234, 'JHR040', '2023-03-17 09:19:18', 'Software Issue (ANNECTO ERROR)', '<p>annecto kerap keluor</p>', '20230317021918.4139', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(235, 'JHR139', '2023-03-17 15:54:10', 'Other Issue', '<p>LINE NO 7 PROBLEM , LINE NO 8 TAK DGR BUNYI PAPE KEJAP OKY KEJAP K.O&nbsp;</p>', '20230317085410.9586', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(236, 'JHR041', '2023-03-17 18:07:01', 'Other Issue', '<p>dnpbackpc tak boleh buka, excel tak boleh vie. kindly please help to solve it immediately tq</p>', '20230317110701.2731', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(237, 'JHR041', '2023-03-20 12:21:37', 'Other Issue', '<p>DNPBACKUPPC N EXCEL CANNOT OPEN PLEASE HELP TO FIX IT IMMEDIATELY TQ&nbsp;</p>', '20230320052137.9199', 'MUAR', 'TM', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(238, 'JHR057', '2023-03-20 13:43:24', 'Software Issue (VOIP ERROR)', '<p>VOIP LINE 7 : CUSTOMER TK DGR SUARA KITA, KITA PUN DGR SUARA CUSTOMER PUTUS - PUTUS&nbsp;</p>', '20230320064324.9524', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(239, 'JHR009', '2023-03-20 14:03:10', 'Other Issue', '<p>WEBMAIL PROBLEM</p>', '20230320070310.4737', 'MUAR', 'DIGI', 0, '', '', ''),
(240, 'JHR139', '2023-03-20 14:21:05', 'Other Issue', '<p>MINTA BETULKAN LINE NO 7 , LINE LAIN TAK DGR LANGSUNG APA CUST CKP&nbsp;</p>', '20230320072105.6677', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(241, 'JHR009', '2023-03-20 17:25:05', 'Facility Assets Issue', '<p>Air dari siling bocor</p>', '20230320102505.6170', 'MUAR', 'DIGI', 0, '', '', ''),
(242, 'JHR073', '2023-03-21 08:59:16', 'Network Issue (NO INTERNET ACCESS)', '<p>INTERNET TAK BOLEH CONNECT, DAH DISABLE DAN ENABLE KAN, DAH TARIK CABUT PORT MASIH TAK BOLEH CONNECT</p>', '20230321015916.5396', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(243, 'KL099', '2023-03-22 12:18:39', 'Hardware Issue (HEADPHONE ERROR)', '<p>CALL TAK DENGAR BUNYI</p>', '20230322051839.9096', 'KUALA LUMPUR(HQ)', 'COURTS', 0, '', 'NUR IZAL NAZA (KL097)', 'done checked usb headset tidak bersambung dengan baik'),
(244, 'KL003', '2023-03-22 12:46:38', 'Hardware Issue (PC ERROR)', '<p>PC HANG , DAH BANYAK KALI RESTART</p>', '20230322054638.2345', 'KUALA LUMPUR(HQ)', 'COLLECTIUS', 0, '', 'NUR IZAL NAZA (KL097)', 'membuat penambahan ram 2GB screen pc freeze akibat ram tidak mencukupi'),
(245, 'KL070', '2023-03-22 14:34:31', 'Other Issue', '<p>TAKBOLEH DENGAR VOICE LOG&nbsp;</p>', '20230322073431.4508', 'KUALA LUMPUR(HQ)', 'COLLECTIUS', 0, '', 'NUR IZAL NAZA (KL097)', 'voice logger IP tidak disambung ke server'),
(246, 'JHR026', '2023-03-22 15:10:49', 'Network Issue (NO INTERNET ACCESS)', '<p>PC - MONITOR 53 : ADMIN</p>', '20230322081049.3762', 'MUAR', 'ADMIN', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(247, 'JHR041', '2023-03-22 16:24:10', 'Other Issue', '<p>dnpbackuppc &amp; excel tak boleh buka please check n fix it immediately&nbsp;</p>', '20230322092410.4598', 'MUAR', 'TM', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(248, 'KL080', '2023-03-23 17:19:14', 'Other Issue', '<p>TAK BOLEH BUAT CALL DC DARI TADI</p>', '20230323101914.8018', 'KUALA LUMPUR(HQ)', 'COURTS', 0, '', 'NUR IZAL NAZA (KL097)', 'restart annecto'),
(249, 'KL008', '2023-03-24 11:02:24', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO SELALU HANG..SETIAP KALI HANG AUTO LOGOUT</p>', '20230324040224.5137', 'KUALA LUMPUR(HQ)', 'COLLECTIUS', 0, '', 'NUR IZAL NAZA (KL097)', 'restart annecto dan repair'),
(250, 'KL099', '2023-03-24 14:49:36', 'Hardware Issue (HEADPHONE ERROR)', '<p>TAK BOLEH DENGAR CALL&nbsp;</p>', '20230324074936.2773', 'KUALA LUMPUR(HQ)', 'COURTS', 0, '', 'NUR IZAL NAZA (KL097)', 'restart annecto'),
(251, 'KL103', '2023-03-25 10:50:18', 'Other Issue', '<p>nak login annecto &nbsp;tak boleh</p>', '20230325035018.4644', 'KUALA LUMPUR(HQ)', 'COURTS', 0, '', 'NUR IZAL NAZA (KL097)', 'repair annecto'),
(252, 'KL104', '2023-03-25 12:20:56', 'Hardware Issue (PC ERROR)', '<p>Hi,</p><p>I have issue with my pc as I am doing my work suddenly my pc hanged. I then restarted the pc however it happens again just before I continue my work. I have no idea why my pc always being like this and sometimes no internet connection as well. I hope someone can solve the issue for me.</p><p>&nbsp;</p><p>Thanks and Regards,</p><p>Farhana Tahir.</p>', '20230325052056.7163', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT', 0, '', 'NUR IZAL NAZA (KL097)', 'usb slod pc tidak berguna dengan baik akibat karat dan pc berlaku hang kerana kegunaan ram mencapai tahap yang tinggi sehingga 90% tidak dapat membuat penambahan ram kenana tiada stock yang cukup. dapat menyelesaikan masalah line kerana window tidak '),
(253, 'JHR028', '2023-03-26 08:30:37', 'Network Issue (NO INTERNET ACCESS)', '<p>no internet access pc norashikin. please check &amp; fix it thank you&nbsp;</p>', '20230326013037.7512', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(254, 'JHR025', '2023-03-26 08:53:39', 'Other Issue', '<p>&nbsp;</p>', '20230326015339.5745', 'MUAR', 'ADMIN', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(255, 'JHR027', '2023-03-26 10:01:01', 'Software Issue (VOIP ERROR)', '<p>suara cust berdouble bila buat call</p>', '20230326040101.2631', 'MUAR', 'TM', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(256, 'JHR036', '2023-03-26 10:49:15', 'Other Issue', '<p>Network Dnpbackup tak boleh buka</p>', '20230326044915.5802', 'MUAR', 'ADMIN', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(257, 'JHR238', '2023-03-26 15:26:02', 'Other Issue', '<p>DNPBACKUPPC TAK BOLEH BUKA MINTA CHECK DAN FIXED IMMEDIATELY</p>', '20230326092602.5509', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(258, 'JHR256', '2023-03-26 15:26:36', 'Other Issue', '<p>Tak boleh buka Network DNPBackup</p>', '20230326092636.6621', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(259, 'JHR089', '2023-03-26 15:27:08', 'Other Issue', '<p>DNPBACKUPPC TAK BOLEH BUKA MINTA CHECK DAN FIXED IMMEDIATELY</p>', '20230326092708.7292', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(260, 'JHR089', '2023-03-26 15:28:05', 'Other Issue', '<p>DNPBACKUPPC TAK BOLEH BUKA MINTA CHECK DAN FIXED IMMEDIATELY</p>', '20230326092805.7781', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(261, 'JHR021', '2023-03-26 15:28:46', 'Other Issue', '<p><i>DNPBACKUPPC TAK BOLEH BUKA MINTA CHECK DAN FIXED IMMEDIATELY</i></p>', '20230326092846.9772', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(262, 'JHR139', '2023-03-26 15:53:55', 'Other Issue', '<p>EXCEL CANNOT EXCESS&nbsp;</p>', '20230326095355.7500', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(263, 'KL070', '2023-03-27 09:56:51', 'Hardware Issue (HEADPHONE ERROR)', '<p>HEADPHONE TAKDE SUARA&nbsp;</p>', '20230327035651.5025', 'KUALA LUMPUR(HQ)', 'COLLECTIUS', 0, '', 'NUR IZAL NAZA (KL097)', 'usb headphone tidak tipasang dengan baik'),
(264, 'JHR009', '2023-03-27 12:26:52', 'Software Issue (ANNECTO ERROR)', '<p>ANNEECTO HANG</p>', '20230327062652.1862', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(265, 'JHR238', '2023-03-27 16:05:50', 'Other Issue', '<p>DNPBACKUPPC TAK BOLEH BUKA MINTA CHECK DAN FIXED IMMEDIATELY</p>', '20230327100550.9793', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'done'),
(266, 'JHR256', '2023-03-27 16:06:51', 'Other Issue', '<p>TAK BOLEH BUKA DNPBACKUPPC</p>', '20230327100651.9786', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'done'),
(267, 'JHR242', '2023-03-27 16:07:11', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO HANG BILA BUAT CALL GUNA VOIP 8</p>', '20230327100711.1828', 'MUAR', 'DIGI', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(268, '', '2023-03-27 16:09:06', 'Other Issue', '<p>DNPBACKUPPC TAK BOLEH BUKA MINTA CHECK DAN FIXED IMMEDIATELY</p>', '20230327100906.3141', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'done'),
(269, 'JHR256', '2023-03-28 08:54:54', 'Software Issue (VOIP ERROR)', '<p>VOIP TAK BOLEH DIGUNAKAN / TAK DENGAR</p>', '20230328025454.6702', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(270, 'JHR078', '2023-03-28 09:01:37', 'Software Issue (VOIP ERROR)', '<p>voip problem - all tm department</p>', '20230328030137.3551', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fix'),
(271, 'JHR041', '2023-03-28 10:38:24', 'Other Issue', '<p>DNP BACKUPPC AND EXCEL CANNOT OPEN PLEASE CHECK N FIX IT TQ&nbsp;</p>', '20230328043824.9969', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'done'),
(272, 'PP053', '2023-03-28 11:46:38', 'Software Issue (VOIP ERROR)', '<p>[VOIP][ERROR] line 7, 8 &amp; 9 cannot make a call</p>', '20230328054638.7610', 'PULAU PINANG', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fix!'),
(273, 'PP047', '2023-03-28 11:46:39', 'Software Issue (VOIP ERROR)', '<p>VOIP LINE 7, 8 AND 9 ,THE LINE COULD NOT BE CONNECTED TO THE CUSTOMER</p>', '20230328054639.9999', 'PULAU PINANG', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fix'),
(274, 'PP048', '2023-03-28 11:46:45', 'Software Issue (VOIP ERROR)', '<p>VOIP ERROR&gt; LINE 7,8,9 PROBLEM</p>', '20230328054645.3331', 'PULAU PINANG', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fix'),
(275, 'PP049', '2023-03-28 11:47:36', 'Software Issue (VOIP ERROR)', '<p>VOIP LINE 7,8,9 PROBLEM</p>', '20230328054736.9283', 'PULAU PINANG', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fix'),
(276, 'PP021', '2023-03-28 11:48:34', 'Software Issue (VOIP ERROR)', '<p>voip problem line 7-9</p>', '20230328054834.9524', 'PULAU PINANG', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fix'),
(277, 'KL103', '2023-03-28 12:18:20', 'Other Issue', '<p>nak login annecto &nbsp;tak boleh</p>', '20230328061820.4629', 'KUALA LUMPUR(HQ)', 'COURTS', 0, '', 'NUR IZAL NAZA (KL097)', 'restart annecto dan repair'),
(278, 'KL037', '2023-03-28 12:54:44', 'Software Issue (ANNECTO ERROR)', '<p>I NEED THE SAME ANNECTO AS MUAR ADMIN CAUSE IT ISN''T THE SAME AND I HAVE MANY DIFFICULTIES DOING MY ASSIGNMENTS&nbsp;</p>', '20230328065444.3033', 'KUALA LUMPUR(HQ)', 'ADMIN', 0, '', '', ''),
(279, 'JHR024', '2023-03-28 14:58:24', 'Software Issue (VOIP ERROR)', '<p>voip problem. tak dengar dan kena banyak kali log out log in please check and fix it tq</p>', '20230328085824.5361', 'MUAR', 'TM', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'done'),
(280, 'KL032', '2023-03-28 17:41:01', 'Other Issue', '<p>Need to upgrade or increase ram for better pc performance to complete assignment.</p>', '20230328114101.6790', 'KUALA LUMPUR(HQ)', 'ADMIN', 0, '', '', ''),
(281, 'KL007', '2023-03-28 17:43:14', 'Other Issue', '<p>Need to upgrade pc for better performance.</p>', '20230328114314.5621', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT', 0, '', '', ''),
(282, 'JHR059', '2023-03-29 09:01:55', 'Other Issue', '<p>PC TK BOLEH ACCESS WHATSAPP</p>', '20230329030155.7216', 'MUAR', 'DIGI', 0, '', 'NUR ELINADIRA (JHR273)', 'done'),
(283, 'JHR041', '2023-03-29 09:05:13', 'Other Issue', '<p>DNPBACKPPC AND EXCEL CANNOT OPEN PLEASE CHECK N FIX IT IMMEDIATELY&nbsp;</p>', '20230329030513.5847', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'done'),
(284, 'JHR041', '2023-03-29 09:10:51', 'Software Issue (VOIP ERROR)', '<p>VOIP PROBLEM ALL STAFF LEVEL TM, PLEASE HELP TO CHECK N FIX IT IMMEDIATLY TQ</p>', '20230329031051.8869', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fix'),
(285, 'JHR053', '2023-03-29 10:39:08', 'Software Issue (ANNECTO ERROR)', '<p>assalamualaikum..dimaklumkan annecto tak boleh buka..loading lama..begitu juga dgn cro..mohon bantuan</p>', '20230329043908.6466', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(286, 'JHR010', '2023-03-29 10:40:47', 'Software Issue (ANNECTO ERROR)', '<p>asalamualaikum..dimaklumkan annecto tak boleh buka..loading lama..begitu juga dgn cro..mohon bantuan</p>', '20230329044047.8674', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(287, 'JHR076', '2023-03-29 10:41:53', 'Software Issue (ANNECTO ERROR)', '<p>asalamualaikum..dimaklumkan annecto tak boleh buka..loading lama..begitu juga dgn cro..mohon bantuan</p>', '20230329044153.7617', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(288, 'PP046', '2023-03-29 10:42:49', 'Software Issue (ANNECTO ERROR)', '<p>asalamualaikum..dimaklumkan annecto tak boleh buka..loading lama..begitu juga dgn cro..mohon bantuan</p>', '20230329044249.1831', 'PULAU PINANG', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(289, 'JHR028', '2023-03-29 10:44:14', 'Software Issue (ANNECTO ERROR)', '<p>asalamualaikum..dimaklumkan annecto tak boleh buka..loading lama..begitu juga dgn cro..mohon bantuan</p>', '20230329044414.8241', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(290, 'JHR246', '2023-03-29 12:02:27', 'Hardware Issue (MOUSE ERROR)', '<p>MOUSE AUTO DOUBLE CLICK(URGENT)</p>', '20230329060227.9877', 'MUAR', 'DIGI', 0, '', 'NUR ELINADIRA (JHR273)', 'Done. Change to a new mouse.'),
(291, 'JHR269', '2023-03-29 12:05:01', 'Software Issue (DDMS ERROR)', '<p>ID UNDER LOCKED</p>', '20230329060501.3934', 'MUAR', 'DIGI', 0, '', 'NUR ELINADIRA (JHR273)', 'Done. Change to new password.'),
(292, 'KL085', '2023-03-29 15:28:15', 'Other Issue', '<p>Pdf problem</p>', '20230329092815.8899', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK', 0, '', 'NUR IZAL NAZA (KL097)', 'adobe reader expired'),
(293, 'JHR057', '2023-03-29 16:21:10', 'Other Issue', '<p>DNP BACK UP CANNOT ACCESS</p>', '20230329102110.5492', 'MUAR', 'DIGI', 0, '', 'NUR ELINADIRA (JHR273)', 'Done.'),
(294, 'JHR281', '2023-03-30 09:11:58', 'Hardware Issue (HEADPHONE ERROR)', '<p>voice dengar di CPU</p>', '20230330031158.9408', 'MUAR', 'TM', 0, '', 'NUR ELINADIRA (JHR273)', 'Done '),
(295, 'KL001', '2023-03-30 11:20:17', 'Other Issue', '<p>ANNECTO PROBLEM</p>', '20230330052017.3001', 'KUALA LUMPUR(HQ)', 'COLLECTIUS', 0, '', 'NUR IZAL NAZA (KL097)', 'restart annecto'),
(296, 'KL001', '2023-03-30 11:29:48', 'Other Issue', '<p>ANNECTO HANG</p>', '20230330052948.5323', 'KUALA LUMPUR(HQ)', 'COLLECTIUS', 0, '', 'NUR IZAL NAZA (KL097)', 'restart annecto'),
(297, 'KL008', '2023-03-30 11:54:46', 'Software Issue (ANNECTO ERROR)', '<p>TAK BOLEH TENGOK REPORT!</p>', '20230330055446.1993', 'KUALA LUMPUR(HQ)', 'COLLECTIUS', 0, '', 'NUR IZAL NAZA (KL097)', 'crytal report 32bit not install'),
(298, 'KL084', '2023-03-30 12:31:59', 'Hardware Issue (HEADPHONE ERROR)', '<p>Headphone problem</p>', '20230330063159.9187', 'KUALA LUMPUR(HQ)', 'AIQON AEON', 0, '', 'NUR IZAL NAZA (KL097)', 'masalah headphone kualiti rendah'),
(299, 'KL111', '2023-03-30 12:45:40', 'Hardware Issue (HEADPHONE ERROR)', '<p>HEADPHONE KURANG DENGAR</p>', '20230330064540.4600', 'KUALA LUMPUR(HQ)', 'COURTS', 0, '', 'NUR IZAL NAZA (KL097)', 'usb headphone tidak tipasang dengan baik'),
(300, 'KL098', '2023-03-30 14:22:02', 'Other Issue', '<p>PHONE PROBLEM</p>', '20230330082202.2174', 'KUALA LUMPUR(HQ)', 'COURTS', 0, '', 'NUR IZAL NAZA (KL097)', 'usb headphone tidak tipasang dengan baik'),
(301, 'JHR041', '2023-03-30 17:34:45', 'Other Issue', '<p>dnpbackkpc n excel cannot open please check n help to fix it immediately&nbsp;</p>', '20230330113445.5274', 'MUAR', 'TM', 0, '', 'ABDUL HADI HASSAN (JHR253)', 'Done '),
(302, 'KL014', '2023-03-31 15:17:26', 'Software Issue (VOIP ERROR)', '<p>Line stuck, couldn''t call smoothly, keep stuck and not hear customer voices. may i know why this problem always happen when it comes to end of month, we''re struggling to make collection and at the same time have to face this issues, kindly please fix it asap as we have to run operation smoothly. Thank You</p>', '20230331091726.3516', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', '', ''),
(303, 'KL093', '2023-03-31 15:17:39', 'Software Issue (ANNECTO ERROR)', '<p>SAYA INGIN MEMBERI TAHU YANG ANNECTO SAYA SENTIASA JEM DAN TIBA TIBA KELUAR DAN BILA CALL DAN LEPAS REMARK AKAN TERSEKAT&nbsp;</p>', '20230331091739.1053', 'KUALA LUMPUR(HQ)', 'COOP BANK', 0, '', '', ''),
(304, 'KL093', '2023-03-31 15:18:07', 'Network Issue (NO INTERNET ACCESS)', '<p>&nbsp;</p>', '20230331091807.3756', 'KUALA LUMPUR(HQ)', 'COOP BANK', 0, '', '', ''),
(305, 'KL093', '2023-03-31 15:18:28', 'Software Issue (VOIP ERROR)', '<p>&nbsp;</p>', '20230331091828.9524', 'KUALA LUMPUR(HQ)', 'COOP BANK', 0, '', '', ''),
(306, 'KL065', '2023-03-31 15:18:40', 'Software Issue (ANNECTO ERROR)', '<p>PLEASE FIX</p>', '20230331091840.7077', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', '', ''),
(307, 'KL083', '2023-03-31 15:18:57', 'Software Issue (ANNECTO ERROR)', '<p>LINE BREAKING WHEN ENGAGE WITH CUSTOMER</p>', '20230331091857.6823', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', '', ''),
(308, 'KL077', '2023-03-31 15:20:18', 'Software Issue (VOIP ERROR)', '<p>TIME CALL, LINE SANGKUT-SANGKUT DAN DENGAR SUARA CUST SAMAR-SAMAR</p>', '20230331092018.6086', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', '', ''),
(309, 'KL028', '2023-03-31 15:21:14', 'Software Issue (ANNECTO ERROR)', '<p>ANNECTO CALL</p>', '20230331092114.6462', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', '', ''),
(310, 'KL033', '2023-03-31 16:54:30', 'Software Issue (VOIP ERROR)', '<p>&nbsp;</p>', '20230331105430.6489', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=311;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
