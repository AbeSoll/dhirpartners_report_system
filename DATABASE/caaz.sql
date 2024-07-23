-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 04:05 PM
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
-- Table structure for table `carbooking`
--

CREATE TABLE IF NOT EXISTS `carbooking` (
`id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `car` varchar(200) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `department` varchar(30) NOT NULL,
  `start_date` varchar(120) NOT NULL,
  `return_date` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carbooking`
--

INSERT INTO `carbooking` (`id`, `employee_id`, `name`, `phone`, `car`, `destination`, `reason`, `department`, `start_date`, `return_date`) VALUES
(1, 'JHR273', 'NUR ELINADIRA BINTI MUHAMAD ALI', '0177680400', 'AXIA', 'KL', 'DDMS setup', 'INFORMATION TECHNOLOGY', '2023-06-20', '2023-06-22'),
(2, 'JHR253', 'ABDUL HADI HASSAN', '0177680400', 'STAREX', 'Penang Branch', 'PC setup', 'INFORMATION TECHNOLOGY', '2023-06-21', '2023-06-23'),
(3, 'JHR283', 'NUR FARAIN KASIM', '0123456789', '', 'KLHQ', 'This is dummy test.\r\n283 is for Mohd Haziq Azfar Othman, not NUR FARAIN KASIM', 'MANAGEMENT/SLT', '2023-06-26', '2023-06-26');

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
) ENGINE=InnoDB AUTO_INCREMENT=1472 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `employee_id`, `date`, `issues`, `notes`, `case_num`, `branch`, `department`, `status`, `solve_name2`, `solve_name`, `solve_remarks`) VALUES
(1182, 'JHR298', '2024-01-01 16:10:35', 'Software Issue (PD)', '<p>SIP PD PROBLEM (NO SOUND)</p>', '20240101091035.6584', 'MUAR', 'DIGI', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1183, 'JHR084', '2024-01-02 17:46:30', 'Software Issue (DDMS)', '<p>x boleh nak buat call. keluar pop up window &nbsp;tulis you dont have any microphone connected to this computer</p>', '20240102104630.7252', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1184, 'JHR043', '2024-01-04 09:34:17', 'Network Issue', '<p>TIADA INTERNET&nbsp;</p>', '20240104023417.8561', 'MUAR', 'DIGI', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the computer'),
(1185, 'JHR013', '2024-01-04 09:34:50', 'Microsoft Office Issue', '<p>EXCEL CANNOT DOWNLOAD, OFFICE UPDATING AND FAILED</p>', '20240104023450.4913', 'MUAR', 'MANAGEMENT/SLT', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1186, 'JHR009', '2024-01-04 09:36:19', 'Setup New PC', '<p>Request to set up 1 pc for new joiner at ext 252</p>', '20240104023619.7124', 'MUAR', 'P1/WIMAX', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'setup new PC for P1 Wimax'),
(1187, 'JHR041', '2024-01-04 16:34:08', 'Software Issue (DDMS)', '<p>hi it team please help to fix n check trying on calling activity tq&nbsp;</p>', '20240104093408.7752', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1188, 'JHR041', '2024-01-05 09:12:22', 'Hardware Issue', '<p>Hi IT team, kindly please help to check n fix PC my CRO (ZULAILA) hang . thank you</p>', '20240105021222.1178', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1189, 'JHR013', '2024-01-05 10:10:46', 'Printer Issue', '<p>Req untuk connect kan printer PC Amirul Training and Compliance department</p>', '20240105031046.1179', 'MUAR', 'TRAINING', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1190, 'JHR027', '2024-01-05 11:15:02', 'Software Issue (DDMS)', '<p>websocket</p>', '20240105041502.3399', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Resetting the Web Setting in DDMS'),
(1191, 'JHR041', '2024-01-05 14:33:29', 'Software Issue (DDMS)', '<p>request to setting SIP WEBPHONE cro ZULAILA ext 243. tq&nbsp;</p>', '20240105073329.5455', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1192, 'JHR216', '2024-01-05 15:44:15', 'Network Issue', '<p>No Internet</p>', '20240105084415.1751', 'MUAR', 'COMPLIANCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1193, 'JHR041', '2024-01-07 15:02:43', 'DNPBACKUP Error', '<p>hi it team please help to check n fix my dnpbckpc cannot access. please fix it immediately as i need urgently, Thankyou.&nbsp;</p>', '20240107080243.6187', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1194, 'JHR057', '2024-01-07 15:04:46', 'DNPBACKUP Error', '<p>DNP BACKUP TK BOLEH BUKA</p>', '20240107080446.8701', 'MUAR', 'DIGI', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1195, 'JHR028', '2024-01-08 11:33:51', 'Network Issue', '<p>tak connect internet, urgent</p>', '20240108043351.5571', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1196, 'JHR298', '2024-01-08 11:35:54', 'Network Issue', '<p>no internert accesss, SILAP REMARK ID JHR 298, URGENT</p>', '20240108043554.8831', 'MUAR', 'DIGI', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1197, 'JHR057', '2024-01-08 14:36:48', 'Hardware Issue', '<p>PC QAMARUL (DIGI - JHR 329) KERAP LOADING&nbsp;</p>', '20240108073648.1868', 'MUAR', 'DIGI', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1198, 'JHR057', '2024-01-09 08:52:49', 'Hardware Issue', '<p>cpu tak boleh on</p>', '20240109015249.8902', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1199, 'KL004', '2024-01-09 11:31:18', 'Software Issue (PD)', '<p>ID PD UTK 5008 TAK BOLEH LOGIN</p>', '20240109043118.5464', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1200, 'KL004', '2024-01-09 14:30:06', 'Software Issue (DDMS)', '<p>minta bantuan setting web phone adib anydesk 521732840</p>', '20240109073006.1159', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1201, 'JHR057', '2024-01-10 08:46:14', 'Hardware Issue', '<p>cpu tak boleh on</p>', '20240110014614.6741', 'MUAR', 'DIGI', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1202, 'KL004', '2024-01-10 11:22:04', 'Software Issue (DDMS)', '<p>DDMS HANG</p>', '20240110042204.3392', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'DDMS connection lost due to heavy loads. Clear the PD history in trunk then system back to normal.'),
(1203, 'JHR041', '2024-01-10 11:40:18', 'Software Issue (DDMS)', '<p>HI IT TEAM KINDLY PLEASE CHECK DDMS PROBLEM AT TM TEAM. (LOADING)&nbsp;</p>', '20240110044018.7257', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'WEB Socket RTC Delay due to many queue in PD auto dialing. System running usual, but DELAY the automated system dialing.'),
(1208, 'KL005', '2024-01-16 14:28:14', 'Software Issue (PD)', '<p>Minta bantuan. Line call sangkut2. PD and call biasa sama sahaja</p>', '20240116072814.4687', 'KUALA LUMPUR(HQ)', 'AIQON AEON', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1209, 'JHR020', '2024-01-17 12:09:29', 'Software Issue (DDMS)', '<p>beta mewakili slruh opis bhwesenye &nbsp;- trying~ ...itu shje</p>', '20240117050929.9900', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1210, 'JHR189', '2024-01-17 12:12:22', 'Hardware Issue', '<p>PC TAK BERFUNGSI</p>', '20240117051222.6209', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1211, 'JHR057', '2024-01-17 14:13:26', 'Software Issue (DDMS)', '<p>LEVEL 3B TRYING</p>', '20240117071326.9961', 'MUAR', 'DIGI', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1212, 'JHR041', '2024-01-17 14:32:16', 'Software Issue (DDMS)', '<p>hi team tolong check n fix tm side voip connecting to web socket. please fix immediately tq.</p>', '20240117073216.2249', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1213, 'JHR011', '2024-01-17 14:33:20', 'Software Issue (DDMS)', '<p>webphone problem</p>', '20240117073320.5668', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1214, 'JHR009', '2024-01-17 14:38:05', 'Printer Issue', '<p>PRINT ERROR FROM MY PC</p>', '20240117073805.9872', 'MUAR', 'CELCOM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1215, 'JHR015', '2024-01-17 16:00:05', 'SMS Issue', '<p>TM blasting sms hari ini, tapi tidak naik remark sent.. boleh check?</p>', '20240117090005.9392', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Admin  upload more than 20k TPS files make the system delay and queue the process.'),
(1216, 'JHR041', '2024-01-18 09:10:10', 'Software Issue (PD)', '<p>hi it team, i''ve upload file for campaign 1011 kindly please check sebab dari semalam tak masuk. please help to fix it urgent and immediately. thanks in advance</p>', '20240118021010.5360', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', '159 files has been upload for PD 1011 SME RFC TM. The delay due to pending in queue during Admin upload TPS files 20 k.'),
(1217, 'JHR041', '2024-01-18 17:17:15', 'Network Issue', '<p>hi team kindly please check pc akmal (ext 243) cannot connect on concise n whatsapp (might be internet problem). please help to fix tq&nbsp;</p>', '20240118101715.8833', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1218, 'JHR027', '2024-01-18 17:39:04', 'Software Issue (DDMS)', '<p>WEBPHONE RINGGING TAPI XDE SUARA</p>', '20240118103904.8683', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1219, 'JHR027', '2024-01-19 14:51:20', 'Software Issue (DDMS)', '<p>webphone CRO zulaikha problem.&nbsp;</p>', '20240119075120.6927', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1220, 'KL004', '2024-01-19 17:40:48', 'Software Issue (DDMS)', '<p>KL LINE TRYING</p>', '20240119104048.5605', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Reset Issabel WEB RTC and open the web phone trungking line.'),
(1221, 'JHR084', '2024-01-22 08:54:51', 'Hardware Issue', '<p>cpu x hidup</p>', '20240122015451.7185', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1222, 'JHR041', '2024-01-22 09:04:13', 'Hardware Issue', '<p>hi morning team kindly please check immediately pc hidayu &amp; and noramirra error. please check n fix it immediately tq&nbsp;</p>', '20240122020413.5811', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Change with a new PC for CRO  Hidayu'),
(1223, 'KL004', '2024-01-22 11:15:45', 'Software Issue (PD)', '<p>BSN : ID PD 5043 PROBLEM TAK BOLEH LOGIN</p>', '20240122041545.6352', 'KUALA LUMPUR(HQ)', 'BSN', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'set the SIP 5043 into Issabel system'),
(1224, 'JHR066', '2024-01-22 14:50:34', 'Software Issue (DDMS)', '<p>hi it, team courts mengalami msalah call xbl;h go through (kick out/tendang) ketika buat panggilan</p>', '20240122075034.8431', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1225, 'JHR041', '2024-01-22 14:52:43', 'Software Issue (DDMS)', '<p>HI TEAM IT. PLEASE CHECK CALL (VOIP ) FOR TELCO SIDE AUTO REJECTED CALL. PLEASE FIX IT IMMEDIATELY TQ</p>', '20240122075243.8664', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1226, 'JHR011', '2024-01-22 14:55:17', 'Software Issue (DDMS)', '<p>TAK BOLEH CALL</p>', '20240122075517.7690', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1227, 'JHR027', '2024-01-22 15:26:24', 'Software Issue (PD)', '<p>HIDAYU X DGR SUARA CUST BILA BUAT PD&nbsp;</p>', '20240122082624.8735', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1228, '', '2024-01-22 17:41:29', 'DNPBACKUP Error', '<p>hi please check dnpbckuppc saya tak boleh buka. please fix immediately sbb nak buat report tq.&nbsp;</p>', '20240122104129.1803', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1229, 'JHR020', '2024-01-23 14:58:56', 'Software Issue (DDMS)', '<p>id maimunah kene locked</p>', '20240123075856.6324', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1230, 'JHR020', '2024-01-23 17:20:17', 'Software Issue (DDMS)', '<p>trying menusuk kalbuku</p>', '20240123102017.2496', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Reset Issabel WEB RTC and open the web phone trungking line.'),
(1231, 'JHR041', '2024-01-23 17:23:00', 'Software Issue (DDMS)', '<p>hi please fix voip trying call at telco side</p>', '20240123102300.9723', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Reset Issabel WEB RTC and open the web phone trungking line.'),
(1232, 'JHR028', '2024-01-26 08:48:28', 'Hardware Issue', '<p>pc error</p>', '20240126014828.4218', 'MUAR', 'CELCOM WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1233, 'JHR041', '2024-01-26 10:07:15', 'Hardware Issue', '<p>HI IT TEAM PC FOR EMAIL KUTOOLS PROBLEM PLEASE CHECK N FIX IT IMMEDIATELY&nbsp;</p>', '20240126030715.9829', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1234, 'JHR016', '2024-01-28 08:46:07', 'Software Issue (DDMS)', '<p>today call &nbsp;o.. &nbsp;</p>', '20240128014607.4038', 'MUAR', 'COURTS', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'relogin the DDMS Application.'),
(1235, 'JHR028', '2024-01-28 08:53:02', 'Hardware Issue', '<p>cro syafiq- pc error</p>', '20240128015302.6023', 'MUAR', 'CELCOM WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1236, 'JHRI009', '2024-01-30 14:51:33', 'Software Issue (DDMS)', '<p>ddms is locked due to wrong password</p>', '20240130075133.9154', 'MUAR', 'FINANCE', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1237, 'JHR023', '2024-01-31 09:58:54', 'Hardware Issue', '<p>PC PROBLEM DAN NAK REPLACE OTHERS ADMIN PC..</p>', '20240131025854.1205', 'MUAR', 'ADMIN', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1238, 'JHR010', '2024-01-31 12:11:38', 'Setup New PC', '<p>Request setup pc new cro Aeon. Tq</p>', '20240131051138.4938', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1239, 'JHR031', '2024-02-01 14:53:47', 'Setup New PC', '<p>Assalamualaikum&nbsp;</p><p>&nbsp;</p><p>Req sekali lagi untuk Team Training dengan penjelasan yang lebih jitu&nbsp;</p><p>Kami ingin memohon kerjasama untuk setup PC dan DDMS(SIP/VOIP) mengikut senarai nama CRO yang terlibat di bilik BCP/Hybrid Room</p><p>MUHAMAD RAIHAN BIN RAMLAN&nbsp;</p><p>NURUL ASYIKIN BINTI KARIM</p><p>&nbsp;MIMI NUR AMALIA BINTI MAT NASIR</p><p>&nbsp;UNGKU MAIMUNAH BT UNGKU ABD JAMAL</p><p>&nbsp;NUR ZULAILA BINTI HASNOL EAIDI</p><p>&nbsp;MUHAMMAD FAHMI BIN NAZRI</p><p>', '20240201075347.2386', 'MUAR', 'TRAINING', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'will proceed tomorrow morning and evening.'),
(1240, 'JHR041', '2024-02-01 15:57:24', 'Software Issue (DDMS)', '<p>hi it team please help fix ddms cro NAZREEN . cannot access tq</p>', '20240201085724.2857', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1241, 'KL014', '2024-02-02 09:33:28', 'Network Issue', '<p>PC NO NETWORK. ALREADY CHANGED PORT FEW TIMES, STILL PROBLEM OCCURS</p>', '20240202023328.3522', 'KUALA LUMPUR(HQ)', 'BSN', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Motherboard LAN Port problem. Replace with other PC and setting the DDMS Web Phone for this client.'),
(1242, 'JHR041', '2024-02-02 11:52:57', 'Software Issue (DDMS)', '<p>HI TEAM PLEASE CHECK VOIP PROBLEM FOR AKMAL &amp; AINANADIA.. UNCLEAR CONVERSATION AND NO SOUND&nbsp;</p>', '20240202045257.2904', 'MUAR', 'TM', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1243, 'JHR119', '2024-02-02 15:10:36', 'Hardware Issue', '<p>pc yang di gunakan &nbsp;asyikin &nbsp;di &nbsp;bcp room lambat.. mohon kerjasama pihak &nbsp;it ..</p>', '20240202081036.2819', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1244, 'JHR034', '2024-02-04 11:10:28', 'Software Issue (OS/WINDOWS FAULTY)', '<p>google chroome tak boleh bukak sekaligus ddms</p>', '20240204041028.5097', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Replace with another PC.'),
(1245, 'JHR071', '2024-02-05 17:59:08', 'Software Issue (DDMS)', '<p>WEBPHONE - "CALL IS BEING FORWARDED"</p>', '20240205105908.6867', 'MUAR', 'DIGI', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1246, 'JHR028', '2024-02-06 14:07:44', 'Software Issue (DDMS)', '<p>CONNECTING TO WEB SOCKET ERROR</p>', '20240206070744.9040', 'MUAR', 'CELCOM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1247, 'JHR034', '2024-02-06 14:19:20', 'Software Issue (PD)', '<p>firzanah tak boleh click campaign untuk PD call</p>', '20240206071920.9024', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1248, 'JHR041', '2024-02-06 15:50:09', 'Software Issue (DDMS)', '<p>hi it team please check n fix voip raihan (235) . cannot make a call&nbsp;</p>', '20240206085009.8410', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1249, 'JHR020', '2024-02-07 12:26:44', 'Software Issue (DDMS)', '<p>trying - wakil sume rakyat2</p>', '20240207052644.7207', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1250, 'JHR027', '2024-02-07 16:15:45', 'Software Issue (DDMS)', '<p>bila cro call, ada yang terkeluar dan x calling</p>', '20240207091545.5393', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1251, 'JHR010', '2024-02-08 08:55:22', 'Setup New PC', '<p>salam,</p><p>Request for setup pc new cro Daniel</p>', '20240208015522.5593', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done - AMBIL PC DARI STORE'),
(1252, 'JHR041', '2024-02-08 09:14:02', 'Hardware Issue', '<p>PLEASE CHECK PC FOR NEW JOINER. SET UP AGAIN, PROBLEM WHEN LOG IN</p>', '20240208021402.8271', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1254, 'JHR027', '2024-02-08 12:00:32', 'Software Issue (PD)', '<p>LINE PD PROBLEM. CUSTOMER MAKLUM SUARA CRO KURANG JELAS. SANGKUT-SANGKUT</p>', '20240208050032.1958', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1255, 'JHR041', '2024-02-09 09:25:01', 'Software Issue (DDMS)', '<p>hi team kindly please help new joiner (HAZIEMAH) DDMS cannot connect call. kindly please fix immediately tq&nbsp;</p>', '20240209022501.1699', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1256, 'JHR027', '2024-02-09 10:35:35', 'Software Issue (PD)', '<p>PD ISSUE. TRYING AND CALL BEING FORWARDED</p>', '20240209033535.5925', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'no problem'),
(1257, 'KL037', '2024-02-13 09:01:55', 'Software Issue (DDMS)', '<p>INTERNET HAS NO PROBLEM BUT CAN''T ACCESS/OPEN DDMS</p>', '20240213020155.3622', 'KUALA LUMPUR(HQ)', 'ADMIN', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1258, 'KL004', '2024-02-13 09:02:25', 'Software Issue (DDMS)', '<p>DDMS TAK BOLEH BUKA</p>', '20240213020225.9703', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, 'MUHATHIR MAKHTAR (JHR190)', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1259, 'JHR041', '2024-02-13 09:20:51', 'Software Issue (DDMS)', '<p>morning please help fix voip azimah. cannor access . please fix immediately tq (EXT 243 , JHR 344)</p><p>&nbsp;</p>', '20240213022051.5859', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1260, 'JHR033', '2024-02-13 09:50:23', 'Network Issue', '<p>CRO afiqah, CIP program. CPU problem minta tukar cpu baru di BCP centre room. terima kasih</p>', '20240213025023.2216', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1261, 'JHR023', '2024-02-13 10:06:36', 'Hardware Issue', '<p>PC VIRUS</p>', '20240213030636.6029', 'MUAR', 'ADMIN', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1262, 'JHR027', '2024-02-13 11:39:08', 'Software Issue (OS/WINDOWS FAULTY)', '<p>CONCISE X BOLEH BUKAK. MICROSOFT EDGE N INTERNET EXPLORE DAH TEKAN BNYK KALI, TAPI X KELUAR.&nbsp;</p>', '20240213043908.8587', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1263, 'JHR013', '2024-02-13 14:32:49', 'Software Issue (DDMS)', '<p>Permintaan untuk semakan satu PC di Hybrid Room , PC CIP Participant Voip cant be registered</p>', '20240213073249.5971', 'MUAR', 'TRAINING', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1264, 'JHR020', '2024-02-14 15:46:58', 'Hardware Issue', '<p>pc aziela hang yang teruk ibarat gunung berapi melimpahi alam hutan,minta tolong pakar IT teknologi terkini kejayaan semakin hampiri</p>', '20240214084658.1895', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done (for now)'),
(1265, 'JHR283', '2024-02-14 16:13:18', 'Setup New PC', '<p>PENAMBAHAN 2 PC UNTUK PEKERJA PART TIME: Telah diterima</p>', '20240214091318.9254', 'MUAR', 'MANAGEMENT/SLT', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1266, 'JHR300', '2024-02-15 17:46:54', 'Hardware Issue', '<p>pc padam 2 kali</p>', '20240215104654.7477', 'MUAR', 'DIGI', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1267, 'JHR028', '2024-02-16 09:07:31', 'Software Issue (DDMS)', '<p>YUS- VOIP ERROR</p>', '20240216020731.2410', 'MUAR', 'CELCOM WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1268, 'JHR013', '2024-02-16 09:33:10', 'Hardware Issue', '<p>Assalamualaikum&nbsp;</p><p>Selamat pagi &nbsp;PC di bilik BCP untuk kegunaan CIP masih terjadi faulty &nbsp;&nbsp;</p>', '20240216023310.3852', 'MUAR', 'TRAINING', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1269, 'JHR066', '2024-02-16 15:48:08', 'Hardware Issue', '<p>hi it, &nbsp;req voip for new joiner for team amelia&nbsp;</p><p>ZULAIKA BINTI ABD HAMID</p>', '20240216084808.3870', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1270, 'JHR020', '2024-02-19 09:10:37', 'Software Issue (OS/WINDOWS FAULTY)', '<p>pc aziela tak boleh masuk DDMS dan tetiba shutdown sendiri,adakah ini dikatakan alam semesta?.tlg fixkn IT SEMMAT,,tq</p>', '20240219021037.7361', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1271, 'JHR189', '2024-02-19 09:16:25', 'Software Issue (OS/WINDOWS FAULTY)', '<p>cpu problem untuk JHR345</p>', '20240219021625.5559', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1272, 'JHR020', '2024-02-19 11:32:33', 'Hardware Issue', '<p>pc assyakir heng..done fix by kerawit wafi</p>', '20240219043233.2113', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1273, 'JHR027', '2024-02-19 11:47:47', 'Software Issue (DDMS)', '<p>webphone trying</p>', '20240219044747.8453', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1274, 'JHR042', '2024-02-19 18:09:54', 'Setup New PC', '<p>JPSM ingin melaksanakan penambahbaikkan dalam sesi temuduga. Oleh itu, pihak kami memerlukan 4 buah pc untuk kegunaan temuduga di bilik BCP. Justeru itu, mohon jasa baik pihak anda untuk memastikan PC tersebut boleh digunakan dan dalam keadaan baik. Terima Kasih.</p>', '20240219110954.3550', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1275, 'JHR028', '2024-02-20 10:33:43', 'Software Issue (DDMS)', '<p>web phone mogan error</p>', '20240220033343.4343', 'MUAR', 'CELCOM WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1276, 'JHR027', '2024-02-20 11:19:10', 'Software Issue (PD)', '<p>CRO INFORM LINE PD SANGKUT2. CUST COMPLAIN SUARA CRO X JELAS.,</p>', '20240220041910.1958', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1277, 'KL004', '2024-02-20 11:28:44', 'Network Issue', '<p>PC HAIRI HANG &amp; TIDAK BOLEH BUAT CALL. ANYDESK : 1885546673</p>', '20240220042844.9331', 'KUALA LUMPUR(HQ)', 'BSN', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1278, 'KL004', '2024-02-20 14:07:00', 'Software Issue (DDMS)', '<p>LINE WEBPHONE PROBLEM</p>', '20240220070700.1443', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1279, 'JHR034', '2024-02-20 14:14:47', 'Software Issue (DDMS)', '<p>call manual banyak trying hari ni</p>', '20240220071447.5288', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1280, 'JHR009', '2024-02-21 09:26:05', 'Software Issue (DDMS)', '<p>moganaraj (celcom wo) had a problem with webphone</p>', '20240221022605.6793', 'MUAR', 'CELCOM WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1281, 'JHR041', '2024-02-22 10:00:01', 'Software Issue (DDMS)', '<p>HI telco level voip issue trying please help to check n fix immediately thankyou in advance</p>', '20240222030001.2256', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1282, 'JHR028', '2024-02-22 11:25:18', 'Software Issue (DDMS)', '<p>cro mogan web phone- error</p>', '20240222042518.1076', 'MUAR', 'CELCOM WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1283, 'JHR041', '2024-02-22 12:13:12', 'Software Issue (PD)', '<p>hi team. kindly please check i load file untuk pd run tapi tak masuk. please help to solve it tq</p>', '20240222051312.3119', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Data files Queue in the system'),
(1284, 'JHR042', '2024-02-22 12:19:32', 'Hardware Issue', '<p>Komputer sering lag / loading dan slow</p>', '20240222051932.1885', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1285, 'JHR029', '2024-02-22 12:22:18', 'Hardware Issue', '<p>Komputer RAM kecil, mohon kemaskini RAM</p>', '20240222052218.2350', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1286, 'JHR023', '2024-02-22 14:42:54', 'Printer Issue', '<p>install baru printer</p>', '20240222074254.7873', 'MUAR', 'ADMIN', 0, 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'MUHATHIR MAKHTAR (JHR190)', 'Done'),
(1287, 'JHR011', '2024-02-22 15:30:06', 'Software Issue (DDMS)', '<p>call trying</p>', '20240222083006.4049', 'MUAR', 'COURTS', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1288, 'JHR041', '2024-02-23 15:19:39', 'Software Issue (DDMS)', '<p>PLEASE HELP &nbsp;TO CHECK VOIP BALQIS PROBLEM</p>', '20240223081939.3856', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'no problem'),
(1289, 'JHR041', '2024-02-23 15:49:37', 'DNPBACKUP Error', '<p>PLEASE FIX MY DNPBCKUPPC I NEED URGENTLY TQ&nbsp;</p>', '20240223084937.1855', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1290, 'JHR315', '2024-02-25 09:27:35', 'Software Issue (OS/WINDOWS FAULTY)', '<p>Komputer hang dan loading</p>', '20240225022735.6900', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1291, 'JHR028', '2024-02-25 09:54:47', 'Software Issue (DDMS)', '<p>ddms saya loading terus</p>', '20240225025447.4857', 'MUAR', 'CELCOM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1292, 'JHR028', '2024-02-26 11:20:28', 'Software Issue (DDMS)', '<p>DDMS SHIKIT HOT IS LOADING</p>', '20240226042028.5042', 'MUAR', 'CELCOM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1293, 'JHR027', '2024-02-26 11:44:16', 'Software Issue (PD)', '<p>WEBPHONE TRYING THEN OFF.&nbsp;</p>', '20240226044416.3320', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the web socket'),
(1294, 'JHR189', '2024-02-26 16:29:56', 'Hardware Issue', '<p>HARDWARE ISSUE</p>', '20240226092956.9486', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1295, 'JHR027', '2024-02-27 08:55:12', 'Software Issue (OS/WINDOWS FAULTY)', '<p>tulisan di screen berdouble.&nbsp;</p>', '20240227015512.9523', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1296, 'KL014', '2024-02-27 10:01:44', 'Software Issue (DDMS)', '<p>PC TAK BOLEH BUAT CALL, KEEP SHOWING <i><strong>STARTING AUDIO CALL</strong></i>, ALREADY RESTART PC FEW TIMES, STILL THE PROBLEM OCCURS AGAIN. CHANGED CPU 2 TIMES, STILL DONT KNOW WHAT THE PROBLEM IS. TQ</p>', '20240227030144.5304', 'KUALA LUMPUR(HQ)', 'BSN', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'done'),
(1298, 'JHR057', '2024-02-29 08:35:14', 'Software Issue (OS/WINDOWS FAULTY)', '<p>CPU MOGAN ERROR - EXT 236</p>', '20240229013514.5520', 'MUAR', 'CELCOM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1300, 'KL005', '2024-02-29 09:10:35', 'Software Issue (DDMS)', '<p>Minta bantuan. Webphone Amira Asa tak boleh buat call. Anydesk 274456144</p>', '20240229021035.7167', 'KUALA LUMPUR(HQ)', 'RHB', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1301, 'JHR020', '2024-02-29 10:39:05', 'Hardware Issue', '<p>pc bcp kkmai problem sakit perut.tolong bantuin&nbsp;</p>', '20240229033905.3552', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1302, 'JHR027', '2024-02-29 10:42:51', 'Software Issue (OS/WINDOWS FAULTY)', '<p>PC SHARIFAH KHADZALNA LAG.&nbsp;</p>', '20240229034251.4314', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1303, 'JHR027', '2024-02-29 15:53:50', 'Software Issue (OS/WINDOWS FAULTY)', '<p>pc balqis problem.&nbsp;</p>', '20240229085350.8597', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1304, 'JHR028', '2024-03-01 10:35:26', 'Network Issue', '<p>wifi not connet- yus</p>', '20240301033526.8205', 'MUAR', 'CELCOM WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1305, 'JHR057', '2024-03-03 15:02:33', 'Hardware Issue', '<p>JHR 311 (YUS) - MONITOR PROBLEM&nbsp;</p>', '20240303080233.2899', 'MUAR', 'CELCOM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1306, 'JHR034', '2024-03-03 17:25:33', 'Setup New PC', '<p>Help setup PC for the new joiner. Thanks</p>', '20240303102533.4901', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1307, 'JHR034', '2024-03-03 17:29:41', 'Software Issue (DDMS)', '<p>tak boleh call</p>', '20240303102941.4891', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1308, 'JHR084', '2024-03-03 17:30:31', 'Software Issue (DDMS)', '<p>x boleh &nbsp;guna voip phone.keluar error</p><p>&nbsp;</p>', '20240303103031.4202', 'MUAR', 'TM', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1309, 'JHR034', '2024-03-04 15:29:40', 'Software Issue (DDMS)', '<p>TAK BOLEH BUAT CALL.&nbsp;</p>', '20240304082940.5095', 'MUAR', 'AEON WO', 0, 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'MUHATHIR MAKHTAR (JHR190)', 'Done'),
(1310, 'JHR042', '2024-03-05 09:17:30', 'Network Issue', '<p>Mohon pihak IT buat kan share folder untuk team HR</p>', '20240305021730.6426', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1311, 'JHR042', '2024-03-05 09:18:18', 'Setup New PC', '<p>Mohon bantuan setup kan new PC untuk new joiners</p>', '20240305021818.7281', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1312, 'JHR315', '2024-03-05 09:19:24', 'Setup New PC', '<p>Mohon bantuan tolong untuk setup PC&nbsp;</p>', '20240305021924.9822', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1313, 'JHR018', '2024-03-05 09:25:14', 'Facility Assets Issue', '<p>level 3b tandas lelaki tersumbat teruk</p><p>minta tindakkan segera</p><p>t.kasih</p>', '20240305022514.8762', 'MUAR', 'INFORMATION TECHNOLOGY', 0, '', '', ''),
(1314, '', '2024-03-05 18:04:54', 'Hardware Issue', '<p>JHR333 - HAFIQA PC Suddenly shutdown</p>', '20240305110454.7398', 'MUAR', 'ADMIN', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1315, 'KL014', '2024-03-06 09:18:39', 'Software Issue (DDMS)', '<p>Morning. Pc BSN tak boleh buat call, internet kejap-kejap putus and starting audio call</p>', '20240306021839.8899', 'KUALA LUMPUR(HQ)', 'BSN', 0, '', '', ''),
(1316, 'JHR023', '2024-03-06 10:53:56', 'Hardware Issue', '<p>KEDUA-DUA PC DI RECEPTION PROBLEM..</p>', '20240306035356.3208', 'MUAR', 'ADMIN', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1317, 'JHR034', '2024-03-06 14:12:07', 'Software Issue (OS/WINDOWS FAULTY)', '<p>PD problem</p>', '20240306071207.7493', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1318, 'JHR027', '2024-03-07 08:55:27', 'Software Issue (OS/WINDOWS FAULTY)', '<p>pc afiqah x boleh dihidupkan</p>', '20240307015527.7227', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1319, 'JHR034', '2024-03-07 12:23:57', 'Software Issue (OS/WINDOWS FAULTY)', '<p>setup for new joiner</p>', '20240307052357.9053', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1320, 'JHR170', '2024-03-07 14:41:06', 'Network Issue', '<p>NO INTERNET JHRI012</p>', '20240307074106.5286', 'MUAR', 'FINANCE', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Done'),
(1321, 'JHR034', '2024-03-08 09:21:04', 'Software Issue (DDMS)', '<p>VoIP Problem</p>', '20240308022104.4348', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1322, 'JHR042', '2024-03-08 11:38:36', 'Printer Issue', '<p>pc new joiners tidak boleh connect dgn printer</p>', '20240308043836.5188', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1323, 'JHR021', '2024-03-08 16:09:43', 'Software Issue (PD)', '<p>PD &nbsp;- headset tak dgr apa2 bunyi if incoming call&nbsp;</p>', '20240308090943.3352', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1324, 'JHR041', '2024-03-08 17:07:34', 'DNPBACKUP Error', '<p>HI TEAM PLEASE CHECK N FIX MY DNPBCKKPC. I NEED TO USE IT BY URGENTLY TQ&nbsp;</p>', '20240308100734.2622', 'MUAR', 'TM', 0, 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1325, 'JHR265', '2024-03-11 09:02:49', 'Software Issue (PD)', '<p>tak bole buat call&nbsp;</p>', '20240311020249.8619', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1326, 'JHR041', '2024-03-11 11:50:52', 'Software Issue (DDMS)', '<p>please check n fix my voip. sblm ni boleh fix sendiri now dah tak boleh. tq&nbsp;</p>', '20240311045052.3334', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1327, 'JHR008', '2024-03-11 12:52:29', 'Software Issue (PD)', '<p>ANIS SYAZWANIE BINTI SIDEK - VIP</p><p>&nbsp;</p>', '20240311055229.5260', 'MUAR', 'TM', 0, 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1328, 'JHR043', '2024-03-13 08:46:39', 'Hardware Issue', '<p>tak bole buat call&nbsp;</p>', '20240313014639.8195', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1329, '', '2024-03-13 08:49:36', 'Software Issue (PD)', '<p>MUHAMMAD YUSHAIMAN BIN MOHD YUSOFF (VOIP)</p>', '20240313014936.3476', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'TUKAR CPU KE CPU ASAL (TUKAR WORKSTATION)'),
(1330, 'KL004', '2024-03-13 10:19:01', 'Software Issue (DDMS)', '<p>anydesk 1885546673. tak boleh buat call..&nbsp;</p>', '20240313031901.6711', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1331, 'KL004', '2024-03-14 08:50:49', 'Network Issue', '<p>ALL DDMS IN KL CANNOT LOGIN.</p>', '20240314015049.1147', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Time TCP IP address changes automatically and kicks off our firewall configuration. This is the 4th time that happened this year.  Solution - to get a permanent TCP IP address for KL VPN.  DNP to write a letter to time to get the IP address permanent'),
(1332, 'JHR034', '2024-03-14 10:26:23', 'Network Issue', '<p>pc tak ada internet</p>', '20240314032623.7113', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'no problem'),
(1333, 'KL014', '2024-03-14 10:43:40', 'Setup New PC', '<p>REQUEST 2 PC @ BSN KL</p><p>REQUEST 1 HEADSET @ BSN KL</p>', '20240314034340.1241', 'KUALA LUMPUR(HQ)', 'BSN', 0, '', '', ''),
(1334, 'JHR041', '2024-03-14 11:58:29', 'DNPBACKUP Error', '<p>Please check and fix my dnpbackuppc for my pc and kutools pc. i need to use it urgently thankyou in advance</p>', '20240314045829.6327', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1335, 'JHR041', '2024-03-14 15:16:51', 'Hardware Issue', '<p>WEBPHONE AINANADIA PROBLEM WHEN RUN PD PLEASE CHECK N FIX TQ&nbsp;</p>', '20240314081651.7574', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Deal try masa buat pd tukar tempat dgn cro lain'),
(1336, 'JHR170', '2024-03-14 16:30:52', 'Printer Issue', '<p>Please add id JHRI012 Nurfadhilah in Xerox Printer</p>', '20240314093052.9471', 'MUAR', 'FINANCE', 0, '', '', ''),
(1337, 'JHR170', '2024-03-14 16:59:36', 'Network Issue', '<p>no internet&nbsp;</p>', '20240314095936.8535', 'MUAR', 'FINANCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1338, 'JHR189', '2024-03-15 08:28:47', 'Software Issue (PD)', '<p>VOIP PROBLEM</p>', '20240315012847.6494', 'MUAR', 'COURTS', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1339, 'JHR189', '2024-03-15 08:57:36', 'Hardware Issue', '<p>TUKAR MONITOR&nbsp;</p>', '20240315015736.7127', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1340, 'JHR008', '2024-03-15 09:05:54', 'Software Issue (PD)', '<p>MUHAMMAD YUSHAIMAN BIN MOHD YUSOFF ( CRO TIDAK BOLEH BUKA PD)</p>', '20240315020554.4911', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'tukar PD Campaign'),
(1341, 'JHR029', '2024-03-15 09:12:07', 'Printer Issue', '<p>Mengalihkan printer hp laser jet600&nbsp;</p>', '20240315021207.5075', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1342, 'JHRI012', '2024-03-15 09:39:22', 'Software Issue (OS/WINDOWS FAULTY)', '<p>create new id for intranet</p>', '20240315023922.2628', 'MUAR', 'FINANCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1343, 'JHR009', '2024-03-15 10:00:15', 'Microsoft Office Issue', '<p>MICROSOFT OFFICE SLOW PROGRESS TAKE MORE THAN 2MINS</p>', '20240315030015.5236', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1344, 'JHR042', '2024-03-15 12:13:36', 'Microsoft Office Issue', '<p>Excel sering lag</p>', '20240315051336.4523', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1345, 'JHR034', '2024-03-15 15:12:30', 'Network Issue', '<p>pc suhaiza tak ada internet</p>', '20240315081230.1731', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1346, '', '2024-03-18 08:26:54', 'Software Issue (DDMS)', '<p>DDMS CANNOT OPEN. "This site canâ€™t be reached"</p>', '20240318012654.3664', '', '', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Time TCP IP address changes automatically and kicks off our firewall configuration. This is the 4th time that happened this year.  Solution - to get a permanent TCP IP address for KL VPN.  DNP to write a letter to time to get the IP address permanent'),
(1347, 'JHR290', '2024-03-18 08:36:40', 'Setup New PC', '<p>minta &nbsp;set up kan pc ke tempat baru&nbsp;</p>', '20240318013640.8252', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1348, 'KL014', '2024-03-18 08:36:54', 'Software Issue (DDMS)', '<p>DDMS tak boleh buka, loading</p>', '20240318013654.1031', 'KUALA LUMPUR(HQ)', 'BSN', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Time TCP IP address changes automatically and kicks off our firewall configuration. This is the 4th time that happened this year.  Solution - to get a permanent TCP IP address for KL VPN.  DNP to write a letter to time to get the IP address permanent'),
(1349, 'JHR020', '2024-03-18 08:41:54', 'Software Issue (DDMS)', '<p>req webphone mengalami sakit perut utk produk aeon NPL</p>', '20240318014154.6507', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1350, 'JHR034', '2024-03-18 12:04:20', 'Software Issue (DDMS)', '<p>ddms noreen dan mimi problem</p>', '20240318050420.3278', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1351, 'JHR041', '2024-03-18 14:55:24', 'Software Issue (DDMS)', '<p>hi please check n activekan webphone sya. thankyou&nbsp;</p>', '20240318075524.4225', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1352, 'KL004', '2024-03-19 11:09:14', 'Software Issue (DDMS)', '<p>ID AIMANASHIK LOCKED.&nbsp;</p>', '20240319040914.2396', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1353, 'JHR015', '2024-03-19 15:33:40', 'Hardware Issue', '<p>ASSALAMUALAIKUM .. BOLEH TLG TENGOKKN PC SAYA, LAGG</p>', '20240319083340.6100', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1354, 'JHR042', '2024-03-19 16:08:42', 'Microsoft Office Issue', '<p>Excel sudah beberapa lebih 5 kali hang. mohon bantuan</p>', '20240319090842.2193', 'MUAR', 'HUMAN RESOURCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1355, 'JHR170', '2024-03-21 08:42:19', 'Network Issue', '<p>Webmail problem, cannot send email</p>', '20240321014219.7432', 'MUAR', 'FINANCE', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Temporarily solved by changing to OUTLOOK'),
(1356, 'JHR020', '2024-03-21 09:28:37', 'Software Issue (DDMS)', '<p>inform from zulhelmy - SIP 6 x boleh gune utk AEON NPL muar</p>', '20240321022837.1042', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'SIP 6 - Panggilan DDMS KL Office. SIP 13 - Panggilan DDMS Muar Office.'),
(1357, 'JHR028', '2024-03-22 11:58:09', 'Software Issue (DDMS)', '<p>VOIP NO SOUND</p>', '20240322045809.1699', 'MUAR', 'CELCOM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1358, 'JHR034', '2024-03-22 14:36:48', 'Hardware Issue', '<p>computer tak boleh on</p>', '20240322073648.2987', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1359, 'JHR290', '2024-03-25 08:33:54', 'Software Issue (DDMS)', '<p>cro syafiq &nbsp;webphone &nbsp;tiada fungsi&nbsp;</p>', '20240325013354.5869', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1360, 'JHR020', '2024-03-25 14:26:54', 'Software Issue (DDMS)', '<p>webphone mngalami ke tryingan,,minta tlg tngokk2 kn ye.tq</p>', '20240325072654.2118', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Done fix'),
(1361, 'JHR041', '2024-03-25 15:57:39', 'Software Issue (DDMS)', '<p>PLEASE CHECK MY VOIP. NOT CONNECTED. I NEED TO USE IT URGENTLY TQ&nbsp;</p>', '20240325085739.6777', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1362, 'JHR066', '2024-03-26 11:15:54', 'Network Issue', '<p>slm,, mnta bntuan it untuk buka kempen pd utk mohd azrul bin johari , sblm ni dari digi (2027), skrg di team courts hafiz, beliau xxdpt view kempen 4003.</p>', '20240326041554.2593', 'MUAR', 'COURTS', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Done fix'),
(1363, 'JHR066', '2024-03-27 10:10:54', 'Software Issue (DDMS)', '<p>hi it, courts team bila call, kebanyakanny not in service, blh &nbsp;bntu&nbsp;</p>', '20240327031054.8947', '', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1364, 'JHR034', '2024-03-29 09:42:45', 'Hardware Issue', '<p>cpu kerap problem menurut cro</p>', '20240329024245.7853', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1365, 'JHR022', '2024-03-31 08:38:27', 'Software Issue (DDMS)', '<p>takboleh log in DDMS</p>', '20240331013827.4555', 'MUAR', 'FACILITY ASSETS', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'reset the password'),
(1366, 'JHR020', '2024-03-31 10:04:01', 'Software Issue (OS/WINDOWS FAULTY)', '<p>minta tolong PC ayuni taskbar die lari</p>', '20240331040401.5522', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1367, 'JHR034', '2024-03-31 10:30:10', 'Hardware Issue', '<p>kena tukar PC rasanya, PC kerap problem</p>', '20240331043010.4563', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1368, 'JHR283', '2024-04-01 08:59:04', 'Network Issue', 'CRO tidak boleh buat call\r\nCRO tidak boleh untuk membuat verification STR sendiri kerana di-block\r\nAdmin idak boleh access Intranet\r\n\r\nPaparan  memberitahu untuk uninstall Fortinet', '20240401025904.2257', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Time TCP IP address changes automatically and kicks off our firewall configuration. This is the 4th time that happened this year.  Solution - to get a permanent TCP IP address for KL VPN.  DNP to write a letter to time to get the IP address permanent'),
(1369, 'KL005', '2024-04-01 09:15:15', 'Software Issue (DDMS)', '<p>Minta bantuan level 19 tak boleh buat call</p>', '20240401031515.2654', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Time TCP IP address changes automatically and kicks off our firewall configuration. This is the 4th time that happened this year.  Solution - to get a permanent TCP IP address for KL VPN.  DNP to write a letter to time to get the IP address permanent'),
(1370, 'JHR066', '2024-04-02 11:41:19', 'Software Issue (DDMS)', '<p>hi it, pls help me, id ddms kna block</p>', '20240402054119.3914', 'MUAR', 'COURTS', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'Done'),
(1371, 'JHR041', '2024-04-02 14:43:17', 'Software Issue (DDMS)', '<p>PLEASE HELP TO FIX MY VOIP..&nbsp;</p>', '20240402084317.3720', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1372, 'JHR016', '2024-04-02 17:15:26', 'Setup New PC', '<p>mnta tlg set up 2 &nbsp;pc utk new joiner &nbsp;</p>', '20240402111526.2402', 'MUAR', 'COURTS', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1373, 'JHR041', '2024-04-03 14:19:25', 'Software Issue (OS/WINDOWS FAULTY)', '<p>HI PLEASE INSTALL CONCISE IN YUSHAIMAN PC. TQ&nbsp;</p>', '20240403081925.9484', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1374, 'JHR015', '2024-04-03 16:12:05', 'Software Issue (OS/WINDOWS FAULTY)', '<p>Sila tengok pc new joiner yg baru setup- Pn Norliza, monitor kelam&nbsp;</p>', '20240403101205.9740', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1375, 'JHR041', '2024-04-04 09:02:37', 'Software Issue (DDMS)', '<p>hi. dear it team please help to set SIP/ WEBPHONE&nbsp;</p>', '20240404030237.1667', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1376, 'JHRI012', '2024-04-04 09:56:55', 'Printer Issue', '<p>&nbsp;</p>', '20240404035655.4495', 'MUAR', 'FINANCE', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1377, 'JHR041', '2024-04-04 13:59:06', 'Software Issue (DDMS)', '<p>PLEASE CHECK PD . DONE LOAD 380 FILE BUT NOT APPEAR IN PD TQ</p>', '20240404075906.4369', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1378, 'JHR041', '2024-04-05 12:25:10', 'Software Issue (DDMS)', '<p>PLEASE CHECK N FIX YUSHAIMAN VOIP TAK DENGAR.&nbsp;</p>', '20240405062510.2743', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1379, 'JHR041', '2024-04-05 14:38:54', 'Software Issue (DDMS)', '<p>hi please help to check problem on VOIP yushaiman immediately thankyou&nbsp;</p>', '20240405083854.9553', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'no problem'),
(1380, 'JHR020', '2024-04-07 08:45:31', 'Hardware Issue', '<p>pc puan bahila mengalami penyakit H1N1 ,,minta tlg fixkn ye,,tq2</p>', '20240407024531.8439', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1381, 'JHR015', '2024-04-07 16:49:36', 'Network Issue', '<p>Pls assist by asap - web fone CRO NORLIZA xde ringing</p>', '20240407104936.2733', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1383, 'JHR015', '2024-04-15 08:39:32', 'Hardware Issue', '<p>ext 333 - norliza - PC tidak boleh on - mohon bantuan segera</p>', '20240415023932.4701', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1384, 'JHR016', '2024-04-15 08:57:13', 'Software Issue (DDMS)', '<p>cro id jhr 361 &nbsp;tak boleh buat call&nbsp;</p>', '20240415025713.7654', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1385, 'JHR041', '2024-04-15 14:41:12', 'Software Issue (DDMS)', '<p>PLEASE HELP TO CHECK PD SITI HAJAR, TAK DENGAR CONVERSATION DENGAN CUSTOMER AND TAK ADA RESPOND ON CALLING,&nbsp;</p>', '20240415084112.4058', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1386, 'JHR011', '2024-04-16 11:32:24', 'Software Issue (DDMS)', '<p>DDMS PROBLEM. DAN PC</p>', '20240416053224.9277', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1387, 'JHR041', '2024-04-16 12:19:21', 'Software Issue (DDMS)', '<p>please check and fix my webphone. i need to used it thank you</p>', '20240416061921.5159', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1388, 'JHR020', '2024-04-17 08:53:22', 'Software Issue (DDMS)', '<p>webphne ellyza dan adli tertukar nama.. &nbsp; - ( done fix by wafi kerawit )</p>', '20240417025322.5267', 'MUAR', 'AEON WO', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1389, 'JHR041', '2024-04-17 13:48:01', 'Hardware Issue', '<p>please fix pc yushaiman&nbsp;</p>', '20240417074801.5361', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1390, 'JHR021', '2024-04-17 16:23:21', 'Hardware Issue', '<p>HI TEAM PLEASE CHECK N FIX ON PC AMIRUL (MANAGER) PROBLEM&nbsp;</p>', '20240417102321.3410', 'MUAR', 'TM', 0, '', 'MUHAMMAD WAFRIHAZIQ (JHRI010)', 'Done'),
(1391, 'JHR189', '2024-04-18 09:46:48', 'Hardware Issue', '<p>selalu hang</p>', '20240418034648.7027', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'TELAH DITUKAR DENGAN CPU YANG LAIN'),
(1392, 'JHR189', '2024-04-22 10:23:45', 'Facility Assets Issue', '<p>pada &nbsp;khmis pc ezua &nbsp;dah tukar cpu &nbsp;, tp arini still sama &nbsp;,, &nbsp;x boleh progress &nbsp;dgn laju. harap pihak it boleh mmbntu .. tq</p><p>&nbsp;</p>', '20240422042345.1227', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'buka search engine sampai 3 google,mozila,eage....dah suruh buka 1 search engine sahaja'),
(1393, 'KL032', '2024-04-22 11:38:29', 'Network Issue', '<p><strong>FILE ZILA TIDAK DAPAT DI EKSES</strong>. (Collectius -CMS - System)</p><p>-file zila merupakan apps yang telah di install di dalam pc.</p><p><i><strong>COLLECTIUS: &nbsp;</strong></i></p><p>HOST: 211.24.101.67 &nbsp;</p><p>Username:<strong> </strong>dhir&amp;partners &nbsp;</p><p>Password<strong>:</strong> password1 &nbsp; &nbsp;</p>', '20240422053829.7189', 'KUALA LUMPUR(HQ)', 'ADMIN', 0, '', '', ''),
(1395, 'JHR033', '2024-04-23 16:51:58', 'Setup New PC', '<p>selamat petang dan salam sejahtera, diminta pihak IT set up &nbsp;1 CPU untuk new joiner di bahagian dept AEON WO (TEAM HELMY). new joiner akan mulakan aktiviti calling esok 24/4/24. sekian.</p>', '20240423105158.6684', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1396, 'JHR033', '2024-04-24 08:51:43', 'Software Issue (DDMS)', '<p>minta setting untuk web phone new joiner AEON TEAM. urgent</p>', '20240424025143.2049', 'MUAR', 'AEON WO', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1397, 'JHR015', '2024-04-24 11:15:49', 'Setup New PC', '<p>Pls setup new pc for new joiner &nbsp;ext 242 sebelah manager. Tq</p>', '20240424051549.4377', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1398, 'JHRI012', '2024-04-24 13:33:43', 'Printer Issue', '<p>&nbsp;</p>', '20240424073343.9217', 'MUAR', 'FINANCE', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1399, 'JHR016', '2024-04-24 14:30:50', 'Facility Assets Issue', '<p>PC &nbsp;CRO &nbsp;NAJWA &nbsp;JHR 361 EXT204 DAH 3 KALI MATI2 &nbsp;. MINTA BANTUAN&nbsp;</p>', '20240424083050.4627', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'TELAH DITUKAR DENGAN CPU YANG LAIN'),
(1400, 'JHR091', '2024-04-25 09:19:20', 'Software Issue (OS/WINDOWS FAULTY)', '<p>PC TERLALU SLOW DAN SERING TERJADI</p>', '20240425031920.5162', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1401, 'JHR041', '2024-04-25 12:09:40', 'Software Issue (DDMS)', '<p>hi team, mohon setting webphone new joiner akmal.. any desk ( 326 115 340)</p>', '20240425060940.7383', 'MUAR', 'TM', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHATHIR MAKHTAR (JHR190)', 'Done'),
(1402, 'KL004', '2024-04-29 10:02:09', 'Software Issue (PD)', '<p>MINTA RESET PD 5001</p>', '20240429040209.7695', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1403, 'JHR034', '2024-04-30 08:57:06', 'Hardware Issue', '<p><i>pc hazira problem, terlalu slow</i></p>', '20240430025706.3080', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'TELAH DITUKAR DENGAN CPU YANG LAIN'),
(1404, 'JHR088', '2024-04-30 14:01:36', 'Network Issue', '<p>Website HR leave tak boleh tukar setting approval.</p>', '20240430080136.7228', 'MUAR', 'HUMAN RESOURCE', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'os error - take another hdd & format new os, old hdd make it slave for old data+stored, testing is gooding'),
(1405, 'JHR066', '2024-04-30 15:48:36', 'Software Issue (DDMS)', '<p>Assalamualaikum it..</p><p>cro sharvin ada masalah untuk buat panggilan, minta bantuan dari pihak it</p>', '20240430094836.6037', 'MUAR', 'COURTS', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'fixed');
INSERT INTO `cases` (`id`, `employee_id`, `date`, `issues`, `notes`, `case_num`, `branch`, `department`, `status`, `solve_name2`, `solve_name`, `solve_remarks`) VALUES
(1406, 'JHR010', '2024-04-30 16:24:54', 'Hardware Issue', '<p>cpu tiada funtion.. maklum pada it&nbsp;</p>', '20240430102454.3614', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'TELAH DITUKAR DENGAN CPU YANG LAIN'),
(1407, 'KL004', '2024-05-02 13:05:51', 'Software Issue (DDMS)', '<p>REMARK SMS DIDALAM DDMS TIDAK KELUAR &amp; SMS JUGA TIDAK SAMPAI PADA CUSTOMER. SUDAH MAKLUM PADA GROUP TECHNICAL WHATSAPP SINCE 24/04/2024.</p>', '20240502070551.4705', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', '', ''),
(1408, 'KL004', '2024-05-03 08:38:18', 'Software Issue (DDMS)', '<p>DDMS ERROR..</p>', '20240503023818.8484', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, 'MUHATHIR MAKHTAR (JHR190)', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1409, 'KL007', '2024-05-03 08:44:20', 'Software Issue (DDMS)', '<p>Unable to log in DDMS - Error 500 code</p>', '20240503024420.5915', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT', 0, 'MUHATHIR MAKHTAR (JHR190)', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1410, 'JHR041', '2024-05-03 09:31:48', 'Software Issue (OS/WINDOWS FAULTY)', '<p>hi team kindly please help to check n fix my new joiner staff pc immediately tak boleh buka (error window) : ext 246</p>', '20240503033148.1151', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'no problem'),
(1413, 'JHR034', '2024-05-06 14:16:27', 'Hardware Issue', '<p>CPU yang ditukar jauh lebih lambat daripada yang sebelum ni yang bermasalah</p>', '20240506081627.2506', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'TUKAR CPU KE CPU ASAL (repairing)'),
(1414, 'JHR041', '2024-05-06 14:23:11', 'Software Issue (PD)', '<p>please check PD afif (sp 1020) call tak dengar. tq&nbsp;</p>', '20240506082311.7634', 'MUAR', '', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1415, 'KL004', '2024-05-08 14:57:44', 'Software Issue (DDMS)', '<p>LINE TRYING</p>', '20240508085744.6911', 'KUALA LUMPUR(HQ)', 'AEON NPL', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1416, 'JHR015', '2024-05-08 17:31:40', 'Software Issue (DDMS)', '<p>WEB PHONE ANIS EXT 240 PROB</p>', '20240508113140.8472', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1417, 'JHR057', '2024-05-09 10:36:37', 'DNPBACKUP Error', '<p>DNP BACKUP TK BOLEH ACCESS</p>', '20240509043637.2409', 'MUAR', 'DIGI', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1418, 'JHR033', '2024-05-13 08:39:58', 'Network Issue', '<p>CPU CRO HAIKAL TEAM HELMY TAK BOLEH HIDUP. URGENT</p>', '20240513023958.9261', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1419, 'JHR034', '2024-05-13 08:46:15', 'Hardware Issue', '<p>PD firdaus masalah hardisk</p>', '20240513024615.5881', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'no problem'),
(1420, 'JHR057', '2024-05-15 10:16:09', 'Setup New PC', '<p>REQUEST SETUP PC UTK NEW JOINER DIGI NWO LEVEL 1B - NUR SYUHANA BINTI SAMSHUKUR&nbsp;</p>', '20240515041609.3713', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1421, 'JHR009', '2024-05-15 11:19:40', 'Hardware Issue', '<p>PC LACKDOWN&nbsp;</p>', '20240515051940.3141', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1422, 'JHR028', '2024-05-15 11:25:04', 'Setup New PC', '<p>SETUP PC&nbsp;</p>', '20240515052504.8442', 'MUAR', 'CELCOM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1423, 'JHR088', '2024-05-16 12:13:55', 'Software Issue (OS/WINDOWS FAULTY)', '<p>KAMAL PUNYA PC TAK BOLEH BUKA, KELUAR WARNA BIRU</p>', '20240516061355.7658', 'MUAR', 'HUMAN RESOURCE', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'TELAH DITUKAR DENGAN CPU YANG LAIN'),
(1424, 'JHR015', '2024-05-16 14:26:07', 'Hardware Issue', '<p>PC LAG - CRO SHARIFAH KHADZALNA EXT 240</p>', '20240516082607.3961', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1425, 'JHR034', '2024-05-17 11:50:02', 'Hardware Issue', '<p>pc tetiba tak boleh hidup</p>', '20240517055002.9330', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1426, 'JHR028', '2024-05-17 14:42:04', 'Software Issue (OS/WINDOWS FAULTY)', '<p>PC ADLY TIDAK BOLEH ONS</p>', '20240517084204.5661', 'MUAR', 'CELCOM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1427, 'KL007', '2024-05-18 12:33:20', 'Hardware Issue', '<p>PC Slow, mohon pihak IT lakukan maintenance &amp; pertukaran RAM</p>', '20240518063320.8125', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT', 0, '', '', ''),
(1428, 'JHR091', '2024-05-21 10:07:18', 'Software Issue (DDMS)', '<p>tak bole buat call&nbsp;</p>', '20240521040718.8844', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1429, 'JHR041', '2024-05-21 15:05:21', 'Microsoft Office Issue', '<p>hi team please check PC NAZREEN AZIZI. MICROSOFT OFFICE CANNOT OPEN. kindly please help &nbsp;fix . tq in advance&nbsp;</p>', '20240521090521.3360', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1431, 'JHR020', '2024-05-21 17:35:20', 'Hardware Issue', '<p>req tukar monitor cro aziela AEON WO .rosak tak boleh on</p>', '20240521113520.9379', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'solved'),
(1432, 'KL005', '2024-05-22 14:06:37', 'Microsoft Office Issue', '<p>Minta bantuan download kan outlook dekat pc saya. terima kasih</p>', '20240522080637.4239', 'KUALA LUMPUR(HQ)', 'RHB', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHATHIR MAKHTAR (JHR190)', 'cancel due to new CPU problem.'),
(1433, 'JHR023', '2024-05-23 08:36:31', 'Software Issue (OS/WINDOWS FAULTY)', '<p><strong>Sistem DTT hang daripada ptg smlm.. Admin nak req tps int tak boleh.. Terima kasih..</strong></p>', '20240523023631.6564', 'MUAR', 'ADMIN', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1434, 'JHR043', '2024-05-27 08:57:43', 'Software Issue (DDMS)', '<p>CRO NORLIZA WEBPHONE ERROR&nbsp;</p>', '20240527025743.8921', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1435, 'JHR028', '2024-05-27 16:30:59', 'Software Issue (OS/WINDOWS FAULTY)', '<p>urgent pc adly problem&nbsp;</p>', '20240527103059.4280', 'MUAR', 'CELCOM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1436, 'JHR189', '2024-05-28 09:35:35', 'Hardware Issue', '<p>pc hang2</p>', '20240528033535.5655', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed = change a diffrent RAM...give back to cro for testing...'),
(1437, 'JHR009', '2024-05-30 08:41:40', 'Microsoft Office Issue', '<p>MOST OF THE FEATURES OF THE EXCEL HAVE BEEN DISABLED</p>', '20240530024140.2307', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1438, 'KL005', '2024-05-30 09:56:08', 'Microsoft Office Issue', '<p>MINTAK BANTUAN EMAIL TAK BOLEH GUNA. CLIENT TAK RECEIVE APA2 EMAIL DARI SIDE KITA</p>', '20240530035608.8519', 'KUALA LUMPUR(HQ)', 'RHB', 0, '', '', ''),
(1439, 'JHR010', '2024-05-31 08:54:55', 'Software Issue (PD)', '<p>DDMS cro Nurul Aqilah tak blh buka</p>', '20240531025455.5118', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1440, 'JHR043', '2024-05-31 09:02:46', 'Software Issue (DDMS)', '<p>CRO NORLIZA - WEBPHONE PROBLEM&nbsp;</p>', '20240531030246.1937', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1441, 'JHR041', '2024-06-04 08:40:25', 'Software Issue (OS/WINDOWS FAULTY)', '<p>hi team please help to check staff pc AFIF. tak boleh start&nbsp;</p>', '20240604024025.9016', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'HDD problem = replace Hdd already have Os win 10 plug in setup in good condition = ready to use'),
(1442, 'JHR043', '2024-06-04 09:04:41', 'Software Issue (DDMS)', '<p>CRO NORLIZA - WEPHONE PROBLEM&nbsp;</p>', '20240604030441.7583', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1443, 'JHR004', '2024-06-04 10:29:33', 'Hardware Issue', '<p>CPU tak boleh hidup, selepas bunyi meletup.</p>', '20240604042933.8948', 'MUAR', 'TRAINING', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'change power supply'),
(1445, 'JHR033', '2024-06-04 17:22:03', 'Software Issue (OS/WINDOWS FAULTY)', '<p>network issue</p>', '20240604112203.3037', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1447, 'JHR034', '2024-06-05 12:16:51', 'Hardware Issue', '<p>pc restart sendiri and ddms terkeluar sendiri</p>', '20240605061651.6392', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'checked'),
(1448, 'JHR034', '2024-06-05 16:32:13', 'Hardware Issue', '<p>masih lagi jadi masalah yang sama</p>', '20240605103213.7506', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'change pc'),
(1449, 'JHR066', '2024-06-06 11:28:42', 'Software Issue (DDMS)', '<p>hi it, &nbsp;blh ke nk mnta tlg tengokkn pc cro sharvin, sbb dia tk dengar ringing bila call , tq</p>', '20240606052842.1438', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1451, 'JHR066', '2024-06-06 13:53:40', 'Software Issue (DDMS)', '<p>hi it, cro sharvin xdpt buat pd cal sbb id xaktif, id 2027,&nbsp;</p>', '20240606075340.1388', 'MUAR', 'COURTS', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'true sip = 4013'),
(1452, 'JHR041', '2024-06-10 13:46:34', 'Software Issue (PD)', '<p>Hi kindly please check. saya load file PD under campaign 1010 tapi tak appear dalam report for running. thankyou</p>', '20240610074634.7529', 'MUAR', 'TM', 0, 'HAIRUL NIZAM MOHD (JHR018)', 'MUHATHIR MAKHTAR (JHR190)', 'fixed'),
(1453, 'JHR041', '2024-06-10 14:13:12', 'Software Issue (PD)', '<p>HI PLEASE HELP CHECK N FIX PD UNDER HAZIEMAH (1006) DISCONECTED</p>', '20240610081312.1357', 'MUAR', 'TM', 0, 'MUHATHIR MAKHTAR (JHR190)', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1454, 'JHR033', '2024-06-12 15:47:27', 'Network Issue', '<p>tak boleh call trying. cro asyikin</p>', '20240612094727.8639', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1455, 'JHR020', '2024-06-13 16:10:43', 'Software Issue (DDMS)', '<p>id BAHILA x boleh bukak</p>', '20240613101043.3500', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1456, 'JHR041', '2024-06-13 17:16:41', 'Hardware Issue', '<p>hi can please help to fix pc cro (SITI HAJAR) tiba2 termati tq</p>', '20240613111641.4476', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1457, 'JHR042', '2024-06-18 10:43:02', 'Network Issue', '<p>Terdapat masalah untuk e-mel <i><strong>hrdept@dhirpartners.com.my</strong></i></p><p>&nbsp;</p><p>Masalah tersebut adalah e-mel yang dihantar keluar telah disekat.</p><p>Oleh kerana itu, saya telah mohon pendapat dari Encik Muhathir dan En Haziq.</p><p>&nbsp;</p><p>En Haziq akan berurusan dengan vendor</p>', '20240618044302.8653', 'MUAR', 'HUMAN RESOURCE', 0, '', '', ''),
(1458, 'JHR120', '2024-06-19 15:53:38', 'Software Issue (DDMS)', '<p>ddms problem</p>', '20240619095338.7955', 'MUAR', 'AEON WO', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1459, 'JHR057', '2024-06-23 11:37:52', 'Software Issue (DDMS)', '<p>PC LAG &amp; ADE SITE TK BOLEH ACCESS KENE BLOCK SELEPAS BCP YG LEPAS&nbsp;</p>', '20240623053752.2475', 'MUAR', 'DIGI', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1460, 'JHR041', '2024-06-26 15:00:22', 'Software Issue (PD)', '<p>hi team please help check n fix pd zulaila.. not respond to call, thankyou&nbsp;</p>', '20240626090022.5706', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1461, 'JHR041', '2024-06-28 10:11:47', 'Software Issue (DDMS)', '<p>HI TEAM, KINDLY PLEASE HELP TO CHECK WEBPHONE UNDER CRO AKMAL (DOUBLE SUARA)</p>', '20240628041147.4971', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done fixed'),
(1463, 'JHR041', '2024-07-02 11:13:57', 'Software Issue (PD)', '<p>Hi team please check back on PD (ZULAILA / SIP 1019) cannot hear / no sound . please check and fix immediately, thank you&nbsp;</p>', '20240702051357.9201', 'MUAR', 'TM', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1464, 'JHR041', '2024-07-04 13:53:30', 'Software Issue (PD)', '<p>hi please check and fix ainanadia PD. no sound and ringging, tq&nbsp;</p>', '20240704075330.1090', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1465, 'JHR041', '2024-07-08 15:16:57', 'Hardware Issue', '<p>hi minta bantuan team it pindahkan pc kutools. terima kasih</p>', '20240708091657.5284', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'Done'),
(1466, 'JHR088', '2024-07-08 16:03:40', 'Software Issue (DDMS)', '<p>Acc kena block</p>', '20240708100340.2619', 'MUAR', 'HUMAN RESOURCE', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1467, 'JHR057', '2024-07-09 11:53:46', 'Software Issue (DDMS)', '<p>PD LINE BUSY &amp; WEBPHONE LINE BUSY - ALL DEPARTMENT</p>', '20240709055346.1807', 'MUAR', 'DIGI', 0, '', 'MUHATHIR MAKHTAR (JHR190)', 'done'),
(1468, 'JHR041', '2024-07-09 14:36:26', 'Software Issue (DDMS)', '<p>DDMS ISSUE &amp; PD ( hi team kindly please check and fix ddms &amp; predictive dialer under cro AINANADIA, &nbsp;hang)&nbsp;</p>', '20240709083626.5447', 'MUAR', 'TM', 0, 'MUHATHIR MAKHTAR (JHR190)', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed'),
(1469, 'JHR041', '2024-07-11 09:39:53', 'Hardware Issue', '<p>hi please check n fix pc AFIF hang. effected cro calling activity. thank you&nbsp;</p>', '20240711033953.1122', 'MUAR', 'TM', 0, '', '', ''),
(1470, 'JHR015', '2024-07-12 11:11:43', 'Network Issue', '<p>MINTA TENGOKKAN INTRANET WEB UTK SHARIFAH KHADZALNA TIDAK BOLEH ACCES. TQ</p>', '20240712051143.8319', 'MUAR', 'TM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'no problem'),
(1471, 'JHR028', '2024-07-15 13:39:25', 'Software Issue (DDMS)', '<p>PROBLEM SURVER DDMS</p>', '20240715073925.4097', 'MUAR', 'CELCOM', 0, '', 'HAIRUL NIZAM MOHD (JHR018)', 'fixed ( installing update & auto restart )');

-- --------------------------------------------------------

--
-- Table structure for table `compliance`
--

CREATE TABLE IF NOT EXISTS `compliance` (
`id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `tmp` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compliance`
--

INSERT INTO `compliance` (`id`, `title`, `type`, `tmp`, `date`) VALUES
(1, 'SMS APPROVAL FORM', 'PDF', 'SMS APPROVAL FORM.pdf', '2023-01-24 17:34:59'),
(2, 'DESTRUCTION RECORD', 'PDF', 'DESTRUCTION RECORD.pdf', '2023-01-24 17:36:57'),
(3, 'COACHING FORM', 'PDF', 'COACHING FORM.pdf', '2023-01-24 17:37:34'),
(4, 'HP LOGBOOK', 'PDF', 'HP LOGBOOK.pdf', '2023-01-24 17:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `tmp` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `name`, `phone`, `email`, `gender`, `joined`, `tmp`, `branch`, `department`) VALUES
(44, 'JHR004', 'MOHD ASRI ABD RAHMAN', '415-1', 'asri@dhirpartners.com.my', 'MALE', ' 19 Jan 2023 ', '5428', 'MUAR', 'TRAINING'),
(46, 'JHR008', 'NORAISHAH OON', '249-2', 'AISHAH@123', 'FEMALE', ' 19 Jan 2023 ', '9864', 'MUAR', 'COURTS'),
(47, 'JHR009', 'NORAFIZAH HASNOL', '330-1', 'norafiza@dhirpartners.com.my', 'FEMALE', ' 19 Jan 2023 ', '6140', 'MUAR', 'DIGI'),
(48, 'JHR010', 'PUTERI MAYASARI BURHANUDDIN', '242', 'puteridp_sdnbhd@yahoo.com', 'FEMALE', ' 19 Jan 2023 ', '5419', 'MUAR', 'AEON WO'),
(49, 'JHR011', 'MOHD SHAH RIZAL MOHD SARI', '410-2', 'RIZAL@123', 'MALE', ' 19 Jan 2023 ', '7285', 'MUAR', 'TM'),
(50, 'JHR012', 'SYED ABDUL AZIZ SYED KHALID', '248', 'SYED@123', 'MALE', ' 19 Jan 2023 ', '3373', 'MUAR', 'MANAGEMENT/SLT'),
(51, 'JHR013', 'NURUL AISYAFIKA KARIM', '247', 'AISYAFIKA@123', 'FEMALE', ' 19 Jan 2023 ', '5655', 'MUAR', 'COURTS'),
(52, 'JHR015', 'NOR ALIMAH AHLIP', '311', 'NORA@123', 'FEMALE', ' 19 Jan 2023 ', '1048', 'MUAR', 'DIGI'),
(53, 'JHR016', 'IRFILIANA ABBAS', '260', 'IRFI@123', 'FEMALE', ' 19 Jan 2023 ', '3833', 'MUAR', 'AEON WO'),
(54, 'JHR017', 'NORLAILA NOOR MOHAMED', '240-4', 'NORLAILA@123', 'FEMALE', ' 19 Jan 2023 ', '7807', 'MUAR', 'AEON WO'),
(55, 'JHR018', 'HAIRUL NIZAM MOHD', '201', 'akutechdnp@gmail.com', 'MALE', ' 19 Jan 2023 ', '1263', 'MUAR', 'INFORMATION TECHNOLOGY'),
(56, 'JHR019', 'KHAMIL MANSOR', '107-1', 'KHAMIL@123', 'MALE', ' 19 Jan 2023 ', '9065', 'MUAR', 'MANAGEMENT/SLT'),
(57, 'JHR020', 'AZHAR HAMZAH', '258', 'AZHAR@123', 'MALE', ' 19 Jan 2023 ', '1890', 'MUAR', 'AEON WO'),
(58, 'JHR021', 'AINA NADIA NAZARUDDIN ', '408-1', 'AINANADIA@123', 'FEMALE', ' 19 Jan 2023 ', '7365', 'MUAR', 'TM'),
(59, 'JHR022', 'NOR AZUWA KARIM', '404-1', 'f.asset@dhirpartners.com.my', 'FEMALE', ' 19 Jan 2023 ', '9254', 'MUAR', 'FACILITY ASSETS'),
(60, 'JHR023', 'RAHIMAH RAHIM', '104-1', 'rahimah_dnp@yahoo.com', 'FEMALE', ' 19 Jan 2023 ', '3965', 'MUAR', 'ADMIN'),
(62, 'JHR025', 'NUR SUHAILY SHAMSUDDIN', '105-3', 'SUHAILY@123', 'FEMALE', ' 20 Jan 2023 ', '6112', 'MUAR', 'ADMIN'),
(65, 'JHR028', 'NORASHIKIN ABDUL JALIL', '405-2', 'SHIKIN@123', 'FEMALE', ' 20 Jan 2023 ', '6486', 'MUAR', 'TM'),
(68, 'JHR031', 'AMIRUL FAEEZ ESA', '236-3', 'AMIRUL@123', 'MALE', ' 20 Jan 2023 ', '4635', 'MUAR', 'AEON WO'),
(69, 'JHR033', 'ZULHELMY MOHD NOOR', '237-2', 'ZULHELMY@123', 'MALE', ' 20 Jan 2023 ', '2933', 'MUAR', 'AEON WO'),
(70, 'JHR034', 'AHMAD DANIEL HELMI ', '259', 'danielhelmi40@gmail.com', 'MALE', ' 20 Jan 2023 ', '5098', 'MUAR', 'AEON WO'),
(71, 'JHR035', 'NUR FARAIN KASIM', '237-4', 'FARAIN@123', 'FEMALE', ' 20 Jan 2023 ', '501', 'MUAR', 'AEON WO'),
(72, 'JHR036', 'NURUL NAIM IBRAHIM', '106-2', 'NAIM@123', 'FEMALE', ' 20 Jan 2023 ', '7262', 'MUAR', 'ADMIN'),
(73, 'JHR037', 'FATIN NAJWA A HAMID', '404-2', 'fa.dhirpartners@gmail.com', 'FEMALE', ' 20 Jan 2023 ', '2071', 'MUAR', 'FACILITY ASSETS'),
(75, 'JHR040', 'UNGKU MAIMUNAH UNGKU ABD JAMAL', '236-4', 'MAIMUNAH@123', 'FEMALE', ' 20 Jan 2023 ', '5607', 'MUAR', 'AEON WO'),
(76, 'JHR041', 'NUR FATIN SYAIRAH ABDUL RAHMAN', '409-1', 'NURFATIN@123', 'FEMALE', ' 20 Jan 2023 ', '5044', 'MUAR', 'TM'),
(77, 'JHR042', 'NUR IZZATI TALIB', '402-3', 'IZZATI@123', 'FEMALE', ' 20 Jan 2023 ', '1204', 'MUAR', 'HUMAN RESOURCE'),
(78, 'JHR043', 'NORLIZA LEMAT', '333-2', 'NORLIZA@123', 'FEMALE', ' 20 Jan 2023 ', '5399', 'MUAR', 'DIGI'),
(79, 'JHR044', 'NUR AIN NAFISHA ABDUL RAHMAN', '105-4', 'NAFISHA@123', 'FEMALE', ' 20 Jan 2023 ', '2584', 'MUAR', 'ADMIN'),
(80, 'JHR046', 'AMELIA NASARRUDDIN', '231', 'AMELIA@123', 'FEMALE', ' 20 Jan 2023 ', '7484', 'MUAR', 'COURTS'),
(81, 'JHR047', 'AHMAD FARIF ROSKEFLI', '334-3', 'FARIF@123', 'MALE', ' 20 Jan 2023 ', '6030', 'MUAR', 'ZAKAT'),
(82, 'JHR048', 'NORELLYZA ABDUL RAHMAN', '245-1', 'ELLYZA@123', 'FEMALE', ' 20 Jan 2023 ', '863', 'MUAR', 'AEON WO'),
(84, 'JHR050', 'NUR NASUHA @BAHILA HJ BAKHTIAR', '236-2', 'BAHILA@123', 'FEMALE', ' 20 Jan 2023 ', '4930', 'MUAR', 'AEON WO'),
(85, 'JHR051', 'NOR SYAHIDAH ABDULLAH', '317', 'SYAHIDAH@123', 'FEMALE', ' 20 Jan 2023 ', '7371', 'MUAR', 'DIGI'),
(87, 'JHR057', 'UNGKU NURSYAHIRAH UNGKU MOHD ELIAS', '326', 'UNGKU@123', 'FEMALE', ' 20 Jan 2023 ', '9540', 'MUAR', 'DIGI'),
(89, 'JHR059', 'TUAN NURHIDAYATUL SOLEHAH TUAN JAFFAR', '127-1', 'SOLEHAH@123', 'FEMALE', ' 20 Jan 2023 ', '6484', 'MUAR', 'AEON WO'),
(91, 'JHR063', 'NAFIISAH NASUHA ISMAIL', '106-1', 'NASUHA@123', 'FEMALE', ' 20 Jan 2023 ', '648', 'MUAR', 'ADMIN'),
(92, 'JHR064', 'NURUL AQILAH NOR AZMAN', '240-1', 'NURULAQILAH@123', 'FEMALE', ' 20 Jan 2023 ', '4437', 'MUAR', 'AEON WO'),
(94, 'JHR066', 'MOHD HAFIZULLAH AMIN MD SARIF', '227', 'hafizulhqm8396@gmail.com', 'MALE', ' 20 Jan 2023 ', '8735', 'MUAR', 'COURTS'),
(95, 'JHR067', 'NUR SURAYA MOHD SAID', '237-1', 'SURAYA@123', 'FEMALE', ' 20 Jan 2023 ', '1808', 'MUAR', 'AEON WO'),
(96, 'JHR068', 'ISKANDAR AIMAN MUHADHIR', '403-1', 'AIMAN@123', 'MALE', ' 20 Jan 2023 ', '2044', 'MUAR', 'ADMIN'),
(97, 'JHR070', 'NUR ZULAILA HASNOL EAIDI', '407-2', 'ZULAILA@123', 'FEMALE', ' 20 Jan 2023 ', '2360', 'MUAR', 'TM'),
(98, 'JHR071', 'NOREEN ATIKAH FADZLUL RASHID', '325', 'NOREENATIKAH@123', 'FEMALE', ' 20 Jan 2023 ', '8815', 'MUAR', 'DIGI'),
(99, 'JHR073', 'NURSHAZIRA ATASHA MD HAZAMI', '246-3', 'SHAZIRA@123', 'FEMALE', ' 20 Jan 2023 ', '3421', 'MUAR', 'AEON WO'),
(100, 'JHR076', 'MUHAMMAD AMIRUL ADLI NORDIN', '230-4', 'ADLI@123', 'MALE', ' 20 Jan 2023 ', '2572', 'MUAR', 'TM'),
(101, 'JHR078', 'NUR LIYANA JAAFAR', '409-3', 'LIYANA@123', 'FEMALE', ' 20 Jan 2023 ', '1469', 'MUAR', 'TM'),
(102, 'JHR080', 'NURADDLIN AYUNI ROSDIN', '236-1', 'ADDLINAYUNI@123', 'FEMALE', ' 20 Jan 2023 ', '8709', 'MUAR', 'AEON WO'),
(103, 'JHR081', 'MOHAMAD NAZARIN MOHAMAD NAPI', '107-2', 'NAZARIN@123', 'MALE', ' 20 Jan 2023 ', '6326', 'MUAR', 'ADMIN'),
(104, 'JHR083', 'NUR AIN NABILA SARWAN', '403-2', 'BELLA@123', 'FEMALE', ' 20 Jan 2023 ', '2508', 'MUAR', 'FINANCE'),
(105, 'JHR084', 'NOOR HIDAYU AMRON', '410-3', 'HIDAYU@123', 'FEMALE', ' 20 Jan 2023 ', '9213', 'MUAR', 'TM'),
(106, 'JHR086', 'NUR IZZATY AZIELA ABD LATIP', '252-4', 'AZIELA@123', 'FEMALE', ' 20 Jan 2023 ', '6771', 'MUAR', 'AEON WO'),
(107, 'JHR088', 'MUHAMMAD AIDIL MUHADHIR', '104', 'AIDIL@123', 'MALE', ' 20 Jan 2023 ', '4452', 'MUAR', 'ADMIN'),
(109, 'JHR091', 'NURUL HAZIRAH ZAKARIA ', '246-1', 'HAZIRAH@123', 'FEMALE', ' 20 Jan 2023 ', '3831', 'MUAR', 'AEON WO'),
(110, 'JHR093', 'AINUL NAJIHA JUMALI', '237-3', 'AINUL@123', 'FEMALE', ' 20 Jan 2023 ', '1866', 'MUAR', 'AEON WO'),
(111, 'JHR095', 'NORADEANA ASMADI', '220-2', 'DEANA@123', 'FEMALE', ' 20 Jan 2023 ', '4450', 'MUAR', 'COURTS'),
(114, 'JHR117', 'NUR HAZIQAH MBAKRI', '203-3', 'HAZIQAH@123', 'FEMALE', ' 20 Jan 2023 ', '4015', 'MUAR', 'COURTS'),
(116, 'JHR119', 'NURUL ASYIKIN KARIM ', '320-1', 'ASYIKIN@123', 'FEMALE', ' 20 Jan 2023 ', '766', 'MUAR', 'DIGI'),
(117, 'JHR120', 'MOHD FARYZE IBRAHIM', '328', 'FARYZE@123', 'MALE', ' 20 Jan 2023 ', '4951', 'MUAR', 'DIGI'),
(119, 'JHR122', 'NUR AINNUL JANNAH ABD RAZAK', '220-4', 'JANNAH@123', 'FEMALE', ' 20 Jan 2023 ', '9966', 'MUAR', 'COURTS'),
(120, 'JHR124', 'NURHAZIQAH MOHD ZAINI', '409-4', 'NURHAZIQAH@123', 'FEMALE', ' 20 Jan 2023 ', '7205', 'MUAR', 'TM'),
(121, 'JHR128', 'NUR AIN SHAFIQAH MOHD SALLEH', '104-3', 'AINSHAFIQAH@123', 'FEMALE', ' 20 Jan 2023 ', '3669', 'MUAR', 'ADMIN'),
(125, 'JHR138', 'MIMI NUR AMALIA MAT NASIR', '324', 'MIMI@123', 'FEMALE', ' 20 Jan 2023 ', '8698', 'MUAR', 'DIGI'),
(128, 'JHR146', 'MOHAMMED YOUSOFF KHALID', '415-2', 'YOUSOFF@123', 'MALE', ' 20 Jan 2023 ', '6028', 'MUAR', 'FACILITY ASSETS'),
(131, 'JHR170', 'ZAWANI ZAMBRY', '403-4', 'ZAWANI@123', 'FEMALE', ' 20 Jan 2023 ', '6695', 'MUAR', 'FINANCE'),
(132, 'JHR172', 'NUR AIN NATASYAH AZMI', '411-3', 'AINNATASYAH@123', 'FEMALE', ' 20 Jan 2023 ', '2129', 'MUAR', 'TM'),
(133, 'JHR180', 'NATASHA ATAN', '406', 'NATASHAATAN@123', 'FEMALE', ' 20 Jan 2023 ', '2504', 'MUAR', 'TM'),
(135, 'JHR189', 'NORAIDAH EZUA MUHAMMAD AMIN', '232-2', 'EZUA@123', 'FEMALE', ' 20 Jan 2023 ', '8179', 'MUAR', 'COURTS'),
(136, 'JHR190', 'MUHATHIR MAKHTAR', '238', 'muhathir@dhirpartnes.com.my', 'MALE', ' 20 Jan 2023 ', '3874', 'MUAR', 'INFORMATION TECHNOLOGY'),
(137, 'JHR202', 'NURLIA NASUHA MOHD RUZI', '128-1', 'NURLIA@123', 'FEMALE', ' 20 Jan 2023 ', '7633', 'MUAR', 'DIGI'),
(143, 'JHR223', 'MUHAMMAD HAZZIQ MUSTAPHA', '106-3', 'hazziqtapha01@gmail.com', 'MALE', ' 20 Jan 2023 ', '1945', 'MUAR', 'DIGITAL MARKETING'),
(145, 'JHR226', 'MUHAMMAD HANIF ROSLI', '204-2', 'HANIF@123', 'MALE', ' 20 Jan 2023 ', '7355', 'MUAR', 'COURTS'),
(146, 'JHR227', 'MUHAMMAD MUZAFFAR SIAM', '203-2', 'MUZAFFAR@123', 'MALE', ' 20 Jan 2023 ', '416', 'MUAR', 'COURTS'),
(147, 'JHR229', 'VIKNESWARAN M.MURAILEE', '410-1', 'VIKNESWARAN@123', 'MALE', ' 20 Jan 2023 ', '3190', 'MUAR', 'TM'),
(150, 'JHR240', 'NOORHAFIZA MD JALI', '319', 'HAFIZA@123', 'FEMALE', ' 20 Jan 2023 ', '6338', 'MUAR', 'DIGI'),
(151, 'JHR241', 'SITI NURHAMIZAH AZMAN', '329-1', 'HAMIZAH@123', 'FEMALE', ' 20 Jan 2023 ', '6671', 'MUAR', 'DIGI'),
(152, 'JHR242', 'NUR FARISHA ATHIRA ABDUL AZIZ', '304', 'FARISHA@123', 'FEMALE', ' 20 Jan 2023 ', '8760', 'MUAR', 'DIGI'),
(155, 'JHRI007', 'NURUL AZREENA TAIB', '106-4', 'AZREENA@123', 'FEMALE', ' 20 Jan 2023 ', '5352', 'MUAR', 'DIGITAL MARKETING'),
(157, 'JHR247', 'NUR ALLICESHAH YASZELY', '302-1', 'ALLICE@123', 'FEMALE', ' 20 Jan 2023 ', '2625', 'MUAR', 'DIGI'),
(158, 'JHR001', 'MUHADHIR AB RAHMAN', '101', 'MUHADHIR@123', 'MALE', ' 20 Jan 2023 ', '679', 'MUAR', 'MANAGEMENT/SLT'),
(159, 'JHR002', 'SURAIZAN ABU SAMAH', '102', 'SURAIZAN@123', 'FEMALE', ' 20 Jan 2023 ', '4570', 'MUAR', 'MANAGEMENT/SLT'),
(160, 'JHR003', 'MUHAMMAD KHAIRI ISHAK', '401', 'KHAIRI@123', 'MALE', ' 20 Jan 2023 ', '6089', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT'),
(161, 'JHR216', 'RAFIQ RAHMAT', '414-3', 'RAFIQ@123', 'MALE', ' 20 Jan 2023 ', '9341', 'MUAR', 'COMPLIANCE'),
(162, 'JHR103', 'NURUL MAISARAH BAKAR', '411-2', 'SARAH@123', 'FEMALE', ' 20 Jan 2023 ', '4900', 'MUAR', 'TM'),
(173, 'JHR263', 'HARISSA HAMIRA BINTI HARIZAN', '01121065026', 'harissahamira01@gmail.com', 'FEMALE', ' 20 Feb 2023 ', '7644', 'MUAR', 'COURTS'),
(174, 'JHR265', 'MUHAMMAD FIRDAUS BIN ABDULLAH', '0183949839', 'nobskyward123@gmailcom', 'MALE', ' 20 Feb 2023 ', '9345', 'MUAR', 'AEON WO'),
(180, 'JHR252', 'NUR NADIAH BINTI AB JALIL', '402', 'nadiah.dhirpartners@gmail.com', 'FEMALE', ' 20 Feb 2023 ', '2387', 'MUAR', 'HUMAN RESOURCE'),
(181, 'JHR259', 'MUHAMMAD NUR AFFANDI BIN JA''AFFAR', '245', 'affandijaaffar@gmail.com', 'MALE', ' 20 Feb 2023 ', '3930', 'MUAR', 'AEON WO'),
(185, 'JHR273', 'NUR ELINADIRA BINTI MUHAMAD ALI', '0177680400', 'nurelinadira@gmail.com', 'FEMALE', ' 26 Feb 2023 ', '5853', 'MUAR', 'INFORMATION TECHNOLOGY'),
(187, 'JHR271', 'NURUL SYAZWANI BINTI MOHD HATTA', '01128082322', 'http.wanie@gmail.com', 'FEMALE', ' 02 Mar 2023 ', '1079', 'MUAR', 'COURTS'),
(190, 'JHR069', 'NUR SYAZWANI BINTI ABD RAHIM', '127', 'WANI@123', 'FEMALE', ' 03 Mar 2023 ', '448', 'MUAR', 'DIGI'),
(191, 'JHR056', 'NUR AISHAH BINTI MD YUSOF', '105', 'admin.edu@dhirpartners.com.my', 'FEMALE', ' 08 Mar 2023 ', '7326', 'MUAR', 'ADMIN'),
(195, 'PP047', 'NORATIKAH BINTI ROSIDI', '0125395546', 'noratikah.rosidi@yahoo.com', 'FEMALE', ' 22 Mar 2023 ', '6236', 'PULAU PINANG', 'COURTS'),
(196, 'PP048', 'UMAIRAH SAFI BINTI MOHD GANI', '0184042238', 'umairahsafiwork@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '1861', 'PULAU PINANG', 'COURTS'),
(197, 'PP049', 'NORSYAFIKAH BINTI IDRIS', '011111142049', 'syafikahidris5974@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '5429', 'PULAU PINANG', 'COURTS'),
(199, 'KL005', 'NIK NUR AISYA BINTI ZAIDIN', '019396051', 'syaaaisya@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '6522', 'KUALA LUMPUR(HQ)', 'AIQON IKHLAS'),
(200, 'KL012', 'ROSLIZA BINTI RUSLI', '0173662834', 'iejalee0912@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '4919', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(203, 'KL044', 'NURUL FADHILAH BINTI YUSOF', '01131206529', 'fadhi96kmph@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '336', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(204, 'KL054', 'WAN MUHAMMAD ISA BIN WAN MOHAMAD APAKU ABADI', '0165569744', 'wanmuhdisa@gmail.com', 'MALE', ' 22 Mar 2023 ', '2184', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(207, 'KL082', 'KAVITHA A/P BHASKARAN NAIR', '0102906881', 'nisharasan1512@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '6070', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(209, 'KL085', 'NUR FARAH BINTI MOHAMED SALLEH', '0176179528', 'farahsalleh97@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '2333', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(211, 'KL003', 'NORFAHSARINA BINTI MD. YUSOF', '0177663782', 'fahsarinayusof@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '7765', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(212, 'KL008', 'SHARIFAH NOOR IZZATY BINTI SYED ISA AL KHADREE', '0169147784', 'zizatty4@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '1770', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(213, 'KL029', 'YANG AHLINI BINTI AHMAD', '01128981124', 'yangahlini07@icloud.com', 'FEMALE', ' 22 Mar 2023 ', '4791', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(216, 'KL071', 'SHAHRUL ZAIHAFIZI BIN ZAINON', '0197216598', 'shahrulzaihafizi10@icloud.com', 'MALE', ' 22 Mar 2023 ', '5636', 'KUALA LUMPUR(HQ)', 'BMMB'),
(218, 'KL080', 'SYAFIQAH BINTI SAARI', '0176743348', 'saarisyafiqah@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '8694', 'KUALA LUMPUR(HQ)', 'COURTS'),
(221, 'KL099', 'NUR AFIFAH BINTI MOHD NAZIM', '01112254002', 'afifahnazim@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '3235', 'KUALA LUMPUR(HQ)', 'COURTS'),
(222, 'KL102', 'PUTERI NURUL HAYATI BINTI AZMAN', '0122543362', 'hayati9506@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '1658', 'KUALA LUMPUR(HQ)', 'COURTS'),
(224, 'KL004', 'RAFIDAH BINTI RAFIE', '01137014049', 'rafidahrafie@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '1338', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(225, 'KL014', 'ABDUL SYAHRIEF BIN ABDUL MAJEED', '01116516816', 'sharepkuis05@gmail.com', 'MALE', ' 22 Mar 2023 ', '6244', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(226, 'KL028', 'ERNY BINTI SUPIAN', '0168188425', 'adam090682@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '9581', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(228, 'KL036', 'MUHAMMAD SYAHME BIN ZAHARUDIN', '0129439303', 'muhdsyahme97@gmail.com', 'MALE', ' 22 Mar 2023 ', '7051', 'KUALA LUMPUR(HQ)', 'COOP PERTAMA'),
(229, 'KL065', 'MUHAMMAD RAHMAT BIN ABDUL HAMID', '0112972187', 'muhdrahmat412@gmail.com', 'MALE', ' 22 Mar 2023 ', '6080', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(230, 'KL066', 'NOOR AMANINA NATASHA BINTI EFENDI', '011281452623', 'tashaamaninaaa@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '4731', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(231, 'KL077', 'NOR SHAHIRAH BINTI ZULKAPLI', '0182167802', 'ns.zulkapli@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '2271', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(232, 'KL079', 'NAFIS BIN AHMAD SAIDI', '0172731938', 'nafissaidi11@gmail.com', 'MALE', ' 22 Mar 2023 ', '8429', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(233, 'KL083', 'AHMAD SYAIFUL BIN MOHD IDRIS', '0182086258', 'ahmadsyaiful00@gmail.com', 'MALE', ' 22 Mar 2023 ', '8752', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(237, 'KL032', 'RUSHEILA BINTI RUSLAN', '0172731963', 'admin.kl@dhirpartners.com.my', 'FEMALE', ' 22 Mar 2023 ', '9076', 'KUALA LUMPUR(HQ)', 'ADMIN'),
(238, 'KL019', 'NUR FITRI YANA BINTI DZULKAFLI', '0178721209', 'yanazul1989@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '1380', 'KUALA LUMPUR(HQ)', 'HUMAN RESOURCE'),
(239, 'KL089', 'NURUL FARHANA SHAZLIEN BINTI FAKARUL NOOR HISHAM', '010327081076', 'farhanashazlien27@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '868', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT'),
(240, 'KL104', 'NURUL FARHANA BINTI MOHD TAHIR', '0132127727', 'far_anne91@yahoo.com', 'FEMALE', ' 22 Mar 2023 ', '126', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT'),
(241, 'KL105', 'LIYANA BINTI GHAZALI', '0173449080', 'liyanaghazali92@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '9549', 'KUALA LUMPUR(HQ)', 'COMPLIANCE'),
(242, 'KL037', 'MOSEN BALANA A/L NYANA BALAN', '0184604156', 'admin.kl@dhirpartners.com.my', 'MALE', ' 22 Mar 2023 ', '8748', 'KUALA LUMPUR(HQ)', 'ADMIN'),
(244, 'KL078', 'MUHAMMAD AFIF HAZWAN BIN ABDUL HALID', '0193797295', 'affhzwnn@gmail.com', 'MALE', ' 22 Mar 2023 ', '8880', 'KUALA LUMPUR(HQ)', 'AIQON AEON'),
(245, 'JHR277', 'NURUL HUDA BINTI ISHAK', '0178703629', 'newrulhuda96@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '7565', 'MUAR', 'AEON WO'),
(247, 'JHR280', 'MUHAMMAD KHAIRUL FIKRI BIN ZAMRI', '0134431832', 'Fikri0279@gmail.com', 'MALE', ' 22 Mar 2023 ', '1679', 'MUAR', 'AEON WO'),
(248, 'JHR281', 'NUR SAFI SHAHIRA BINTI MUHAMMAD SAFIAN', '0194437421', 'safishahirasafian@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '3753', 'MUAR', 'TM'),
(250, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', '01161296790', 'successwithgt@gmail.com', 'MALE', ' 22 Mar 2023 ', '2482', 'MUAR', 'MANAGEMENT/SLT'),
(251, 'KL106', 'AHMAD FAQIH BIN SALLEH', '0122605592', 'faqihfebruary91@gmail.com', 'MALE', ' 22 Mar 2023 ', '802', 'KUALA LUMPUR(HQ)', 'COURTS'),
(252, 'KL107', 'FITRIA ANWAR BINTI ABDUL', '0174080095', 'fitria@intranet.com', 'FEMALE', ' 22 Mar 2023 ', '2216', 'KUALA LUMPUR(HQ)', 'FACILITY ASSETS'),
(253, 'KL108', 'NURSUHADA BINTI NGADIRAN', '0162699793', 'nurshn79@gmail.com', 'FEMALE', ' 22 Mar 2023 ', '5561', 'KUALA LUMPUR(HQ)', 'COURTS'),
(256, 'KL111', 'MOHD HAIRY BIN RAHMAN', '01162096404', 'hathifcomel16@gmail.com', 'MALE', ' 22 Mar 2023 ', '7027', 'KUALA LUMPUR(HQ)', 'COURTS'),
(257, 'PP051', 'KHAIRUNNEISA LAILA BINTI SAIFUL SHAHRUL', '0199267291', 'khairunneisa@intranet.com', 'FEMALE', ' 22 Mar 2023 ', '5678', 'PULAU PINANG', 'SINGER NPL'),
(258, 'PP052', 'NURUL ISFAHANI BINTI ASRUL', '0199267292', 'isfahani@intranet.com', 'FEMALE', ' 22 Mar 2023 ', '1191', 'PULAU PINANG', 'COURTS'),
(260, 'JHR089', 'NURUL HIDAYAH DAUD', '408-3', 'NURUL@123', 'FEMALE', ' 26 Mar 2023 ', '3405', 'MUAR', 'TM'),
(261, 'PP053', 'MUHAMMAD ALIF BIN MOHD NASIR', '0175096450', 'muhammadalif7500@gmail.com', 'MALE', ' 28 Mar 2023 ', '1982', 'PULAU PINANG', 'COURTS'),
(262, 'KL007', 'SHAHIZAM BIN MANSOR', '0123430998', 'zachamicha@gmail.com', 'MALE', ' 28 Mar 2023 ', '1396', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT'),
(263, 'KL001', 'NOOR AMIRA BINTI AZMI', '0183862812', 'mieyaamira33@gmail.com', 'FEMALE', ' 28 Mar 2023 ', '6476', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(264, 'KL013', 'AZIZUL BIN ZULKIFLI', '0192895047', 'jijulsaja92@gmail.com', 'MALE', ' 28 Mar 2023 ', '6767', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(267, 'KL113', 'ADIB FARHAN BIN SALLEH', '0', 'adib@intranet.com', 'MALE', ' 07 Jun 2023 ', '3039', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(268, 'KL114', 'NUR AMIRA BINTI SHUID', '0', 'amira@intranet.com', 'FEMALE', ' 07 Jun 2023 ', '4320', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(269, 'KL115', 'FARHAD BIN ABDUL RAHMAN', '0', 'farhad@intranet.com', 'MALE', ' 07 Jun 2023 ', '7031', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT'),
(272, 'JHR054', 'IZZAH HAZIRAH BINTI ROSLI', '319', 'hazirahrosli94@gmail.com', 'FEMALE', ' 20 Jun 2023 ', '2416', 'MUAR', 'DIGI'),
(273, 'JHR290', 'MUHAMMAD DANIAL SYAFIQ BIN RAZALI', '0174300230', 'danialsyafiq012@gmail.com', 'MALE', ' 18 Aug 2023 ', '1213', 'MUAR', 'DIGI'),
(274, 'JHR294', 'MUHAMMAD FAHMI BIN NAZRI', '0169841560', 'fahmienazri@gmail.com', 'MALE', ' 18 Aug 2023 ', '1919', 'MUAR', 'COURTS'),
(275, 'JHR291', 'FARA NAZIRA BINTI IBRAHIM', '0138046939', 'aranajira908@gmail.com', 'FEMALE', ' 18 Aug 2023 ', '268', 'MUAR', 'COURTS'),
(277, 'JHR292', 'NURUL AIN BINTI ZAINAL', '0136263097', 'lurvenurulain@gmail.com', 'FEMALE', ' 18 Aug 2023 ', '7253', 'MUAR', 'TM'),
(278, 'JHR287', 'MUHAMMAD FAISAL BIN MOHD HASBI', '0182022092', 'Fhasbi211@gmail.com', 'MALE', ' 18 Aug 2023 ', '433', 'MUAR', 'COURTS'),
(279, 'KL123', 'LIDYAWATI BINTI HALIM', '0', 'lidyawati@gmail.com', 'FEMALE', ' 29 Aug 2023 ', '9183', 'KUALA LUMPUR(HQ)', 'RHB'),
(280, 'KL124', 'MUHAMMAD HELMIRUL BIN MANJA BUN ABU KASIM', '0', 'helmirul@gmail.com', 'MALE', ' 29 Aug 2023 ', '7827', 'KUALA LUMPUR(HQ)', 'RHB'),
(282, 'KL127', 'NUR MARLISSA BINTI HASLI', '0', 'marlissa@gmail.com', 'FEMALE', ' 29 Aug 2023 ', '3300', 'KUALA LUMPUR(HQ)', 'RHB'),
(283, 'KL128', 'JASMIN BINTI ABDULLAH', '0', 'jasmin@gmail.com', 'FEMALE', ' 29 Aug 2023 ', '1428', 'KUALA LUMPUR(HQ)', 'RHB'),
(284, 'KL120', 'MUHAMMAD HAFIZ AMBARE BIN ANUAR HAFIZ', '0', 'ambare@gmail.com', 'MALE', ' 29 Aug 2023 ', '5424', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(285, 'JHRI009', 'NURSYAHILA ABD RAZAK', '0196257114', 'syahilarazak27@gmail.com', 'FEMALE', ' 06 Sep 2023 ', '9384', 'MUAR', 'FINANCE'),
(286, 'JHR298', 'NURAFIQA BINTI JAIMI', '01117546029', 'nurafiqajaimi98@gmail.com', 'FEMALE', ' 14 Sep 2023 ', '9941', 'MUAR', 'DIGI'),
(287, 'KL129', 'UMAR FARUQ BIN MOHD NAKIM', '0176834963', 'umarfaromeo@gmail.com', 'MALE', ' 14 Sep 2023 ', '8356', 'KUALA LUMPUR(HQ)', 'BMMB'),
(288, 'KL130', 'MUHAMMAD NABIL SHAH BIN SHAHNURIN', '0183949297', 'nabilshahshahnurin@gmail.com', 'MALE', ' 14 Sep 2023 ', '3508', 'KUALA LUMPUR(HQ)', 'RHB'),
(290, 'JHR299', 'HAFIZAH BINTI ABD KARIM', '01111806484', 'fiza.karim@gmail.com', 'FEMALE', ' 29 Sep 2023 ', '8902', 'MUAR', ''),
(291, 'JHR301', 'MUHAMAD RAIHAN BIN RAMLAN', '0183545896', 'raihanramlan6@gmail.com', 'MALE', ' 29 Sep 2023 ', '4013', 'MUAR', 'TM'),
(292, 'JHR300', 'ANI NUR ASMIRA BINTI ABDULLAH', '0195367224', 'miraasmira465@gmail.com', 'FEMALE', ' 29 Sep 2023 ', '4897', 'MUAR', 'DIGI'),
(294, 'JHR302', 'NOOR SHAFINA BINTI KAMARUDIN', '0137366926', 'shafinakamarudin@yahoo.com', 'FEMALE', ' 05 Oct 2023 ', '6547', 'MUAR', 'TM'),
(296, 'JHR304', 'NURUL FARRA NAJWA BINTI WIRA', '01121628727', 'farranajwa107@gmail.com', 'FEMALE', ' 05 Oct 2023 ', '4030', 'MUAR', 'TM'),
(297, 'JHR315', 'Nurul Syarmimi Binti Mohd Niza', '402', 'mimi@123', '', ' 17 Nov 2023 ', '5258', 'MUAR', 'HUMAN RESOURCE'),
(298, 'JHRI010', 'MUHAMMAD WAFRIHAZIQ BIN MOHD NOR MUHARAM', '0199170524', 'wafrihaziq00@gmail.com', 'MALE', ' 03 Jan 2024 ', '3255', 'MUAR', 'INFORMATION TECHNOLOGY'),
(299, 'JHRI012', 'SITI NURFADHILAH BINTI ABDULLAH', '403', 'snfdlhh@gmail.com', 'FEMALE', ' 15 Mar 2024 ', '6682', 'MUAR', 'FINANCE'),
(300, 'JHR354', 'Syaiful Hisyam Bin Hamzah', '203', 'syaifulhisyam4780@gmail.com', 'MALE', ' 18 Jun 2024 ', '1293', 'MUAR', 'COURTS'),
(301, 'jhr357', 'nur asiah bte shaharudin', '251', 'asiyah.shaharudin@gmail.com', 'FEMALE', ' 19 Jun 2024 ', '7990', 'MUAR', 'AEON WO');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE IF NOT EXISTS `facility` (
`id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tmp` varchar(500) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`id`, `title`, `type`, `tmp`, `date`) VALUES
(8, 'BORANG ADUAN KEROSAKAN', 'PDF', 'BORANG ADUAN KEROSAKAN.pdf', '2022-12-22 00:00:00'),
(9, 'BORANG MAKLUMAT PERNIAGAAN', 'PDF', 'BORANG MAKLUMAT PERNIAGAAN.pdf', '2022-12-22 00:00:00'),
(11, 'EQUIPMENT REQUEST FORM (OUTDOOR ACTIVITIES)', 'PDF', 'EQUIPMENT REQUEST FORM (OUTDOOR ACTIVITIES).pdf', '2022-12-22 00:00:00'),
(12, 'EQUIPMENT REQUEST FORM (TEAM)', 'PDF', 'EQUIPMENT REQUEST FORM (TEAM).pdf', '2022-12-22 00:00:00'),
(13, 'EQUIPMENT REQUEST FORM', 'PDF', 'EQUIPMENT REQUEST FORM.pdf', '2022-12-22 00:00:00'),
(23, 'BORANG PERMOHONAN PENGINAPAN PEKERJA', 'PDF', 'BORANG PERMOHONAN MENETAP DI HOMESTAY.pdf', '2023-01-24 15:43:56'),
(24, 'PERJANJIAN PENGINAPAN PEKERJA (KONTRAK)', 'PDF', 'AGREEMENT BETWEEN STAFF (version 15-nov-2022).pdf', '2023-01-24 15:45:07'),
(29, 'STATIONARY AND GOODS REQUISITION FORM MUAR', 'PDF', 'STATIONARY AND GOODS REQUISITION FORM MUAR.pdf', '2023-02-26 17:46:49'),
(30, 'STAFF EQUIPMENT RECEIVED FORM', 'PDF', '2. EQUIPMENT RECEIVED FORM 270423.pdf', '2023-04-27 12:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE IF NOT EXISTS `finance` (
`id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tmp` varchar(500) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `title`, `type`, `tmp`, `date`) VALUES
(2, 'EXAMPLE Purchase Order Template', 'PDF', 'EXAMPLE Purchase Order Template.pdf', '2023-06-27 12:04:57'),
(6, 'EXAMPLE Purchase Requisition Form', 'PDF', 'EXAMPLE Purchase Requisition Form.pdf', '2023-06-27 12:08:29'),
(10, 'Aliran proses Syarat pembelian RM1000 - RM10000', 'PDF', 'Aliran proses Syarat pembelian RM1000 - RM10000.pdf', '2023-06-27 12:10:52'),
(11, 'Aliran proses Syarat pembelian RM10000 ke atas', 'PDF', 'Aliran proses Syarat pembelian RM10000 ke atas.pdf', '2023-06-27 12:12:13'),
(12, 'Aliran proses Syarat pembelian Tidak melebihi RM1000 Terma pembayaran secara tunai', 'PDF', 'Aliran proses Syarat pembelian Tidak melebihi RM1000 Terma pembayaran secara tunai.pdf', '2023-06-27 12:13:05'),
(13, 'Travel Claim From', 'PDF', 'TRAVEL CLAIM FORM REV002.pdf', '2024-03-08 15:39:16'),
(14, 'EXAMPLE to fill in Travel Claim Form', 'PDF', 'EXAMPLE to fill in TRAVEL CLAIM FORM.pdf', '2024-03-08 15:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE IF NOT EXISTS `hr` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tmp` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `title`, `type`, `tmp`, `date`, `status`) VALUES
(2, 'MONTHLY OVERTIME FORM (2023)', 'PDF', 'MONTHLY OVERTIME FORM (2023).pdf', '2023-02-06 16:22:19', 0),
(4, 'DISC-BM', 'PDF', 'DISC-BM.pdf', '2023-02-09 14:19:51', 0),
(5, 'DISC-BI', 'PDF', 'DISC-BI.pdf', '2023-02-09 14:20:11', 0),
(6, 'TIME CLOCK EXCEPTION FORM', 'PDF', 'TIME CLOCK EXCEPTION FORM.pdf', '2023-05-17 17:24:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `it`
--

CREATE TABLE IF NOT EXISTS `it` (
`id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tmp` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it`
--

INSERT INTO `it` (`id`, `title`, `type`, `tmp`, `date`) VALUES
(2, 'BORANG PENUKARAN BARANG KOMPUTER', 'PDF', 'BORANG PENUKARAN BARANG KOMPUTER.pdf', '2022-12-23 00:00:00'),
(3, 'INCIDENT RESPONSE REPORTING FORM', 'PDF', 'INCIDENT RESPONSE REPORTING FORM.pdf', '2022-12-26 00:00:00'),
(4, 'DDMS - COLLECTOR GUIDE', 'PDF', 'DDMS - Collector Guide.pdf', '2023-04-17 09:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `attachment` varchar(500) NOT NULL,
  `sendTo` varchar(50) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `subject` varchar(50) NOT NULL,
  `pdf` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `date`, `name`, `message`, `attachment`, `sendTo`, `status`, `subject`, `pdf`) VALUES
(2, '2023-05-16 18:17:23', 'HR Department', 'Assalamulaikum semua, sila rujuk keterangan lanjut. Sekian, terima kasih. Yang Benar, Jabatan Pengurusan Sumber Manusia.', 'Pindaan Klausa Polisi Syarikat.jpg', 'all', 0, 'Pindaan Klausa Polisi Syarikat', ''),
(3, '2023-05-16 18:24:47', 'HR Department', 'Assalamulaikum semua, sila rujuk keterangan lanjut. Sekian, terima kasih. Yang benar, Jabatan Pengurusan Sumber Manusia.', 'Gangguan seksual di tempat kerja.jpg', 'all', 0, 'Gangguan seksual di tempat kerja. ', ''),
(4, '2023-05-16 18:29:49', 'HR Department', 'Assalamulaikum semua, sila rujuk keterangan lanjut. Sekian terima kasih. Yang benar, Jabatan Pengurusan Sumber Manusia.', 'Peringatan bagi pencegahan penularan covid-19.jpg', 'all', 0, 'Peringatan bagi pencegahan penularan Covid-19', ''),
(22, '2023-06-06 10:46:49', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN JUN 2023.\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 6 JUN 2023 SEHINGGA 9 JUN 2023. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI PEMBANTU KEWANGAN, NOR AZIERA BINTI MASHIR (SAMBUNGAN: 403)\r\n\r\n', 'JUN 23 - MEMO ADVANCE SALARY.jpg', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN JUN 2023', ''),
(23, '2023-07-06 10:52:16', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN JULAI 2023.\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 6 JULAI 2023 SEHINGGA 12 JULAI 2023. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', 'MEMO ADVANCE JUL23.jpg', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN JULAI 2023', ''),
(24, '2023-07-12 17:49:07', 'FA Department', 'Ø§ÙŽÙ„Ø³ÙŽÙ„Ø§Ù…Ù Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ… ÙˆÙŽØ±ÙŽØ­Ù’Ù…ÙŽØ©Ù Ø§ÙŽÙ„Ù„Ù‡Ù ÙˆÙŽØ¨ÙŽØ±ÙŽÙƒØ§ØªÙÙ‡Ù\r\nKepada semua,\r\n\r\nMerujuk perkara diatas, rujuk lampiran dibawah untuk keterangan lanjut.\r\n\r\n2. Kerjasama daripada semua pihak amat kami hargai dan didahului dengan ucapan ribuan terima kasih.\r\n\r\nSekian, Terima Kasih.', '', 'all', 0, 'TAWARAN MENJADI PENGUSAHA KAFE DHIR & PARTNERS SDN', '12072023.pdf'),
(26, '2023-07-27 17:41:46', 'IT Department', 'Bismillahirrahmanirrahim\r\n\r\nAssalamualaikum Warahmatullahi Wabarakatuh dan Selamat Sejahtera,\r\n\r\nMuslimin & Muslimat\r\nAhli Keluarga DPACC yang dikasihi.\r\n\r\nMAKLUMAN KEMBALINYA KE RAHMATULLAH AYAHANDA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nInnalillah Wa''inna Ilaihi Roji''oon.\r\n\r\nDgn nama Allah swt yg maha pemurah lagi maha penyayang kepada semua hambaNya. Salam dan selawat ke atas junjungan besar Nabi Muhammad S.A.W, ahli keluarganya, para sahabatnya dan seluruh umat Islam sama ada yg masih hidup atau yg telah meninggal dunia\r\n\r\n2. Dgn penuh insaf rendah diri dan dukacita dimaklumkan bahawa Allahyarham Encik Abbas Bin Abdul Aziz iaitu ayahanda kepada Puan Irfiliana Binti Abbas telah menghembuskan nafas yg terakhir pada 27 Julai 2023. \r\n\r\n3. Saya mengambil kesempatan ini untuk mengumumkan DPACC akan menjalankan kutipan sumbangan untuk keluarga arwah. Tabung sumbangan akan diedarkan pada 28 Julai 2023 (Jumaat) bermula jam 10.00 pagi.\r\n\r\nSekian dimaklumkan.\r\n\r\nSaya yg menjalankan amanah,\r\n\r\nPengerusi DPACC 2023 â€“ 2025.		', '', 'all', 0, 'DPACC - Sumbangan Khairat Kematian untuk ahli kelu', ''),
(27, '2023-07-27 17:41:55', 'IT Department', 'Bismillahirrahmanirrahim\r\n\r\nAssalamualaikum Warahmatullahi Wabarakatuh dan Selamat Sejahtera,\r\n\r\nMuslimin & Muslimat\r\nAhli Keluarga DPACC yang dikasihi.\r\n\r\nMAKLUMAN KEMBALINYA KE RAHMATULLAH AYAHANDA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nInnalillah Wa''inna Ilaihi Roji''oon.\r\n\r\nDgn nama Allah swt yg maha pemurah lagi maha penyayang kepada semua hambaNya. Salam dan selawat ke atas junjungan besar Nabi Muhammad S.A.W, ahli keluarganya, para sahabatnya dan seluruh umat Islam sama ada yg masih hidup atau yg telah meninggal dunia\r\n\r\n2. Dgn penuh insaf rendah diri dan dukacita dimaklumkan bahawa Allahyarham Encik Abbas Bin Abdul Aziz iaitu ayahanda kepada Puan Irfiliana Binti Abbas telah menghembuskan nafas yg terakhir pada 27 Julai 2023. \r\n\r\n3. Saya mengambil kesempatan ini untuk mengumumkan DPACC akan menjalankan kutipan sumbangan untuk keluarga arwah. Tabung sumbangan akan diedarkan pada 28 Julai 2023 (Jumaat) bermula jam 10.00 pagi.\r\n\r\nSekian dimaklumkan.\r\n\r\nSaya yg menjalankan amanah,\r\n\r\nPengerusi DPACC 2023 â€“ 2025.		', '', 'all', 0, 'DPACC - Sumbangan Khairat Kematian untuk ahli kelu', ''),
(29, '2023-07-28 10:58:01', 'HR Department', 'Assalamualaikum wbt & Selamat Sejahtera. \r\n\r\nUntuk makluman semua terdapat  dua (2) kekosongan jawatan yang perlu diisi di Jabatan Operasi dan jawatan ini adalah dibuka kepada warga kerja D&P cawangan Muar.\r\n\r\nBerikut adalah maklumat terperinci bagi kekosongan jawatan tersebut:\r\n\r\nJAWATAN : PENGURUS & PENOLONG PENGURUS JABATAN OPERASI\r\nCAWANGAN : MUAR, JOHOR\r\n\r\nKELAYAKAN:\r\n1. PENGURUS  :  \r\nðŸ”¹Terbuka kepada semua Penolong Pengurus Jabatan Operasi\r\n2. PENOLONG PENGURUS  :  \r\n\r\nðŸ”¹Terbuka kepada CRO yang telah mempunyai tempoh perkhidmatan sekurang - kurangnya satu (1) tahun dan ke atas dan mempunyai prestasi kutipan yang baik\r\nðŸ”¹Terbuka kepada semua Penolong Pengurus di Jabatan Strategik Operasi\r\n\r\nKepada kakitangan yang berminat bagi jawatan tersebut adalah diminta untuk menghantar resume terkini ke Jabatan Pengurusan Sumber Manusia selewat â€“ lewatnya pada 30/7/2023 (Ahad). Kepada kakitangan yang melepasi tapisan awal akan dipanggil sesi temuduga pada 01/8/2023 (Isnin). \r\n\r\nTerima kasih\r\nJabatan Pengurusan Sumber Manusia', '', 'all', 0, 'NOTIS MAKLUMAN JAWATAN KOSONG BAGI LANTIKAN DALAMA', 'NOTIS MAKLUMAN JAWATAN KOSONG BAGI LANTIKAN DALAMAN.pdf'),
(30, '2023-07-30 10:02:45', 'FA Department', 'Perkara diatas adalah dirujuk,\r\nUntuk makluman semua Ahli Keluarga DPACC, program DPACC â€“ SUKAN RAKYAT akan diadakan seperti ketetapan berikut: -\r\n                                                                   Tarikh : 06 Ogos 2023\r\n                                                                   Hari : Ahad\r\n                                                                   Masa: 2.00 petang - 6.00 petang\r\n                                                                   Minggu : Pertama Ogos 2023\r\n                                                                   Tempat : Padang Pesta Muar\r\n\r\n2. Bersama ini disertakan nama ahli setiap Rumah Sukan dan senarai sukan untuk rujukan semua. Setiap Rumah Sukan diminta untuk menyenaraikan nama wakil bagi acara yang dipertandingkan dan mestilah dihantar kepada Urusetia DPACC â€“ Sukan Rakyat pada atau sebelum 03 Ogos 2023 jam 5.00 petang.\r\n\r\n3. Setiap Rumah Sukan diberi kebebasan dan kreativiti untuk mencorakkan tema, keseragaman pakaian dan slogan semangat bagi memberi ispirasi keyakinan untuk menang. Sebarang pertanyaan boleh berhubung dengan Urusetia DPACC â€“ Sukan Rakyat.\r\n\r\nSekian, Terima Kasih.\r\n\r\nYang Menjalankan Amanah,\r\nJAWATANKUASA DPACC 2023-2025\r\n', '', 'all', 0, 'DPACC - SUKAN RAKYAT 2023', 'LISTING NAME DPACC SUKAN RAKYAT (1).pdf'),
(31, '2023-07-30 10:08:36', 'IT Department', 'TENTATIF PROGRAM â€“ DPACC Sukan Rakyat.\r\n\r\nTarikh:		06/08/2023\r\n\r\nTempat:		Padang Pesta, Muar\r\n\r\n2.00-2.15pm: Berkumpul di Padang Pesta Muar \r\n\r\n2.15-2.30pm : Ucapan Boss & Puan \r\n\r\n2.30-3.00pm : Taklimat Sukan Rakyat & Sesi Bergambar Rumah Sukan.\r\n\r\n3.00-5.00pm: Aktiviti Sukan Rakyat Dhir & Partners Sdn. Bhd.\r\n\r\n5.00-5.30pm: Penyampaian Hadiah & Cenderahati.\r\n\r\n5.30-6.00pm: Makan Petang (CafÃ©) \r\n\r\n6.15pm: Scan face (Balik)\r\n', '', 'all', 0, 'TENTATIF PROGRAM â€“ DPACC Sukan Rakyat.', ''),
(32, '2023-07-30 10:08:43', 'IT Department', 'TENTATIF PROGRAM â€“ DPACC Sukan Rakyat.\r\n\r\nTarikh:		06/08/2023\r\n\r\nTempat:		Padang Pesta, Muar\r\n\r\n2.00-2.15pm: Berkumpul di Padang Pesta Muar \r\n\r\n2.15-2.30pm : Ucapan Boss & Puan \r\n\r\n2.30-3.00pm : Taklimat Sukan Rakyat & Sesi Bergambar Rumah Sukan.\r\n\r\n3.00-5.00pm: Aktiviti Sukan Rakyat Dhir & Partners Sdn. Bhd.\r\n\r\n5.00-5.30pm: Penyampaian Hadiah & Cenderahati.\r\n\r\n5.30-6.00pm: Makan Petang (CafÃ©) \r\n\r\n6.15pm: Scan face (Balik)\r\n', '', 'all', 0, 'TENTATIF PROGRAM â€“ DPACC Sukan Rakyat.', ''),
(33, '2023-07-30 10:22:09', 'FA Department', 'Perkara diatas dirujuk,\r\n\r\nDisertakan Senarai Nama Ahli Rumah Sukan Rakyat DPACC 2023 dibawah untuk rujukan semua.\r\n\r\nSekian, Terima Kasih.\r\n\r\nJAWATANKUASA DPACC 2023-2025.', '', 'all', 0, 'SENARAI NAMA AHLI RUMAH SUKAN DPACC 2023', 'LISTING NAME DPACC SUKAN RAKYAT (1).pdf'),
(34, '2023-07-30 10:29:27', 'FA Department', 'Perkara diatas adalah dirujuk,\r\n\r\nDilampirkan lampiran dibawah untuk rujukan semua.\r\n\r\nSekian Terima Kasih.\r\n\r\nJAWATANKUASA DPACC 2023-2025.', '', 'all', 0, 'SENARAI NAMA SUKAN RAKYAT DPACC 2023', 'SENARAIWAKILRUMAHSUKAN.pdf'),
(35, '2023-08-07 14:14:21', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN OGOS 2023.\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 7 OGOS 2023 SEHINGGA 11 OGOS 2023. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN OGOS 2023', 'MEMO GAJI PENDAHULUAN OGOS 2023.pdf'),
(36, '2023-08-24 11:22:38', 'IT Department', 'Perhatian Kepada Semua Ahli Keluarga DPACC,\r\n\r\nSempena menyambut Hari Kemerdekaan Ke 66 Tahun dan Hari Malaysia 60 Tahun, DPACC menganjurkan pertandingan DECO MERDEKA DEPARTMENT.\r\nPertandingan ini bermula pada 23 Ogos 2023 hingga 16 September 2023. Setiap Jabatan boleh menghias satu sudut atau keseluruhan ruang dengan hiasan mengikut kreativiti asalkan tidak merosakkan ruang tersebut. Boleh rujuk MEMO Pertandingan dilampirkan.\r\nPengadilan pertandingan akan bermula pada 31 Ogos 2023 hingga 16 September 2023. Sepanjang tempoh pertandingan, penambahbaikan amat digalakkan keatas dekorasi jabatan. Semua keputusan pengadil adalah muktamad dan tidak boleh dipertikaikan dalam apa jua cara.\r\n\r\nSELAMAT MENYAMBUT HARI KEMERDEKAAN KE 66 TAHUN DAN HARI MALAYSIA KE 60 TAHUN.\r\n\r\nPengerusi DPACC - 2023/2025\r\n ', '', 'all', 0, 'DPACC - Pertandingan Deco Merdeka Department DNP.', 'DEKO KEMERDEKAAN KE 66.pdf'),
(37, '2023-08-24 11:23:03', 'IT Department', 'Perhatian Kepada Semua Ahli Keluarga DPACC,\r\n\r\nSempena menyambut Hari Kemerdekaan Ke 66 Tahun dan Hari Malaysia 60 Tahun, DPACC menganjurkan pertandingan DECO MERDEKA DEPARTMENT.\r\nPertandingan ini bermula pada 23 Ogos 2023 hingga 16 September 2023. Setiap Jabatan boleh menghias satu sudut atau keseluruhan ruang dengan hiasan mengikut kreativiti asalkan tidak merosakkan ruang tersebut. Boleh rujuk MEMO Pertandingan dilampirkan.\r\nPengadilan pertandingan akan bermula pada 31 Ogos 2023 hingga 16 September 2023. Sepanjang tempoh pertandingan, penambahbaikan amat digalakkan keatas dekorasi jabatan. Semua keputusan pengadil adalah muktamad dan tidak boleh dipertikaikan dalam apa jua cara.\r\n\r\nSELAMAT MENYAMBUT HARI KEMERDEKAAN KE 66 TAHUN DAN HARI MALAYSIA KE 60 TAHUN.\r\n\r\nPengerusi DPACC - 2023/2025\r\n ', '', 'all', 0, 'DPACC - Pertandingan Deco Merdeka Department DNP.', 'DEKO KEMERDEKAAN KE 66 - KL.pdf'),
(42, '2023-09-07 15:33:18', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN SEPTEMBER 2023.\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 6 SEPTEMBER 2023 SEHINGGA 8 SEPTEMBER 2023. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN SEPTEMBER 2023', 'SEP23 - MEMO ADVANCE SALARY.pdf'),
(45, '2023-09-22 11:12:31', 'FA Department', 'Ø§ÙŽÙ„Ø³ÙŽÙ„Ø§Ù…Ù Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ… ÙˆÙŽØ±ÙŽØ­Ù’Ù…ÙŽØ©Ù Ø§ÙŽÙ„Ù„Ù‡Ù ÙˆÙŽØ¨ÙŽØ±ÙŽÙƒØ§ØªÙÙ‡Ù\r\nKepada semua staf Muar,\r\n\r\nPerkara diatas adalah dirujuk,\r\n\r\n2. Untuk makluman semua, pengusaha cafe TIDAK BEROPERASI pada hari Ahad (24/9/2023) ini dan akan beroperasi semula pada Isnin (25/9/2023). Oleh itu, minta kerjasama semua untuk menguar-uarkan pada semua staf mengenai hal ini. Kerjasama daripada semua pihak amat kami hargai dan didahului dengan ucapan terima kasih.\r\n\r\n\r\n\r\nSekian Untuk Makluman.\r\n\r\nTerima Kasih.\r\n\r\n \r\n----\r\n', '', 'all', 0, 'CAFE TIDAK BEROPERASI ', ''),
(46, '2023-09-29 11:47:49', 'FA Department', 'Ø§ÙŽÙ„Ø³ÙŽÙ„Ø§Ù…Ù Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ… ÙˆÙŽØ±ÙŽØ­Ù’Ù…ÙŽØ©Ù Ø§ÙŽÙ„Ù„Ù‡Ù ÙˆÙŽØ¨ÙŽØ±ÙŽÙƒØ§ØªÙÙ‡Ù\r\n\r\n\r\nKepada semua,\r\n\r\nPerkara diatas adalah dirujuk,\r\n\r\n2. Untuk makluman semua, PENGUSAHA CAFEÂ TIDAK BEROPERASIÂ padaÂ hari Sabtu (30/09/2023) ini dan akanÂ beroperasi semula pada Isnin (02/10/2023) seperti biasa. Oleh itu, minta kerjasama semua untuk menguar-uarkan pada semua staf mengenai hal ini. Kerjasama daripada semua pihak amat kami hargai dan didahului dengan ucapan terima kasih.\r\n\r\n\r\n\r\n\r\nSekian Untuk Makluman.\r\nTerima Kasih.\r\n\r\n(JABATAN FASILITI & ASET)', '', 'all', 0, 'MAKLUMAN CAFE TIDAK BEROPERASI ', ''),
(47, '2023-10-03 15:52:10', 'DPACC', 'Assalamualaikum dan Selamat Sejahtera ahli keluarga DPACC.\r\n\r\nSukacita dimaklumkan, DPACC akan menganjurkan Ceramah MAULIDUL RASUL 1445H, seperti ketetapan berikut:-\r\n\r\nTarikh : 06 Oktober 2023\r\nHari : Jumaat\r\nMasa : 10.45 am. Hingga 12.45 pm.\r\nTempat : CafÃ© Dhir & Partners Sdn. Bhd.\r\n\r\nSemua ahli keluarga DPACC Muar dijemput hadir. Selepas tamat majlis, rehat dan lunch seperti biasa 12.45 pm sehingga 2.15 pm.\r\n\r\nTerima kasih.\r\n\r\nPengerusi DPACC\r\n2023 â€“ 2025.', '', 'all', 0, 'DPACC - Ceramah Maulidul Rasul 1445H, 2023M.', 'DPACC MEMO Maulidul Rasul 2023.pdf'),
(48, '2023-10-09 09:15:41', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN OKTOBER 2023.\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 6 OKTOBER 2023 SEHINGGA 12 OKTOBER 2023. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN OKTOBER 2023', 'OKT23 - MEMO ADVANCE SALARY.pdf'),
(49, '2023-11-06 09:19:22', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN NOVEMBER 2023.\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 6 NOVEMBER 2023 SEHINGGA 10 NOVEMBER 2023. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN NOVEMBER 2023', 'NOV23 - MEMO ADVANCE SALARY.pdf'),
(50, '2023-11-09 14:31:09', 'COMPLIANCE', 'Hai IT team, tolong bantu untuk saya akses training share folder. \r\n', '5c2e97d1-d09f-44a9-9881-f77a39354549.jfif', 'it', 0, 'Share folder', ''),
(51, '2023-11-23 09:31:34', 'IT DEPARTMENT', 'Assalamualaikum Dan Selamat Sejahtera.\r\n\r\nDimaklumkan bahawa pada hari ini, 23-11-2023 (Khamis) akan ada gangguan internet di Muar kerana pertukaran Modem Unifi untuk naik taraf line internet kepada 1Gbps. Gangguan ini akan menyebabkan Sistem DDMS dan Intranet DNP tidak dapat di akses oleh pejabat Kuala Lumpur. Jabatan IT akan maklumkan masa untuk semua staff log out dari semua Sistem DNP. Tempoh gangguan adalah dalam 30 minit waktu bekerja. Sebarang pertanyaan, sila berhubung dengan Jabatan IT.\r\n\r\nSekian,\r\n\r\nTerima Kasih.\r\n', '', 'all', 0, 'Naik taraf TM Unifi kepada 1Gbps.', ''),
(53, '2023-11-24 16:14:01', 'DPACC', 'Perhatian Kepada Semua Ahli Keluarga DPACC,\r\n\r\nDPACC akan menganjurkan acara EXPLORACE & HI-TEA DPACC 2023 sebagai program akhir untuk Tahun 2023. Pertandingan ini dilaksanakan dalam bentuk â€˜permainan berstesenâ€™ dimana pasukan-pasukan yang menyertai pertandingan perlu menyelesaikan masalah-masalah yang diberi semasa berada dalam kelima-lima stesen yang disediakan. Pertandingan ini adalah untuk kerja berkumpulan dan bukannya cepat sampai kedestinasi akhir. \r\nDi hujung program, akan diadakan Majlis Jamuan Teh bagi meraikan semua ahli keluarga DPACC Dhir & Partners Sdn. Bhd. kerana menjayakan semua aktiviti anjuran DPACC sepanjang Tahun 2023.\r\n\r\nBerikut adalah maklumat lengkap program:\r\n\r\nNama Program		: 	EXPLORACE & HI-TEA DPACC 2023\r\nTarikh			        :	03 December 2023 (Ahad)\r\nTempat Mula		:	Hadapan Pejabat Dhir & Partners Sdn. Bhd.\r\nTempat Akhir 		:	Dewan Kompleks Gunung Ledang, Johor.\r\n\r\nTENTATIF PROGRAM  03-12-2023\r\n07.45 am		        :	Berkumpul di Dhir & Partners Sdn Bhd \r\n08.00 am - 09.15 am	:	Doa dan Flag Off Treasure Hunt\r\n09.15 am - 12.00 pm 	: 	Aktiviti Treasure Hunt \r\n12.00 pm - 02.00 pm	: 	Jamuan Makan Tengahari & Aktiviti Bebas (Rehat)\r\n02.00 pm â€“ 03.00 pm	:	Persiapan Program Hi-Tea DPACC 2023. \r\n03.00 pm - 05.30 pm	: 	Majlis Hi-Tea \r\n                                        :	Penyampaian Hadiah Treasure Hunt \r\n			                : 	Penyampaian Hadiah Hari Lahir (Mei â€“ Disember) \r\n		                	: 	Majlis potong kek Sambutan Hari Jadi \r\n		                	:	Program tukar-tukar hadiah DPACC (Nilai Hadiah RM20.00) \r\n05.30 pm - 06.00 pm	:	Sesi Bergambar dan Bersurai.\r\n\r\n\r\nPengerusi DPACC - 2023/2025\r\n', '', 'all', 0, 'EXPLORACE & HI-TEA DPACC 2023', ''),
(55, '2023-11-26 12:02:58', 'COURTS', 'web tak berfungsi tak berbunyi', '', 'fa', 0, 'web phone problem', ''),
(56, '2023-12-06 09:54:40', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN DECEMBER 2023.\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 06 DECEMBER 2023 SEHINGGA 08 DECEMBER 2023. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN DECEMBER 2023', 'DEC23 - MEMO ADVANCE SALARY.pdf'),
(57, '2023-12-21 10:43:28', 'DPACC', 'Bismillahirrahmanirrahim\r\n\r\nAssalamualaikum Warahmatullahi Wabarakatuh dan Selamat Sejahtera,\r\n\r\nMuslimin & Muslimat\r\nAhli Keluarga DPACC yang dikasihi.\r\n\r\nMAKLUMAN KEMBALINYA KE RAHMATULLAH BONDA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nInnalillah Wa''inna Ilaihi Roji''oon.\r\n\r\nDgn nama Allah swt yg maha pemurah lagi maha penyayang kepada semua hambaNya. Salam dan selawat ke atas junjungan besar Nabi Muhammad S.A.W, ahli keluarganya, para sahabatnya dan seluruh umat Islam sama ada yg masih hidup atau yg telah meninggal dunia\r\n\r\n2. Dgn penuh insaf rendah diri dan dukacita dimaklumkan bahawa Allahyarhamah bonda kepada Encik Muhammad Muzaffar Bin Siam telah menghembuskan nafas yg terakhir pada 21 Disember 2023. \r\n\r\n3. Saya mengambil kesempatan ini untuk mengumumkan DPACC akan menjalankan kutipan sumbangan untuk keluarga arwah. Tabung sumbangan akan diedarkan pada 21 Disember 2023 (Khamis) bermula jam 11.00 pagi.\r\n\r\nSekian dimaklumkan.\r\n\r\nSaya yg menjalankan amanah,\r\n\r\nPengerusi DPACC 2023 â€“ 2025.		', '', 'all', 0, 'DPACC - Sumbangan Khairat Kematian untuk ahli kelu', ''),
(58, '2024-01-08 09:10:31', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN JANUARI 2024\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 07 JANUARI 2024 SEHINGGA 12 JANUARI 2024. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN JANUARI 2024', 'JAN24 - MEMO ADVANCE SALARY.pdf'),
(59, '2024-01-16 18:00:54', 'TRAINING', 'Assalamualaikum\r\nPemohonan untuk setup 2 PC  untuk kegunaan Training and Compilance di bilik BCP dengan keadaan segera.\r\n\r\nTerima Kasih.', '', 'it', 0, 'Request untuk setup 2 pc  di BCP room ', ''),
(60, '2024-01-17 12:39:41', 'TRAINING', 'Pemohonan untuk pemasangan 2 PC di bilik BCP Training for Non - Operation .', '', 'it', 0, 'Request untuk setup 2 pc  di BCP room ', ''),
(61, '2024-01-18 17:37:08', 'COMPLIANCE', 'Assalamualaikum wbt, Encik Muhathir,\r\n\r\nBelow matter is refers.\r\n\r\nSeek your assistance to update User Access DDMS for ZULHELMY BIN MOHD NOOR, Employee Code : JHR033.\r\n \r\nSince his was reporting under Training & Compliance department, and as part of his new role, it is imperative that he has comprehensive access to all clients within the DDMS system.\r\n\r\nWe would greatly appreciate your prompt attention to this matter.\r\n\r\nthank you.', '', 'it', 0, 'Pertukaran Dari Jabatan Operasi Kepada Jabatan Str', ''),
(62, '2024-01-30 16:31:05', 'DPACC', '', '', 'all', 0, 'KEJOHANAN BADMINTON DPACC 2024 CAWANGAN MUAR', 'MEMO KEJOHANAN BADMINTON DPACC 2024.pdf'),
(63, '2024-01-31 10:44:13', 'TRAINING', 'mohon penambahan dua pc utk kegunaan training bagi menjalankan cip program di bilik bcp aras satu selewatnya 1hb feb 2024.TERIMA KASIH.', '', 'it', 0, 'mohon penambahan pc ', ''),
(64, '2024-01-31 16:19:09', 'TRAINING', 'selamat petang, diminta untuk pihak IT untuk setup 2 PC di dalam BCP room untuk kegunaan CIP program yang akan bermula esok. \r\nsekian terima kasih.', '', 'it', 0, 'Request untuk setup 2 pc  di BCP room ', ''),
(65, '2024-02-05 14:54:24', 'FA Department', 'minta tolong cek kan monitor kt ext 106 tak hidup.', 'WhatsApp Image 2024-02-05 at 14.53.35.jpeg', 'it', 0, 'MONITOR TAK HIDUP', ''),
(66, '2024-02-06 10:33:56', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN FEBRUARI 2024\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 06 FEBRUARI 2024 SEHINGGA 09 FEBRUARI 2024. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN FEBRUARI 2024', 'FEB24 - MEMO ADVANCE SALARY.pdf'),
(67, '2024-02-14 15:32:07', 'MANAGEMENT/SLT', 'Terima kasih kepada IT Team.\r\n2PC yang akan digunapakai oleh PART TIMER telah diterima', 'WhatsApp Image 2024-02-14 at 3.29.53 PM.jpeg', 'it', 0, 'PENAMBAHAN 2 PC UNTUK PEKERJA PART TIME', ''),
(68, '2024-03-06 11:19:39', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PERMOHONAN GAJI PENDAHULUAN BAGI BULAN MAC 2024\r\nBORANG PERMOHONAN PERLU DIISI DI JABATAN KEWANGAN BERMULA 06 MAC 2024 SEHINGGA 08 MAC 2024. \r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)\r\n\r\n\r\n', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN MAC 2023', 'MAR24 - MEMO ADVANCE SALARY.pdf'),
(70, '2024-03-26 15:11:53', 'DPACC', 'Dengan hormatnya, perkara di atas adalah dirujuk.\r\nSukacita dimaklumkan bahawa DPACC Muar akan mengadakan Pertandingan Teka Balang Raya untuk sambutan Hari Raya Aidilfitri Tahun 1445 H. Maklumat pertandingan seperti ketetapan berikut.\r\n\r\nâ€¢	Balang akan dibawa ke setiap level pada hari Rabu 27/03/2024 bermula jam 10.30 pagi.\r\nâ€¢	Tiket boleh didapati di level Admin, berjumpa dengan Bendahari DPACC, Puan Nor Azuwa (Ext. 106) atau Setiausaha DPACC, Cik Nor Ain Nafisha (Ext 105)\r\nâ€¢	Penyertaan WAJIB, minima 1 tiket bagi setiap ahli DPACC\r\nâ€¢	Tiada had maksima pembelian tiket ( minima 1 tiket )\r\nâ€¢	1 tiket = RM 1.00 sahaja\r\n\r\nTarikh tutup penyertaan pada hari Rabu, 16.04.2024\r\nMasa tamat penyertaan ialah pada jam 5.00 petang.\r\n\r\nJika ada sebarang perubahan akan dimaklumkan oleh Jawatankuasa DPACC 2023-2025.\r\n\r\n\r\nSekian, terima kasih.\r\n', '', 'all', 0, 'TEKA BALANG RAYA DPACC 2024', 'MEMO TEKA BALANG RAYA 2024.pdf'),
(71, '2024-03-26 15:13:49', 'DPACC', 'Dengan hormatnya, perkara di atas adalah dirujuk.\r\nSukacita dimaklumkan bahawa DPACC akan mengadakan Pertandingan Video Parodi Raya untuk sambutan Hari Raya Aidilfitri Tahun 1445 H. Maklumat pertandingan seperti ketetapan berikut.\r\n\r\nâ€¢	Dilakukan mengikut Jabatan masing-masing\r\n\r\nJabatan Aeon  |  Jabatan Courts  |  Jabatan TM + DIGI + CELCOM  |  Jabatan HR + Finance + Compliance |  Jabatan Admin + FA + IT\r\n\r\nâ€¢	Konsep BEBAS\r\nâ€¢	Panjang durasi video minima 3 hingga 5 min\r\nâ€¢	Penyerahan video di telegram (akan dimaklumkan dari semasa ke semasa)\r\n\r\n\r\nTarikh tutup penyertaan : 2 hari sebelum Majlis Sambutan Hari Raya Syarikat\r\nMasa tamat penyertaan ialah pada jam 5.00 petang.\r\n\r\nJika ada sebarang perubahan akan dimaklumkan oleh Jawatankuasa DPACC 2023-2025.\r\n\r\nSekian, terima kasih.\r\n', '', 'all', 0, 'VIDEO PARODI RAYA DPACC 2024', 'MEMO VIDEO PARODI RAYA 2024.pdf'),
(72, '2024-04-01 14:19:36', 'AEON WO', 'TAK BOLEH BUAT CALL.', '', 'it', 0, 'WEBPHONE PROBLEM', ''),
(73, '2024-04-04 11:29:26', 'FINANCE', 'ASSALAMUALAIKUM DAN SALAM SEJAHTERA BAGI SEMUA KAKITANGAN DHIR & PARTNERS SDN. BHD.\r\n\r\nBERIKUT MERUPAKAN MEMO PEMANSUHAN GAJI PENDAHULUAN BAGI BULAN APRIL 2024.\r\nSEBARANG PERTANYAAN BOLEH MENGHUBUNGI JABATAN KEWANGAN (SAMBUNGAN: 403)', '', 'all', 0, 'PEMANSUHAN GAJI PENDAHULUAN APRIL 2024', 'Memo - Pemansuhan gaji pendahuluan April 2024.pdf'),
(74, '2024-04-07 09:33:44', 'HR Department', 'Assalamualaikum, \r\n\r\nPerhatian kepada semua kakitangan, sila rujuk lampiran di bawah :', '', 'all', 0, 'MAKLUMAN TARIKH PENUTUPAN KLINIK ROSHIDI SEMPENA H', 'KLINIK.pdf'),
(75, '2024-04-08 08:44:55', 'AEON WO', 'INTERNET TAK CONNECT DEKAT PC', '', 'it', 0, 'INTERNET PROBLEM', ''),
(76, '2024-04-16 09:54:03', 'FINANCE', 'Printer HP laserjet status ready tapi tak boleh print', '', 'it', 0, 'PRINTER PROBLEM', ''),
(77, '2024-04-18 17:01:25', 'DPACC', 'Assalamualaikum dan Salam Sejahtera bagi semua kakitangan DHIR & PARTNERS SDN. BHD.\r\n\r\nBerikut merupakan MEMO MAJLIS SAMBUTAN HARI RAYA AIDILFITRI DPACC 2024.\r\nSebarang pertanyaan boleh menghubungi Jawatankuasa DPACC 2023-2025 (sambungan: 105)\r\n\r\nSila rujuk lampiran di bawah ;\r\n', '', 'all', 0, 'MEMO MAJLIS SAMBUTAN HARI RAYA AIDILFITRI DPACC 20', 'MEMO SAMBUTAN HARI RAYA 2024.pdf'),
(78, '2024-04-18 17:03:41', 'DPACC', 'Assalamualaikum dan Salam Sejahtera bagi semua kakitangan DHIR & PARTNERS SDN. BHD.\r\n\r\nBerikut merupakan MEMO VIDEO TIKTOK RAYA 2024 DPACC 2024.\r\nSebarang pertanyaan boleh menghubungi Jawatankuasa DPACC 2023-2025 (sambungan: 105)\r\n\r\nSila rujuk lampiran di bawah ;\r\n', '', 'all', 0, 'MEMO VIDEO TIKTOK RAYA 2024', 'MEMO VIDEO TIKTOK RAYA 2024.pdf'),
(79, '2024-04-22 14:46:10', 'DPACC', 'Assalamualaikum dan Salam Sejahtera bagi semua kakitangan DHIR & PARTNERS SDN. BHD.\r\n\r\nBerikut merupakan MEMO PENUKARAN MAJLIS SAMBUTAN HARI RAYA AIDILFITRI DPACC 2024.\r\nSebarang pertanyaan boleh menghubungi Jawatankuasa DPACC 2023-2025 (sambungan: 105)\r\n\r\nSila rujuk lampiran di bawah ;\r\n', '', 'all', 0, 'MEMO PENUKARAN TARIKH MAJLIS SAMBUTAN HARI RAYA AI', '(AMEND) MEMO SAMBUTAN HARI RAYA 2024.pdf'),
(80, '2024-05-06 09:56:00', 'FINANCE', '', '', 'all', 0, 'PERMOHONAN GAJI PENDAHULUAN MAY 2024', 'MAY24 - MEMO ADVANCE SALARY.pdf'),
(81, '2024-05-08 10:55:27', 'TRAINING', 'tak boleh dengar voice logger collector,id asri', '', 'it', 0, 'tak boleh dengar voice logger collector', '');

-- --------------------------------------------------------

--
-- Table structure for table `meetingbooking`
--

CREATE TABLE IF NOT EXISTS `meetingbooking` (
`id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(30) NOT NULL,
  `room` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `purpose` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meetingbooking`
--

INSERT INTO `meetingbooking` (`id`, `employee_id`, `name`, `department`, `room`, `date`, `time`, `phone`, `purpose`) VALUES
(1, 'JHR273', 'NUR ELINADIRA BINTI MUHAMAD ALI', 'INFORMATION TECHNOLOGY', 'MUTIARA ROOM', '2023-06-20', '16:30', '0177680400', 'DDMS training'),
(2, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', 'MANAGEMENT/SLT', 'RUBY ROOM', '2023-08-22', '10:30', '601161296790', 'Post MOrtem IPA Training'),
(3, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', 'MANAGEMENT/SLT', 'MUTIARA ROOM', '2023-08-22', '15:00', '601161296790', 'SO Meeting'),
(4, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', 'MANAGEMENT/SLT', 'MUTIARA ROOM', '2023-08-27', '10:30', '601161296790', 'Status Code & TrueCaller Setup to All AM'),
(5, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', 'MANAGEMENT/SLT', 'MUTIARA ROOM', '2023-09-06', '14:30', '601161296790', 'Weekly SO Meeting'),
(6, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', 'MANAGEMENT/SLT', 'MUTIARA ROOM', '2023-09-14', '15:01', '601161296790', 'SO Meeting'),
(7, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', 'MANAGEMENT/SLT', 'MUTIARA ROOM', '2024-01-19', '15:00', '+60 1161296790', 'Meeting'),
(8, 'JHR283', 'MOHD HAZIQ AZFAR BIN OTHMAN', 'MANAGEMENT/SLT', 'MUTIARA ROOM', '2024-02-19', '11:00', '+60 1161296790', 'Meeting');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
`id` int(11) NOT NULL,
  `tmp` varchar(90) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `tmp`, `name`) VALUES
(35, '8849', 'user8849.jpg'),
(36, '7708', 'user7708.jpg'),
(37, '6932', 'user6932.jpg'),
(38, '1670', 'user1670.jpg'),
(39, '5502', 'user5502.jpg'),
(40, '7311', 'user7311.jpg'),
(41, '5428', 'user5428.jpg'),
(42, '7761', 'user7761.jpg'),
(43, '9864', 'user9864.jpg'),
(44, '6140', 'user6140.jpg'),
(45, '5419', 'user5419.jpg'),
(46, '7285', 'user7285.jpg'),
(47, '3373', 'user3373.jpg'),
(48, '5655', 'user5655.jpg'),
(49, '1048', 'user1048.jpg'),
(50, '3833', 'user3833.jpg'),
(51, '7807', 'user7807.jpg'),
(52, '1263', 'user1263.jpg'),
(53, '9065', 'user9065.jpg'),
(54, '1890', 'user1890.jpg'),
(55, '7365', 'user7365.jpg'),
(56, '9254', 'user9254.jpg'),
(57, '3965', 'user3965.jpg'),
(58, '9808', 'user9808.jpg'),
(59, '6112', 'user6112.jpg'),
(60, '6727', 'user6727.jpg'),
(61, '1541', 'user1541.jpg'),
(62, '6486', 'user6486.jpg'),
(63, '2935', 'user2935.jpg'),
(64, '1200', 'user1200.jpg'),
(65, '4635', 'user4635.jpg'),
(66, '2933', 'user2933.jpg'),
(67, '5098', 'user5098.jpg'),
(68, '501', 'user501.jpg'),
(69, '7262', 'user7262.jpg'),
(70, '2071', 'user2071.jpg'),
(71, '5558', 'user5558.jpg'),
(72, '5607', 'user5607.jpg'),
(73, '5044', 'user5044.jpg'),
(74, '1204', 'user1204.jpg'),
(75, '5399', 'user5399.jpg'),
(76, '2584', 'user2584.jpg'),
(77, '7484', 'user7484.jpg'),
(78, '6030', 'user6030.jpg'),
(79, '863', 'user863.jpg'),
(80, '1455', 'user1455.jpg'),
(81, '4930', 'user4930.jpg'),
(82, '7371', 'user7371.jpg'),
(83, '8789', 'user8789.jpg'),
(84, '9540', 'user9540.jpg'),
(85, '4029', 'user4029.jpg'),
(86, '6484', 'user6484.jpg'),
(87, '4408', 'user4408.jpg'),
(88, '648', 'user648.jpg'),
(89, '4437', 'user4437.jpg'),
(90, '1419', 'user1419.jpg'),
(91, '8735', 'user8735.jpg'),
(92, '1808', 'user1808.jpg'),
(93, '2044', 'user2044.jpg'),
(94, '2360', 'user2360.jpg'),
(95, '8815', 'user8815.jpg'),
(96, '3421', 'user3421.jpg'),
(97, '2572', 'user2572.jpg'),
(98, '1469', 'user1469.jpg'),
(99, '8709', 'user8709.jpg'),
(100, '6326', 'user6326.jpg'),
(101, '2508', 'user2508.jpg'),
(102, '9213', 'user9213.jpg'),
(103, '6771', 'user6771.jpg'),
(104, '4452', 'user4452.jpg'),
(105, '1697', 'user1697.jpg'),
(106, '3831', 'user3831.jpg'),
(107, '1866', 'user1866.jpg'),
(108, '4450', 'user4450.jpg'),
(109, '459', 'user459.jpg'),
(110, '50', 'user50.jpg'),
(111, '4015', 'user4015.jpg'),
(112, '8796', 'user8796.jpg'),
(113, '766', 'user766.jpg'),
(114, '4951', 'user4951.jpg'),
(115, '3968', 'user3968.jpg'),
(116, '9966', 'user9966.jpg'),
(117, '7205', 'user7205.jpg'),
(118, '3669', 'user3669.jpg'),
(119, '6446', 'user6446.jpg'),
(120, '6191', 'user6191.jpg'),
(121, '217', 'user217.jpg'),
(122, '8698', 'user8698.jpg'),
(123, '9988', 'user9988.jpg'),
(124, '8560', 'user8560.jpg'),
(125, '6028', 'user6028.jpg'),
(126, '3948', 'user3948.jpg'),
(127, '7068', 'user7068.jpg'),
(128, '6695', 'user6695.jpg'),
(129, '2129', 'user2129.jpg'),
(130, '2504', 'user2504.jpg'),
(131, '5415', 'user5415.jpg'),
(132, '8179', 'user8179.jpg'),
(133, '3874', 'user3874.jpg'),
(134, '7633', 'user7633.jpg'),
(135, '7323', 'user7323.jpg'),
(136, '2732', 'user2732.jpg'),
(137, '86', 'user86.jpg'),
(139, '3205', 'user3205.jpg'),
(140, '1945', 'user1945.jpg'),
(141, '7416', 'user7416.jpg'),
(142, '7355', 'user7355.jpg'),
(143, '416', 'user416.jpg'),
(144, '3190', 'user3190.jpg'),
(145, '4650', 'user4650.jpg'),
(146, '1083', 'user1083.jpg'),
(147, '6338', 'user6338.jpg'),
(148, '6671', 'user6671.jpg'),
(149, '8760', 'user8760.jpg'),
(150, '297', 'user297.jpg'),
(151, '1963', 'user1963.jpg'),
(152, '5352', 'user5352.jpg'),
(153, '3726', 'user3726.jpg'),
(154, '2625', 'user2625.jpg'),
(155, '679', 'user679.jpg'),
(156, '4570', 'user4570.jpg'),
(157, '6089', 'user6089.jpg'),
(158, '9341', 'user9341.jpg'),
(159, '4900', 'user4900.jpg'),
(160, '8394', 'user8394.jpg'),
(161, '3419', 'user3419.jpg'),
(162, '7258', 'user7258.jpg'),
(163, '5995', 'user5995.jpg'),
(164, '652', 'user652.jpg'),
(165, '6774', 'user6774.jpg'),
(166, '2624', 'user2624.jpg'),
(167, '4996', 'user4996.jpg'),
(168, '5243', 'user5243.jpg'),
(169, '2746', 'user2746.jpg'),
(170, '7644', 'user7644.jpg'),
(171, '9345', 'user9345.jpg'),
(172, '2302', 'user2302.jpg'),
(173, '9801', 'user9801.jpg'),
(174, '5195', 'user5195.jpg'),
(175, '7335', 'user7335.jpg'),
(176, '7708', 'user7708.jpg'),
(177, '2387', 'user2387.jpg'),
(178, '3930', 'user3930.jpg'),
(179, '2680', 'user2680.jpg'),
(180, '1854', 'user1854.jpg'),
(181, '5079', 'user5079.jpg'),
(182, '5853', 'user5853.jpg'),
(183, '2826', 'user2826.jpg'),
(184, '1079', 'user1079.jpg'),
(185, '2993', 'user2993.jpg'),
(186, '7522', 'user7522.jpg'),
(187, '448', 'user448.jpg'),
(188, '7946', 'user7946.jpg'),
(189, '7326', 'user7326.jpg'),
(190, '5797', 'user5797.jpg'),
(191, '4025', 'user4025.jpg'),
(192, '6216', 'user6216.jpg'),
(193, '6236', 'user6236.jpg'),
(194, '1861', 'user1861.jpg'),
(195, '5429', 'user5429.jpg'),
(196, '554', 'user554.jpg'),
(197, '6522', 'user6522.jpg'),
(198, '4919', 'user4919.jpg'),
(199, '2044', 'user2044.jpg'),
(200, '2227', 'user2227.jpg'),
(201, '336', 'user336.jpg'),
(202, '2184', 'user2184.jpg'),
(203, '4808', 'user4808.jpg'),
(204, '3483', 'user3483.jpg'),
(205, '6070', 'user6070.jpg'),
(206, '1779', 'user1779.jpg'),
(207, '2333', 'user2333.jpg'),
(208, '2508', 'user2508.jpg'),
(209, '7765', 'user7765.jpg'),
(210, '1770', 'user1770.jpg'),
(211, '4791', 'user4791.jpg'),
(212, '6587', 'user6587.jpg'),
(213, '8133', 'user8133.jpg'),
(214, '5636', 'user5636.jpg'),
(215, '4323', 'user4323.jpg'),
(216, '8694', 'user8694.jpg'),
(217, '7495', 'user7495.jpg'),
(218, '173', 'user173.jpg'),
(219, '3235', 'user3235.jpg'),
(220, '1658', 'user1658.jpg'),
(221, '8527', 'user8527.jpg'),
(222, '1338', 'user1338.jpg'),
(223, '6244', 'user6244.jpg'),
(224, '9581', 'user9581.jpg'),
(225, '919', 'user919.jpg'),
(226, '7051', 'user7051.jpg'),
(227, '6080', 'user6080.jpg'),
(228, '4731', 'user4731.jpg'),
(229, '2271', 'user2271.jpg'),
(230, '8429', 'user8429.jpg'),
(231, '8752', 'user8752.jpg'),
(232, '4153', 'user4153.jpg'),
(233, '2661', 'user2661.jpg'),
(234, '1697', 'user1697.jpg'),
(235, '9076', 'user9076.jpg'),
(236, '1380', 'user1380.jpg'),
(237, '868', 'user868.jpg'),
(238, '126', 'user126.jpg'),
(239, '9549', 'user9549.jpg'),
(240, '8748', 'user8748.jpg'),
(241, '9373', 'user9373.jpg'),
(242, '8880', 'user8880.jpg'),
(243, '7565', 'user7565.jpg'),
(244, '2449', 'user2449.jpg'),
(245, '1679', 'user1679.jpg'),
(246, '3753', 'user3753.jpg'),
(247, '4599', 'user4599.jpg'),
(248, '2482', 'user2482.jpg'),
(249, '802', 'user802.jpg'),
(250, '2216', 'user2216.jpg'),
(251, '5561', 'user5561.jpg'),
(252, '4092', 'user4092.jpg'),
(253, '9950', 'user9950.jpg'),
(254, '7027', 'user7027.jpg'),
(255, '5678', 'user5678.jpg'),
(256, '1191', 'user1191.jpg'),
(257, '2993', 'user2993.jpg'),
(258, '3405', 'user3405.jpg'),
(259, '1982', 'user1982.jpg'),
(260, '1396', 'user1396.jpg'),
(261, '6476', 'user6476.jpg'),
(262, '6767', 'user6767.jpg'),
(263, '4768', 'user4768.jpg'),
(264, '5817', 'user5817.jpg'),
(265, '3039', 'user3039.jpg'),
(266, '4320', 'user4320.jpg'),
(267, '7031', 'user7031.jpg'),
(268, '6986', 'user6986.jpg'),
(269, '3907', 'user3907.jpg'),
(270, '2416', 'user2416.jpg'),
(271, '1213', 'user1213.jpg'),
(272, '1919', 'user1919.jpg'),
(273, '268', 'user268.jpg'),
(274, '3772', 'user3772.jpg'),
(275, '7253', 'user7253.jpg'),
(276, '433', 'user433.jpg'),
(277, '9183', 'user9183.jpg'),
(278, '7827', 'user7827.jpg'),
(279, '9889', 'user9889.jpg'),
(280, '3300', 'user3300.jpg'),
(281, '1428', 'user1428.jpg'),
(282, '5424', 'user5424.jpg'),
(283, '9384', 'user9384.jpg'),
(284, '9941', 'user9941.jpg'),
(285, '8356', 'user8356.jpg'),
(286, '3508', 'user3508.jpg'),
(287, '5945', 'user5945.jpg'),
(288, '8902', 'user8902.jpg'),
(289, '4013', 'user4013.jpg'),
(290, '4897', 'user4897.jpg'),
(291, '520', 'user520.jpg'),
(292, '6547', 'user6547.jpg'),
(293, '6151', 'user6151.jpg'),
(294, '4030', 'user4030.jpg'),
(295, '5258', 'user5258.jpg'),
(296, '3255', 'user3255.jpg'),
(297, '6682', 'user6682.png'),
(298, '1293', 'user1293.jpg'),
(299, '7990', 'user7990.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE IF NOT EXISTS `training` (
`id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tmp` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `title`, `type`, `tmp`, `date`) VALUES
(1, '15 WAYS TO IMPROVE DECISION MAKING', 'PDF', 'Decision Making_Training Slide.pdf', '2023-03-03 17:33:19'),
(2, 'WHAT MAKES A GOOD LEADER', 'PDF', 'What makes a good leader.pdf', '2023-03-04 19:59:38'),
(3, '6 TIPS HANDLING DIFFICULT CUSTOMER', 'PDF', '6 TIPS HANDLING DIFFICULT CUSTOMER.pdf', '2023-04-04 16:20:55'),
(4, '11 EFFECTIVE CALLING SCRIPT', 'PDF', '11 EFFECTIVE CALLING SCRIPT.pdf', '2023-04-04 16:21:10'),
(5, 'BEST NEGOTIATION', 'PDF', 'BEST NEGOTIATION.pdf', '2023-04-04 16:21:29'),
(6, 'EFFECTIVE COMMUNICATION SKILLS', 'PDF', 'EFFECTIVE COMMUNICATION SKILLS.pdf', '2023-04-04 16:21:42'),
(7, 'MENANGANI STRESS DI TEMPAT KERJA', 'PDF', 'MENANGANI STRESS DI TEMPAT KERJA.pdf', '2023-04-04 16:21:57'),
(10, 'SELF CONFIDENCE', 'PDF', 'SELF CONFIDENCE.pdf', '2023-04-04 16:22:44'),
(11, 'POSITIVE ATTITUDE', 'PDF', 'POSITIVE ATTITUDE.pdf', '2023-04-04 16:49:14'),
(12, 'PROBLEM SOLVING SKILLS', 'PDF', 'PROBLEM SOLVING SKILLS.pdf', '2023-04-04 16:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `permission` varchar(10) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `employee_id`, `email`, `username`, `password`, `joined`, `type`, `permission`, `gender`, `phone`, `branch`, `department`) VALUES
(7, 'AHMAD SOLEHIN BIN ASMADI', 'JHRI004', 'solehinahmad954@gmail.com', 'solehin.it', 'Solehin1234', '08 April 2021', 'user', '1', 'MALE', '0177353011', 'MUAR', 'INFORMATION TECHNOLOGY'),
(28, 'MUHATHIR BIN MAKHTAR', 'JHR190', 'muhathir@dhirpartnes.com.my', 'muhathir.it', 'Muhathir1234', ' 19 Jan 2023 ', 'user', '1', 'MALE', '238', 'MUAR', 'INFORMATION TECHNOLOGY'),
(29, 'HAIRUL NIZAM MOHD', 'JHR018', 'akutechdnp@gmail.com', 'nizam.it', 'Nizam1234', ' 19 Jan 2023 ', 'user', '1', 'MALE', '201', 'MUAR', 'INFORMATION TECHNOLOGY'),
(31, 'NUR IZAL BIN NAZA', 'KL097', 'nryzall@gmail.com', 'izal.it', 'Izal1234', ' 19 Jan 2023 ', 'user', '1', 'MALE', '01128450013', 'KUALA LUMPUR(HQ)', 'INFORMATION TECHNOLOGY'),
(32, 'FATIN NAJWA A HAMID', 'JHR037', 'fatiana93@gmail.com', 'fnajwa.fa', 'najwa1706', ' 19 Jan 2023 ', 'user', '2', 'FEMALE', '105', 'MUAR', 'ADMIN'),
(33, 'NOR AZUWA KARIM', 'JHR022', 'ciknuraze.wawaz@gmail.com', 'wawa.fa', 'Wawa1234', ' 19 Jan 2023 ', 'user', '2', 'FEMALE', '404-1', 'MUAR', 'FACILITY ASSETS'),
(34, 'MUHAMMAD HAZZIQ BIN MUSTAPHA', 'JHR223', 'hazziqtapha01@gmail.com', 'hazziqdm002', 'digitalmarketing', ' 19 Jan 2023 ', 'user', '3', 'MALE', '0132019760', 'MUAR', 'DIGITAL MARKETING'),
(35, 'ABDUL HADI BIN HASSAN', 'JHR253', 'hadiustar19@gmail.com', 'hadi.it', 'Hadi1234', ' 24 Jan 2023 ', 'user', '1', 'MALE', '212', 'MUAR', 'INFORMATION TECHNOLOGY'),
(38, 'NORAMIRRA BINTI MOHD YAHAYA', 'JHR027', 'noramirrayahaya02_dnp@yahoo.com', 'NORAMIRRA', 'Abc@123', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '411', 'MUAR', 'TM'),
(39, 'VIKNESWARAN MURAILEE', 'JHR229', 'tmunit.dnpgroup3@gmail.com', 'VIKNESWARAN', 'nesh97', ' 01 Feb 2023 ', 'user', '3', 'MALE', '410', 'MUAR', 'TM'),
(40, 'RAHIMAH BINTI RAHIM', 'JHR023', 'admin@dhirpartners.com.my', 'RAHIMAH', 'MAH0508', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '104', 'MUAR', 'ADMIN'),
(41, 'NOR FADZLUN', 'JHR026', 'admin.edu@dhirpartners.com.my', 'FADZLUN', 'alun1234', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '104', 'MUAR', 'ADMIN'),
(42, 'NURUL MAISARAH BINTI BAKAR', 'JHR103', 'dca.telekomalaysia@gmail.com', 'sarah', 'sarah6962', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '410', 'MUAR', 'TM'),
(43, 'NUR ''AIN NAFISHA BINTI ABDUL RAHMAN', 'JHR044', 'admin.edu@dhirpartners.com.my', 'NAFISHA', 'bts123', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '105', 'MUAR', 'ADMIN'),
(44, 'NAFIISAH NASUHA BINTI ISMAIL', 'JHR063', 'admin.edu@dhirpartners.com.my', 'NASUHA', 'NASUHA9595', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '106', 'MUAR', 'ADMIN'),
(45, 'NURUL NAIM BINTI IBRAHIM', 'JHR036', 'admin.edu@dhirpartners.com.my', 'NURULNAIM', 'naim5268', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '106', 'MUAR', 'ADMIN'),
(46, 'NUR AIN SHAFIQAH BINTI MOHD SALLEH', 'JHR128', 'admin.edu@dhirpartners.com.my', 'AIN', 'ain5582', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '104', 'MUAR', 'ADMIN'),
(47, 'NUR AISHAH BINTI MD YUSOF', 'JHR056', 'admin.edu@dhirpartners.com.my', 'NURAISHAH', 'aishah6332', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '105', 'MUAR', 'ADMIN'),
(50, 'AMELIA BINTI NASARRUDDIN', 'JHR046', 'amelianasa303@gmail.com', 'AMELIA', 'JHR046', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '209', 'MUAR', 'COURTS'),
(51, 'AHMAD FARIF BIN ROSKEFLI', 'JHR047', 'radenfarif@gmail.com', 'Radenfarif', 'raden007', ' 01 Feb 2023 ', 'user', '3', 'MALE', '+60176650605', 'MUAR', 'ZAKAT'),
(53, 'fatin syairah ', 'JHR041', 'fasyaira94@gmail.com', 'nurfatin', 'fatin6504', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '409', 'MUAR', 'TM'),
(54, 'NUR AIN NATASYAH BINTI AZMI', 'JHR172', 'ainatasyah12@gmail.com', 'AINNATASYAH', 'HASIFBAHRIN', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '410', 'MUAR', 'TM'),
(55, 'NUR RAMDHANIAH BINTI HASNOL EAIDI', 'JHR058', 'daniaeddy965@gmail.com', 'dhaniah', 'dania6346', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '410', 'MUAR', 'TM'),
(56, 'NOOR HIDAYU BINTI AMRON', 'JHR084', 'ayuamron88@gmail.com', 'HIDAYU', 'ayu5172', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '411', 'MUAR', 'TM'),
(58, 'NORAFIZAH', 'JHR009', 'norafiza@dhirpartners.com.my', 'Afi', 'Zah5024', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '330', 'MUAR', 'DIGI'),
(59, 'MUHAMMAD HAIRIL BIN MUHAMMAD', 'JHR055', 'amriyl143@gmail.com', 'hairil', '012012', ' 01 Feb 2023 ', 'user', '3', 'MALE', '309', 'MUAR', 'DIGI'),
(60, 'NOR ALIMAH BINTI AHLIP', 'JHR015', 'dnp_tmnora@yahoo.com', 'noralimah', 'jhr015', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '311', 'MUAR', 'DIGI'),
(61, 'NOORHAFIZA BINTI MD JALI', 'JHR240', 'nrhafizajali@gmail.com', 'HAFIZA', '98ROSJALI', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '328', 'MUAR', 'DIGI'),
(62, 'NURLIA NASUHA ', 'JHR202', 'nurlianasuha98@gmail.com', 'Nurlia', 'nurlia98', ' 01 Feb 2023 ', 'user', '3', 'FEMALE', '328', 'MUAR', 'DIGI'),
(65, 'ZAWANI', 'JHR170', 'zawanibintizambry@gmail.com', 'zawani', 'zawani5108', ' 02 Feb 2023 ', 'user', '3', 'FEMALE', '0102678312/403', 'MUAR', 'FINANCE'),
(67, 'NUR IZZATI', 'JHR042', 'izzati.dhirpartners@gmail.com', 'IZZATI', '950117Aa.', ' 02 Feb 2023 ', 'user', '4', 'FEMALE', '402', 'MUAR', 'HUMAN RESOURCE'),
(68, 'NORASHIKIN ABDUL JALIL ', 'JHR028', 'norashikinjalil_dnp@yahoo.com.my', 'SHIKIN', 'nor6314', ' 02 Feb 2023 ', 'user', '3', 'FEMALE', '405', 'MUAR', 'TM'),
(69, 'PUTERI MAYASARI BINTI BURHANUDDIN', 'JHR010', 'puteridp_sdnbhd@yahoo.com', 'PUTERI', 'puteri1234', ' 02 Feb 2023 ', 'user', '3', 'FEMALE', '0126266435', 'MUAR', 'AEON WO'),
(70, 'AHMAD DANIEL BIN HELMI', 'JHR034', 'danielhelmi30@gmail.com', 'danielhelmi', '4812daniel', ' 02 Feb 2023 ', 'user', '3', 'MALE', '0177182463/259', 'MUAR', 'AEON WO'),
(71, 'UNGKU NURSYAHIRAH ', 'JHR057', 'ungku.syahirah98@gmail.com', 'ungku', '123456', ' 03 Feb 2023 ', 'user', '3', 'FEMALE', '107', 'MUAR', 'DIGI'),
(72, 'HARISSA HAMIRA BINTI HARIZAN', 'JHR263', 'harissahamira01@gmail.com', 'RISSA', 'airiss38', ' 03 Feb 2023 ', 'user', '3', 'FEMALE', '01121065026', 'MUAR', 'COURTS'),
(74, 'NUR FARISHA ATHIRA BINTI ABDUL AZIZ', 'JHR242', 'farishaaziz.98@gmail.com', 'FARISHA', '980314', ' 03 Feb 2023 ', 'user', '3', 'FEMALE', '01110817634', 'MUAR', 'DIGI'),
(79, 'NUR''AIN NABILA SARWAN', 'JHR083', 'nabila.dhirnpartners@gmail.com', 'BELLA', 'bella5368', ' 06 Feb 2023 ', 'user', '3', 'FEMALE', '403', 'MUAR', 'FINANCE'),
(80, 'SITI NURHAMIZAH', 'JHR241', 'sitinurhamizahazman@gmail.com', 'HAMIZAH', '971028', ' 06 Feb 2023 ', 'user', '3', 'FEMALE', '128', 'MUAR', 'DIGI'),
(82, 'NURHAZIQAH', 'JHR124', 'nurhaziqah9924@gmail.com', 'ZIQAH', 'ziqah6884', ' 07 Feb 2023 ', 'user', '3', 'FEMALE', '408', 'MUAR', 'TM'),
(83, 'elyana', 'JHR136', 'ayuelyana7668@gmail.com', 'elyana', '000815', ' 07 Feb 2023 ', 'user', '3', 'FEMALE', '408', 'MUAR', 'TM'),
(84, 'ZULHELMY BIN MOHD NOOR', 'JHR033', 'helmymohdnoor@gmail.com', 'zulhelmy', 'helmy5057', ' 09 Feb 2023 ', 'user', '3', 'MALE', '237', 'MUAR', 'AEON WO'),
(85, 'NURSHAZIRA ATASHA BINTI MD HAZAMI', 'JHR073', 'nurshaziraatasha@gmail.com', 'SHAZIRA', 'tasha97', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '246', 'MUAR', 'AEON WO'),
(87, 'NURUL HAZIRAH BINTI ZAKARIA', 'JHR091', 'nurulhazirah337@gmail.com', 'zirah', 'zirah5934', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '246', 'MUAR', 'AEON WO'),
(88, 'AZHAR', 'JHR020', 'aiyoyai888@gmail.com', 'aiyoyai', 'terkentut91', ' 09 Feb 2023 ', 'user', '3', 'MALE', '258', 'MUAR', 'AEON WO'),
(90, 'NURADLLINAYUNI BINTI ROSDIN', 'JHR080', 'addlinayuni@gmail.com', 'AYUNI', 'ayuni0938', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '0146975859', 'MUAR', 'AEON WO'),
(91, 'AINUL NAJIHA BINTI JUMALI', 'JHR093', 'lunianajiha@gmail.com', 'AINUL', 'ainul5188', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '237', 'MUAR', 'AEON WO'),
(92, 'MUHAMMAD FIRDAUS BIN ABDULLAH', 'JHR265', 'nobskyward123@gmailcom', 'FIRDAUS', 'FIRDAUS6893', ' 09 Feb 2023 ', 'user', '3', 'MALE', '0183949839', 'MUAR', 'AEON WO'),
(93, 'NUR IZZATY AZIELA ABD LATIP', 'JHR086', 'zattyziela@gmail.com', 'aziela', '7146', ' 09 Feb 2023 ', 'user', '3', '', '252', 'MUAR', 'AEON WO'),
(94, 'NUR NASUHA BAHILA ', 'JHR051', 'ilanasuha71@gmail.com', 'BAHILA', 'awieanisadam', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '236', 'MUAR', 'AEON WO'),
(95, 'nur farain binti kasim ', 'JHR035', 'farainkasim763@gmail.com', 'FARAIN', 'NOR7486', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '237', 'MUAR', 'AEON WO'),
(97, 'NUR SURAYA BINTI MOHD SAID', 'JHR067', 'nursurayamohdsaid@gmail.com', 'suraya', 'su6430', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '237', 'MUAR', 'AEON WO'),
(98, 'MUHAMMAD TAUFIQ TAHIR', 'JHR121', 'taufiqtahir281@gmail.com', 'TAUFIQ', '5205', ' 09 Feb 2023 ', 'user', '3', 'MALE', '240', 'MUAR', 'AEON WO'),
(99, 'NORELLYZA', 'JHR048', 'ellyzarahman90@gmail.com', 'ELLYZA', 'ELLYZA5120', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '-', 'MUAR', 'AEON WO'),
(100, 'AMIRUL FAEEZ BIN ESA', 'JHR031', 'amirulfaeez3@gmail.com', 'amirul', 'rul6067', ' 09 Feb 2023 ', 'user', '3', 'MALE', 'NO', 'MUAR', 'AEON WO'),
(101, 'MUHAMMAD NUR AFFANDI BIN JA''AFFAR', 'JHR259', 'affandijaaffar@gmail.com', 'AFFANDI', 'AFFANDI7185', ' 09 Feb 2023 ', 'user', '3', 'MALE', '245', 'MUAR', 'AEON WO'),
(104, 'MAIMUNAH', 'JHR040', 'ungkumona1979@gmail.com', 'mona', '1979', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '-', 'MUAR', 'AEON WO'),
(105, 'AHMAD  SYARHAN MOHAMMED', 'JHR030', 'shahziq@hotmail.com', 'SYARHAN', '5151', ' 09 Feb 2023 ', 'user', '3', 'MALE', '252', 'MUAR', 'AEON WO'),
(106, 'NORLAILA BINTI NOOR MOHAMED', 'JHR017', 'kamarudinahmad66@yahoo.com', 'NORLAILA', '1234', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '240', 'MUAR', 'AEON WO'),
(108, 'NUR SUHAILY BINTI SHAMSUDDIN', 'JHR025', 'admin.edu@dhirpartners.com.my', 'suhaily', 'nur6942', ' 09 Feb 2023 ', 'user', '3', 'FEMALE', '105', 'MUAR', 'ADMIN'),
(109, 'noraidah ezua binti muhammad amin', 'JHR189', 'noraidahezuaamin@gmail.com', 'aida', '981018', ' 10 Feb 2023 ', 'user', '3', 'FEMALE', '01161655560', 'MUAR', 'COURTS'),
(110, 'NURUL AMIRA BINTI ABDULLAH', 'JHR029', 'miraabdullah.dhirpartners@gmail.com', 'AMIRAMIA', '372343', ' 10 Feb 2023 ', 'user', '4', 'FEMALE', '0147377080', 'MUAR', 'HUMAN RESOURCE'),
(115, 'MUHAMMAD AIDIL', 'JHR088', 'aydil1214@gmail.com', 'AYDIL', 'dil1451', ' 16 Feb 2023 ', 'user', '3', 'MALE', '104', 'MUAR', 'ADMIN'),
(117, 'NURUL AISYAFIKA BINTI KARIM', 'JHR013', 'naisyafika@dhirpartners.com.my', 'AISYAFIKA', 'ABC123', ' 16 Feb 2023 ', 'user', '3', 'FEMALE', '248', 'MUAR', 'MANAGEMENT/SLT'),
(118, 'MIMI NUR AMALIA BINTI MAT NASIR', 'JHR138', 'mimiamalia726@gmail.com', 'mimi', '123456M', ' 17 Feb 2023 ', 'user', '3', '', '324', 'MUAR', 'DIGI'),
(119, 'NORLIZA BINTI LIMAT', 'JHR043', 'lizanorliza185@gmail.com', 'NORLIZA', 'liza5926', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '333', 'MUAR', 'DIGI'),
(120, 'NUR SYAZWANI BINTI ABD RAHIM', 'JHR069', 'digi.dhirnpartnersdept@gmail.com', 'wani', 'wani1234', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '127', 'MUAR', 'DIGI'),
(121, 'IZZAH HAZIRAH', 'JHR054', 'hazirahrosli94@gmail.com', 'HAZIRAH', 'zirah6802', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '319', 'MUAR', 'DIGI'),
(123, 'TUAN NURHIDAYATUL SOLEHAH', 'JHR059', 'digi.dhirnpartnersdepartment05@gmail.com', 'SOLEHAH', 'tuan1995', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '127', 'MUAR', 'DIGI'),
(124, 'NURUL ASYIKIN BINTI KARIM ', 'JHR119', 'digi.dhirNpartnersdepartment05@gmail.com', 'ASYIKIN', 'kikin', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '320', 'MUAR', 'DIGI'),
(127, 'MOHD FARYZE BIN IBRAHIM', 'JHR120', 'cocreator6666@gmail.com', 'FARYZE', 'faryze5857', ' 17 Feb 2023 ', 'user', '3', 'MALE', '128', 'MUAR', 'DIGI'),
(128, 'FETTY FIRDZLIN BINTI JELANI', 'JHR050', 'firdzlinfettyjelani@gmail.com', 'fetty7162', '7162', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '01110757162', 'MUAR', 'COURTS'),
(129, 'NORADEANA BT ASMADI', 'JHR095', 'noradeana62@gmail.com', 'DEANA', 'deana6262', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '227', 'MUAR', 'COURTS'),
(131, 'NUR AINUL JANNAH BINTI ABD RAZAK', 'JHR122', 'ainulyusof11@gmail.com', 'JANNAH', '110213', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '0127953949', 'MUAR', 'COURTS'),
(132, 'MUHAMMAD HANIF BIN ROSLI', 'JHR226', 'mhr95.hanif@gmail.com', 'HANIF', '950929', ' 17 Feb 2023 ', 'user', '3', 'MALE', '227', 'MUAR', 'COURTS'),
(134, 'NUR HAZIQAH BINTI M BAKRI', 'JHR 117', 'nurhaziqahbakri.work@gmail.com', 'haziqah', '6488', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '0136396531', 'MUAR', 'COURTS'),
(139, 'NURUL AQILAH BINTI NOR AZMAN', 'JHR064', 'nurulaqylah395@gmail.com', 'aqilah', '1234', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '240', 'MUAR', 'AEON WO'),
(140, 'SITI HIDAYAT BINTI MOHAMED NORMAN', 'JHR038', 'sitihidayatnorman@gmail.com', 'yatt', 'akufeedup', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '-', 'MUAR', 'AEON WO'),
(144, 'MUHAMMAD MUZAFFAR BIN SIAM', 'JHR227', 'jlh2499rq@gmail.com', 'muzaffar', '860520', ' 17 Feb 2023 ', 'user', '3', 'MALE', '01132538598', 'MUAR', 'COURTS'),
(145, 'NURUL HIDAYAH BINTI DAUD', 'JHR089', 'hidayahdaud594@gmail.com', 'NURUL', 'nurul6788', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '408', 'MUAR', 'TM'),
(146, 'NUR ZULAILA', 'JHR070', 'miszulaila@gmail.com', 'zulaila', 'nur5088', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '409', 'MUAR', 'TM'),
(147, 'NOOR HIDAYU BINTI AMRON', 'JHR084', 'ayuamron88@gmail.com', 'hidayu', 'ayu5172', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '01125831939', 'MUAR', 'TM'),
(149, 'NUR LIYANA ', 'JHR078', 'nurliyanajaafar24@gmail.com', 'liyana', 'yana6878', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '408', 'MUAR', 'TM'),
(152, 'MOHD SHAH RIZAL BIN MOHD SARI', 'JHR011', 'shahrizal25@yahoo.com', 'shahrizal', 'zal5437', ' 17 Feb 2023 ', 'user', '3', 'MALE', '0126489870', 'MUAR', 'TM'),
(153, 'IZZAH ATIRAH', 'JHR267', 'atirahizzah03@gmail.com', 'ATIRAH', 'ATIRAH6006', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '409', 'MUAR', 'TM'),
(154, 'NATASHA', 'JHR180', 'natashaatan25@gmail.com', 'NATASHA', '020123', ' 17 Feb 2023 ', 'user', '3', 'FEMALE', '409', 'MUAR', 'TM'),
(157, 'MOHD ASRI ABD RAHMAN', 'JHR004', 'asri@dhirpartners.com.my', 'asri', 'asri1234', ' 21 Feb 2023 ', 'user', '3', 'MALE', '415', 'MUAR', 'TRAINING'),
(159, 'NURUL SYAZWANI BINTI MOHD HATTA', 'JHR271', 'http.wanie@gmail.com', 'NURULWANI', 'user1234', ' 24 Feb 2023 ', 'user', '3', 'FEMALE', '221', 'MUAR', 'COURTS'),
(160, 'NUR ELINADIRA BINTI MUHAMAD ALI', 'JHR273', 'nurelinadira@gmail.com', 'elinadira.it', 'Eli1234', '26 Feb 2023', 'user', '1', 'FEMALE', '0177680400', 'MUAR', 'INFORMATION TECHNOLOGY'),
(165, 'NUR SYAZWANI BINTI ABD RAHIM', 'JHR069', 'nsyazwanirahim@gmail.com', 'syazwani', '123456', ' 03 Mar 2023 ', 'user', '3', 'FEMALE', '127', 'MUAR', 'DIGI'),
(167, 'RAFIQ BIN RAHMAT', 'JHR216', 'dnpcompliance@dhirpartners.com.my', 'RAFIQ', '45100896', ' 05 Mar 2023 ', 'user', '3', 'MALE', '414', 'MUAR', 'COMPLIANCE'),
(168, 'NOOR AMIRA BINTI AZMI', 'KL001', 'amira.dhirpartners@gmail.com', 'amiraazmi95', 'amiraazmi1995', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0183862812', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(170, 'SHAHRUL ZAIHAFIZI', 'KL071', 'shahrulzaihafizi10@gmail.com', 'shahrulzaihafizi', 'SHAHRUL5129', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0197216598', 'KUALA LUMPUR(HQ)', 'BMMB'),
(171, 'WAN ZULASMADI BIN WAN MD NOR', 'KL088', 'wanzulasmadi@dhirpartners.com.my', 'WAN', 'WAN5197', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0173322937', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(172, 'RAFIDAH BINTI RAFIE', 'KL004', 'rafidah@dhirpartners.com.my', 'RAFIDAH', 'RAFIDAH2502', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '01137015591', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(173, 'SYAFIQAH SAARI', 'KL080', 'saarisyafiqah@gmail.com', 'SYAFIQAH6176', '199823', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0176743348', 'KUALA LUMPUR(HQ)', 'COURTS'),
(174, 'PUTERI NURUL HAYATI BINTI AZMAN', 'KL102', 'hayati9506@gmail.com', 'PUTERI ', 'puteri1234', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0122543362', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(177, 'AZNUR BIN BADRUNDIN', 'KL084', 'aznurbad2000@gmail.com', 'AZNUR', 'AZNUR0000', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0122361021', 'KUALA LUMPUR(HQ)', 'AIQON AEON'),
(178, 'NORATIKAH BINTI ROSIDI', 'PP047', 'noratikah.rosidi@yahoo.com', 'noratikah', 'noratikah1234', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0125395546', 'PULAU PINANG', 'COURTS'),
(179, 'UMAIRAH SAFI BINTI MOHD GANI', 'PP048', 'umairahsafiwork@gmail.com', 'umairah', 'umairah1234', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0184042238', 'PULAU PINANG', 'COURTS'),
(180, 'NORSYAFIKAH BINTI IDRIS', 'PP049', 'syafikahidris5974@gmail.com', 'norsyafikah', 'norsyafikah1234', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '011111142049', 'PULAU PINANG', 'COURTS'),
(183, 'ABDUL SYAHRIEF BIN ABDUL MAJEED', 'KL014', 'sharepkuis05@gmail.com', 'SHAREP', 'SHAREP0809', ' 22 Mar 2023 ', 'user', '3', 'MALE', '01116516816', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(184, 'NOR SHAHIRAH BINTI ZULKAPLI', 'KL077', 'ns.zulkapli@gmail.com', 'SHAHIRAH', 'Op30052001#', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0182167802', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(185, 'Liyana Ghazali', 'KL105', 'liyanaghazali92@gmail.com', 'lyanaally', 'Kl@us4019', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0173449080', 'KUALA LUMPUR(HQ)', 'COMPLIANCE'),
(186, 'ERNY BINTI SUPIAN', 'KL028', 'adam090682@gmail.com', 'ERNY', 'ERNY5086', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0168188425', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(187, 'NUR FITRI YANA ', 'KL019', 'hrdhirpart@gmail.com', 'fitriyana', 'Yana111@@@', ' 22 Mar 2023 ', 'user', '4', 'FEMALE', '204', 'KUALA LUMPUR(HQ)', 'HUMAN RESOURCE'),
(188, 'MUHAMMAD RAHMAT BIN ABDUL HAMID', 'KL065', 'MUHDRAHMAT412@GMAIL.COM', 'RAHMAT', 'RAHMAT0295', ' 22 Mar 2023 ', 'user', '3', 'MALE', '01129727187', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(190, 'NOOR AMANINA NATASHA', 'KL066', 'tashamaninaaa@gmail.com', 'NINA', 'NINA0138', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '01139650822', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(192, 'AISYA', 'KL005', 'Syaaaisya@gmail.com', 'AISYA', 'AISYA5686', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0193962051', 'KUALA LUMPUR(HQ)', 'AIQON AEON'),
(193, 'MUHAMMAD SYAHME BIN ZAHARUDIN', 'KL036', 'MuhdSyahme97@gmail.com', 'SYAHME', 'SYAHME6781', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0129439303', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(194, 'AHMAD SYAIFUL BIN MOHD IDRIS', 'KL083', 'ahmadsyaiful00@gmail.com', 'SYAIFUL', 'SYAIFUL5995', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0122855694', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(196, 'AZIZUL', 'KL013', 'jijulsaja92@gmail.com', 'AZIZUL', 'AZIZUL5417', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0192895047', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(197, 'MOHAMAD KAMIL BIN ZAINAL ABIDIN', 'KL038', 'kamilzainalabidin39@gmail.com', 'kamilkendrick', 'Aqkamil3@', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0174216455', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(198, 'NAFIS BIN AHMAD SAIDI', 'KL079', 'NAFISSAIDI11@GMAIL.COM', 'NAFIS', 'NAFIS0695', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0172731938', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(199, 'NUR AFIFAH BINTI MOHD NAZIM ', 'KL099', 'afifahnazim@gmail.com', 'Fifanazim', '010819', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '01112254002', 'KUALA LUMPUR(HQ)', 'COURTS'),
(200, 'KAVITHA', 'KL082', 'nisharasan1512@gmail.com', 'Nisharasan', 'Navetra.1512', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0102906881', 'KUALA LUMPUR(HQ)', 'AIQON ANGKASA'),
(201, 'MUHAMMAD AFIF HAZWAN BIN ABDUL HALID', 'KL078', 'affhzwnn@gmail.com', 'AFIF', 'LALA2323', ' 22 Mar 2023 ', 'user', '3', 'MALE', '+0193797295', 'KUALA LUMPUR(HQ)', 'AIQON ANGKASA'),
(202, 'ZAIDATUL AFIQAH BINTI SHAIFUL AZWIN', 'KL093', 'ikalana23@gmail.com', 'AFIQAH', 'AFIQAH8172', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0173741744', 'KUALA LUMPUR(HQ)', 'COOP BANK'),
(203, 'NURUL FADHILAH BINTI YUSOF', 'KL044', 'fadhi96kmph@gmail.com', 'FADHILAH', 'FADHILAH295', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '01131206529', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(205, 'WAN MUHAMMAD ISA BIN WAN MOHAMAD APAKU ABADI', 'KL054', 'wanmuhdisa@gmail.com', 'ISA', 'ISA5499', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0165569744', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(206, 'ROSLIZA BINTI RUSLI', 'KL012', 'iejalee0912@gmail.com', 'ZAZA0912', 'ZZ145314', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '01115728896', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(207, 'NUR FARAH BINTI MOHAMAD SALLEH', 'KL085', 'FARAHSALLEH97@GMAIL.COM', 'NURFARAH', '588293', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0176179528', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(209, 'SHARIFAH NOOR IZZATY BINTI SYED ISA AL-KHADREE', 'KL008', 'zizzaty4@gmail.com', 'IZZATY', 'IZZATY5894', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0169219391', 'KUALA LUMPUR(HQ)', 'COLLECTIUS'),
(210, 'KHAIRUNNEISA LAILA BINTI SAIFUL SHAHRUL', 'PP051', 'khairunneisa@intranet.com', 'khairunneisa', 'khai1234', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0199267291', 'PULAU PINANG', 'SINGER NPL'),
(211, 'NURUL ISFAHANI BINTI ASRUL', 'PP052', 'isfahani@intranet.com', 'isfahani', 'isfahani1234', ' 22 Mar 2023 ', 'user', '3', 'FEMALE', '0199267292', 'PULAU PINANG', 'COURTS'),
(212, 'MUHAMMAD ALIF BIN MOHD NASIR', 'PP053', 'muhammadalif7500@gmail.com', 'alif', 'alif1234', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0175096450', 'PULAU PINANG', 'COURTS'),
(215, 'MUHAMMAD KHAIRUL FIKRI BIN ZAMRI', 'JHR280', 'Fikri0279@gmail.com', 'fikri', 'fikri1234', ' 22 Mar 2023 ', 'user', '3', 'MALE', '0134431832', 'MUAR', 'AEON WO'),
(218, 'MOHD HAZIQ AZFAR BIN OTHMAN', 'JHR283', 'successwithgt@gmail.com', 'azfar', 'azfar1234', ' 22 Mar 2023 ', 'user', '3', 'MALE', '01161296790', 'MUAR', 'MANAGEMENT/SLT'),
(223, 'Farhana Tahir', 'KL104', 'Farhana.dnp@gmail.com', 'Farhanatahir', 'H@n@1818', ' 25 Mar 2023 ', 'user', '3', 'FEMALE', '0132127727', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT'),
(226, 'MISRA MAR DEWITA BINTI BANANG', 'KL 109', 'misramardewita@gmail.com', 'MISRA', 'MISRA5028', ' 28 Mar 2023 ', 'user', '3', 'FEMALE', '01139004763', 'KUALA LUMPUR(HQ)', 'COURTS'),
(227, 'MOSEN BALANA', 'KL037', 'admin.kl@dhirpartners.com.my', 'MOSEN', 'MOSENMOSEN', ' 28 Mar 2023 ', 'user', '3', 'MALE', '205', 'KUALA LUMPUR(HQ)', 'ADMIN'),
(228, 'UNGKU NURSYAHIRAH ', 'JHR057', 'ungku.syahirah98@gmail.com', 'UNGKU', '123123', ' 29 Mar 2023 ', 'user', '3', 'FEMALE', '326', 'MUAR', 'DIGI'),
(229, 'MOHD HAIRY BIN RAHMAN', 'KL111', 'hathifcomel16@gmail.com', 'HAIRY.CO', 'HAIRY123', ' 30 Mar 2023 ', 'user', '3', 'MALE', '01162096404', 'KUALA LUMPUR(HQ)', 'COURTS'),
(232, 'NUR SAFI SHAHIRA BINTI MUHAMMAD SAFIAN', 'JHR281', 'safishahirasafian@gmail.com', 'NURSAFI', 'SAFI5196', ' 11 Apr 2023 ', 'user', '3', 'FEMALE', '411', 'MUAR', 'TM'),
(233, 'MOHAMAD NAZARIN', 'JHR081', 'nazarinnapi.dnp@gmail.com', 'nazarin', 'Malaysia123!!', ' 14 Apr 2023 ', 'user', '3', 'MALE', '104', 'MUAR', 'MANAGEMENT/SLT'),
(234, 'ZAWANI', 'JHR170', 'zawanibintizambry@gmail.com', 'zawani', 'wanie123', ' 14 Apr 2023 ', 'user', '3', 'FEMALE', '0102678312/403', 'MUAR', 'FINANCE'),
(238, 'AHMAD FAQIH BIN SALLEH', 'KL106', 'faqihfebruary91@gmail.com', 'FAQIH DNP', 'faqihfebruary1991', ' 17 Apr 2023 ', 'user', '3', 'MALE', '0122605592', 'KUALA LUMPUR(HQ)', 'COURTS'),
(242, 'SYAFIQAH BINTI SAARI', 'SYAFIQAH', 'saarisyafiqah@gmail.com', 'SYAFIQAH', 'Sya19823@', ' 26 May 2023 ', 'user', '3', '', '0176743348', '', ''),
(244, 'MOHD HAFIZULLAH AMIN BIN MD SARIF', 'JHR066', 'hafizulhqm8396@gmail.com', 'hafizulh433', 'hafiz8390', ' 12 Jun 2023 ', 'user', '3', 'MALE', '227', 'MUAR', 'COURTS'),
(245, 'TUAN NURHIDAYATUL SOLEHAH', 'JHR059', 'tnhidayatul6@gmail.com', 'solehah', 'tuan1995', ' 20 Jun 2023 ', 'user', '3', 'FEMALE', '127', 'MUAR', 'DIGI'),
(247, 'Khamil bin mansor', 'JHR019', 'khamil@dhirpartners.com.my', 'khamil', 'Mel251289', ' 25 Jun 2023 ', 'user', '3', 'MALE', '107', 'MUAR', 'MANAGEMENT/SLT'),
(249, 'NORAISHAH BT OON', '008', 'noraishahoon15@gmail.com', 'Noraishah bt oon', 'ais1234', ' 25 Jun 2023 ', 'user', '3', 'FEMALE', '406', 'MUAR', 'TM'),
(253, 'NURUL HUDA BINTI ISHAK', 'JHR277', 'newrulhuda96@gmail.com', 'newrulhuda', 'Amirhuda0908', ' 03 Jul 2023 ', 'user', '3', 'FEMALE', '0178703629', 'MUAR', 'AEON WO'),
(255, 'irfiliana binti abbas', 'JHR016', 'irfiliana@dhirpartners.com.my', 'irfie', '1234', ' 04 Jul 2023 ', 'user', '3', '', '260', 'MUAR', 'AEON WO'),
(256, 'HARISSA HAMIRA ', 'JHR263', 'harissahamira01@gmail.com', 'HARISSA', 'JHR263', ' 04 Jul 2023 ', 'user', '3', 'FEMALE', '01121065026', 'MUAR', 'COURTS'),
(257, 'Muhammad Luqman Bin Hamir', 'JHR269', 'luqman.hamir@gmail.com', 'luqman', 'luqman012', ' 04 Jul 2023 ', 'user', '3', 'MALE', '0127230010', 'MUAR', ''),
(258, 'MUHAMMAD FAISAL BIN MOHD HASBI', 'JHR287', 'Fhasbi211@gmail.com', 'faisal', 'user1234', ' 05 Jul 2023 ', 'user', '3', 'MALE', '0182022092', 'MUAR', 'COURTS'),
(262, 'SYED ABDUL AZIZ', 'JHR012', 'syedaziz@dhirpartners.com.my', 'syedaziz', 'user1234', ' 23 Jul 2023 ', 'user', '3', 'MALE', '248', 'MUAR', 'MANAGEMENT/SLT'),
(263, 'MUHAMMAD KHAIRI ISHAK', 'JHR003', 'khairi@dhirpartners.com.my', 'khairi', 'user1234', ' 23 Jul 2023 ', 'user', '3', 'MALE', '401', 'MUAR', 'MANAGEMENT/SLT'),
(265, 'MUHAMMAD KHAIRUL FIKRI BIN ZAMRI', 'JHR280', 'FIKRI0279@GMAIL.COM', 'FIKRI', 'Irkif2812', ' 25 Jul 2023 ', 'user', '3', 'MALE', '0134431832', 'MUAR', 'AEON WO'),
(266, 'danial', 'JHR290', 'danialsyafiq012@gmail.com', 'danial', 'danial21', ' 28 Jul 2023 ', 'user', '3', 'MALE', '0174300230', 'MUAR', 'DIGI'),
(267, 'NUR SYAZWANI BINTI ABD RAHIM', 'JHR069', 'digi.dhirnpartnersdept@gmail.com', 'wani', 'Wani1234', ' 15 Aug 2023 ', 'user', '3', 'FEMALE', '127', 'MUAR', 'DIGI'),
(272, 'shahrul', 'kl095', 'shahrul@dhirpartners.com.my', 'arul', 'user1234', ' 23 Aug 2023 ', 'user', '3', 'MALE', '6018', 'KUALA LUMPUR(HQ)', 'RHB'),
(274, 'NOOR AZURA BINTI PITOH', 'JHR293', 'azuralis07@gmail.com', 'azuralis', 'azura070028', ' 27 Aug 2023 ', 'user', '3', 'FEMALE', '0193916013', 'MUAR', 'AEON WO'),
(275, 'NURSYAHILA ABD RAZAK', 'JHRI009', 'syahilarazak27@gmail.com', 'SYAHILA', 'Syahila_27', ' 06 Sep 2023 ', 'user', '3', 'FEMALE', '0196257114', 'MUAR', 'FINANCE'),
(276, 'farisha', 'JHR242', 'farishaaziz.98@gmail.com', 'farisha', 'farisha', ' 08 Sep 2023 ', 'user', '3', 'FEMALE', '01110817634', 'MUAR', 'DIGI'),
(278, 'lidyawati', 'KL123', 'lidyahalim85@yahoo.com', 'lidyawati', 'user1234', ' 18 Sep 2023 ', 'user', '3', 'FEMALE', '+60162334961', 'KUALA LUMPUR(HQ)', 'RHB'),
(279, 'Aizuddin', 'JHR285', 'dmdnp002@gmail.com', 'aizuddin', '190905', ' 18 Sep 2023 ', 'user', '3', 'MALE', '106', 'MUAR', 'DIGITAL MARKETING'),
(281, 'FARA NAZIRA IBRAHIM', 'JHR291', 'aranajiraa08@gmail.com', 'FARA NAZIRA', 'user1234', ' 19 Sep 2023 ', 'user', '3', 'FEMALE', '0138046939', 'MUAR', 'COURTS'),
(282, 'NOOR AZURA BINTI PITOH', 'JHR293', 'azuralis07@gmail.com', 'azura', '070028', ' 24 Sep 2023 ', 'user', '3', 'FEMALE', '0193916013', 'MUAR', 'AEON WO'),
(284, 'MUHAMAD RAIHAN BIN RAMLAN', 'JHR301', 'raihanramlan6@gmail.com', 'raih8n', 'Raihan12@', ' 05 Oct 2023 ', 'user', '3', 'MALE', '244', 'MUAR', 'TM'),
(286, 'AINA NADIA BINTI NAZARUDDIN', 'JHR021', 'deyamadona@gmail.com', 'ainanadia', 'nad6170', ' 19 Oct 2023 ', 'user', '3', 'FEMALE', '254', 'MUAR', 'TM'),
(291, 'Ayubiha Binti Zakaria', 'JHR314', 'ayubiha92@gmail.com', 'ayubiha', 'ayubiha1234', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '0194066940', 'MUAR', 'COURTS'),
(292, 'Noor Liza Binti Noor Azizi', 'JHR316', 'cikpuanmijaa@gmail.com', 'noorliza', 'noorliza1234', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '0193249262', 'MUAR', 'DIGI'),
(293, 'Dhanesh Kumar A/L Ulaganathan', 'KL139', 'dazemdanish@gmail.com', 'dhaneshkumar', 'dhanesh1234', ' 09 Nov 2023 ', 'user', '3', 'MALE', '01137581090', 'KUALA LUMPUR(HQ)', 'BMMB'),
(294, 'Kurnia Aryani Ain Binti Zulkifli', 'KL140', 'kurniaaryani99@gmail.com', 'kurnia', 'kurnia1234', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '01161208445', 'KUALA LUMPUR(HQ)', 'AEON NPL'),
(295, 'Husna Wahida Binti Wahab', 'KL141', 'husna.wahida98@gmail.com', 'husnawahida', 'wahida1234', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '0189514083', 'KUALA LUMPUR(HQ)', 'BMMB'),
(297, 'Ainul Zulaikha Binti Zoikipli', 'JHR310', 'ainul.zulaikha98@gmail.com', 'zulaikha', 'zulaikha123', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '0139846018', 'MUAR', 'TM'),
(299, 'Muhammad Adli Syafiq Bin Muhammad Isa', 'JHR312', 'adlisyafiq786@gmail.com', 'adlisyafiq', 'adlisyafiq123', ' 09 Nov 2023 ', 'user', '3', 'MALE', '0189401548', 'MUAR', 'CELCOM'),
(300, 'Fatin Nuramira Binti Mohamad Asa', 'KL137', 'miraae12@icloud.com', 'nuramira', 'nuramira123', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '0166308092', 'KUALA LUMPUR(HQ)', 'AIQON AMBANK'),
(301, 'Suhaiza Binti Mohd Kamaruddin', 'KL138', 'suhaizamohdkamaruddin45@gmail.com', 'suhaiza', 'suhaiza123', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '0173524868', 'KUALA LUMPUR(HQ)', 'RHB'),
(302, 'Nazreen Bin Norazizi', 'JHR308', 'nazreennayin@gmail.com', 'nazreen', 'nazreen123', ' 09 Nov 2023 ', 'user', '3', 'MALE', '0136161514', 'MUAR', 'TM'),
(303, 'Cahaya Balqis', 'JHR309', 'cahayabalqis1603@gmail.com', 'cahaya', 'cahaya123', ' 09 Nov 2023 ', 'user', '3', 'FEMALE', '0183701434', 'MUAR', 'TM'),
(305, 'HAFIZAH ABDUL KARIM', 'JHR299', 'fiza.karim@gmail.com', 'hafizah', 'user1234', ' 10 Nov 2023 ', 'user', '3', 'FEMALE', '409', 'MUAR', 'TM'),
(306, 'RUSHEILA RUSLAN', 'KL032', 'admin.kl@dhirpartners.com.my', 'shila', 'Rr1234##', ' 10 Nov 2023 ', 'user', '3', 'FEMALE', '205', 'KUALA LUMPUR(HQ)', 'ADMIN'),
(307, 'Nurul Syarmimi Binti Mohd Niza', 'JHR315', 'mimi@123', 'nsyarmimi', 'user1234', ' 17 Nov 2023 ', 'user', '4', 'FEMALE', '402', 'MUAR', 'HUMAN RESOURCE'),
(308, 'AINUL ZULAIKHA', 'JHR310', 'ainul.zulaikha98@gmail.com', 'zulaikha', 'zULAIKHA.98', ' 22 Nov 2023 ', 'user', '3', 'FEMALE', '0139846018', 'MUAR', 'TM'),
(309, 'AINUL ZULAIKHA BINTI ZOIKIPLI', 'JHR310', 'ainul.zulaikha98@gmail.com', 'ZULAIKHA', 'zulaikha.98', ' 26 Nov 2023 ', 'user', '3', 'FEMALE', '407', 'MUAR', 'TM'),
(310, 'HAFIZAH', 'JHR299', 'fiza.karim@gmail.com', 'hafizah', 'user1234', ' 27 Nov 2023 ', 'user', '3', 'FEMALE', '243', 'MUAR', 'TM'),
(311, 'MUHAMMAD KHAIRUDDIN BIN RAZALI', 'JHR318', 'Paledidie8@gmail.com', 'khairuddin', 'khai1995', ' 29 Nov 2023 ', 'user', '3', 'MALE', '01133735188', 'MUAR', 'TM'),
(312, 'Nurul Afiqah binti Sakban', 'JHR320', 'ciknurulafiqah2@gmail.com', 'Afiqah', 'user1234', ' 04 Dec 2023 ', 'user', '3', 'FEMALE', '409', 'MUAR', 'TM'),
(314, 'Muhammad Adli Syafiq Bin Muhammad Isa', 'JHR312', 'adlisyafiq786@gmail.com', 'adlisyafiq786@gmail.', 'Adlisyafiq786!', ' 05 Dec 2023 ', 'user', '3', 'MALE', '0189401548', 'MUAR', 'CELCOM'),
(316, 'Shahizam Mansor', 'KL007', 'shahizam@dhirpartners.com.my', 'shahizam', 'Daddy9381', ' 14 Dec 2023 ', 'user', '3', 'MALE', '202', 'KUALA LUMPUR(HQ)', 'MANAGEMENT/SLT'),
(317, 'HARISSA HAMIRA ', 'JHR263', 'harissahamira01@gmail.com', 'HARISSA', 'user1234', ' 24 Dec 2023 ', 'user', '3', 'FEMALE', '01121065026', 'MUAR', 'COURTS'),
(318, 'Nor Hafiqa Binti Abdul Kadir', 'JHR333', 'fee.3137@gmail.com', 'Hafiqa', 'Hafiqa123', ' 29 Dec 2023 ', 'user', '3', 'FEMALE', '0182520359', 'MUAR', 'ADMIN'),
(319, 'suhaizah binti azhar ', 'JHR331', 'suhaizahdebab@gmail.com', 'suhaizah', 'user1234', ' 29 Dec 2023 ', 'user', '3', 'FEMALE', '01127638496', 'MUAR', 'AEON WO'),
(322, 'MUHAMMAD WAFRIHAZIQ BIN MOHD NOR MUHARAM', 'JHRI010', 'wafrihaziq00@gmail.com', 'wafri.it', 'Wafrihaziq010', ' 03 Jan 2024 ', 'user', '1', 'MALE', '0199170524', 'MUAR', 'INFORMATION TECHNOLOGY'),
(323, 'NUR FIYRI YANA ', 'KL019', 'yanazul1989@gmail.com', 'fitriyana', 'Yana111@@@', ' 03 Jan 2024 ', 'user', '3', 'FEMALE', '204', 'KUALA LUMPUR(HQ)', 'HUMAN RESOURCE'),
(324, 'MOHAMMED YOUSOFF BIN KHALID', 'JHR146', 'yousoff.khalid77@gmail.com', 'yousoffkhalid', 'Ain100790#', ' 05 Jan 2024 ', 'user', '3', 'MALE', '106', 'MUAR', 'MANAGEMENT/SLT'),
(325, 'ARISSHA BINTI BARIMIN', 'JHR327', 'arisshabarimin@gmail.com', 'arissha', 'Ishaarsha07', ' 19 Jan 2024 ', 'user', '3', 'FEMALE', '0177629787', 'MUAR', 'TM'),
(326, 'SITI AZAD SOFIAH BINTI MOHD AMIN', 'JHR332', 'sitiazad14@gmail.com', 'azadsofiah', 'sofiah14', ' 19 Jan 2024 ', 'user', '3', 'FEMALE', '0172904314', 'MUAR', 'TM'),
(327, 'Nur Afiqah Binti Jafrice', 'JHR341', 'fvqaeyka@icloud.com', 'NurAfiqah', 'Afiqah123', ' 28 Jan 2024 ', 'user', '3', 'FEMALE', '0195032975', 'MUAR', 'ADMIN'),
(328, 'Muhammad Assyakir Bin Syamsul Anuar', 'JHR 325', 'Bolasepakkita14@gmail.com', 'Syakir Anuar', 'Syakir03', ' 31 Jan 2024 ', 'user', '3', 'MALE', '01127790644', 'MUAR', 'AEON WO'),
(329, 'ANI NUR ASMIRA BINTI ABDULLAH ', 'JHR300', 'miraasmira465@gmail.com', 'asmira ', '123456', ' 25 Feb 2024 ', 'user', '3', 'FEMALE', '237', 'MUAR', 'DIGI'),
(330, 'FAREENA TASYA BINTI ONN', 'JHR339', 'fareenatasya85@gmail.com', 'fareenatasya', 'nazumie', ' 29 Feb 2024 ', 'user', '3', 'FEMALE', '01121007011', 'MUAR', 'TM'),
(332, 'NURUL FIRZANAH BINTI BACHOK', 'JHR342', 'firzanahbachok29@gmail.com', 'firzanah', 'user1234', ' 04 Mar 2024 ', 'user', '3', 'FEMALE', '01131255369', 'MUAR', 'AEON WO'),
(333, 'SITI NURFADHILAH BINTI ABDULLAH', 'JHRI012', 'snfdlhh@gmail.com', 'fadhilah', 'fadhilah123', ' 15 Mar 2024 ', 'user', '3', 'FEMALE', '403', 'MUAR', 'FINANCE'),
(334, 'RAFIQ', 'JHR216', 'rafiqrahmat91@gmail.com', 'rafiq', '45100896', ' 05 Apr 2024 ', 'user', '3', 'MALE', '414', 'MUAR', 'COMPLIANCE'),
(335, 'NUR ASIYAH BINTI SHAHARUDIN', 'JHR 357', 'asiyah.shaharudin@gmail.com', 'asiyah', 'ASIYAH35', ' 07 Apr 2024 ', 'user', '3', 'FEMALE', '251', 'MUAR', 'AEON WO'),
(336, 'NUR ASIYAH BINTI SHAHARUDIN', 'JHR 357', 'asiyah.shaharudin@gmail.com', 'asiyah', 'ASIYAH35', ' 07 Apr 2024 ', 'user', '3', 'FEMALE', '251', 'MUAR', 'AEON WO'),
(337, 'NOR SUHADA BINTI TARMIZI', 'JHR355', 'norsuhadatarmizi@gmail.com', 'suhadatarmizi', 'As9512324', ' 07 Apr 2024 ', 'user', '3', 'FEMALE', '0177261476', 'MUAR', 'COURTS'),
(338, 'NORLIZA BINTI ISMAIL', 'JHR359', 'saraadra2020@gmail.com', 'NORLIZA BINTI ISMAIL', 'JHR359', ' 16 Apr 2024 ', 'user', '3', 'FEMALE', '240', 'MUAR', 'TM'),
(339, 'MUHAMMAD AIDIL', 'JHR088', 'aydil1214@gmail.com', 'AIDIL', 'aidil1451', ' 30 Apr 2024 ', 'user', '3', 'MALE', '0177093233', 'MUAR', 'HUMAN RESOURCE'),
(340, 'Suhaizah', 'JHR331', 'suhaizahdebab@gmail.com', 'suhaizahdebab@gmail.', 'user1234', ' 30 Apr 2024 ', 'user', '3', 'FEMALE', '231', 'MUAR', 'AEON WO'),
(342, 'MUHAMMAD AIDIL BIN MUHADHIR', 'JHR088', 'aydil1214@gmail.com', 'AIDIL', 'dil1451', ' 16 May 2024 ', 'user', '3', 'MALE', '0177093233', 'MUAR', 'HUMAN RESOURCE'),
(344, 'MUHAMMAD NAJMUDDIN BIN MOHAMED YUSOF', 'JHR366', 'najyusof2306@gmail.com', 'NAJ', '000623', ' 20 May 2024 ', 'user', '3', 'MALE', '0197727804', 'MUAR', 'COURTS'),
(346, 'Ainur Izatty Binti Akman', 'JHR350', 'ainurizatty2305@gmail.com', 'Ainur', 'user1234', ' 30 May 2024 ', 'user', '3', 'FEMALE', '0137981581', 'MUAR', 'COURTS'),
(349, 'SHARIFAH KHADZALNA', 'JHR322', 'sharifahhanna885@gmail.com', 'khadzalna', 'hanna2008', ' 13 Jun 2024 ', 'user', '3', 'FEMALE', '252', 'MUAR', 'TM'),
(351, 'Syaiful Hisyam Bin Hamzah', 'JHR354', 'syaifulhisyam4780@gmail.com', 'syaiful', 'qwe1234', ' 18 Jun 2024 ', 'user', '3', 'MALE', '203', 'MUAR', 'COURTS'),
(352, 'NUR ASIYAH BINTI SHAHARUDIN', 'JHR 357', 'asiyah.shaharudin@gmail.com', 'asiyah.shaharudin@gm', 'asiyah10', ' 19 Jun 2024 ', 'user', '3', 'FEMALE', '251', 'MUAR', 'AEON WO'),
(354, 'FAREENA TASYA BINTI ONN', 'JHR339', 'fareenatasya85@gmail.com', 'fareena', 'aqaq1234', ' 19 Jun 2024 ', 'user', '3', 'FEMALE', '01121007011', 'MUAR', 'TM'),
(355, 'nur asiyah bte shaharudin', 'jhr357', 'asiyah.shaharudin@gmail.com', 'nur asiyah', 'user1234', ' 19 Jun 2024 ', 'user', '3', 'FEMALE', '251', 'MUAR', 'AEON WO'),
(356, 'NAZREEN', 'JHR308', 'nazreennayin@gmail.com', 'nazreen', 'user1234', ' 21 Jun 2024 ', 'user', '3', 'MALE', '0136161514', 'MUAR', 'TM'),
(357, 'AHMAD FARIF BIN ROSKEFLI', 'JHR369', 'radenfarif@gmail.com', 'radenfarif', 'raden007', ' 01 Jul 2024 ', 'user', '3', 'MALE', '105', 'MUAR', 'DIGITAL MARKETING'),
(358, 'MUHAMMAD AIDIL', 'JHR088', 'aydil1214@gmail.com', 'AYDIL', 'aidil1451', ' 08 Jul 2024 ', 'user', '3', 'MALE', '402', 'MUAR', 'HUMAN RESOURCE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carbooking`
--
ALTER TABLE `carbooking`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compliance`
--
ALTER TABLE `compliance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it`
--
ALTER TABLE `it`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetingbooking`
--
ALTER TABLE `meetingbooking`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carbooking`
--
ALTER TABLE `carbooking`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1472;
--
-- AUTO_INCREMENT for table `compliance`
--
ALTER TABLE `compliance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `it`
--
ALTER TABLE `it`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `meetingbooking`
--
ALTER TABLE `meetingbooking`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=300;
--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=359;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
