-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 09:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniqlogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `socialclub` text DEFAULT NULL,
  `login` varchar(155) NOT NULL,
  `hwid` varchar(155) DEFAULT NULL,
  `redbucks` int(11) DEFAULT 0,
  `ip` varchar(155) NOT NULL,
  `character1` int(11) NOT NULL,
  `character2` int(11) NOT NULL,
  `character3` int(11) NOT NULL,
  `lastCharacter` int(11) DEFAULT -1,
  `email` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL,
  `promocodes` varchar(155) DEFAULT NULL,
  `present` tinyint(1) DEFAULT 0,
  `idkey` int(11) NOT NULL,
  `lang` varchar(4) NOT NULL DEFAULT 'ru',
  `realsocialclub` text DEFAULT NULL,
  `mcoins` int(11) NOT NULL DEFAULT 0,
  `bonusbegine` datetime DEFAULT NULL,
  `totalplayed` int(11) NOT NULL DEFAULT 0,
  `bonuscompleete` tinyint(1) NOT NULL DEFAULT 0,
  `promoused` varchar(45) DEFAULT NULL,
  `promoreceived` tinyint(1) NOT NULL DEFAULT 0,
  `usedbonuses` text DEFAULT NULL,
  `socialclubid` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `uuid` int(11) NOT NULL,
  `achieveName` int(11) NOT NULL,
  `currentLevel` int(11) NOT NULL DEFAULT 0,
  `givenReward` tinyint(4) NOT NULL DEFAULT 0,
  `dateCompleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `adminaccess`
--

CREATE TABLE `adminaccess` (
  `minrank` int(11) NOT NULL,
  `command` varchar(155) NOT NULL,
  `isadmin` tinyint(1) NOT NULL,
  `idkey` int(11) NOT NULL,
  `istech` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `adminaccess`
--

INSERT INTO `adminaccess` (`minrank`, `command`, `isadmin`, `idkey`, `istech`) VALUES
(8, 'createstock', 1, 1, 0),
(4, 'giveleader', 1, 2, 0),
(8, 'givegun', 1, 3, 0),
(6, 'giveammo', 1, 4, 0),
(8, 'givemoney', 1, 5, 0),
(4, 'vehc', 1, 6, 0),
(2, 'hp', 1, 7, 0),
(5, 'removecars', 1, 8, 0),
(8, 'givedonate', 1, 9, 0),
(2, 'setdim', 1, 10, 0),
(4, 'createmp', 1, 11, 0),
(4, 'startmp', 1, 12, 0),
(4, 'stopmp', 1, 13, 0),
(8, 'boost', 1, 14, 0),
(8, 'mafiabiz', 1, 15, 0),
(8, 'takeoffbiz', 1, 16, 0),
(5, 'skick', 1, 17, 0),
(5, 'zonecolor', 1, 18, 0),
(2, 'fixcar', 1, 19, 0),
(8, 'createsafe', 1, 20, 0),
(8, 'spawnallcar', 1, 21, 0),
(8, 'scoord', 1, 22, 0),
(4, 'ban', 1, 23, 0),
(7, 'setfraccar', 1, 24, 0),
(8, 'removefrac', 1, 25, 0),
(8, 'startvzm', 1, 26, 0),
(8, 'setvehdirt', 1, 27, 0),
(8, 'createbusiness', 1, 28, 0),
(7, 'newfracveh', 1, 29, 0),
(7, 'makeadmin', 1, 31, 0),
(7, 'changeadminrank', 1, 32, 0),
(5, 'global', 1, 33, 0),
(2, 'metp', 1, 34, 0),
(2, 'demorgan', 1, 35, 0),
(1, 'a', 1, 36, 0),
(3, 'warn', 1, 37, 0),
(5, 'unwarn', 1, 38, 0),
(2, 'tp', 1, 39, 0),
(2, 'admins', 1, 40, 0),
(2, 'gm', 1, 41, 0),
(2, 'sp', 1, 42, 0),
(3, 'checkmoney', 1, 43, 0),
(2, 'id', 1, 44, 0),
(2, 'mute', 1, 45, 0),
(1, 'pm', 1, 46, 0),
(8, 'ans', 1, 47, 0),
(3, 'frz', 1, 48, 0),
(3, 'udemorgan', 1, 49, 0),
(7, 'takeadmin', 1, 50, 0),
(4, 'removecar', 1, 51, 0),
(5, 'setskin', 1, 52, 0),
(3, 'unfrz', 1, 54, 0),
(4, 'offban', 1, 55, 0),
(8, 'newrentveh', 1, 56, 0),
(8, 'newjobcar', 1, 57, 0),
(6, 'sendcreator', 1, 58, 0),
(5, 'removeleader', 1, 59, 0),
(8, 'arm', 1, 60, 0),
(8, 'st', 1, 61, 0),
(3, 'unmute', 1, 62, 0),
(2, 'inv', 1, 63, 0),
(8, 'oguns', 1, 64, 0),
(2, 'rescar', 1, 65, 0),
(8, 'giveclothes', 1, 66, 0),
(8, 'takeoffhouse', 1, 67, 0),
(4, 'checkprop', 1, 68, 0),
(8, 'deletebusiness', 1, 69, 0),
(3, 'fuel', 1, 70, 0),
(8, 'setprime', 1, 71, 0),
(7, 'weather', 1, 72, 0),
(3, 'removejob', 1, 73, 0),
(8, 'stop', 1, 74, 0),
(8, 'createunloadpoint', 1, 75, 0),
(8, 'pa', 1, 76, 0),
(8, 'sa', 1, 77, 0),
(2, 'stats', 1, 78, 0),
(6, 'removead', 1, 79, 0),
(2, 'offjail', 1, 80, 0),
(3, 'offwarn', 1, 81, 0),
(8, 'removeobj', 1, 82, 0),
(8, 'setexp', 1, 83, 0),
(8, 'svh', 1, 84, 0),
(8, 'expmultiplier', 1, 85, 0),
(8, 'payday', 1, 86, 0),
(8, 'newsimcard', 1, 87, 0),
(8, 'changebizgovprice', 1, 88, 0),
(8, 'sethtypeprice', 1, 89, 0),
(2, 'kick', 1, 90, 0),
(3, 'kill', 1, 91, 0),
(8, 'rtm', 1, 92, 0),
(7, 'changename', 1, 93, 0),
(6, 'givelic', 1, 94, 0),
(2, 'tpcar', 1, 95, 0),
(8, 'lsn', 1, 96, 0),
(8, 'setstock', 1, 97, 0),
(8, 'mtp', 1, 98, 0),
(8, 'tpc', 1, 99, 0),
(8, 'removefracoff', 1, 100, 0),
(8, 'removesafe', 1, 101, 0),
(8, 'paydaymultiplier', 1, 102, 0),
(8, 'giveproduct', 1, 103, 0),
(8, 'removeproducts', 1, 104, 0),
(8, 'changebizprice', 1, 105, 0),
(8, 'vehhash', 1, 107, 0),
(4, 'veh', 1, 108, 0),
(2, 'checkdim', 1, 109, 0),
(8, 'promosync', 1, 110, 0),
(8, 'mpar', 1, 111, 0),
(4, 'mpveh', 1, 112, 0),
(8, 'mpplayers', 1, 113, 0),
(8, 'mphp', 1, 114, 0),
(8, 'savejveh', 1, 115, 0),
(8, 'aclear', 1, 116, 0),
(2, 'tpmark', 1, 117, 0),
(8, 'changegtype', 1, 119, 0),
(7, 'vehnumber', 1, 120, 0),
(4, 'mpkick', 1, 121, 0),
(8, 'delfraccar', 1, 122, 0),
(8, 'blackname', 1, 123, 0),
(8, 'givecar', 1, 124, 0),
(8, 'create_rent_car', 1, 125, 0),
(8, 'updatepassword', 1, 126, 0),
(8, 'delete_rent_car', 1, 127, 0),
(8, 'openbizsetts', 1, 128, 0),
(8, 'addNewProduct', 1, 129, 0),
(8, 'changeStockCapacityвЂ™', 1, 130, 0),
(8, 'changeMinPriceвЂ™', 1, 131, 0),
(8, 'changeMaxPriceвЂ™', 1, 132, 0),
(8, 'changeorderprice', 1, 133, 0),
(8, 'deleteProduct', 1, 134, 0),
(8, 'adm_online_cheat', 1, 135, 0),
(8, 'clearreports', 1, 136, 0),
(8, 'setacommandlvl', 1, 137, 0),
(7, 'clearfraction', 1, 138, 0),
(7, 'takeadminoff', 1, 139, 0),
(8, 'propertystats', 1, 140, 0),
(3, 'makejesus', 1, 141, 0),
(7, 'reportoff', 1, 142, 0),
(8, 'setnextdroprarity', 1, 143, 0),
(8, 'wtfcoins', 1, 144, 0),
(8, 'getcoinsinfo', 1, 145, 0),
(8, 'offresetcharacter', 1, 146, 0),
(8, 'checkchips', 1, 147, 0),
(4, 'offcheckmoney', 1, 148, 0),
(8, 'changefreespinenabled', 1, 149, 0),
(8, 'checkbizmoney', 1, 150, 0),
(8, 'checkhousemoney', 1, 151, 0),
(8, 'checkdonat', 1, 152, 0),
(3, 'respawnfractioncars', 1, 153, 0),
(8, 'newpromocode', 1, 154, 0),
(5, 'changefracvehrank', 1, 155, 0),
(8, 'setgangsincome', 1, 156, 0),
(8, 'setmafiaincome', 1, 157, 0),
(8, 'delfracvehe', 1, 158, 0),
(8, 'clothes', 1, 159, 0),
(8, 'sac', 1, 160, 0),
(8, 'changefracmdaccess', 1, 161, 0),
(8, 'perl', 1, 162, 0),
(8, 'sban', 1, 163, 0),
(7, 'lscustom', 1, 164, 0),
(8, 'alscustom', 1, 165, 0),
(8, 'svclr', 1, 166, 0),
(7, 'findvehbynumber', 1, 167, 0),
(8, 'vehchange', 1, 168, 0),
(8, 'findbyveh', 1, 169, 0),
(8, 'startnewbuway', 1, 170, 0),
(8, 'forbes', 1, 171, 0),
(8, 'addbuspoint', 1, 172, 0),
(8, 'finishbusway', 1, 173, 0),
(8, 'removebuspoint', 1, 174, 0),
(8, 'setjobcar', 1, 175, 0),
(8, 'createbizped', 1, 176, 0),
(8, 'changebizenterpoint', 1, 177, 0),
(8, 'bizhidemarkers', 1, 178, 0),
(8, 'getbizpeds', 1, 179, 0),
(8, 'bizshowmarkers', 1, 180, 0),
(8, 'removebizped', 1, 181, 0),
(8, 'godspeed', 1, 182, 0),
(8, 'component', 1, 183, 0),
(8, 'testpet', 1, 184, 0),
(8, 'getanimalspos', 1, 185, 0),
(8, 'startfarmwar', 1, 186, 0),
(8, 'ohv', 1, 187, 0),
(8, 'addfracmd', 1, 188, 0),
(6, 'supplymed', 1, 189, 0),
(6, 'endmedsupply', 1, 190, 0),
(8, 'removejobcar', 1, 191, 0),
(3, 'hpf', 1, 192, 0),
(8, 'vct', 1, 193, 0),
(8, 'greenscreen', 1, 194, 0),
(8, 'setbizdim', 1, 195, 0),
(8, 'setbizblippos', 1, 196, 0),
(8, 'createtp', 1, 197, 0),
(8, 'addneon', 1, 198, 0),
(8, 'trucklevel', 1, 199, 0),
(8, 'fixcapt', 1, 200, 0),
(8, 'viewallreports', 1, 201, 0),
(8, 'editveh', 1, 202, 0),
(2, 'adm', 1, 203, 0),
(8, 'save', 1, 204, 0),
(8, 'adm_onl', 1, 205, 0),
(8, 'props', 1, 206, 0),
(8, 'createadmincar', 1, 207, 0),
(8, 'saveadmincar', 1, 208, 0),
(8, 'addbizenterpoint', 1, 209, 0),
(4, 'deleteadmincar', 1, 210, 0),
(5, 'setstage', 1, 211, 0),
(8, 'creategarage', 1, 212, 0),
(8, 'createfamily', 1, 213, 0),
(8, 'deletestock', 1, 214, 0),
(8, 'createhousefamily', 1, 215, 0),
(8, 'givestockgun', 1, 216, 0),
(8, 'removehouse', 1, 217, 0),
(8, 'svn', 1, 218, 0),
(6, 'givestockmed', 1, 219, 0),
(8, 'clearproducts', 1, 220, 0),
(8, 'createhouse', 1, 221, 0),
(8, 'houseis', 1, 222, 0),
(8, 'clearbizenterpoint', 1, 223, 0),
(8, 'changestockpos', 1, 224, 0),
(7, 'givestockbox', 1, 225, 0),
(8, 'takedonate', 1, 226, 0),
(7, 'givestockmar', 1, 227, 0),
(8, 'swtime', 1, 228, 0),
(8, 'loadshape', 1, 229, 0),
(2, 'killog', 1, 230, 0),
(9, 'checkpromo', 1, 231, 0),
(9, 'newpromo', 1, 232, 0),
(6, 'startarmwar', 1, 233, 0),
(8, 'setinventoryweight', 1, 234, 0),
(6, 'givegunc', 1, 235, 0),
(6, 'safezonechange', 1, 236, 0),
(4, 'checkinv', 1, 237, 0),
(8, 'vehs', 1, 238, 0),
(8, 'dooraccess', 1, 239, 0),
(8, 'test', 1, 240, 0),
(8, 'makemedia', 1, 241, 0),
(8, 'takemedia', 1, 242, 0),
(8, 'psto', 1, 243, 0),
(8, 'removegarage', 1, 244, 0),
(5, 'setfamleader', 1, 245, 0),
(4, 'opentp', 1, 246, 0),
(8, 'rape', 1, 247, 0),
(5, 'setfamowner', 1, 248, 0),
(8, 'guitar', 1, 249, 0),
(8, 'setarmpoint', 1, 250, 0),
(8, 'changeminpercent', 1, 251, 0),
(8, 'setplayericon', 1, 252, 0),
(8, 'makemediahelper', 1, 253, 0),
(5, 'fambiz', 1, 254, 0),
(8, 'takemediahelper', 1, 255, 0),
(6, 'createbattle', 1, 256, 0),
(8, 'stopbattle', 1, 257, 0),
(8, 'testroulette', 1, 259, 0),
(8, 'buybuy', 1, 260, 0),
(8, 'copycust', 1, 261, 0),
(8, 'takedoanteitem', 1, 262, 0),
(8, 'blacklist', 1, 263, 0),
(8, 'blacklistr', 1, 264, 0),
(8, 'saveserver', 1, 265, 0),
(8, 'changenameid', 1, 266, 0),
(8, 'giveammoc', 1, 267, 0),
(8, 'deletesupply', 1, 268, 0),
(8, 'requestsupplyadm', 1, 269, 0),
(8, 'byebye', 1, 270, 0),
(8, 'newbonuscode', 1, 271, 0),
(8, 'chanceroulette', 1, 272, 0),
(5, 'famkick', 1, 273, 0),
(3, 'families', 1, 274, 0),
(8, 'giveclothesc', 1, 275, 0),
(5, 'setfamtype', 1, 276, 0),
(8, 'delallmembers', 1, 277, 0),
(3, 'gotomark', 1, 278, 0),
(8, 'newtradepoint', 1, 279, 0),
(8, 'deltradepoint', 1, 280, 0),
(8, 'develop', 1, 281, 0),
(8, 'changephonenumber', 1, 282, 0),
(8, 'giveganja', 1, 283, 0),
(8, 'addbar', 1, 284, 0),
(8, 'barid', 1, 285, 0),
(7, 'givestockboxa', 1, 286, 0),
(7, 'givestockboxm', 1, 287, 0),
(6, 'createbizwar', 1, 288, 0),
(6, 'createislandcapt', 1, 289, 0),
(8, 'createbankpoint', 1, 290, 0),
(8, 'swfo', 1, 291, 0),
(8, 'openpricemenu', 1, 292, 0),
(7, 'damagesettings', 1, 293, 0),
(8, 'startwfbattle', 1, 294, 0),
(8, 'setwfowner', 1, 295, 0),
(8, 'uban', 1, 296, 0),
(5, 'unban', 1, 297, 0),
(8, 'hardban', 1, 298, 0),
(8, 'unhardban', 1, 299, 0),
(8, 'unjail', 1, 300, 0),
(8, 'givedonateoff', 1, 332, 0),
(8, 'deletebankpoint', 1, 333, 0),
(8, 'custmenu', 1, 334, 0),
(8, 'costumemenu', 1, 335, 0),
(8, 'admdivorce', 1, 336, 0),
(8, 'savecarpos', 1, 337, 0),
(8, 'sethouseinter', 1, 338, 0),
(8, 'delcarpos', 1, 339, 0),
(8, 'givedonateitem', 1, 340, 0),
(8, 'housenewprice', 1, 346, 0),
(8, 'createobject', 1, 347, 0),
(8, 'changeMaxPrice', 1, 348, 0),
(5, 'giveonelic', 1, 349, 0),
(7, 'createfamilystock', 1, 351, 0);

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `time` datetime NOT NULL,
  `admin` text NOT NULL,
  `action` text NOT NULL,
  `player` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `advertised`
--

CREATE TABLE `advertised` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Author` varchar(40) NOT NULL,
  `AuthorSIM` int(11) NOT NULL,
  `AD` varchar(150) NOT NULL,
  `Editor` varchar(40) DEFAULT NULL,
  `EditedAD` varchar(150) DEFAULT NULL,
  `Opened` datetime NOT NULL,
  `Closed` datetime DEFAULT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `alcobars`
--

CREATE TABLE `alcobars` (
  `id` int(11) NOT NULL,
  `position` text NOT NULL,
  `radius` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `alcobars`
--

INSERT INTO `alcobars` (`id`, `position`, `radius`) VALUES
(2, '{\"x\":1110.5343,\"y\":208.978439,\"z\":-50.4401245}', 5),
(3, '{\"x\":-1377.304,\"y\":-627.1655,\"z\":29.8195763}', 1),
(4, '{\"x\":314.489563,\"y\":231.346008,\"z\":103.371681}', 1),
(5, '{\"x\":127.492439,\"y\":-1283.86426,\"z\":28.2784481}', 1),
(6, '{\"x\":-435.431,\"y\":274.317047,\"z\":82.4221344}', 1),
(7, '{\"x\":1984.83044,\"y\":3052.408,\"z\":46.21514}', 2),
(8, '{\"x\":4904.48926,\"y\":-4941.83057,\"z\":2.37673831}', 5),
(9, '{\"x\":-1479.09106,\"y\":-1474.44543,\"z\":1.27891278}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `alcoclubs`
--

CREATE TABLE `alcoclubs` (
  `id` int(11) NOT NULL,
  `alco1` int(11) NOT NULL,
  `alco2` int(11) NOT NULL,
  `alco3` int(11) NOT NULL,
  `pricemod` varchar(155) NOT NULL,
  `mats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `alcoclubs`
--

INSERT INTO `alcoclubs` (`id`, `alco1`, `alco2`, `alco3`, `pricemod`, `mats`) VALUES
(10, 0, 0, 0, '100', 0),
(11, 0, 0, 0, '100', 0),
(12, 0, 0, 0, '100', 0),
(13, 0, 0, 0, '100', 0);

-- --------------------------------------------------------

--
-- Table structure for table `armorpoints`
--

CREATE TABLE `armorpoints` (
  `id` int(11) NOT NULL,
  `fractionid` int(11) NOT NULL,
  `dimension` text NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `armorpoints`
--

INSERT INTO `armorpoints` (`id`, `fractionid`, `dimension`, `position`) VALUES
(1, 9, '0', '{\"x\":119.736954,\"y\":-727.512756,\"z\":241.151932}'),
(2, 7, '0', '{\"x\":592.423,\"y\":-15.0427113,\"z\":81.74032}'),
(3, 14, '0', '{\"x\":-2358.682,\"y\":3253.846,\"z\":31.8107681}'),
(4, 6, '0', '{\"x\":-568.7297,\"y\":-196.496323,\"z\":46.38986}');

-- --------------------------------------------------------

--
-- Table structure for table `arrestlog`
--

CREATE TABLE `arrestlog` (
  `time` datetime NOT NULL,
  `player` text NOT NULL,
  `target` text NOT NULL,
  `reason` text NOT NULL,
  `stars` text NOT NULL,
  `pnick` text NOT NULL,
  `tnick` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `arrests`
--

CREATE TABLE `arrests` (
  `id` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `detaineduuid` int(11) NOT NULL,
  `arrestdate` datetime NOT NULL,
  `releasedate` datetime NOT NULL,
  `strippedlicenses` text DEFAULT NULL,
  `canbeissue` tinyint(1) NOT NULL,
  `bailamount` int(11) NOT NULL DEFAULT 0,
  `bailplayeruuid` int(11) NOT NULL DEFAULT -1,
  `reason` text DEFAULT NULL,
  `wantedlevel` int(11) NOT NULL DEFAULT 0,
  `phone` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bankpoints`
--

CREATE TABLE `bankpoints` (
  `id` int(11) NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bankpoints`
--

INSERT INTO `bankpoints` (`id`, `dimension`, `position`) VALUES
(1, 0, '{\"x\":149.943253,\"y\":-1040.49341,\"z\":29.3740711}'),
(2, 0, '{\"x\":-2962.55981,\"y\":483.0421,\"z\":15.7031078}'),
(3, 0, '{\"x\":-1212.7108,\"y\":-330.75098,\"z\":37.787025}'),
(4, 0, '{\"x\":1174.97632,\"y\":2706.90161,\"z\":38.0940933}'),
(5, 0, '{\"x\":314.15244,\"y\":-279.14938,\"z\":54.170776}');

-- --------------------------------------------------------

--
-- Table structure for table `banlog`
--

CREATE TABLE `banlog` (
  `time` datetime NOT NULL,
  `admin` text NOT NULL,
  `player` text NOT NULL,
  `until` datetime NOT NULL,
  `reason` text NOT NULL,
  `ishard` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE `banned` (
  `uuid` int(11) NOT NULL,
  `name` text NOT NULL,
  `account` text NOT NULL,
  `time` varchar(155) NOT NULL,
  `until` varchar(155) NOT NULL,
  `ishard` bigint(20) NOT NULL,
  `ip` varchar(155) NOT NULL,
  `socialclub` text NOT NULL,
  `hwid` varchar(155) NOT NULL,
  `reason` text NOT NULL,
  `byadmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bizsettings`
--

CREATE TABLE `bizsettings` (
  `biztype` int(11) NOT NULL,
  `settings` text DEFAULT NULL,
  `bliptype` int(11) NOT NULL DEFAULT 0,
  `blipcolor` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `minimumpercentproduct` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bizsettings`
--

INSERT INTO `bizsettings` (`biztype`, `settings`, `bliptype`, `blipcolor`, `name`, `minimumpercentproduct`) VALUES
(0, '[{\"Name\":\"Crowbar\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":250,\"StockCapacity\":50},{\"Name\":\"Flashlight\",\"OrderPrice\":200,\"MaxMinType\":\"$\",\"MaxPrice\":600,\"MinPrice\":300,\"StockCapacity\":50},{\"Name\":\"Hammer\",\"OrderPrice\":200,\"MaxMinType\":\"$\",\"MaxPrice\":500,\"MinPrice\":250,\"StockCapacity\":50},{\"Name\":\"Wrench\",\"OrderPrice\":200,\"MaxMinType\":\"$\",\"MaxPrice\":500,\"MinPrice\":400,\"StockCapacity\":50},{\"Name\":\"GasCan\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":1000,\"MinPrice\":500,\"StockCapacity\":50},{\"Name\":\"Crisps\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":100,\"MinPrice\":80,\"StockCapacity\":100},{\"Name\":\"Pizza\",\"OrderPrice\":20,\"MaxMinType\":\"$\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":100},{\"Name\":\"KeyRing\",\"OrderPrice\":1000,\"MaxMinType\":\"$\",\"MaxPrice\":10000,\"MinPrice\":5000,\"StockCapacity\":10},{\"Name\":\"Beer\",\"OrderPrice\":30,\"MaxMinType\":\"$\",\"MaxPrice\":150,\"MinPrice\":70,\"StockCapacity\":50},{\"Name\":\"Cigarettes\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":100,\"MinPrice\":50,\"StockCapacity\":100},{\"Name\":\"Radio\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":50000,\"MinPrice\":12000,\"StockCapacity\":5},{\"Name\":\"Tablet\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":30000,\"MinPrice\":20000,\"StockCapacity\":5},{\"Name\":\"Guitar\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":30000,\"MinPrice\":15000,\"StockCapacity\":5},{\"Name\":\"Microphone\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":25000,\"MinPrice\":15000,\"StockCapacity\":5},{\"Name\":\"Camera\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":40000,\"MinPrice\":12500,\"StockCapacity\":5},{\"Name\":\"Binoculars\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":50000,\"MinPrice\":30000,\"StockCapacity\":5},{\"Name\":\"Lighter\",\"OrderPrice\":1000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":10000,\"StockCapacity\":10},{\"Name\":\"Clipboard\",\"OrderPrice\":1000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":10000,\"StockCapacity\":10},{\"Name\":\"Bong\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":50000,\"MinPrice\":30000,\"StockCapacity\":5},{\"Name\":\"Bandage\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":130,\"MinPrice\":80,\"StockCapacity\":100},{\"Name\":\"LowRepairKit\",\"OrderPrice\":1000,\"MaxMinType\":\"$\",\"MaxPrice\":10000,\"MinPrice\":5000,\"StockCapacity\":10},{\"Name\":\"Screwdriver\",\"OrderPrice\":2000,\"MaxMinType\":\"$\",\"MaxPrice\":7000,\"MinPrice\":6000,\"StockCapacity\":10},{\"Name\":\"HightRod\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":11000,\"StockCapacity\":50},{\"Name\":\"LowRod\",\"OrderPrice\":1000,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":4000,\"StockCapacity\":50},{\"Name\":\"MiddleRod\",\"OrderPrice\":4000,\"MaxMinType\":\"$\",\"MaxPrice\":10000,\"MinPrice\":7000,\"StockCapacity\":50},{\"Name\":\"LowFishingCage\",\"OrderPrice\":1000,\"MaxMinType\":\"$\",\"MaxPrice\":3000,\"MinPrice\":2500,\"StockCapacity\":50},{\"Name\":\"MiddleFishingCage\",\"OrderPrice\":2000,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":4000,\"StockCapacity\":50},{\"Name\":\"HightFishingCage\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":9000,\"MinPrice\":8000,\"StockCapacity\":50},{\"Name\":\"FishingBait\",\"OrderPrice\":1,\"MaxMinType\":\"$\",\"MaxPrice\":5,\"MinPrice\":4,\"StockCapacity\":10000}]', 628, 21, '24/7', 10),
(1, '[{\"Name\":\"Standart\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":20,\"MinPrice\":15,\"StockCapacity\":20000},{\"Name\":\"StandartPlus\",\"OrderPrice\":15,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":20,\"StockCapacity\":20000},{\"Name\":\"Diesel\",\"OrderPrice\":20,\"MaxMinType\":\"$\",\"MaxPrice\":30,\"MinPrice\":25,\"StockCapacity\":20000},{\"Name\":\"Deluxe\",\"OrderPrice\":30,\"MaxMinType\":\"$\",\"MaxPrice\":40,\"MinPrice\":35,\"StockCapacity\":20000},{\"Name\":\"Electro\",\"OrderPrice\":45,\"MaxMinType\":\"$\",\"MaxPrice\":55,\"MinPrice\":50,\"StockCapacity\":20000}]', 415, 49, 'Заправка', 10),
(2, '[{\"Name\":\"amge63s\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"e63sf\",\"OrderPrice\":4700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bmw21m5\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"g65go\",\"OrderPrice\":5200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gls63go\",\"OrderPrice\":5300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goe63s\",\"OrderPrice\":5500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"amgs63w222\",\"OrderPrice\":5600000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobmwm8\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobmw745le\",\"OrderPrice\":6100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"audir8\",\"OrderPrice\":6300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"cayennego\",\"OrderPrice\":6500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goamggt\",\"OrderPrice\":6600000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gomartin\",\"OrderPrice\":6700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"f8tributo\",\"OrderPrice\":6900000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"go812\",\"OrderPrice\":7500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"go918\",\"OrderPrice\":7500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"portaycan\",\"OrderPrice\":7700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gotopgunurus\",\"OrderPrice\":8000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"18performante\",\"OrderPrice\":8100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rollswrait\",\"OrderPrice\":8200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rrphantomgo\",\"OrderPrice\":8600000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rrcullinan\",\"OrderPrice\":8800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"lambago\",\"OrderPrice\":9000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gosian\",\"OrderPrice\":9500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goveneno\",\"OrderPrice\":9700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gospeed\",\"OrderPrice\":10000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobolide\",\"OrderPrice\":17000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"chirongo\",\"OrderPrice\":19000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bugattilanoire\",\"OrderPrice\":20000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"amgvision\",\"OrderPrice\":22000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 530, 45, 'ПРЕМИУМ', 10),
(3, '[{\"Name\":\"e34go\",\"OrderPrice\":300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"e46go\",\"OrderPrice\":550000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gom3e36\",\"OrderPrice\":650000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bmwe92\",\"OrderPrice\":700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"fordgt500\",\"OrderPrice\":750000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"cls500w219\",\"OrderPrice\":850000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bmwm5e60\",\"OrderPrice\":850000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gogolf7s\",\"OrderPrice\":900000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"amgc63coupe\",\"OrderPrice\":1200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bmwx5me70\",\"OrderPrice\":1200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"camry70\",\"OrderPrice\":1200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goskyline34\",\"OrderPrice\":1300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goamarok\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobmwz4\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gosl63\",\"OrderPrice\":1800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"panamera17turbo\",\"OrderPrice\":1800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"tahoego\",\"OrderPrice\":1800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobentley1\",\"OrderPrice\":2500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobentleygt\",\"OrderPrice\":2500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"ffgo\",\"OrderPrice\":2500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gox6\",\"OrderPrice\":2600000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gtrr35\",\"OrderPrice\":2800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"golc200\",\"OrderPrice\":3000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"p992\",\"OrderPrice\":3500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rangerover\",\"OrderPrice\":3800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobacalar\",\"OrderPrice\":4200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 523, 45, 'КОМФОРТ', 10),
(4, '[{\"Name\":\"tornado3\",\"OrderPrice\":15000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"tornado4\",\"OrderPrice\":17000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"voodoo2\",\"OrderPrice\":19000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"regina\",\"OrderPrice\":20000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"ingot\",\"OrderPrice\":21000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"panto\",\"OrderPrice\":22500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"picador\",\"OrderPrice\":23000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"issi2\",\"OrderPrice\":25500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"minivan\",\"OrderPrice\":27000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"blista2\",\"OrderPrice\":28000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"dilettante\",\"OrderPrice\":29000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"glendale\",\"OrderPrice\":29500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"voodoo\",\"OrderPrice\":33000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"tampa\",\"OrderPrice\":31500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"radi\",\"OrderPrice\":32500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"stalion\",\"OrderPrice\":33000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"washington\",\"OrderPrice\":35000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"ruiner\",\"OrderPrice\":36500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"brioso\",\"OrderPrice\":37000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"weevil\",\"OrderPrice\":39000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rancherxl\",\"OrderPrice\":40500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"buffalo\",\"OrderPrice\":41000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"warrener\",\"OrderPrice\":42500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"seminole\",\"OrderPrice\":43000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bjxl\",\"OrderPrice\":44500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"phoenix\",\"OrderPrice\":46000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gauntlet\",\"OrderPrice\":47000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"baller\",\"OrderPrice\":47500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"patriot\",\"OrderPrice\":49000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bison3\",\"OrderPrice\":51500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"cheburek\",\"OrderPrice\":90500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"pigalle\",\"OrderPrice\":93500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"sentinel\",\"OrderPrice\":105000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"romero\",\"OrderPrice\":106000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"vigero\",\"OrderPrice\":108000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"yosemite\",\"OrderPrice\":109500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"speedo\",\"OrderPrice\":115000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"pony\",\"OrderPrice\":117500,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"sabregt2\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 225, 45, 'ЭКОНОМ', 10),
(5, '[{\"Name\":\"Faggio2\",\"OrderPrice\":2000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Sanchez2\",\"OrderPrice\":20000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Enduro\",\"OrderPrice\":15000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"PCJ\",\"OrderPrice\":40000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Hexer\",\"OrderPrice\":50000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Lectro\",\"OrderPrice\":50000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Nemesis\",\"OrderPrice\":30000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Hakuchou\",\"OrderPrice\":60000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Ruffian\",\"OrderPrice\":70000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Bmx\",\"OrderPrice\":50000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Scorcher\",\"OrderPrice\":45000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"BF400\",\"OrderPrice\":40000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"CarbonRS\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Bati\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Double\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Diablous\",\"OrderPrice\":80000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Cliffhanger\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Akuma\",\"OrderPrice\":125000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Thrust\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Nightblade\",\"OrderPrice\":125000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Vindicator\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Ratbike\",\"OrderPrice\":30000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Blazer\",\"OrderPrice\":30000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Gargoyle\",\"OrderPrice\":70000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Sanctus\",\"OrderPrice\":1000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Avarus\",\"OrderPrice\":300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Bagger\",\"OrderPrice\":125000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Bati2\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Chimera\",\"OrderPrice\":1000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Daemon\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Daemon2\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Defiler\",\"OrderPrice\":500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Diablous2\",\"OrderPrice\":300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Esskey\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Faggio\",\"OrderPrice\":2000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Fcr\",\"OrderPrice\":70000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Fcr2\",\"OrderPrice\":70000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Hakuchou2\",\"OrderPrice\":300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Innovation\",\"OrderPrice\":500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Manchez\",\"OrderPrice\":50000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Shotaro\",\"OrderPrice\":4000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Sovereign\",\"OrderPrice\":300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Vader\",\"OrderPrice\":40000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Vortex\",\"OrderPrice\":500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Wolfsbane\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Zombiea\",\"OrderPrice\":70000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Zombieb\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Stryder\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Blazer2\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Blazer3\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Blazer4\",\"OrderPrice\":150000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Cruiser\",\"OrderPrice\":40000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Fixter\",\"OrderPrice\":40000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Tribike\",\"OrderPrice\":50000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Tribike2\",\"OrderPrice\":50000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"Tribike3\",\"OrderPrice\":50000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"veto\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"verus\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"h2r\",\"OrderPrice\":4000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 661, 42, 'Мотосалон', 10),
(6, '[{\"Name\":\"Pistol50\",\"OrderPrice\":2500,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":3000,\"StockCapacity\":20},{\"Name\":\"HeavyPistol\",\"OrderPrice\":1500,\"MaxMinType\":\"$\",\"MaxPrice\":3000,\"MinPrice\":1600,\"StockCapacity\":20},{\"Name\":\"MicroSMG\",\"OrderPrice\":2000,\"MaxMinType\":\"$\",\"MaxPrice\":3500,\"MinPrice\":2000,\"StockCapacity\":20},{\"Name\":\"MachinePistol\",\"OrderPrice\":1500,\"MaxMinType\":\"$\",\"MaxPrice\":3000,\"MinPrice\":1800,\"StockCapacity\":20},{\"Name\":\"SMG\",\"OrderPrice\":2500,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":2500,\"StockCapacity\":20},{\"Name\":\"AssaultSMG\",\"OrderPrice\":2500,\"MaxMinType\":\"$\",\"MaxPrice\":7000,\"MinPrice\":2500,\"StockCapacity\":20},{\"Name\":\"CombatPDW\",\"OrderPrice\":2500,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":2500,\"StockCapacity\":20},{\"Name\":\"CombatMG\",\"OrderPrice\":55000,\"MaxMinType\":\"$\",\"MaxPrice\":95000,\"MinPrice\":55000,\"StockCapacity\":10},{\"Name\":\"Gusenberg\",\"OrderPrice\":30000,\"MaxMinType\":\"$\",\"MaxPrice\":50000,\"MinPrice\":30000,\"StockCapacity\":20},{\"Name\":\"MiniSMG\",\"OrderPrice\":2300,\"MaxMinType\":\"$\",\"MaxPrice\":4600,\"MinPrice\":2300,\"StockCapacity\":20},{\"Name\":\"AssaultRifle\",\"OrderPrice\":4000,\"MaxMinType\":\"$\",\"MaxPrice\":6500,\"MinPrice\":4000,\"StockCapacity\":30},{\"Name\":\"CarbineRifle\",\"OrderPrice\":6000,\"MaxMinType\":\"$\",\"MaxPrice\":8500,\"MinPrice\":6000,\"StockCapacity\":30},{\"Name\":\"AdvancedRifle\",\"OrderPrice\":6000,\"MaxMinType\":\"$\",\"MaxPrice\":8500,\"MinPrice\":6000,\"StockCapacity\":30},{\"Name\":\"SpecialCarbine\",\"OrderPrice\":7000,\"MaxMinType\":\"$\",\"MaxPrice\":13000,\"MinPrice\":7000,\"StockCapacity\":30},{\"Name\":\"CompactRifle\",\"OrderPrice\":3500,\"MaxMinType\":\"$\",\"MaxPrice\":4500,\"MinPrice\":3500,\"StockCapacity\":30},{\"Name\":\"PumpShotgun\",\"OrderPrice\":7000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":7000,\"StockCapacity\":20},{\"Name\":\"AssaultShotgun\",\"OrderPrice\":7000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":7000,\"StockCapacity\":20},{\"Name\":\"HeavyShotgun\",\"OrderPrice\":15000,\"MaxMinType\":\"$\",\"MaxPrice\":30000,\"MinPrice\":15000,\"StockCapacity\":5},{\"Name\":\"DoubleBarrelShotgun\",\"OrderPrice\":10000,\"MaxMinType\":\"$\",\"MaxPrice\":20000,\"MinPrice\":10000,\"StockCapacity\":10},{\"Name\":\"PistolAmmo\",\"OrderPrice\":2,\"MaxMinType\":\"$\",\"MaxPrice\":7,\"MinPrice\":6,\"StockCapacity\":25000},{\"Name\":\"SMGAmmo\",\"OrderPrice\":5,\"MaxMinType\":\"$\",\"MaxPrice\":10,\"MinPrice\":5,\"StockCapacity\":50000},{\"Name\":\"RiflesAmmo\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":20,\"MinPrice\":15,\"StockCapacity\":100000},{\"Name\":\"SniperAmmo\",\"OrderPrice\":30,\"MaxMinType\":\"$\",\"MaxPrice\":50,\"MinPrice\":35,\"StockCapacity\":5000},{\"Name\":\"ShotgunsAmmo\",\"OrderPrice\":15,\"MaxMinType\":\"$\",\"MaxPrice\":35,\"MinPrice\":20,\"StockCapacity\":5000},{\"Name\":\"BullpupRifle\",\"OrderPrice\":7000,\"MaxMinType\":\"$\",\"MaxPrice\":13000,\"MinPrice\":7000,\"StockCapacity\":20},{\"Name\":\"Revolver\",\"OrderPrice\":8000,\"MaxMinType\":\"$\",\"MaxPrice\":12500,\"MinPrice\":10000,\"StockCapacity\":50},{\"Name\":\"BodyArmor\",\"OrderPrice\":9000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":12000,\"StockCapacity\":100},{\"Name\":\"SniperRifle\",\"OrderPrice\":250000,\"MaxMinType\":\"$\",\"MaxPrice\":350000,\"MinPrice\":300000,\"StockCapacity\":10}]', 567, 62, 'Оружейный магазин', 10),
(7, '[{\"Name\":\"Clothes\",\"OrderPrice\":50,\"MaxMinType\":\"%\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":100000}]', 73, 4, 'Магазин одежды', 10),
(8, '[{\"Name\":\"Burger\",\"OrderPrice\":50,\"MaxMinType\":\"$\",\"MaxPrice\":300,\"MinPrice\":200,\"StockCapacity\":500},{\"Name\":\"HotDog\",\"OrderPrice\":50,\"MaxMinType\":\"$\",\"MaxPrice\":250,\"MinPrice\":130,\"StockCapacity\":500},{\"Name\":\"Sandwich\",\"OrderPrice\":30,\"MaxMinType\":\"$\",\"MaxPrice\":150,\"MinPrice\":60,\"StockCapacity\":500},{\"Name\":\"eCola\",\"OrderPrice\":50,\"MaxMinType\":\"$\",\"MaxPrice\":200,\"MinPrice\":50,\"StockCapacity\":500},{\"Name\":\"Sprunk\",\"OrderPrice\":50,\"MaxMinType\":\"$\",\"MaxPrice\":180,\"MinPrice\":50,\"StockCapacity\":500}]', 683, 60, 'Бургерная', 10),
(9, '[{\"Name\":\"Tattoos\",\"OrderPrice\":50,\"MaxMinType\":\"%\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":10000}]', 75, 8, 'Тату-салон', 10),
(10, '[{\"Name\":\"Hairs\",\"OrderPrice\":85,\"MaxMinType\":\"%\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":10000}]', 71, 64, 'Барбершоп', 10),
(11, '[{\"Name\":\"Mask\",\"OrderPrice\":100,\"MaxMinType\":\"%\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":100000}]', 102, 59, 'Магазин масок', 10),
(12, '[{\"Name\":\"Parts\",\"OrderPrice\":50,\"MaxMinType\":\"%\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":150000}]', 446, 40, 'Тюнинг Ателье', 10),
(13, '[{\"Name\":\"Detergent\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":500,\"StockCapacity\":1000}]', 100, 53, 'Автомойка', 10),
(14, '[{\"Name\":\"Pedigree\",\"OrderPrice\":150000,\"MaxMinType\":\"$\",\"MaxPrice\":250000,\"MinPrice\":200000,\"StockCapacity\":20}]', 273, 5, 'Магазин питомцев', 10),
(15, '[]', 69, 45, 'Super CarRoom', 10),
(16, '[{\"Name\":\"Auto parts\",\"OrderPrice\":500,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":1000,\"StockCapacity\":3500},{\"Name\":\"Brakes Cheap\",\"OrderPrice\":2000,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":4000,\"StockCapacity\":25},{\"Name\":\"Engine Oil Cheap\",\"OrderPrice\":2000,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":4000,\"StockCapacity\":25},{\"Name\":\"Transmission Oil Cheap\",\"OrderPrice\":2000,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":4000,\"StockCapacity\":25},{\"Name\":\"Brakes Medium\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":10000,\"StockCapacity\":25},{\"Name\":\"Engine Oil Medium\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":10000,\"StockCapacity\":25},{\"Name\":\"Transmission Oil Medium\",\"OrderPrice\":5000,\"MaxMinType\":\"$\",\"MaxPrice\":15000,\"MinPrice\":10000,\"StockCapacity\":25},{\"Name\":\"Brakes Expensive\",\"OrderPrice\":10000,\"MaxMinType\":\"$\",\"MaxPrice\":25000,\"MinPrice\":15000,\"StockCapacity\":25},{\"Name\":\"Engine Oil Expensive\",\"OrderPrice\":10000,\"MaxMinType\":\"$\",\"MaxPrice\":25000,\"MinPrice\":15000,\"StockCapacity\":25},{\"Name\":\"Transmission Oil Expensive\",\"OrderPrice\":10000,\"MaxMinType\":\"$\",\"MaxPrice\":25000,\"MinPrice\":15000,\"StockCapacity\":25}]', 544, 45, 'Автомастерская', 10),
(17, '[]', 315, 81, 'Аренда автомобилей', 10),
(18, '[]', 100, 45, 'Обмен автомобилей', 10),
(19, '[]', 680, 59, 'Казино', 10),
(20, '[{\"Name\":\"ZTYPE\",\"OrderPrice\":9000000,\"MaxMinType\":\"$\",\"MaxPrice\":9500000,\"MinPrice\":9300000,\"StockCapacity\":1},{\"Name\":\"STAFFORD\",\"OrderPrice\":8000000,\"MaxMinType\":\"$\",\"MaxPrice\":8500000,\"MinPrice\":8300000,\"StockCapacity\":1},{\"Name\":\"FELTZER3\",\"OrderPrice\":11000000,\"MaxMinType\":\"$\",\"MaxPrice\":11500000,\"MinPrice\":11200000,\"StockCapacity\":1},{\"Name\":\"HERMES\",\"OrderPrice\":5000000,\"MaxMinType\":\"$\",\"MaxPrice\":5500000,\"MinPrice\":5200000,\"StockCapacity\":1},{\"Name\":\"MAMBA\",\"OrderPrice\":11000000,\"MaxMinType\":\"$\",\"MaxPrice\":11500000,\"MinPrice\":11200000,\"StockCapacity\":1},{\"Name\":\"NIGHTSHADE\",\"OrderPrice\":3000000,\"MaxMinType\":\"$\",\"MaxPrice\":3300000,\"MinPrice\":3100000,\"StockCapacity\":1},{\"Name\":\"INFERNUS2\",\"OrderPrice\":7000000,\"MaxMinType\":\"$\",\"MaxPrice\":7500000,\"MinPrice\":7200000,\"StockCapacity\":1},{\"Name\":\"TORERO\",\"OrderPrice\":6000000,\"MaxMinType\":\"$\",\"MaxPrice\":6500000,\"MinPrice\":6200000,\"StockCapacity\":1},{\"Name\":\"MONROE\",\"OrderPrice\":6200000,\"MaxMinType\":\"$\",\"MaxPrice\":6700000,\"MinPrice\":6400000,\"StockCapacity\":1},{\"Name\":\"SWINGER\",\"OrderPrice\":6300000,\"MaxMinType\":\"$\",\"MaxPrice\":6800000,\"MinPrice\":6500000,\"StockCapacity\":1},{\"Name\":\"STINGERGT\",\"OrderPrice\":5500000,\"MaxMinType\":\"$\",\"MaxPrice\":5700000,\"MinPrice\":5600000,\"StockCapacity\":1},{\"Name\":\"STINGER\",\"OrderPrice\":5000000,\"MaxMinType\":\"$\",\"MaxPrice\":5200000,\"MinPrice\":5100000,\"StockCapacity\":1},{\"Name\":\"TURISMO2\",\"OrderPrice\":6000000,\"MaxMinType\":\"$\",\"MaxPrice\":6300000,\"MinPrice\":6150000,\"StockCapacity\":1},{\"Name\":\"VISERIS\",\"OrderPrice\":6200000,\"MaxMinType\":\"$\",\"MaxPrice\":6400000,\"MinPrice\":6100000,\"StockCapacity\":1},{\"Name\":\"RAPIDGT3\",\"OrderPrice\":4500000,\"MaxMinType\":\"$\",\"MaxPrice\":4700000,\"MinPrice\":4600000,\"StockCapacity\":1},{\"Name\":\"TROPOS\",\"OrderPrice\":5900000,\"MaxMinType\":\"$\",\"MaxPrice\":6200000,\"MinPrice\":6000000,\"StockCapacity\":1},{\"Name\":\"JB7002\",\"OrderPrice\":4500000,\"MaxMinType\":\"$\",\"MaxPrice\":4700000,\"MinPrice\":4600000,\"StockCapacity\":1},{\"Name\":\"STROMBERG\",\"OrderPrice\":5700000,\"MaxMinType\":\"$\",\"MaxPrice\":6100000,\"MinPrice\":5900000,\"StockCapacity\":1},{\"Name\":\"COQUETTE3\",\"OrderPrice\":4800000,\"MaxMinType\":\"$\",\"MaxPrice\":5200000,\"MinPrice\":5000000,\"StockCapacity\":1},{\"Name\":\"Z190\",\"OrderPrice\":4500000,\"MaxMinType\":\"$\",\"MaxPrice\":4700000,\"MinPrice\":4600000,\"StockCapacity\":1},{\"Name\":\"HOTKNIFE\",\"OrderPrice\":7500000,\"MaxMinType\":\"$\",\"MaxPrice\":8000000,\"MinPrice\":7800000,\"StockCapacity\":10},{\"Name\":\"DUKES\",\"OrderPrice\":4000000,\"MaxMinType\":\"$\",\"MaxPrice\":4200000,\"MinPrice\":4100000,\"StockCapacity\":10},{\"Name\":\"ellie\",\"OrderPrice\":4000000,\"MaxMinType\":\"$\",\"MaxPrice\":4200000,\"MinPrice\":4100000,\"StockCapacity\":10},{\"Name\":\"deviant\",\"OrderPrice\":4500000,\"MaxMinType\":\"$\",\"MaxPrice\":4800000,\"MinPrice\":4600000,\"StockCapacity\":10},{\"Name\":\"fagaloa\",\"OrderPrice\":1500000,\"MaxMinType\":\"$\",\"MaxPrice\":1600000,\"MinPrice\":1550000,\"StockCapacity\":10},{\"Name\":\"dynasty\",\"OrderPrice\":1500000,\"MaxMinType\":\"$\",\"MaxPrice\":1600000,\"MinPrice\":1550000,\"StockCapacity\":10},{\"Name\":\"michelli\",\"OrderPrice\":400000,\"MaxMinType\":\"$\",\"MaxPrice\":600000,\"MinPrice\":400000,\"StockCapacity\":10},{\"Name\":\"nebula\",\"OrderPrice\":800000,\"MaxMinType\":\"$\",\"MaxPrice\":850000,\"MinPrice\":400000,\"StockCapacity\":10},{\"Name\":\"pigalle\",\"OrderPrice\":600000,\"MaxMinType\":\"$\",\"MaxPrice\":650000,\"MinPrice\":620000,\"StockCapacity\":10}]', 147, 45, 'Автосалон Ретро', 10),
(21, '[]', 669, 42, 'Автосалон JDM', 10),
(22, '[]', 595, 45, 'New Autoroom', 10),
(23, '[]', 595, 45, 'New Autoroom', 10),
(24, '[{\"Name\":\"schafter5\",\"OrderPrice\":4000000,\"MaxMinType\":\"$\",\"MaxPrice\":4300000,\"MinPrice\":4100000,\"StockCapacity\":10},{\"Name\":\"schafter6\",\"OrderPrice\":5000000,\"MaxMinType\":\"$\",\"MaxPrice\":5300000,\"MinPrice\":5100000,\"StockCapacity\":10},{\"Name\":\"cognoscenti2\",\"OrderPrice\":4000000,\"MaxMinType\":\"$\",\"MaxPrice\":43000000,\"MinPrice\":4100000,\"StockCapacity\":10},{\"Name\":\"cog552\",\"OrderPrice\":3500000,\"MaxMinType\":\"$\",\"MaxPrice\":3800000,\"MinPrice\":3600000,\"StockCapacity\":10},{\"Name\":\"xls2\",\"OrderPrice\":3100000,\"MaxMinType\":\"$\",\"MaxPrice\":3400000,\"MinPrice\":3200000,\"StockCapacity\":10},{\"Name\":\"baller6\",\"OrderPrice\":4000000,\"MaxMinType\":\"$\",\"MaxPrice\":4300000,\"MinPrice\":4100000,\"StockCapacity\":10},{\"Name\":\"baller5\",\"OrderPrice\":3500000,\"MaxMinType\":\"$\",\"MaxPrice\":3800000,\"MinPrice\":3600000,\"StockCapacity\":10},{\"Name\":\"dukes2\",\"OrderPrice\":3500000,\"MaxMinType\":\"$\",\"MaxPrice\":3800000,\"MinPrice\":3600000,\"StockCapacity\":10},{\"Name\":\"kuruma2\",\"OrderPrice\":2500000,\"MaxMinType\":\"$\",\"MaxPrice\":2800000,\"MinPrice\":2600000,\"StockCapacity\":10},{\"Name\":\"marshall\",\"OrderPrice\":17000000,\"MaxMinType\":\"$\",\"MaxPrice\":18000000,\"MinPrice\":17500000,\"StockCapacity\":10},{\"Name\":\"monster\",\"OrderPrice\":20000000,\"MaxMinType\":\"$\",\"MaxPrice\":21000000,\"MinPrice\":20500000,\"StockCapacity\":10},{\"Name\":\"monster3\",\"OrderPrice\":23000000,\"MaxMinType\":\"$\",\"MaxPrice\":24000000,\"MinPrice\":23500000,\"StockCapacity\":10},{\"Name\":\"trophytruck\",\"OrderPrice\":2500000,\"MaxMinType\":\"$\",\"MaxPrice\":2800000,\"MinPrice\":2600000,\"StockCapacity\":10},{\"Name\":\"trophytruck2\",\"OrderPrice\":2800000,\"MaxMinType\":\"$\",\"MaxPrice\":3100000,\"MinPrice\":2900000,\"StockCapacity\":10},{\"Name\":\"bfinjection\",\"OrderPrice\":150000,\"MaxMinType\":\"$\",\"MaxPrice\":200000,\"MinPrice\":160000,\"StockCapacity\":10}]', 595, 45, 'New Autoroom', 10),
(25, '[{\"Name\":\"lambago\",\"OrderPrice\":9000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gosian\",\"OrderPrice\":10000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"golp670\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"18performante\",\"OrderPrice\":8100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gosianr\",\"OrderPrice\":10000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gotopgunurus\",\"OrderPrice\":7000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 595, 45, 'Автосалон Lamborghini', 10),
(26, '[]', 595, 45, 'Авторынок Bugatti', 10),
(27, '[{\"Name\":\"Parts\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":150,\"MinPrice\":70,\"StockCapacity\":1000000}]', 628, 45, 'Магазин мебели', 10),
(28, '[{\"Name\":\"Cuffs\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":1000,\"MinPrice\":500,\"StockCapacity\":100},{\"Name\":\"Hatchet\",\"OrderPrice\":20000,\"MaxMinType\":\"$\",\"MaxPrice\":50000,\"MinPrice\":30000,\"StockCapacity\":10},{\"Name\":\"ArmyLockpick\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":2000,\"MinPrice\":1000,\"StockCapacity\":30},{\"Name\":\"Pocket\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":1000,\"MinPrice\":500,\"StockCapacity\":50},{\"Name\":\"Stetoskop\",\"OrderPrice\":100000,\"MaxMinType\":\"$\",\"MaxPrice\":150000,\"MinPrice\":90000,\"StockCapacity\":20}]', 566, 45, 'Черный рынок', 10),
(29, '[{\"Name\":\"amgc63coupe\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":3},{\"Name\":\"amgs63w222\",\"OrderPrice\":3000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"amgvision\",\"OrderPrice\":7000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"g65go\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"goxclass\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gogt63\",\"OrderPrice\":4000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"amge63s\",\"OrderPrice\":3500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gobrabus500\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"cls500w219\",\"OrderPrice\":2000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gogls20\",\"OrderPrice\":4300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gls63go\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"e63sf\",\"OrderPrice\":4000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"cls17\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 530, 45, 'Автосалон Mercedes', 10),
(30, '[{\"Name\":\"bmwm5e60\",\"OrderPrice\":2000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"bmwx5me70\",\"OrderPrice\":2000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"bmwm5\",\"OrderPrice\":500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gom8gte\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gobmwm8\",\"OrderPrice\":4000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"godarki8\",\"OrderPrice\":7000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"godarki82\",\"OrderPrice\":7000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gobmwz4\",\"OrderPrice\":2700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gox6\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10}]', 530, 45, 'Автосалон BMW', 10),
(31, '[{\"Name\":\"rrphantomgo\",\"OrderPrice\":8500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rrcullinan\",\"OrderPrice\":8800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 530, 45, 'Автосалон Rolls-Royce', 10),
(32, '[{\"Name\":\"gobacalar\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobentley1\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobentleygt\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 530, 45, 'Автосалон Bentley', 10),
(33, '[{\"Name\":\"f12berlinetta\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"ffgo\",\"OrderPrice\":4000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"italirsx\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"go430\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"f8tributo\",\"OrderPrice\":7500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 530, 45, 'Автосалон Ferrari', 10),
(34, '[{\"Name\":\"audir8\",\"OrderPrice\":2000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"audirs6\",\"OrderPrice\":1000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"fordgt500\",\"OrderPrice\":1000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gtrr35\",\"OrderPrice\":2500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"panamera17turbo\",\"OrderPrice\":3000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gojeep\",\"OrderPrice\":3000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gors7\",\"OrderPrice\":3000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gospeed\",\"OrderPrice\":4000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gomustang\",\"OrderPrice\":2000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"goamarok\",\"OrderPrice\":1000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"cx75\",\"OrderPrice\":3000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"go918\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"p992\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goesc\",\"OrderPrice\":2500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"mark100\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gojesko\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rangerover\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"portaycan\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"cayennego\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"maclarengo\",\"OrderPrice\":6500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"golc200\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"lc300\",\"OrderPrice\":6500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 530, 45, 'Автосалон Diamond', 10),
(35, '[{\"Name\":\"zentorno\",\"OrderPrice\":500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"jugular\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"issi7\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":250,\"MinPrice\":100,\"StockCapacity\":1},{\"Name\":\"mamba\",\"OrderPrice\":250000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"le7b\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":450,\"MinPrice\":300,\"StockCapacity\":1},{\"Name\":\"tezeract\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":1000,\"MinPrice\":300,\"StockCapacity\":1},{\"Name\":\"sultan\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":1},{\"Name\":\"sultan3\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":100,\"StockCapacity\":1},{\"Name\":\"s80\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":600,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"prototipo\",\"OrderPrice\":700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"sultanrs\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":300,\"MinPrice\":100,\"StockCapacity\":1}]', 530, 45, 'Автосалон Luxe', 10);
INSERT INTO `bizsettings` (`biztype`, `settings`, `bliptype`, `blipcolor`, `name`, `minimumpercentproduct`) VALUES
(36, '[{\"Name\":\"go812\",\"OrderPrice\":7500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"go650\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bmw21m5\",\"OrderPrice\":3500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goe63s\",\"OrderPrice\":3500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobrabus500\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"g63amg6x6\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gogls20\",\"OrderPrice\":4300000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"w447\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobmw745le\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobolide\",\"OrderPrice\":17000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goesc\",\"OrderPrice\":3500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gomartin\",\"OrderPrice\":2500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"zondab1\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gobmwm1\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gomustang\",\"OrderPrice\":2000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gosl63\",\"OrderPrice\":2250000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gojesko\",\"OrderPrice\":3000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"Insurgent2\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gt500\",\"OrderPrice\":400000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gozl1\",\"OrderPrice\":1000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"dubsta2\",\"OrderPrice\":400000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"jester2\",\"OrderPrice\":1200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"chirongo\",\"OrderPrice\":19000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gogolf7s\",\"OrderPrice\":200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"TowTruck\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"golc200\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"h2r\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"bmwg05\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"camry70\",\"OrderPrice\":1200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"cayennego\",\"OrderPrice\":6000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"cls17\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"f8tributo\",\"OrderPrice\":7500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"gls63go\",\"OrderPrice\":4500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"m5f90\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"maclarengo\",\"OrderPrice\":5000000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"mark100\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"vaz2170\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rump03\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"19raptor\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"toysupmk4\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"rollswrait\",\"OrderPrice\":8200000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"goe63spolice\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"openwheel1\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1},{\"Name\":\"msprinter\",\"OrderPrice\":100000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":1}]', 530, 45, 'Автосалон Jeep', 10),
(37, '[{\"Name\":\"mb140go\",\"OrderPrice\":700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"bmwe92\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"e34go\",\"OrderPrice\":600100,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"tahoego\",\"OrderPrice\":800000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gom3e36\",\"OrderPrice\":650000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gobmwm1\",\"OrderPrice\":1500000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"goren\",\"OrderPrice\":700000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10},{\"Name\":\"gosl63\",\"OrderPrice\":2250000,\"MaxMinType\":\"%\",\"MaxPrice\":140,\"MinPrice\":70,\"StockCapacity\":10}]', 530, 45, 'Автосалон Casual', 10),
(38, '[]', 530, 45, 'Garage Autoroom', 10),
(39, '[{\"Name\":\"CabbageSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"PumpkinSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"TomatoSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"PotatoesSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"OrangeSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"CarrotSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"BananaSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"AppleSeed\",\"OrderPrice\":10,\"MaxMinType\":\"$\",\"MaxPrice\":25,\"MinPrice\":10,\"StockCapacity\":1000},{\"Name\":\"FertilizerStandVegetable\",\"OrderPrice\":50,\"MaxMinType\":\"$\",\"MaxPrice\":100,\"MinPrice\":50,\"StockCapacity\":1000},{\"Name\":\"FertilizerStandFruit\",\"OrderPrice\":50,\"MaxMinType\":\"$\",\"MaxPrice\":100,\"MinPrice\":50,\"StockCapacity\":1000},{\"Name\":\"FertilizerBigVegetable\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":1000},{\"Name\":\"FertilizerBigFruit\",\"OrderPrice\":100,\"MaxMinType\":\"$\",\"MaxPrice\":200,\"MinPrice\":100,\"StockCapacity\":1000},{\"Name\":\"WateringBig\",\"OrderPrice\":10000,\"MaxMinType\":\"$\",\"MaxPrice\":12000,\"MinPrice\":10000,\"StockCapacity\":100},{\"Name\":\"WateringMedium\",\"OrderPrice\":6000,\"MaxMinType\":\"$\",\"MaxPrice\":7000,\"MinPrice\":6000,\"StockCapacity\":100},{\"Name\":\"WateringLow\",\"OrderPrice\":3000,\"MaxMinType\":\"$\",\"MaxPrice\":4000,\"MinPrice\":3000,\"StockCapacity\":100},{\"Name\":\"FoodBox\",\"OrderPrice\":10000,\"MaxMinType\":\"$\",\"MaxPrice\":12000,\"MinPrice\":10000,\"StockCapacity\":100}]', 540, 52, 'Ферма', 10),
(40, '[{\"Name\":\"Auto parts\",\"OrderPrice\":500,\"MaxMinType\":\"$\",\"MaxPrice\":5000,\"MinPrice\":1000,\"StockCapacity\":3500}]', 740, 43, 'Тюнинг Fine', 10);

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL,
  `serial` text NOT NULL,
  `socialclub` text NOT NULL,
  `admin` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bonuscodes`
--

CREATE TABLE `bonuscodes` (
  `id` int(11) NOT NULL,
  `bonusname` varchar(45) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `coins` int(11) NOT NULL DEFAULT 0,
  `prime` int(11) NOT NULL DEFAULT 0,
  `dateoff` datetime NOT NULL,
  `countuse` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `boxlog`
--

CREATE TABLE `boxlog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `boxId` int(11) NOT NULL DEFAULT -1,
  `uuid` int(11) NOT NULL DEFAULT -1,
  `item` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `owneruuid` int(11) NOT NULL DEFAULT -5,
  `owner` text DEFAULT NULL,
  `sellprice` text NOT NULL,
  `type` text NOT NULL,
  `products` text NOT NULL,
  `enterpoint` text NOT NULL,
  `unloadpoint` text NOT NULL,
  `additionalpos` text DEFAULT NULL,
  `money` text DEFAULT NULL,
  `mafia` text NOT NULL,
  `orders` text NOT NULL,
  `name` text NOT NULL,
  `peds` text NOT NULL,
  `colshapeRange` int(11) NOT NULL DEFAULT 1,
  `blipPosition` text DEFAULT NULL,
  `dimension` int(10) UNSIGNED DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT -1,
  `takeoverdate` datetime DEFAULT NULL,
  `daywithoutproducts` datetime DEFAULT NULL,
  `banknew` int(11) NOT NULL DEFAULT -1,
  `bankacc` int(11) NOT NULL DEFAULT -1,
  `pledged` tinyint(1) NOT NULL DEFAULT 0,
  `camposition` text DEFAULT NULL,
  `profitData` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `owneruuid`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `additionalpos`, `money`, `mafia`, `orders`, `name`, `peds`, `colshapeRange`, `blipPosition`, `dimension`, `family`, `takeoverdate`, `daywithoutproducts`, `banknew`, `bankacc`, `pledged`, `camposition`, `profitData`) VALUES
(1, -1, NULL, '3500000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":1208.3032,\"y\":-1402.8285,\"z\":34.1042}', '{\"x\":1200.0114,\"y\":-1384.1084,\"z\":35.22697}', '[{\"x\":1208.2181,\"y\":-1402.9093,\"z\":43.673397}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":1206.2122,\"y\":-1399.0027,\"z\":35.385513},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-136.01976},\"Model\":1240094341,\"Name\":\"Job Preston\",\"Dimension\":0}]', 7, 'null', 0, -1, '2023-01-15 20:15:41', '2023-01-18 13:00:00', 712, 713, 0, '{\"x\":1211.8503,\"y\":-1427.2173,\"z\":40.761646}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(2, -1, NULL, '4500000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":264.47885,\"y\":-1261.2286,\"z\":28.16985}', '{\"x\":292.59326,\"y\":-1244.7496,\"z\":29.281902}', '[{\"x\":266.41455,\"y\":-1263.0106,\"z\":36.139683}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":265.17584,\"y\":-1258.9423,\"z\":29.160378},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":89.85164},\"Model\":1240094341,\"Name\":\"Chester Holmes\",\"Dimension\":0}]', 15, 'null', 0, -1, '2022-10-14 13:00:16', '2023-01-18 23:31:43', 714, 715, 0, '{\"x\":238.98247,\"y\":-1311.2489,\"z\":43.866936}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(3, -1, NULL, '4500000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":174.77985,\"y\":-1561.8289,\"z\":28.141922}', '{\"x\":180.20729,\"y\":-1547.4893,\"z\":29.159243}', '[{\"x\":173.95256,\"y\":-1560.4359,\"z\":35.70813}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":173.84207,\"y\":-1557.7294,\"z\":29.320108},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-140.11641},\"Model\":1240094341,\"Name\":\"Felix Perkins\",\"Dimension\":0}]', 9, 'null', 0, -1, '2022-10-14 13:08:23', '2023-01-19 20:00:00', 716, 717, 0, '{\"x\":180.4398,\"y\":-1600.2347,\"z\":40.50804}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(4, -1, NULL, '3000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":-319.30658,\"y\":-1471.9099,\"z\":29.42871}', '{\"x\":-336.719,\"y\":-1494.6143,\"z\":30.613194}', '[{\"x\":-317.4429,\"y\":-1469.7844,\"z\":37.206226}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-319.6833,\"y\":-1471.5482,\"z\":30.548548},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":119.73139},\"Model\":1240094341,\"Name\":\"Scott Porter\",\"Dimension\":0}]', 13, 'null', 0, -1, '2022-10-14 13:14:26', '2023-01-11 13:26:35', 718, 719, 0, '{\"x\":-367.26947,\"y\":-1445.5488,\"z\":47.501457}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(5, -1, NULL, '3000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":-1436.7899,\"y\":-276.57095,\"z\":45.08771}', '{\"x\":-1411.7677,\"y\":-278.68805,\"z\":46.35768}', '[{\"x\":-1437.9344,\"y\":-279.65146,\"z\":52.743664}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-1436.4047,\"y\":-270.96634,\"z\":46.39411},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-179.80519},\"Model\":1240094341,\"Name\":\"Gerard Greer\",\"Dimension\":0}]', 11, 'null', 0, -1, '2022-10-14 13:22:37', '2023-01-12 23:52:54', 720, 721, 0, '{\"x\":-1432.9598,\"y\":-334.07687,\"z\":65.383736}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(6, -1, NULL, '4500000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":-2096.8887,\"y\":-317.91953,\"z\":12.04721}', '{\"x\":-2067.0212,\"y\":-305.54776,\"z\":13.145445}', '[{\"x\":-2096.92,\"y\":-318.02786,\"z\":17.879547}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-2096.256,\"y\":-318.89276,\"z\":13.168627},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":68.852745},\"Model\":1240094341,\"Name\":\"Garry Houston\",\"Dimension\":0}]', 14, 'null', 0, -1, '2022-10-14 13:44:57', '2022-10-14 13:44:57', 722, 723, 0, '{\"x\":-2161.1238,\"y\":-351.45648,\"z\":28.815176}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(7, -1, NULL, '3000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":-2555.5764,\"y\":2334.7944,\"z\":31.961466}', '{\"x\":-2528.8132,\"y\":2346.2012,\"z\":33.05991}', '[{\"x\":-2555.5764,\"y\":2334.7944,\"z\":42.931274}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-2559.561,\"y\":2334.6292,\"z\":33.256653},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":65.701485},\"Model\":1240094341,\"Name\":\"Francis Barnett\",\"Dimension\":0}]', 12, 'null', 0, -1, '2022-10-14 13:52:42', '2023-01-01 00:00:01', 724, 725, 0, '{\"x\":-2451.6853,\"y\":2302.5845,\"z\":60.62505}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(8, -1, NULL, '1000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":264.5136,\"y\":2606.7087,\"z\":43.861492}', '{\"x\":244.51096,\"y\":2598.8071,\"z\":45.123306}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":265.74796,\"y\":2607.315,\"z\":44.98268},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":26.895058},\"Model\":1240094341,\"Name\":\"Jeffrey Short\",\"Dimension\":0}]', 4, 'null', 0, -1, '2022-10-14 13:58:49', '2023-01-10 23:49:25', 726, 727, 0, '{\"x\":243.91664,\"y\":2620.1116,\"z\":57.171978}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(9, -1, NULL, '2500000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":2581.0918,\"y\":361.69632,\"z\":107.348816}', '{\"x\":2586.0688,\"y\":417.51758,\"z\":108.45658}', '[{\"x\":2582.2754,\"y\":361.63336,\"z\":118.6066}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":2581.1292,\"y\":362.93283,\"z\":108.64776},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-72.094864},\"Model\":1240094341,\"Name\":\"Leonard Goodman\",\"Dimension\":0}]', 12, 'null', 0, -1, '2022-10-14 14:04:52', '2022-10-14 14:04:52', 728, 729, 0, '{\"x\":2620.4675,\"y\":296.15125,\"z\":126.60792}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(10, -1, NULL, '3000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":2679.5193,\"y\":3265.014,\"z\":54.28732}', '{\"x\":2665.862,\"y\":3256.3857,\"z\":55.24051}', '[{\"x\":2679.5193,\"y\":3265.014,\"z\":60.79356}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":2679.1785,\"y\":3263.374,\"z\":55.409374},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-107.687},\"Model\":1240094341,\"Name\":\"Clifford Hill\",\"Dimension\":0}]', 5, 'null', 0, -1, '2022-10-14 14:08:48', '2022-10-14 14:08:48', 730, 731, 0, '{\"x\":2674.1462,\"y\":3205.38,\"z\":72.48077}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(11, -1, NULL, '3000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":2005.315,\"y\":3774.1104,\"z\":31.283926}', '{\"x\":1982.2662,\"y\":3778.675,\"z\":32.18083}', '[{\"x\":2004.412,\"y\":3775.1804,\"z\":39.572937}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":2007.9425,\"y\":3775.9636,\"z\":32.403923},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-127.3108},\"Model\":1240094341,\"Name\":\"Walter Freeman\",\"Dimension\":0}]', 6, 'null', 0, -1, '2022-10-14 14:12:57', '2022-10-14 14:12:57', 732, 733, 0, '{\"x\":2052.973,\"y\":3799.8923,\"z\":50.741104}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(12, -1, NULL, '4500000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":620.9096,\"y\":268.75522,\"z\":101.96935}', '{\"x\":631.8473,\"y\":253.12582,\"z\":103.09777}', '[{\"x\":619.7786,\"y\":269.2387,\"z\":109.83191}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":620.9155,\"y\":262.8112,\"z\":103.27707},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":129.84412},\"Model\":1240094341,\"Name\":\"Chester Brown\",\"Dimension\":0}]', 14, 'null', 0, -1, '2022-10-14 14:16:45', '2022-10-14 14:16:45', 734, 735, 0, '{\"x\":595.80096,\"y\":229.09955,\"z\":118.22331}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(13, -1, NULL, '2000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":179.57126,\"y\":6603.0317,\"z\":30.748196}', '{\"x\":200.13219,\"y\":6622.958,\"z\":31.59623}', '[{\"x\":179.57126,\"y\":6603.0317,\"z\":37.760727}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":179.29402,\"y\":6606.4473,\"z\":32.04737},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":132.51408},\"Model\":1240094341,\"Name\":\"Cory Brooks\",\"Dimension\":0}]', 12, 'null', 0, -1, '2022-10-14 14:25:35', '2022-10-14 14:25:35', 736, 737, 0, '{\"x\":162.24355,\"y\":6515.532,\"z\":53.42042}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(14, -1, NULL, '2000000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":-46.4043,\"y\":-1757.6024,\"z\":28.301025}', '{\"x\":-60.321404,\"y\":-1744.8486,\"z\":29.349102}', '[{\"x\":1183.0569,\"y\":-330.0101,\"z\":74.814064},{\"x\":1182.6356,\"y\":-339.06488,\"z\":74.46553},{\"x\":1179.4181,\"y\":-322.3967,\"z\":74.5189},{\"x\":1182.008,\"y\":-335.98123,\"z\":75.11657},{\"x\":1180.4941,\"y\":-326.50974,\"z\":75.55275},{\"x\":1181.3152,\"y\":-331.68158,\"z\":74.72622}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-46.796387,\"y\":-1758.0499,\"z\":29.421026},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":50.243073},\"Model\":-2063419726,\"Name\":\"Amber Powers\",\"Dimension\":0}]', 2, 'null', 0, -1, '2022-10-14 16:13:54', '2022-12-29 23:20:00', 738, 739, 0, '{\"x\":-84.32939,\"y\":-1751.8333,\"z\":44.898113}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(15, -1, NULL, '2000000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":-1223.2413,\"y\":-907.42456,\"z\":11.206342}', '{\"x\":-1230.6512,\"y\":-901.2456,\"z\":12.189006}', '[{\"x\":1702.7633,\"y\":6418.4126,\"z\":38.145016}]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-1222.4022,\"y\":-908.59674,\"z\":12.326341},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":26.127289},\"Model\":824925120,\"Name\":\"Christal Curtis\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 16:24:33', '2022-10-14 16:24:33', 740, 741, 0, '{\"x\":-1258.0745,\"y\":-890.03326,\"z\":26.885704}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(16, -1, NULL, '2500000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":1163.5477,\"y\":-323.5056,\"z\":68.08503}', '{\"x\":1154.0079,\"y\":-331.87192,\"z\":68.847275}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":1164.8291,\"y\":-323.27496,\"z\":69.20503},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":98.58352},\"Model\":-840346158,\"Name\":\"Jade Gardner\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 16:32:19', '2022-10-14 16:32:19', 742, 743, 0, '{\"x\":1157.3583,\"y\":-351.10126,\"z\":71.37603}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(17, -1, NULL, '3500000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":1182.1411,\"y\":-329.66483,\"z\":68.19629}', '{\"x\":1171.4768,\"y\":-317.32596,\"z\":69.177155}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":1179.0729,\"y\":-330.71945,\"z\":69.316574},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-160.71997},\"Model\":1240094341,\"Name\":\"Collin Thomas\",\"Dimension\":0}]', 13, 'null', 0, -1, '2022-10-14 16:36:48', '2022-10-14 16:36:48', 744, 745, 0, '{\"x\":1191.7479,\"y\":-366.59583,\"z\":78.28565}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(18, -1, NULL, '2000000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":78.664825,\"y\":-227.29292,\"z\":53.522068}', '{\"x\":90.17128,\"y\":-215.95923,\"z\":54.4918}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":78.35681,\"y\":-228.45616,\"z\":54.642143},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-26.84838},\"Model\":766375082,\"Name\":\"Eric Anderson\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 16:42:37', '2023-01-13 00:33:50', 746, 747, 0, '{\"x\":88.76784,\"y\":-164.36789,\"z\":77.8283}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(19, -1, NULL, '2000000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":2555.5686,\"y\":382.09402,\"z\":107.502914}', '{\"x\":2565.9084,\"y\":385.14365,\"z\":108.46305}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":2555.5093,\"y\":380.90384,\"z\":108.62292},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-5.121822},\"Model\":-544533759,\"Name\":\"Marybeth Merritt\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 16:47:39', '2022-12-27 20:52:18', 748, 749, 0, '{\"x\":2598.4153,\"y\":408.8415,\"z\":116.385506}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(20, -1, NULL, '1500000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":-3244.0032,\"y\":1001.3181,\"z\":11.710701}', '{\"x\":-3246.5376,\"y\":991.56506,\"z\":12.481611}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-3244.0881,\"y\":1000.1684,\"z\":12.830701},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-10.794103},\"Model\":2111372120,\"Name\":\"Lorena Holmes\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 16:51:12', '2022-10-14 16:51:12', 750, 751, 0, '{\"x\":-3212.432,\"y\":1027.141,\"z\":25.749048}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(21, -1, NULL, '1500000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":548.1191,\"y\":2669.498,\"z\":41.03648}', '{\"x\":544.8839,\"y\":2678.762,\"z\":42.22291}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":549.3656,\"y\":2669.5623,\"z\":42.15648},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":91.95441},\"Model\":373000027,\"Name\":\"Chrystal Thornton\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 16:54:29', '2023-01-10 23:48:13', 752, 753, 0, '{\"x\":511.0882,\"y\":2687.9941,\"z\":53.18473}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(22, -1, NULL, '1500000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":1960.2308,\"y\":3742.1677,\"z\":31.223799}', '{\"x\":1972.5945,\"y\":3746.9895,\"z\":32.287514}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":1959.1593,\"y\":3741.4907,\"z\":32.34373},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-66.10172},\"Model\":-88831029,\"Name\":\"Kimberly Ball\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 16:57:21', '2022-10-14 16:57:21', 754, 755, 0, '{\"x\":1998.2268,\"y\":3730.3455,\"z\":43.825886}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(23, -1, NULL, '3500000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":2676.983,\"y\":3281.3428,\"z\":54.121117}', '{\"x\":2688.66,\"y\":3284.9841,\"z\":55.240578}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":2676.4185,\"y\":3280.2354,\"z\":55.24111},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-30.979414},\"Model\":951767867,\"Name\":\"Rhoda Cole\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 17:03:54', '2022-12-23 15:22:41', 756, 757, 0, '{\"x\":2713.086,\"y\":3301.9504,\"z\":60.997707}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(24, -1, NULL, '3000000', '0', '[{\"Price\":5000,\"Lefts\":50,\"Name\":\"Crowbar\"},{\"Price\":600,\"Lefts\":50,\"Name\":\"Flashlight\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Hammer\"},{\"Price\":500,\"Lefts\":50,\"Name\":\"Wrench\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"GasCan\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Crisps\"},{\"Price\":200,\"Lefts\":100,\"Name\":\"Pizza\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"KeyRing\"},{\"Price\":150,\"Lefts\":50,\"Name\":\"Beer\"},{\"Price\":100,\"Lefts\":100,\"Name\":\"Cigarettes\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Radio\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Tablet\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"Guitar\"},{\"Price\":25000,\"Lefts\":5,\"Name\":\"Microphone\"},{\"Price\":40000,\"Lefts\":5,\"Name\":\"Camera\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Binoculars\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Lighter\"},{\"Price\":15000,\"Lefts\":10,\"Name\":\"Clipboard\"},{\"Price\":50000,\"Lefts\":5,\"Name\":\"Bong\"},{\"Price\":130,\"Lefts\":100,\"Name\":\"Bandage\"},{\"Price\":10000,\"Lefts\":10,\"Name\":\"LowRepairKit\"},{\"Price\":7000,\"Lefts\":10,\"Name\":\"Screwdriver\"},{\"Price\":15000,\"Lefts\":50,\"Name\":\"HightRod\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"LowRod\"},{\"Price\":10000,\"Lefts\":50,\"Name\":\"MiddleRod\"},{\"Price\":3000,\"Lefts\":50,\"Name\":\"LowFishingCage\"},{\"Price\":5000,\"Lefts\":50,\"Name\":\"MiddleFishingCage\"},{\"Price\":9000,\"Lefts\":50,\"Name\":\"HightFishingCage\"},{\"Price\":5,\"Lefts\":10000,\"Name\":\"FishingBait\"}]', '{\"x\":1729.7123,\"y\":6416.251,\"z\":33.917213}', '{\"x\":1730.0804,\"y\":6404.094,\"z\":34.559093}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":1728.6278,\"y\":6416.7163,\"z\":35.03721},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-122.79015},\"Model\":1641152947,\"Name\":\"Edwin Curtis\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 17:14:31', '2022-10-14 17:14:31', 758, 759, 0, '{\"x\":1754.345,\"y\":6374.47,\"z\":43.5644}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(25, -1, NULL, '2000000', '1', '[{\"Price\":20,\"Lefts\":20000,\"Name\":\"Standart\"},{\"Price\":25,\"Lefts\":20000,\"Name\":\"StandartPlus\"},{\"Price\":30,\"Lefts\":20000,\"Name\":\"Diesel\"},{\"Price\":40,\"Lefts\":20000,\"Name\":\"Deluxe\"},{\"Price\":55,\"Lefts\":20000,\"Name\":\"Electro\"}]', '{\"x\":1701.476,\"y\":6415.9497,\"z\":31.637259}', '{\"x\":1715.301,\"y\":6421.2983,\"z\":33.009182}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":1706.7601,\"y\":6414.094,\"z\":32.76402},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-172.66042},\"Model\":1240094341,\"Name\":\"Gregory Doyle\",\"Dimension\":0}]', 7, 'null', 0, -1, '2022-10-14 17:17:23', '2022-10-14 17:17:23', 760, 761, 0, '{\"x\":1738.4244,\"y\":6363.944,\"z\":46.12476}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(26, -1, NULL, '5000000', '6', '[{\"Price\":5000,\"Lefts\":20,\"Name\":\"Pistol50\"},{\"Price\":3000,\"Lefts\":20,\"Name\":\"HeavyPistol\"},{\"Price\":3500,\"Lefts\":20,\"Name\":\"MicroSMG\"},{\"Price\":3000,\"Lefts\":20,\"Name\":\"MachinePistol\"},{\"Price\":5000,\"Lefts\":20,\"Name\":\"SMG\"},{\"Price\":7000,\"Lefts\":20,\"Name\":\"AssaultSMG\"},{\"Price\":5000,\"Lefts\":20,\"Name\":\"CombatPDW\"},{\"Price\":95000,\"Lefts\":10,\"Name\":\"CombatMG\"},{\"Price\":50000,\"Lefts\":20,\"Name\":\"Gusenberg\"},{\"Price\":4600,\"Lefts\":20,\"Name\":\"MiniSMG\"},{\"Price\":6500,\"Lefts\":30,\"Name\":\"AssaultRifle\"},{\"Price\":8500,\"Lefts\":30,\"Name\":\"CarbineRifle\"},{\"Price\":8500,\"Lefts\":30,\"Name\":\"AdvancedRifle\"},{\"Price\":13000,\"Lefts\":30,\"Name\":\"SpecialCarbine\"},{\"Price\":4500,\"Lefts\":30,\"Name\":\"CompactRifle\"},{\"Price\":15000,\"Lefts\":20,\"Name\":\"PumpShotgun\"},{\"Price\":15000,\"Lefts\":20,\"Name\":\"AssaultShotgun\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"HeavyShotgun\"},{\"Price\":20000,\"Lefts\":10,\"Name\":\"DoubleBarrelShotgun\"},{\"Price\":7,\"Lefts\":25000,\"Name\":\"PistolAmmo\"},{\"Price\":10,\"Lefts\":50000,\"Name\":\"SMGAmmo\"},{\"Price\":20,\"Lefts\":100000,\"Name\":\"RiflesAmmo\"},{\"Price\":50,\"Lefts\":5000,\"Name\":\"SniperAmmo\"},{\"Price\":35,\"Lefts\":5000,\"Name\":\"ShotgunsAmmo\"},{\"Price\":13000,\"Lefts\":20,\"Name\":\"BullpupRifle\"},{\"Price\":12500,\"Lefts\":50,\"Name\":\"Revolver\"},{\"Price\":15000,\"Lefts\":100,\"Name\":\"BodyArmor\"},{\"Price\":350000,\"Lefts\":10,\"Name\":\"SniperRifle\"}]', '{\"x\":809.807,\"y\":-2157.7705,\"z\":28.499023}', '{\"x\":821.5846,\"y\":-2119.1162,\"z\":29.331367}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":809.7448,\"y\":-2159.02,\"z\":29.619024},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-7.7345195},\"Model\":-1643617475,\"Name\":\"Alan Fox\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 19:39:22', '2023-01-17 23:54:49', 762, 763, 0, '{\"x\":803.2351,\"y\":-2095.4268,\"z\":55.4176}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(27, -1, NULL, '7000000', '7', '[{\"Price\":100,\"Lefts\":100000,\"Name\":\"Clothes\"}]', '{\"x\":75.33889,\"y\":-1392.5834,\"z\":28.256155}', '{\"x\":88.519806,\"y\":-1399.7333,\"z\":29.158222}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":73.92354,\"y\":-1392.5823,\"z\":29.376154},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-92.43486},\"Model\":-984709238,\"Name\":\"Harry Johnson\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 19:49:45', '2023-01-16 19:57:02', 764, 765, 0, '{\"x\":122.64229,\"y\":-1370.7422,\"z\":49.97796}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(28, -1, NULL, '10000000', '7', '[{\"Price\":100,\"Lefts\":100000,\"Name\":\"Clothes\"}]', '{\"x\":-163.58522,\"y\":-303.1573,\"z\":38.613266}', '{\"x\":-150.91891,\"y\":-306.78857,\"z\":38.738808}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-164.92941,\"y\":-302.70328,\"z\":39.7332},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-107.88753},\"Model\":1535236204,\"Name\":\"Merryl Shields\",\"Dimension\":0}]', 1, 'null', 0, -1, '2023-01-15 20:34:08', '2023-01-19 20:00:00', 766, 767, 0, '{\"x\":-120.914375,\"y\":-297.8203,\"z\":51.16252}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(29, -1, NULL, '10000000', '6', '[{\"Price\":5000,\"Lefts\":20,\"Name\":\"Pistol50\"},{\"Price\":3000,\"Lefts\":20,\"Name\":\"HeavyPistol\"},{\"Price\":3500,\"Lefts\":20,\"Name\":\"MicroSMG\"},{\"Price\":3000,\"Lefts\":20,\"Name\":\"MachinePistol\"},{\"Price\":5000,\"Lefts\":20,\"Name\":\"SMG\"},{\"Price\":7000,\"Lefts\":20,\"Name\":\"AssaultSMG\"},{\"Price\":5000,\"Lefts\":20,\"Name\":\"CombatPDW\"},{\"Price\":95000,\"Lefts\":10,\"Name\":\"CombatMG\"},{\"Price\":50000,\"Lefts\":20,\"Name\":\"Gusenberg\"},{\"Price\":4600,\"Lefts\":20,\"Name\":\"MiniSMG\"},{\"Price\":6500,\"Lefts\":30,\"Name\":\"AssaultRifle\"},{\"Price\":8500,\"Lefts\":30,\"Name\":\"CarbineRifle\"},{\"Price\":8500,\"Lefts\":30,\"Name\":\"AdvancedRifle\"},{\"Price\":13000,\"Lefts\":30,\"Name\":\"SpecialCarbine\"},{\"Price\":4500,\"Lefts\":30,\"Name\":\"CompactRifle\"},{\"Price\":15000,\"Lefts\":20,\"Name\":\"PumpShotgun\"},{\"Price\":15000,\"Lefts\":20,\"Name\":\"AssaultShotgun\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"HeavyShotgun\"},{\"Price\":20000,\"Lefts\":10,\"Name\":\"DoubleBarrelShotgun\"},{\"Price\":7,\"Lefts\":25000,\"Name\":\"PistolAmmo\"},{\"Price\":10,\"Lefts\":50000,\"Name\":\"SMGAmmo\"},{\"Price\":20,\"Lefts\":100000,\"Name\":\"RiflesAmmo\"},{\"Price\":50,\"Lefts\":5000,\"Name\":\"SniperAmmo\"},{\"Price\":35,\"Lefts\":5000,\"Name\":\"ShotgunsAmmo\"},{\"Price\":13000,\"Lefts\":20,\"Name\":\"BullpupRifle\"},{\"Price\":12500,\"Lefts\":50,\"Name\":\"Revolver\"},{\"Price\":15000,\"Lefts\":100,\"Name\":\"BodyArmor\"},{\"Price\":350000,\"Lefts\":10,\"Name\":\"SniperRifle\"}]', '{\"x\":22.645966,\"y\":-1106.9172,\"z\":28.677034}', '{\"x\":15.964425,\"y\":-1121.5361,\"z\":28.83634}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":23.152807,\"y\":-1105.7458,\"z\":29.797035},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":154.76778},\"Model\":-1643617475,\"Name\":\"Todd Leonard\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 20:12:11', '2022-12-23 15:24:16', 768, 769, 0, '{\"x\":28.06894,\"y\":-1149.0244,\"z\":37.205418}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(30, -1, NULL, '5000000', '7', '[{\"Price\":100,\"Lefts\":100000,\"Name\":\"Clothes\"}]', '{\"x\":-1193.6869,\"y\":-768.3354,\"z\":16.198444}', '{\"x\":-1206.4664,\"y\":-783.2364,\"z\":17.04426}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-1194.376,\"y\":-767.3002,\"z\":17.316227},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-145.70847},\"Model\":-1988720319,\"Name\":\"Melanie Hines\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 20:27:59', '2022-12-29 23:22:33', 770, 771, 0, '{\"x\":-1213.921,\"y\":-843.7689,\"z\":57.151283}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(31, -1, NULL, '6000000', '6', '[{\"Price\":5000,\"Lefts\":20,\"Name\":\"Pistol50\"},{\"Price\":3000,\"Lefts\":20,\"Name\":\"HeavyPistol\"},{\"Price\":3500,\"Lefts\":20,\"Name\":\"MicroSMG\"},{\"Price\":3000,\"Lefts\":20,\"Name\":\"MachinePistol\"},{\"Price\":5000,\"Lefts\":20,\"Name\":\"SMG\"},{\"Price\":7000,\"Lefts\":20,\"Name\":\"AssaultSMG\"},{\"Price\":5000,\"Lefts\":20,\"Name\":\"CombatPDW\"},{\"Price\":95000,\"Lefts\":10,\"Name\":\"CombatMG\"},{\"Price\":50000,\"Lefts\":20,\"Name\":\"Gusenberg\"},{\"Price\":4600,\"Lefts\":20,\"Name\":\"MiniSMG\"},{\"Price\":6500,\"Lefts\":30,\"Name\":\"AssaultRifle\"},{\"Price\":8500,\"Lefts\":30,\"Name\":\"CarbineRifle\"},{\"Price\":8500,\"Lefts\":30,\"Name\":\"AdvancedRifle\"},{\"Price\":13000,\"Lefts\":30,\"Name\":\"SpecialCarbine\"},{\"Price\":4500,\"Lefts\":30,\"Name\":\"CompactRifle\"},{\"Price\":15000,\"Lefts\":20,\"Name\":\"PumpShotgun\"},{\"Price\":15000,\"Lefts\":20,\"Name\":\"AssaultShotgun\"},{\"Price\":30000,\"Lefts\":5,\"Name\":\"HeavyShotgun\"},{\"Price\":20000,\"Lefts\":10,\"Name\":\"DoubleBarrelShotgun\"},{\"Price\":7,\"Lefts\":25000,\"Name\":\"PistolAmmo\"},{\"Price\":10,\"Lefts\":50000,\"Name\":\"SMGAmmo\"},{\"Price\":20,\"Lefts\":100000,\"Name\":\"RiflesAmmo\"},{\"Price\":50,\"Lefts\":5000,\"Name\":\"SniperAmmo\"},{\"Price\":35,\"Lefts\":5000,\"Name\":\"ShotgunsAmmo\"},{\"Price\":13000,\"Lefts\":20,\"Name\":\"BullpupRifle\"},{\"Price\":12500,\"Lefts\":50,\"Name\":\"Revolver\"},{\"Price\":15000,\"Lefts\":100,\"Name\":\"BodyArmor\"},{\"Price\":350000,\"Lefts\":10,\"Name\":\"SniperRifle\"}]', '{\"x\":-1305.515,\"y\":-395.00784,\"z\":35.575756}', '{\"x\":-1320.1849,\"y\":-390.7395,\"z\":36.452633}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-1304.3341,\"y\":-395.37042,\"z\":36.695755},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":71.041435},\"Model\":-1643617475,\"Name\":\"Arnold Miller\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-14 22:28:33', '2023-01-14 16:00:00', 772, 773, 0, '{\"x\":-1343.965,\"y\":-372.21725,\"z\":48.618404}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(32, -1, NULL, '2000000', '8', '[{\"Price\":300,\"Lefts\":500,\"Name\":\"Burger\"},{\"Price\":250,\"Lefts\":500,\"Name\":\"HotDog\"},{\"Price\":150,\"Lefts\":500,\"Name\":\"Sandwich\"},{\"Price\":200,\"Lefts\":500,\"Name\":\"eCola\"},{\"Price\":180,\"Lefts\":500,\"Name\":\"Sprunk\"}]', '{\"x\":85.12332,\"y\":280.4628,\"z\":98.32608}', '{\"x\":157.57608,\"y\":-1632.8976,\"z\":29.291697}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":84.981606,\"y\":281.92545,\"z\":99.446205},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":160.03899},\"Model\":-88831029,\"Name\":\"Veronica Rice\",\"Dimension\":13652}]', 1, '{\"x\":171.12094,\"y\":-1632.6395,\"z\":29.291693}', 13652, -1, '2022-10-15 23:19:09', '2022-10-15 23:19:09', 774, 775, 0, '{\"x\":86.56752,\"y\":274.16406,\"z\":100.774765}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(33, -1, NULL, '2000000', '10', '[{\"Price\":100,\"Lefts\":10000,\"Name\":\"Hairs\"}]', '{\"x\":133.80737,\"y\":-1709.0336,\"z\":28.171627}', '{\"x\":128.14015,\"y\":-1714.69,\"z\":29.0754}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":134.67455,\"y\":-1708.0745,\"z\":29.291628},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":137.28683},\"Model\":-2109222095,\"Name\":\"Alisha Oliver\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-15 23:35:09', '2022-12-29 23:23:06', 776, 777, 0, '{\"x\":128.72054,\"y\":-1731.0292,\"z\":30.597775}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(34, -1, NULL, '2000000', '10', '[{\"Price\":100,\"Lefts\":10000,\"Name\":\"Hairs\"}]', '{\"x\":-30.536205,\"y\":-150.38501,\"z\":55.95656}', '{\"x\":-37.34939,\"y\":-135.22923,\"z\":57.150078}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-30.965353,\"y\":-151.60097,\"z\":57.076557},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-16.409092},\"Model\":-2109222095,\"Name\":\"Frederica Hunter\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-15 23:45:48', '2022-10-15 23:45:48', 778, 779, 0, '{\"x\":-36.716545,\"y\":-122.38426,\"z\":61.460205}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(35, -1, NULL, '3000000', '9', '[{\"Price\":100,\"Lefts\":10000,\"Name\":\"Tattoos\"}]', '{\"x\":-1153.2633,\"y\":-1424.7418,\"z\":3.8344579}', '{\"x\":-1164.6348,\"y\":-1419.583,\"z\":4.656053}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-1152.1415,\"y\":-1423.9032,\"z\":4.9544554},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":120.06372},\"Model\":-325152996,\"Name\":\"Jackie Chan\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-15 23:50:31', '2023-01-08 21:20:20', 780, 781, 0, '{\"x\":-1178.4833,\"y\":-1415.0885,\"z\":15.349604}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(36, -1, NULL, '12000000', '12', '[{\"Price\":100,\"Lefts\":150000,\"Name\":\"Parts\"}]', '{\"x\":-338.07108,\"y\":-136.50279,\"z\":37.88968}', '{\"x\":-360.8825,\"y\":-128.05573,\"z\":38.69575}', NULL, NULL, '-1', '[]', '', '[]', 4, 'null', 0, -1, '2022-10-16 00:05:28', '2023-01-18 22:27:29', 782, 783, 0, '{\"x\":-378.79218,\"y\":-134.51768,\"z\":42.26122}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(37, -1, NULL, '3000000', '11', '[{\"Price\":100,\"Lefts\":100000,\"Name\":\"Mask\"}]', '{\"x\":-2400.5623,\"y\":1399.2643,\"z\":-99.12008}', '{\"x\":-143.19962,\"y\":240.79572,\"z\":95.022316}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-2402.246,\"y\":1399.1705,\"z\":-98.00008},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-89.237755},\"Model\":-1404353274,\"Name\":\"Ralf Maxwell\",\"Dimension\":10296}]', 1, '{\"x\":-143.70009,\"y\":229.47856,\"z\":94.934074}', 10296, -1, '2022-10-17 13:42:40', '2022-12-29 23:24:25', 784, 785, 0, '{\"x\":-2396.2908,\"y\":1404.1572,\"z\":-96.461525}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}');
INSERT INTO `businesses` (`id`, `owneruuid`, `owner`, `sellprice`, `type`, `products`, `enterpoint`, `unloadpoint`, `additionalpos`, `money`, `mafia`, `orders`, `name`, `peds`, `colshapeRange`, `blipPosition`, `dimension`, `family`, `takeoverdate`, `daywithoutproducts`, `banknew`, `bankacc`, `pledged`, `camposition`, `profitData`) VALUES
(38, -1, NULL, '10000000', '4', '[{\"Price\":100,\"Lefts\":1,\"Name\":\"tornado3\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"tornado4\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"voodoo2\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"regina\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"ingot\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"panto\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"picador\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"issi2\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"minivan\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"blista2\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"dilettante\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"glendale\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"voodoo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"tampa\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"radi\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"stalion\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"washington\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"ruiner\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"brioso\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"weevil\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"rancherxl\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"buffalo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"warrener\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"seminole\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"bjxl\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"phoenix\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gauntlet\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"baller\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"patriot\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"bison3\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"cheburek\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"pigalle\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"sentinel\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"romero\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"vigero\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"yosemite\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"speedo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"pony\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"sabregt2\"}]', '{\"x\":-173.62418,\"y\":-1157.1477,\"z\":22.070147}', '{\"x\":-181.3395,\"y\":-1152.743,\"z\":23.054955}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-173.57751,\"y\":-1157.8583,\"z\":23.191921},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-2.1023457},\"Model\":-1280051738,\"Name\":\"Alexander Bargeman\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-17 20:38:20', '2023-01-13 02:09:23', 786, 787, 0, '{\"x\":-185.44235,\"y\":-1126.8452,\"z\":33.924786}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(39, -1, NULL, '7000000', '5', '[{\"Price\":100,\"Lefts\":10,\"Name\":\"Faggio2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Sanchez2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Enduro\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"PCJ\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Hexer\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Lectro\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Nemesis\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Hakuchou\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Ruffian\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Bmx\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Scorcher\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"BF400\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"CarbonRS\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Bati\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Double\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Diablous\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Cliffhanger\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Akuma\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Thrust\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Nightblade\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Vindicator\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Ratbike\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Blazer\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Gargoyle\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Sanctus\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Avarus\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Bagger\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Bati2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Chimera\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Daemon\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Daemon2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Defiler\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Diablous2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Esskey\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Faggio\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Fcr\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Fcr2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Hakuchou2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Innovation\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Manchez\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Shotaro\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Sovereign\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Vader\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Vortex\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Wolfsbane\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Zombiea\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Zombieb\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Stryder\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Blazer2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Blazer3\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Blazer4\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Cruiser\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Fixter\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Tribike\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Tribike2\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"Tribike3\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"veto\"},{\"Price\":100,\"Lefts\":10,\"Name\":\"verus\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"h2r\"}]', '{\"x\":272.9151,\"y\":-1151.6792,\"z\":28.152962}', '{\"x\":259.43597,\"y\":-1150.3842,\"z\":29.291677}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":273.0085,\"y\":-1150.1981,\"z\":29.272936},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-179.35255},\"Model\":1129928304,\"Name\":\"Garry Pitts\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-17 21:54:18', '2022-12-23 15:23:34', 788, 789, 0, '{\"x\":245.03041,\"y\":-1163.0092,\"z\":34.527847}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(40, -1, NULL, '3000000', '39', '[{\"Price\":25,\"Lefts\":1000,\"Name\":\"CabbageSeed\"},{\"Price\":25,\"Lefts\":1000,\"Name\":\"PumpkinSeed\"},{\"Price\":25,\"Lefts\":1000,\"Name\":\"TomatoSeed\"},{\"Price\":25,\"Lefts\":1000,\"Name\":\"PotatoesSeed\"},{\"Price\":25,\"Lefts\":1000,\"Name\":\"OrangeSeed\"},{\"Price\":25,\"Lefts\":1000,\"Name\":\"CarrotSeed\"},{\"Price\":25,\"Lefts\":1000,\"Name\":\"BananaSeed\"},{\"Price\":25,\"Lefts\":1000,\"Name\":\"AppleSeed\"},{\"Price\":100,\"Lefts\":1000,\"Name\":\"FertilizerStandVegetable\"},{\"Price\":100,\"Lefts\":1000,\"Name\":\"FertilizerStandFruit\"},{\"Price\":200,\"Lefts\":1000,\"Name\":\"FertilizerBigVegetable\"},{\"Price\":200,\"Lefts\":1000,\"Name\":\"FertilizerBigFruit\"},{\"Price\":12000,\"Lefts\":100,\"Name\":\"WateringBig\"},{\"Price\":7000,\"Lefts\":100,\"Name\":\"WateringMedium\"},{\"Price\":4000,\"Lefts\":100,\"Name\":\"WateringLow\"},{\"Price\":12000,\"Lefts\":100,\"Name\":\"FoodBox\"}]', '{\"x\":2016.8042,\"y\":4987.1514,\"z\":40.978355}', '{\"x\":2019.3048,\"y\":4976.5073,\"z\":41.230247}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":2016.0938,\"y\":4987.816,\"z\":42.098194},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-138.20273},\"Model\":-1728452752,\"Name\":\"Ded Jones\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-17 22:11:49', '2023-01-05 00:00:14', 790, 791, 0, '{\"x\":2021.4945,\"y\":4945.767,\"z\":52.18805}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(41, -1, NULL, '7000000', '28', '[{\"Price\":1000,\"Lefts\":100,\"Name\":\"Cuffs\"},{\"Price\":50000,\"Lefts\":10,\"Name\":\"Hatchet\"},{\"Price\":2000,\"Lefts\":30,\"Name\":\"ArmyLockpick\"},{\"Price\":1000,\"Lefts\":50,\"Name\":\"Pocket\"},{\"Price\":150000,\"Lefts\":20,\"Name\":\"Stetoskop\"}]', '{\"x\":-53.515663,\"y\":-1213.8962,\"z\":27.586615}', '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', NULL, NULL, '-1', '[]', '', '[]', 1, 'null', 0, -1, '2022-10-17 22:22:32', '2023-01-11 13:28:20', 792, 793, 0, '{\"x\":-59.998524,\"y\":-1221.3197,\"z\":29.573147}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(42, -1, NULL, '5000000', '16', '[{\"Price\":5000,\"Lefts\":3500,\"Name\":\"Auto parts\"},{\"Price\":5000,\"Lefts\":25,\"Name\":\"Brakes Cheap\"},{\"Price\":5000,\"Lefts\":25,\"Name\":\"Engine Oil Cheap\"},{\"Price\":5000,\"Lefts\":25,\"Name\":\"Transmission Oil Cheap\"},{\"Price\":15000,\"Lefts\":25,\"Name\":\"Brakes Medium\"},{\"Price\":15000,\"Lefts\":25,\"Name\":\"Engine Oil Medium\"},{\"Price\":15000,\"Lefts\":25,\"Name\":\"Transmission Oil Medium\"},{\"Price\":25000,\"Lefts\":25,\"Name\":\"Brakes Expensive\"},{\"Price\":25000,\"Lefts\":25,\"Name\":\"Engine Oil Expensive\"},{\"Price\":25000,\"Lefts\":25,\"Name\":\"Transmission Oil Expensive\"}]', '{\"x\":480.1404,\"y\":-1886.1946,\"z\":24.974623}', '{\"x\":484.36578,\"y\":-1899.4098,\"z\":25.460438}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":476.8299,\"y\":-1888.6266,\"z\":26.094625},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-99.80309},\"Model\":-907676309,\"Name\":\"Brett Bruce\",\"Dimension\":0}]', 7, 'null', 0, -1, '2022-10-17 22:27:21', '2022-12-23 15:36:10', 794, 795, 0, '{\"x\":501.19708,\"y\":-1899.0265,\"z\":32.878723}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(43, -1, NULL, '3500000', '27', '[{\"Price\":150,\"Lefts\":1000000,\"Name\":\"Parts\"}]', '{\"x\":71.701485,\"y\":-1750.2662,\"z\":28.50981}', '{\"x\":56.344753,\"y\":-1722.5953,\"z\":29.303074}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":72.63792,\"y\":-1751.2153,\"z\":29.62979},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":45.28127},\"Model\":-756833660,\"Name\":\"Hollie Boone\",\"Dimension\":0}]', 1, 'null', 0, -1, '2022-10-17 22:39:45', '2022-12-24 00:17:40', 796, 797, 0, '{\"x\":-1.3364793,\"y\":-1729.9745,\"z\":44.962944}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(44, -1, NULL, '2000000', '13', '[{\"Price\":5000,\"Lefts\":1000,\"Name\":\"Detergent\"}]', '{\"x\":103.44871,\"y\":6622.933,\"z\":30.708513}', '{\"x\":111.356514,\"y\":6607.6875,\"z\":31.869324}', NULL, NULL, '-1', '[]', '', '[]', 3, 'null', 0, -1, '2022-10-23 21:39:53', '2022-12-23 15:33:25', 798, 799, 0, '{\"x\":0.0,\"y\":0.0,\"z\":0.0}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(45, -1, NULL, '100000000', '2', '[{\"Price\":100,\"Lefts\":1,\"Name\":\"amge63s\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"e63sf\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"bmw21m5\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"g65go\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gls63go\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"goe63s\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"amgs63w222\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gobmwm8\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gobmw745le\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"audir8\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"cayennego\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"goamggt\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gomartin\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"f8tributo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"go812\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"go918\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"portaycan\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gotopgunurus\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"18performante\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"rollswrait\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"rrphantomgo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"rrcullinan\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"lambago\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gosian\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"goveneno\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gospeed\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gobolide\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"chirongo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"bugattilanoire\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"amgvision\"}]', '{\"x\":-104.24639,\"y\":-566.0933,\"z\":39.483242}', '{\"x\":-103.966064,\"y\":-607.34503,\"z\":36.071796}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-104.123215,\"y\":-567.57526,\"z\":40.60324},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-2.0736864},\"Model\":-1211756494,\"Name\":\"Julia Carter\",\"Dimension\":0}]', 2, 'null', 0, -1, '2022-12-07 20:18:54', '2023-01-13 00:05:15', 800, 801, 0, '{\"x\":-107.67582,\"y\":-507.74966,\"z\":44.611115}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(46, -1, NULL, '25000000', '3', '[{\"Price\":100,\"Lefts\":1,\"Name\":\"e34go\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"e46go\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gom3e36\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"bmwe92\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"fordgt500\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"cls500w219\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"bmwm5e60\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gogolf7s\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"amgc63coupe\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"bmwx5me70\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"camry70\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"goskyline34\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"goamarok\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gobmwz4\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gosl63\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"panamera17turbo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"tahoego\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gobentley1\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gobentleygt\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"ffgo\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gox6\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gtrr35\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"golc200\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"p992\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"rangerover\"},{\"Price\":100,\"Lefts\":1,\"Name\":\"gobacalar\"}]', '{\"x\":-33.921093,\"y\":-1113.9087,\"z\":25.302359}', '{\"x\":-47.79375,\"y\":-1111.0487,\"z\":26.435823}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-32.191628,\"y\":-1114.3887,\"z\":26.42295},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":58.109783},\"Model\":-1589423867,\"Name\":\"Dylan Cook\",\"Dimension\":0}]', 2, 'null', 0, -1, '2022-12-07 20:28:58', '2022-12-30 20:48:00', 802, 803, 0, '{\"x\":-90.83503,\"y\":-1114.3977,\"z\":33.40778}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(47, -1, NULL, '2500000', '11', '[{\"Price\":100,\"Lefts\":100000,\"Name\":\"Mask\"}]', '{\"x\":-2400.6558,\"y\":1398.6005,\"z\":-99.11993}', '{\"x\":-2972.909,\"y\":447.6856,\"z\":15.216606}', '[]', NULL, '-1', '[]', '', '[{\"Position\":{\"x\":-2402.26,\"y\":1399.1533,\"z\":-98.0001},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":-102.53037},\"Model\":732742363,\"Name\":\"Frank Carter\",\"Dimension\":14772}]', 1, '{\"x\":-2962.4336,\"y\":454.38846,\"z\":15.31493}', 14772, -1, '2022-12-22 17:53:43', '2022-12-22 17:53:43', 804, 805, 0, '{\"x\":-2396.4456,\"y\":1404.0947,\"z\":-96.24706}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(48, -1, NULL, '3000000', '8', '[{\"Price\":300,\"Lefts\":500,\"Name\":\"Burger\"},{\"Price\":250,\"Lefts\":500,\"Name\":\"HotDog\"},{\"Price\":150,\"Lefts\":500,\"Name\":\"Sandwich\"},{\"Price\":200,\"Lefts\":500,\"Name\":\"eCola\"},{\"Price\":180,\"Lefts\":500,\"Name\":\"Sprunk\"}]', '{\"x\":84.76192,\"y\":280.56683,\"z\":98.32623}', '{\"x\":127.26798,\"y\":-1474.9276,\"z\":29.141626}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":85.3438,\"y\":281.79135,\"z\":99.44624},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":158.17686},\"Model\":115168927,\"Name\":\"Kiel Harris\",\"Dimension\":13743}]', 1, '{\"x\":132.5073,\"y\":-1462.4736,\"z\":29.357054}', 13743, -1, '2022-12-22 18:57:03', '2023-01-18 23:20:29', 806, 807, 0, '{\"x\":89.16326,\"y\":274.28815,\"z\":100.89131}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(49, -1, NULL, '3000000', '8', '[{\"Price\":300,\"Lefts\":500,\"Name\":\"Burger\"},{\"Price\":250,\"Lefts\":500,\"Name\":\"HotDog\"},{\"Price\":150,\"Lefts\":500,\"Name\":\"Sandwich\"},{\"Price\":200,\"Lefts\":500,\"Name\":\"eCola\"},{\"Price\":180,\"Lefts\":500,\"Name\":\"Sprunk\"}]', '{\"x\":84.557076,\"y\":280.6631,\"z\":98.32624}', '{\"x\":-137.08139,\"y\":-251.8134,\"z\":43.729717}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":85.32931,\"y\":281.8259,\"z\":99.446106},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":154.73912},\"Model\":330231874,\"Name\":\"Paul Fraser\",\"Dimension\":11210}]', 1, '{\"x\":-138.31345,\"y\":-256.9997,\"z\":43.59497}', 11210, -1, '2022-12-22 19:10:31', '2022-12-29 23:16:41', 808, 809, 0, '{\"x\":88.495674,\"y\":274.77356,\"z\":100.92506}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}'),
(50, -1, NULL, '3000000', '8', '[{\"Price\":300,\"Lefts\":500,\"Name\":\"Burger\"},{\"Price\":250,\"Lefts\":500,\"Name\":\"HotDog\"},{\"Price\":150,\"Lefts\":500,\"Name\":\"Sandwich\"},{\"Price\":200,\"Lefts\":500,\"Name\":\"eCola\"},{\"Price\":180,\"Lefts\":500,\"Name\":\"Sprunk\"}]', '{\"x\":84.85659,\"y\":280.55835,\"z\":98.32617}', '{\"x\":2549.5974,\"y\":2615.6868,\"z\":37.944817}', NULL, NULL, '-1', '[]', '', '[{\"Position\":{\"x\":85.274,\"y\":281.89175,\"z\":99.446106},\"Rotation\":{\"x\":0.0,\"y\":0.0,\"z\":157.33461},\"Model\":1005070462,\"Name\":\"Andrew Ayrton\",\"Dimension\":0}]', 1, '{\"x\":2561.722,\"y\":2590.9277,\"z\":38.075035}', 0, -1, '2022-12-22 19:30:25', '2022-12-22 19:30:25', 810, 811, 0, '{\"x\":87.796974,\"y\":276.2869,\"z\":100.47909}', '{\"Expenses\":0,\"Income\":0,\"TotalExpenses\":0,\"TotalIncome\":0,\"RecordSince\":\"2023-01-01T00:00:00\",\"RecordUntil\":\"2023-01-31T23:59:59\"}');

-- --------------------------------------------------------

--
-- Table structure for table `cartradecars`
--

CREATE TABLE `cartradecars` (
  `carid` int(11) NOT NULL,
  `bizid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `components` text DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rotation` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `isplaced` tinyint(1) DEFAULT NULL,
  `componentsnew` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cartradelogs`
--

CREATE TABLE `cartradelogs` (
  `operation` varchar(50) NOT NULL,
  `money` int(11) NOT NULL,
  `playername` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cartrades`
--

CREATE TABLE `cartrades` (
  `bizId` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cartrades`
--

INSERT INTO `cartrades` (`bizId`, `amount`) VALUES
(144, 0);

-- --------------------------------------------------------

--
-- Table structure for table `casino`
--

CREATE TABLE `casino` (
  `id` int(11) NOT NULL,
  `bizId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `minusDate` datetime DEFAULT NULL,
  `stateTax` int(11) NOT NULL,
  `casinoTax` int(11) NOT NULL,
  `maxWinOfBet` int(11) NOT NULL DEFAULT 5000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `casino`
--

INSERT INTO `casino` (`id`, `bizId`, `amount`, `minusDate`, `stateTax`, `casinoTax`, `maxWinOfBet`) VALUES
(0, 13175, 0, NULL, 5, 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `casinobetlog`
--

CREATE TABLE `casinobetlog` (
  `id` int(11) NOT NULL,
  `time` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `zero` varchar(3) DEFAULT NULL,
  `red` varchar(3) DEFAULT NULL,
  `black` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `casinoendlog`
--

CREATE TABLE `casinoendlog` (
  `id` int(11) NOT NULL,
  `time` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `casinologs`
--

CREATE TABLE `casinologs` (
  `operation` varchar(50) NOT NULL,
  `money` int(11) NOT NULL,
  `playername` varchar(50) DEFAULT NULL,
  `datetime` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `casinowinloselog`
--

CREATE TABLE `casinowinloselog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `wonbet` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `uuid` bigint(20) NOT NULL,
  `adminlvl` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `fraction` int(11) NOT NULL,
  `fractionlvl` int(11) NOT NULL,
  `warns` int(11) NOT NULL,
  `biz` text DEFAULT NULL,
  `hotel` int(11) DEFAULT NULL,
  `hotelleft` int(11) DEFAULT NULL,
  `sim` int(11) DEFAULT NULL,
  `PetName` mediumtext DEFAULT NULL,
  `demorgan` int(11) NOT NULL,
  `arrest` int(11) NOT NULL,
  `unwarn` datetime NOT NULL,
  `unmute` int(11) DEFAULT NULL,
  `unmutedate` datetime NOT NULL,
  `bank` int(11) DEFAULT NULL,
  `wanted` text DEFAULT NULL,
  `lvl` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `health` int(11) NOT NULL,
  `armor` int(11) DEFAULT NULL,
  `licenses` text NOT NULL,
  `lastveh` text DEFAULT NULL,
  `onduty` tinyint(1) NOT NULL,
  `lasthour` int(11) NOT NULL DEFAULT 0,
  `lastmin` int(11) NOT NULL DEFAULT 0,
  `contacts` text DEFAULT NULL,
  `achiev` text DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `pos` text NOT NULL,
  `work` int(11) NOT NULL,
  `idkey` int(11) NOT NULL,
  `friends` text NOT NULL,
  `arrestiligalTime` int(11) NOT NULL DEFAULT 0,
  `timerMiss` datetime NOT NULL DEFAULT current_timestamp(),
  `arrestID` int(11) NOT NULL DEFAULT 0,
  `courttime` int(11) NOT NULL DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT 0,
  `familylvl` int(11) NOT NULL DEFAULT 0,
  `mulct` int(11) NOT NULL DEFAULT 0,
  `rouletteinventory` text DEFAULT NULL,
  `newrouletteinventory` text DEFAULT NULL,
  `hasfreespin` int(11) NOT NULL DEFAULT 0,
  `lastdayplayedhours` int(11) NOT NULL DEFAULT 0,
  `chips` text DEFAULT NULL,
  `partner` int(11) NOT NULL DEFAULT -1,
  `callHistory` text DEFAULT NULL,
  `hungerlevel` int(11) DEFAULT 100,
  `thirstlevel` int(11) DEFAULT 100,
  `equipId` int(11) NOT NULL,
  `inventoryId` int(11) NOT NULL,
  `lastvehicle` int(11) NOT NULL DEFAULT -1,
  `imp_job_state` text DEFAULT NULL,
  `numberofratings` int(11) NOT NULL DEFAULT 0,
  `amountofratings` int(11) NOT NULL DEFAULT 0,
  `numberofadminratings` int(11) NOT NULL DEFAULT 0,
  `amountofadminratings` int(11) NOT NULL DEFAULT 0,
  `queststage` int(11) DEFAULT 1,
  `promoused` varchar(45) DEFAULT '',
  `voiceupdate` tinyint(1) NOT NULL DEFAULT 1,
  `arena_points` int(11) NOT NULL DEFAULT 0,
  `media` int(11) NOT NULL DEFAULT 0,
  `mediahelper` int(11) NOT NULL DEFAULT 0,
  `lastvote` int(11) NOT NULL DEFAULT -1,
  `usedTips` text DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `deletedAt` datetime DEFAULT NULL,
  `owner` int(11) NOT NULL DEFAULT -1,
  `familypoints` int(11) DEFAULT 0,
  `familypointsadd` int(11) DEFAULT 0,
  `familypointssub` int(11) DEFAULT 0,
  `familypointlastupdate` datetime DEFAULT NULL,
  `iconoverhead` text DEFAULT NULL,
  `rbrating` int(11) NOT NULL DEFAULT 0,
  `donateInventoryId` int(11) DEFAULT NULL,
  `customizationid` int(11) DEFAULT -1,
  `imagelink` text DEFAULT NULL,
  `banknew` int(11) NOT NULL DEFAULT -1,
  `respectPoints` int(11) NOT NULL DEFAULT 0,
  `bonusPoints` int(11) NOT NULL DEFAULT 0,
  `mypromocode` text DEFAULT NULL,
  `countUseMyPromocode` int(11) NOT NULL DEFAULT 0,
  `primeLeftFraction` datetime DEFAULT NULL,
  `vipdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `chatlogs`
--

CREATE TABLE `chatlogs` (
  `idkey` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `typechat` int(11) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `colshapes`
--

CREATE TABLE `colshapes` (
  `ID` varchar(155) NOT NULL,
  `Rank` varchar(155) NOT NULL,
  `FPosX` varchar(155) NOT NULL,
  `FPosY` varchar(155) NOT NULL,
  `FPosZ` varchar(155) NOT NULL,
  `FPosDim` varchar(155) NOT NULL,
  `TPosX` varchar(155) NOT NULL,
  `TPosY` varchar(155) NOT NULL,
  `TPosZ` varchar(155) NOT NULL,
  `TPosDim` varchar(155) NOT NULL,
  `Revers` varchar(155) NOT NULL,
  `ForVeh` varchar(155) NOT NULL,
  `Interact` varchar(155) NOT NULL,
  `Fraction` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `applicantuuid` int(11) NOT NULL,
  `fractionid` int(11) NOT NULL,
  `employeeuuid` int(11) NOT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `connlog`
--

CREATE TABLE `connlog` (
  `uuid` text NOT NULL,
  `in` datetime NOT NULL,
  `out` datetime DEFAULT NULL,
  `sclub` text NOT NULL,
  `hwid` text DEFAULT NULL,
  `ip` text NOT NULL,
  `null` varchar(155) DEFAULT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `connlog`
--

INSERT INTO `connlog` (`uuid`, `in`, `out`, `sclub`, `hwid`, `ip`, `null`, `idkey`) VALUES
('1', '2024-04-23 21:38:38', NULL, '188734675', 'D8903A045B8E4A28702EA5542B3E3AC0752A1E209CB2C96889F018C8DD22B3C0A5E0211C036A3FF00C128F3808E8E5D0DF1208A056B6E9D83622501493084740', '127.0.0.1', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `ownerid` int(11) NOT NULL,
  `ownerType` int(11) NOT NULL,
  `contractName` int(11) NOT NULL,
  `countCompleted` int(11) NOT NULL DEFAULT 0,
  `currentLevel` int(11) NOT NULL DEFAULT 0,
  `inProgress` tinyint(4) NOT NULL DEFAULT 0,
  `expirationDate` datetime NOT NULL,
  `countPlayersProgress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customization`
--

CREATE TABLE `customization` (
  `idkey` int(11) NOT NULL,
  `uuid` bigint(20) NOT NULL,
  `gender` text NOT NULL,
  `parents` text DEFAULT NULL,
  `features` text DEFAULT NULL,
  `appearance` text DEFAULT NULL,
  `hair` text DEFAULT NULL,
  `clothes` text DEFAULT NULL,
  `accessory` text DEFAULT NULL,
  `tattoos` text DEFAULT NULL,
  `eyebrowc` text DEFAULT NULL,
  `beardc` text DEFAULT NULL,
  `eyec` text DEFAULT NULL,
  `blushc` text DEFAULT NULL,
  `lipstickc` text DEFAULT NULL,
  `chesthairc` text DEFAULT NULL,
  `iscreated` tinyint(1) DEFAULT NULL,
  `makeup` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `deletelog`
--

CREATE TABLE `deletelog` (
  `time` datetime NOT NULL,
  `uuid` text NOT NULL,
  `name` text NOT NULL,
  `account` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `id` int(11) NOT NULL,
  `unitpayid` int(11) NOT NULL DEFAULT 0,
  `login` varchar(45) NOT NULL,
  `type` varchar(15) NOT NULL,
  `value` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `sum` int(11) DEFAULT 0,
  `promo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donateitems`
--

CREATE TABLE `donateitems` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `maxcount` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `donateitems`
--

INSERT INTO `donateitems` (`id`, `type`, `name`, `price`, `count`, `maxcount`, `status`) VALUES
(3, 1, 'Premium', 990, 0, -1, 1),
(4, 2, '$ 100.000', 500, 100000, -1, 1),
(5, 2, '$ 500.000', 2500, 500000, -1, 1),
(6, 2, '$ 1.000.000', 5000, 1000000, -1, 1),
(7, 2, '$ 3.000.000', 15000, 3000000, -1, 1),
(8, 2, '$ 5.000.000', 25000, 5000000, -1, 1),
(9, 2, '$ 10.000.000', 50000, 10000000, -1, 1),
(10, 3, 'Premium 1', 25000, 0, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donateroulettelog`
--

CREATE TABLE `donateroulettelog` (
  `idkey` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `uuid` int(11) DEFAULT NULL,
  `droprarity` int(11) DEFAULT NULL,
  `droptype` int(11) DEFAULT NULL,
  `dropvalue` varchar(60) DEFAULT NULL,
  `isfree` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donate_errors`
--

CREATE TABLE `donate_errors` (
  `id` int(11) NOT NULL,
  `orderid` varchar(11) NOT NULL,
  `error` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donate_history`
--

CREATE TABLE `donate_history` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `operation` text NOT NULL,
  `sum` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `login` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donate_inventories`
--

CREATE TABLE `donate_inventories` (
  `id` int(11) NOT NULL,
  `items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donate_items_log`
--

CREATE TABLE `donate_items_log` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `uuid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` text NOT NULL,
  `sum` int(11) NOT NULL,
  `operation` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donate_roulettes`
--

CREATE TABLE `donate_roulettes` (
  `id` int(11) NOT NULL,
  `rouletteid` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  `total_game` int(11) NOT NULL,
  `total_spend` bigint(20) NOT NULL,
  `total_drop` bigint(20) NOT NULL,
  `rarity_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `donate_roulettes`
--

INSERT INTO `donate_roulettes` (`id`, `rouletteid`, `bank`, `total_game`, `total_spend`, `total_drop`, `rarity_data`) VALUES
(1, 0, 999900, 2, 1000000, 1000, '{\"Epic\":{\"Chance\":0},\"Legend\":{\"Chance\":10},\"Hight\":{\"Chance\":500},\"Medium\":{\"Chance\":1000},\"Low\":{\"Chance\":3000},\"Base\":{\"Chance\":5000}}'),
(2, 1, 3700, 25, 5000, 19705, '{\"Epic\":{\"Chance\":1},\"Legend\":{\"Chance\":20},\"Hight\":{\"Chance\":750},\"Medium\":{\"Chance\":1500},\"Low\":{\"Chance\":3500},\"Base\":{\"Chance\":4000}}'),
(3, 2, 8550, 21, 10500, 51150, '{\"Epic\":{\"Chance\":5},\"Legend\":{\"Chance\":50},\"Hight\":{\"Chance\":1000},\"Medium\":{\"Chance\":2500},\"Low\":{\"Chance\":3500},\"Base\":{\"Chance\":3500}}'),
(4, 3, 56400, 40, 60000, 81500, '{\"Epic\":{\"Chance\":25},\"Legend\":{\"Chance\":100},\"Hight\":{\"Chance\":1500},\"Medium\":{\"Chance\":3500},\"Low\":{\"Chance\":4500},\"Base\":{\"Chance\":2500}}');

-- --------------------------------------------------------

--
-- Table structure for table `dooraccess`
--

CREATE TABLE `dooraccess` (
  `id` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `accessname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dooraccess`
--

INSERT INTO `dooraccess` (`id`, `uuid`, `accessname`) VALUES
(1, 1035661430, 'Pol1'),
(2, 648516924, 'police22'),
(3, 172717613, 'police3'),
(4, -710055803, 'police4'),
(5, -1739746400, 'police15'),
(6, 1020815105, 'fib1'),
(7, 1320527386, 'fib2'),
(8, -478289659, 'ng'),
(9, -457738178, 'family58'),
(10, -776318396, 'family58'),
(11, 1228628885, 'family58'),
(12, -1054297823, 'family58'),
(13, -665985125, 'family58'),
(14, 803835549, 'family58'),
(15, -91216913, 'family58'),
(16, 181781626, 'family58'),
(17, 498920008, 'family58'),
(18, -969458834, 'family58'),
(19, -365165435, 'family137'),
(20, -16159209, 'family137'),
(21, -662937338, 'family137'),
(22, -654235748, 'family58'),
(23, -411299920, '70'),
(24, -517391230, 'family9'),
(25, -1555808111, 'family9'),
(26, 1441998320, 'family9'),
(27, 1211763326, 'family9'),
(28, -1861870571, 'family9'),
(29, 792615083, 'family9'),
(30, 1031501093, 'family9'),
(31, 1433011655, 'family9'),
(32, -709579851, 'fib:parking:gate'),
(33, 1318264412, 'fib:parking:gate'),
(34, 733245837, '70'),
(35, 30968437, '70'),
(36, -914491675, 'police6'),
(37, 726966396, 'police7'),
(38, -1000378411, 'Pol2'),
(39, 553501767, 'police9'),
(40, 929602129, 'police10'),
(41, 632430863, 'Pol3'),
(42, -1691051437, 'police12'),
(43, 39671661, 'police13'),
(44, -219006825, 'police14'),
(45, -1209666760, 'police16'),
(46, -1989142963, 'police17'),
(47, 1664600541, 'police18'),
(48, 2030127000, 'Pol4'),
(49, -63316822, 'police20'),
(50, -1809482551, 'police21'),
(51, -1365788518, 'cityhall1'),
(52, -1827983912, 'cityhall2'),
(53, 519920925, 'cityhall3'),
(54, -1743754457, 'cityhall4'),
(55, -2135848667, 'cityhall5'),
(56, -1874998685, 'cityhall6'),
(57, -1604745804, 'cityhall7'),
(58, -980536053, 'cityhall8'),
(59, -1135087581, 'cityhall9'),
(60, -590621248, 'cityhall10'),
(61, 1477417572, 'cityhall11'),
(62, 484640727, 'cityhall12'),
(63, -404974817, 'cityhall13'),
(64, -312873829, 'cityhall14'),
(65, 1610724894, 'gov11'),
(66, 255788543, 'ems1'),
(67, 234277882, 'family137'),
(68, 1399292556, 'door1'),
(69, 73407724, 'door2'),
(70, -1321861334, 'door3'),
(71, 490081725, 'door4'),
(72, 1430738344, 'door5'),
(73, 916756555, 'door6'),
(74, -31590845, 'family9'),
(75, 681061422, 'family9'),
(76, -2000680454, 'family70'),
(77, -189832306, 'family9'),
(78, 1192631606, 'family137'),
(79, 57277797, 'ems'),
(80, 1273168467, 'ems1'),
(81, 832558406, 'family58'),
(82, 1874628585, 'ems32'),
(83, -2042219849, 'EMS20'),
(84, -93632452, 'EMS21'),
(85, 555455900, 'EMS22'),
(86, -571470010, 'EMS23'),
(87, -858909036, 'EMS24'),
(88, 1235980365, 'EMS25'),
(89, -1722037141, '148'),
(90, -2094161905, '148'),
(91, 1538258826, 'Pol5'),
(92, -2025895820, 'pd2'),
(93, -932985069, 'family63'),
(94, 1360101636, 'family132'),
(95, -209772473, 'family132'),
(96, 1359731535, 'family132'),
(97, 1666023378, 'family132'),
(98, 746459700, '70'),
(99, 2013210933, 'family132'),
(100, -1976250976, 'family132'),
(101, -1460817801, 'family132'),
(102, 1916837304, 'family132'),
(103, -2036306907, 'family132'),
(104, -1363551848, 'ems25'),
(105, 1840530933, 'ems26'),
(106, -387242696, 'ems27'),
(107, -812119609, 'ems28'),
(108, -1034364904, 'ems29'),
(109, 224587303, 'ems30'),
(110, 652916835, 'ems31'),
(111, -370722257, 'gov10'),
(112, -1941433259, 'Police1'),
(113, -536610499, 'family132'),
(114, -895672798, '39'),
(115, -965175226, '39'),
(116, -675136807, '39'),
(117, -331280351, 'prisonjail1'),
(118, 770318037, 'prisonjail2'),
(119, 281925946, 'prisonjail3'),
(120, 50347423, 'prisonjail4'),
(121, 5445265, 'prisonjail5'),
(122, 252228604, 'prisonjail6'),
(123, 663474327, 'prisonjail7'),
(124, 423703554, 'prisonjail8'),
(125, 600956302, 'prisonjail9'),
(126, 847018723, 'prisonjail10');

-- --------------------------------------------------------

--
-- Table structure for table `efcore_bank_account`
--

CREATE TABLE `efcore_bank_account` (
  `ID` int(11) NOT NULL,
  `UUID` int(11) NOT NULL,
  `BankId` int(11) NOT NULL,
  `Number` bigint(20) NOT NULL,
  `OwnerType` int(11) NOT NULL,
  `Balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `efcore_bank_account`
--

INSERT INTO `efcore_bank_account` (`ID`, `UUID`, `BankId`, `Number`, `OwnerType`, `Balance`) VALUES
(712, 0, 1, 103712, 3, 0),
(713, 0, 1, 104713, 4, 0),
(714, 0, 1, 103714, 3, 0),
(715, 0, 1, 104715, 4, 0),
(716, 0, 1, 103716, 3, 0),
(717, 0, 1, 104717, 4, 0),
(718, 0, 1, 103718, 3, 0),
(719, 0, 1, 104719, 4, 0),
(720, 0, 1, 103720, 3, 0),
(721, 0, 1, 104721, 4, 0),
(722, 0, 1, 103722, 3, 0),
(723, 0, 1, 104723, 4, 0),
(724, 0, 1, 103724, 3, 0),
(725, 0, 1, 104725, 4, 0),
(726, 0, 1, 103726, 3, 0),
(727, 0, 1, 104727, 4, 0),
(728, 0, 1, 103728, 3, 0),
(729, 0, 1, 104729, 4, 0),
(730, 0, 1, 103730, 3, 0),
(731, 0, 1, 104731, 4, 0),
(732, 0, 1, 103732, 3, 0),
(733, 0, 1, 104733, 4, 0),
(734, 0, 1, 103734, 3, 0),
(735, 0, 1, 104735, 4, 0),
(736, 0, 1, 103736, 3, 0),
(737, 0, 1, 104737, 4, 0),
(738, 0, 1, 103738, 3, 0),
(739, 0, 1, 104739, 4, 0),
(740, 0, 1, 103740, 3, 0),
(741, 0, 1, 104741, 4, 0),
(742, 0, 1, 103742, 3, 0),
(743, 0, 1, 104743, 4, 0),
(744, 0, 1, 103744, 3, 0),
(745, 0, 1, 104745, 4, 0),
(746, 0, 1, 103746, 3, 0),
(747, 0, 1, 104747, 4, 0),
(748, 0, 1, 103748, 3, 0),
(749, 0, 1, 104749, 4, 0),
(750, 0, 1, 103750, 3, 0),
(751, 0, 1, 104751, 4, 0),
(752, 0, 1, 103752, 3, 0),
(753, 0, 1, 104753, 4, 0),
(754, 0, 1, 103754, 3, 0),
(755, 0, 1, 104755, 4, 0),
(756, 0, 1, 103756, 3, 0),
(757, 0, 1, 104757, 4, 0),
(758, 0, 1, 103758, 3, 0),
(759, 0, 1, 104759, 4, 0),
(760, 0, 1, 103760, 3, 0),
(761, 0, 1, 104761, 4, 0),
(762, 0, 1, 103762, 3, 0),
(763, 0, 1, 104763, 4, 0),
(764, 0, 1, 103764, 3, 0),
(765, 0, 1, 104765, 4, 0),
(766, 0, 1, 103766, 3, 0),
(767, 0, 1, 104767, 4, 0),
(768, 0, 1, 103768, 3, 0),
(769, 0, 1, 104769, 4, 0),
(770, 0, 1, 103770, 3, 0),
(771, 0, 1, 104771, 4, 0),
(772, 0, 1, 103772, 3, 0),
(773, 0, 1, 104773, 4, 0),
(774, 0, 1, 103774, 3, 0),
(775, 0, 1, 104775, 4, 0),
(776, 0, 1, 103776, 3, 0),
(777, 0, 1, 104777, 4, 0),
(778, 0, 1, 103778, 3, 0),
(779, 0, 1, 104779, 4, 0),
(780, 0, 1, 103780, 3, 0),
(781, 0, 1, 104781, 4, 0),
(782, 0, 1, 103782, 3, 0),
(783, 0, 1, 104783, 4, 0),
(784, 0, 1, 103784, 3, 0),
(785, 0, 1, 104785, 4, 0),
(786, 0, 1, 103786, 3, 0),
(787, 0, 1, 104787, 4, 0),
(788, 0, 1, 103788, 3, 0),
(789, 0, 1, 104789, 4, 0),
(790, 0, 1, 103790, 3, 0),
(791, 0, 1, 104791, 4, 0),
(792, 0, 1, 103792, 3, 0),
(793, 0, 1, 104793, 4, 0),
(794, 0, 1, 103794, 3, 0),
(795, 0, 1, 104795, 4, 0),
(796, 0, 1, 103796, 3, 0),
(797, 0, 1, 104797, 4, 0),
(798, 0, 1, 103798, 3, 0),
(799, 0, 1, 104799, 4, 0),
(800, 0, 1, 103800, 3, 0),
(801, 0, 1, 104801, 4, 0),
(802, 0, 1, 103802, 3, 0),
(803, 0, 1, 104803, 4, 0),
(804, 0, 1, 103804, 3, 0),
(805, 0, 1, 104805, 4, 0),
(806, 0, 1, 103806, 3, 0),
(807, 0, 1, 104807, 4, 0),
(808, 0, 1, 103808, 3, 0),
(809, 0, 1, 104809, 4, 0),
(810, 0, 1, 103810, 3, 0),
(811, 0, 1, 104811, 4, 0),
(812, 0, 1, 102812, 2, 0),
(813, 0, 1, 102813, 2, 0),
(814, 0, 1, 102814, 2, 0),
(815, 0, 1, 102815, 2, 0),
(816, 0, 1, 102816, 2, 0),
(817, 0, 1, 102817, 2, 0),
(818, 0, 1, 102818, 2, 0),
(819, 0, 1, 102819, 2, 0),
(820, 0, 1, 102820, 2, 0),
(821, 0, 1, 102821, 2, 0),
(822, 0, 1, 102822, 2, 0),
(823, 0, 1, 102823, 2, 0),
(824, 0, 1, 102824, 2, 0),
(825, 0, 1, 102825, 2, 0),
(826, 0, 1, 102826, 2, 0),
(827, 0, 1, 102827, 2, 0),
(828, 0, 1, 102828, 2, 0),
(829, 0, 1, 102829, 2, 0),
(830, 0, 1, 102830, 2, 0),
(831, 0, 1, 102831, 2, 0),
(832, 0, 1, 102832, 2, 0),
(833, 0, 1, 102833, 2, 0),
(834, 0, 1, 102834, 2, 0),
(835, 0, 1, 102835, 2, 0),
(836, 0, 1, 102836, 2, 0),
(837, 0, 1, 102837, 2, 0),
(838, 0, 1, 102838, 2, 0),
(839, 0, 1, 102839, 2, 0),
(840, 0, 1, 102840, 2, 0),
(841, 0, 1, 102841, 2, 0),
(842, 0, 1, 102842, 2, 0),
(843, 0, 1, 102843, 2, 0),
(844, 0, 1, 102844, 2, 0),
(845, 0, 1, 102845, 2, 0),
(846, 0, 1, 102846, 2, 0),
(847, 0, 1, 102847, 2, 0),
(848, 0, 1, 102848, 2, 0),
(849, 0, 1, 102849, 2, 0),
(850, 0, 1, 102850, 2, 0),
(851, 0, 1, 102851, 2, 0),
(852, 0, 1, 102852, 2, 0),
(853, 0, 1, 102853, 2, 0),
(854, 0, 1, 102854, 2, 0),
(855, 0, 1, 102855, 2, 0),
(856, 0, 1, 102856, 2, 0),
(857, 0, 1, 102857, 2, 0),
(858, 0, 1, 102858, 2, 0),
(859, 0, 1, 102859, 2, 0),
(860, 0, 1, 102860, 2, 0),
(861, 0, 1, 102861, 2, 0),
(862, 0, 1, 102862, 2, 0),
(863, 0, 1, 102863, 2, 0),
(864, 0, 1, 102864, 2, 0),
(865, 0, 1, 102865, 2, 0),
(866, 0, 1, 102866, 2, 0),
(867, 0, 1, 102867, 2, 0),
(868, 0, 1, 102868, 2, 0),
(869, 0, 1, 102869, 2, 0),
(870, 0, 1, 102870, 2, 0),
(871, 0, 1, 102871, 2, 0),
(872, 0, 1, 102872, 2, 0),
(873, 0, 1, 102873, 2, 0),
(874, 0, 1, 102874, 2, 0),
(875, 0, 1, 102875, 2, 0),
(876, 0, 1, 102876, 2, 0),
(877, 0, 1, 102877, 2, 0),
(878, 0, 1, 102878, 2, 0),
(879, 0, 1, 102879, 2, 0),
(880, 0, 1, 102880, 2, 0),
(881, 0, 1, 102881, 2, 0),
(882, 0, 1, 102882, 2, 0),
(883, 0, 1, 102883, 2, 0),
(884, 0, 1, 102884, 2, 0),
(885, 0, 1, 102885, 2, 0),
(886, 0, 1, 102886, 2, 0),
(887, 0, 1, 102887, 2, 0),
(888, 0, 1, 102888, 2, 0),
(889, 0, 1, 102889, 2, 0),
(890, 0, 1, 102890, 2, 0),
(891, 0, 1, 102891, 2, 0),
(892, 0, 1, 102892, 2, 0),
(893, 0, 1, 102893, 2, 0),
(894, 0, 1, 102894, 2, 0),
(895, 0, 1, 102895, 2, 0),
(896, 0, 1, 102896, 2, 0),
(897, 0, 1, 102897, 2, 0),
(898, 0, 1, 102898, 2, 0),
(899, 0, 1, 102899, 2, 0),
(900, 0, 1, 102900, 2, 0),
(901, 0, 1, 102901, 2, 0),
(902, 0, 1, 102902, 2, 0),
(903, 0, 1, 102903, 2, 0),
(904, 0, 1, 102904, 2, 0),
(905, 0, 1, 102905, 2, 0),
(906, 0, 1, 102906, 2, 0),
(907, 0, 1, 102907, 2, 0),
(908, 0, 1, 102908, 2, 0),
(909, 0, 1, 102909, 2, 0),
(910, 0, 1, 102910, 2, 0),
(911, 0, 1, 102911, 2, 0),
(912, 0, 1, 102912, 2, 0),
(913, 0, 1, 102913, 2, 0),
(914, 0, 1, 102914, 2, 0),
(915, 0, 1, 102915, 2, 0),
(916, 0, 1, 102916, 2, 0),
(917, 0, 1, 102917, 2, 0),
(918, 0, 1, 102918, 2, 0),
(919, 0, 1, 102919, 2, 0),
(920, 0, 1, 102920, 2, 0),
(921, 0, 1, 102921, 2, 0),
(922, 0, 1, 102922, 2, 0),
(923, 0, 1, 102923, 2, 0),
(924, 0, 1, 102924, 2, 0),
(925, 0, 1, 102925, 2, 0),
(926, 0, 1, 102926, 2, 0),
(927, 0, 1, 102927, 2, 0),
(928, 0, 1, 102928, 2, 0),
(929, 0, 1, 102929, 2, 0),
(930, 0, 1, 102930, 2, 0),
(931, 0, 1, 102931, 2, 0),
(932, 0, 1, 102932, 2, 0),
(933, 0, 1, 102933, 2, 0),
(934, 0, 1, 102934, 2, 0),
(935, 0, 1, 102935, 2, 0),
(936, 0, 1, 102936, 2, 0),
(937, 0, 1, 102937, 2, 0),
(938, 0, 1, 102938, 2, 0),
(939, 0, 1, 102939, 2, 0),
(940, 0, 1, 102940, 2, 0),
(941, 0, 1, 102941, 2, 0),
(942, 0, 1, 102942, 2, 0),
(943, 0, 1, 102943, 2, 0),
(944, 0, 1, 102944, 2, 0),
(945, 0, 1, 102945, 2, 0),
(946, 0, 1, 102946, 2, 0),
(947, 0, 1, 102947, 2, 0),
(948, 0, 1, 102948, 2, 0),
(949, 0, 1, 102949, 2, 0),
(950, 0, 1, 102950, 2, 0),
(951, 0, 1, 102951, 2, 0),
(952, 0, 1, 102952, 2, 0),
(953, 0, 1, 102953, 2, 0),
(954, 0, 1, 102954, 2, 0),
(955, 0, 1, 102955, 2, 0),
(956, 0, 1, 102956, 2, 0),
(957, 0, 1, 102957, 2, 0),
(958, 0, 1, 102958, 2, 0),
(959, 0, 1, 102959, 2, 0),
(960, 0, 1, 102960, 2, 0),
(961, 0, 1, 102961, 2, 0),
(962, 0, 1, 102962, 2, 0),
(963, 0, 1, 102963, 2, 0),
(964, 0, 1, 102964, 2, 0),
(965, 0, 1, 102965, 2, 0),
(966, 0, 1, 102966, 2, 0),
(967, 0, 1, 102967, 2, 0),
(968, 0, 1, 102968, 2, 0),
(969, 0, 1, 102969, 2, 0),
(970, 0, 1, 102970, 2, 0),
(971, 0, 1, 102971, 2, 0),
(972, 0, 1, 102972, 2, 0),
(973, 0, 1, 102973, 2, 0),
(974, 0, 1, 102974, 2, 0),
(975, 0, 1, 102975, 2, 0),
(976, 0, 1, 102976, 2, 0),
(977, 0, 1, 102977, 2, 0),
(978, 0, 1, 102978, 2, 0),
(979, 0, 1, 102979, 2, 0),
(980, 0, 1, 102980, 2, 0),
(981, 0, 1, 102981, 2, 0),
(982, 0, 1, 102982, 2, 0),
(983, 0, 1, 102983, 2, 0),
(984, 0, 1, 102984, 2, 0),
(985, 0, 1, 102985, 2, 0),
(986, 0, 1, 102986, 2, 0),
(987, 0, 1, 102987, 2, 0),
(988, 0, 1, 102988, 2, 0),
(989, 0, 1, 102989, 2, 0),
(990, 0, 1, 102990, 2, 0),
(991, 0, 1, 102991, 2, 0),
(992, 0, 1, 102992, 2, 0),
(993, 0, 1, 102993, 2, 0),
(994, 0, 1, 102994, 2, 0),
(995, 0, 1, 102995, 2, 0),
(996, 0, 1, 102996, 2, 0),
(997, 0, 1, 102997, 2, 0),
(998, 0, 1, 102998, 2, 0),
(999, 0, 1, 102999, 2, 0),
(1000, 0, 1, 1021000, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `efcore_bank_credit`
--

CREATE TABLE `efcore_bank_credit` (
  `ID` int(11) NOT NULL,
  `UUID` int(11) NOT NULL,
  `BankId` int(11) NOT NULL,
  `TypePayment` int(11) NOT NULL,
  `Indebtedness` int(11) NOT NULL,
  `LeftPayments` int(11) NOT NULL,
  `PledgeId` int(11) NOT NULL,
  `PledgeType` int(11) NOT NULL,
  `PayedAmount` int(11) NOT NULL,
  `Percents` int(11) NOT NULL,
  `ClosedCredit` tinyint(1) NOT NULL,
  `HistoryPayment` longtext DEFAULT NULL,
  `Create` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00.000000',
  `InterestRate` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `efcore_bank_deposit`
--

CREATE TABLE `efcore_bank_deposit` (
  `ID` int(11) NOT NULL,
  `UUID` int(11) NOT NULL,
  `BankId` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Profit` int(11) NOT NULL,
  `DepositMoney` int(11) NOT NULL,
  `AddedMoney` int(11) NOT NULL,
  `DepositTypes` int(11) NOT NULL,
  `HoursInInterval` int(11) NOT NULL,
  `DepositFullTime` int(11) NOT NULL,
  `ClosedDeposit` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `efcore_bank_transact`
--

CREATE TABLE `efcore_bank_transact` (
  `Id` int(11) NOT NULL,
  `From` int(11) NOT NULL,
  `FromType` int(11) NOT NULL,
  `To` int(11) NOT NULL,
  `ToType` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Tax` int(11) NOT NULL,
  `Comment` longtext DEFAULT NULL,
  `Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `equips`
--

CREATE TABLE `equips` (
  `id` int(11) NOT NULL,
  `clothes` text NOT NULL,
  `weapons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `errorlogs`
--

CREATE TABLE `errorlogs` (
  `id` int(11) NOT NULL,
  `log` text DEFAULT NULL,
  `time` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `eventcfg`
--

CREATE TABLE `eventcfg` (
  `RewardLimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `eventcfg`
--

INSERT INTO `eventcfg` (`RewardLimit`) VALUES
(50000);

-- --------------------------------------------------------

--
-- Table structure for table `eventslog`
--

CREATE TABLE `eventslog` (
  `AdminStarted` text NOT NULL,
  `EventName` text NOT NULL,
  `MembersLimit` text NOT NULL,
  `Started` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `e_candidates`
--

CREATE TABLE `e_candidates` (
  `ID` int(11) NOT NULL,
  `Votes` text NOT NULL,
  `Election` text NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `e_points`
--

CREATE TABLE `e_points` (
  `Election` int(11) NOT NULL,
  `X` varchar(11) NOT NULL,
  `Y` varchar(11) NOT NULL,
  `Z` varchar(11) NOT NULL,
  `Dimension` int(11) NOT NULL,
  `Opened` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `e_voters`
--

CREATE TABLE `e_voters` (
  `Election` int(11) NOT NULL,
  `Login` text NOT NULL,
  `TimeVoted` text NOT NULL,
  `VotedFor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `f_owner` int(11) DEFAULT NULL,
  `f_ranks` text DEFAULT NULL,
  `f_money` bigint(20) NOT NULL DEFAULT 0,
  `f_biography` text NOT NULL,
  `f_nation` text DEFAULT NULL,
  `f_chaticon` int(11) NOT NULL DEFAULT 1,
  `f_chatcolor` text DEFAULT NULL,
  `f_elo` int(11) NOT NULL DEFAULT 1000,
  `f_cntbattles` int(11) NOT NULL DEFAULT 0,
  `f_taboo` text DEFAULT NULL,
  `f_rules` text DEFAULT NULL,
  `f_clothespoint` text DEFAULT NULL,
  `f_clothesdim` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `f_moneylimit` int(11) NOT NULL DEFAULT 0,
  `f_typefam` int(11) NOT NULL DEFAULT 0,
  `f_points` int(11) NOT NULL DEFAULT 0,
  `f_respectPoints` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `familybattles`
--

CREATE TABLE `familybattles` (
  `id` int(11) NOT NULL,
  `business` int(11) NOT NULL DEFAULT -1,
  `familydef` int(11) NOT NULL DEFAULT -1,
  `familyattack` int(11) NOT NULL DEFAULT -1,
  `location` int(11) NOT NULL DEFAULT -1,
  `weapon` int(11) NOT NULL DEFAULT -1,
  `time` datetime NOT NULL,
  `comment` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `familywinner` int(11) DEFAULT -1,
  `famdefpoint` int(11) DEFAULT 0,
  `famattackpoint` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `familycompanies`
--

CREATE TABLE `familycompanies` (
  `id` int(11) NOT NULL,
  `position` text NOT NULL,
  `key` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL DEFAULT 0,
  `datecapt` datetime DEFAULT NULL,
  `ownertype` int(11) NOT NULL DEFAULT 1,
  `rotation` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `familycompanies`
--

INSERT INTO `familycompanies` (`id`, `position`, `key`, `ownerid`, `datecapt`, `ownertype`, `rotation`) VALUES
(1, '{\"x\":2667.64746,\"y\":2853.17163,\"z\":40.0810738}', 0, -1, '2023-01-08 14:18:40', 1, 149),
(2, '{\"x\":5262.38965,\"y\":-5434.15527,\"z\":65.59724}', 1, -1, '2022-12-25 23:23:18', 1, 327),
(3, '{\"x\":1741.88037,\"y\":-1617.83,\"z\":112.686913}', 2, -1, '2022-12-30 21:23:40', 1, 184),
(4, '{\"x\":-584.8858,\"y\":5345.08,\"z\":70.24925}', 3, -1, '2023-01-07 20:07:18', 1, 249),
(5, '{\"x\":1382.5845,\"y\":-2080.6091,\"z\":51.998558}', 4, -1, '2023-01-09 04:45:38', 1, 326),
(6, '{\"x\":2915.61914,\"y\":4368.0376,\"z\":50.4478722}', 5, -1, '2022-10-20 23:50:47', 1, 73);

-- --------------------------------------------------------

--
-- Table structure for table `familymp`
--

CREATE TABLE `familymp` (
  `id` int(11) NOT NULL,
  `date` text NOT NULL,
  `location` int(11) NOT NULL DEFAULT 1,
  `winner` int(11) NOT NULL DEFAULT 0,
  `finished` tinyint(4) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `kills` text DEFAULT NULL,
  `business` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `farms`
--

CREATE TABLE `farms` (
  `id` int(11) NOT NULL,
  `gangOwnerId` int(11) NOT NULL,
  `seedsOnStock` int(11) NOT NULL,
  `productsOnStock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `farms`
--

INSERT INTO `farms` (`id`, `gangOwnerId`, `seedsOnStock`, `productsOnStock`) VALUES
(0, 2, 1000, 0),
(1, 2, 1000, 0),
(2, 5, 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `farms_plants`
--

CREATE TABLE `farms_plants` (
  `id` int(11) NOT NULL,
  `farmId` int(11) NOT NULL,
  `seedAt` datetime DEFAULT NULL,
  `growingStage` int(11) DEFAULT NULL,
  `plantType` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fisher_data`
--

CREATE TABLE `fisher_data` (
  `id` int(11) NOT NULL,
  `socialname` varchar(45) NOT NULL,
  `lvl` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `license` int(11) NOT NULL,
  `map_expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fishing_spots`
--

CREATE TABLE `fishing_spots` (
  `id` int(11) NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fishing_spots`
--

INSERT INTO `fishing_spots` (`id`, `position`, `rotation`) VALUES
(23, '{\"x\":-1826.95044,\"y\":-1266.75732,\"z\":7.61826134}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(24, '{\"x\":-1826.60645,\"y\":-1268.79016,\"z\":7.618273}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(25, '{\"x\":-1830.53162,\"y\":-1264.80212,\"z\":7.618273}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(26, '{\"x\":-1831.6145,\"y\":-1263.86731,\"z\":7.61827}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(27, '{\"x\":-1834.5072,\"y\":-1262.42639,\"z\":7.618269}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(28, '{\"x\":-1837.05627,\"y\":-1260.72559,\"z\":7.61578846}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(29, '{\"x\":-1839.10168,\"y\":-1258.37329,\"z\":7.61578846}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(30, '{\"x\":-1840.79956,\"y\":-1256.259,\"z\":7.61578846}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(31, '{\"x\":-1844.461,\"y\":-1253.68689,\"z\":8.611515}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(32, '{\"x\":-1849.21179,\"y\":-1251.22,\"z\":7.61344433}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(33, '{\"x\":-1850.63513,\"y\":-1249.08752,\"z\":7.615778}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(34, '{\"x\":-1853.26514,\"y\":-1246.43225,\"z\":7.615778}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(35, '{\"x\":-1857.8269,\"y\":-1242.7135,\"z\":7.615778}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(36, '{\"x\":-1861.45642,\"y\":-1240.68579,\"z\":7.615778}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(37, '{\"x\":-1864.009,\"y\":-1237.64282,\"z\":7.615778}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(38, '{\"x\":-1847.19446,\"y\":-1252.9032,\"z\":7.615778}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(39, '{\"x\":-1862.93738,\"y\":-1234.5094,\"z\":7.615779}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(40, '{\"x\":-1860.08826,\"y\":-1232.25977,\"z\":7.615779}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(41, '{\"x\":-1823.18323,\"y\":-1266.69287,\"z\":7.618265}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(42, '{\"x\":-1820.8844,\"y\":-1263.94775,\"z\":7.61827374}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(43, '{\"x\":-1818.849,\"y\":-1261.52136,\"z\":7.61827374}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(44, '{\"x\":-1817.08374,\"y\":-1258.74451,\"z\":7.61827374}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(45, '{\"x\":-1812.67871,\"y\":-1254.16565,\"z\":7.61579132}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}'),
(46, '{\"x\":-1811.29614,\"y\":-1252.50391,\"z\":7.61578465}', '{\"x\":0.0,\"y\":0.0,\"z\":125.0}');

-- --------------------------------------------------------

--
-- Table structure for table `fractionaccess`
--

CREATE TABLE `fractionaccess` (
  `idkey` int(11) NOT NULL,
  `fraction` int(11) NOT NULL,
  `commands` text NOT NULL,
  `weapons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fractionaccess`
--

INSERT INTO `fractionaccess` (`idkey`, `fraction`, `commands`, `weapons`) VALUES
(1, 1, '{\"takemoney\":12,\"invite\":9,\"uninvite\":9,\"setrank\":1,\"cuff\":5,\"uncuff\":5,\"follow\":5,\"capture\":5}', '{\"Medkits\":10}'),
(2, 2, '{\"takemoney\":5,\"invite\":8,\"uninvite\":11,\"setrank\":1,\"cuff\":11,\"uncuff\":12,\"follow\":10,\"capture\":9}', '{\"Medkits\":10}'),
(3, 3, '{\"takemoney\":12,\"invite\":2,\"uninvite\":8,\"setrank\":1,\"cuff\":3,\"uncuff\":3,\"follow\":5,\"capture\":11}', '{\"Medkits\":10}'),
(4, 4, '{\"takemoney\":11,\"invite\":8,\"uninvite\":10,\"setrank\":1,\"cuff\":3,\"uncuff\":3,\"follow\":3,\"capture\":10}', '{\"Medkits\":10}'),
(5, 5, '{\"takemoney\":11,\"invite\":9,\"uninvite\":10,\"setrank\":1,\"cuff\":1,\"uncuff\":1,\"follow\":1,\"capture\":8}', '{\"Medkits\":10}'),
(6, 6, '{\"takemoney\":46,\"invite\":9,\"uninvite\":10,\"setrank\":31,\"cuff\":5,\"uncuff\":5,\"follow\":5,\"1\":42,\"dep\":9,\"gov\":10,\"cityhall1\":5,\"cityhall2\":5,\"cityhall3\":5,\"cityhall4\":5,\"cityhall5\":5,\"cityhall6\":5,\"cityhall7\":5,\"cityhall8\":5,\"cityhall9\":5,\"cityhall10\":5,\"cityhall11\":5,\"cityhall12\":5,\"cityhall13\":45,\"cityhall14\":5,\"cityhall15\":5,\"incar\":4,\"pull\":4,\"gov10\":1,\"gov11\":1}', '{\"stungun\":3,\"pistol\":4,\"PistolAmmo\":4,\"armor\":4,\"MedKits\":4,\"AdvancedRifle\":5,\"RiflesAmmo\":5,\"gusenberg\":20,\"SMGAmmo\":6,\"Medkits\":4}'),
(7, 7, '{\"takemoney\":20,\"invite\":9,\"uninvite\":9,\"setrank\":1,\"cuff\":20,\"uncuff\":2,\"follow\":2,\"incar\":2,\"arrest\":2,\"rfp\":9,\"givegunlic\":12,\"takegunlic\":12,\"ticket\":2,\"takeguns\":2,\"dep\":10,\"pull\":2,\"requestsupply\":19,\"setwanted\":3,\"removewanted\":2,\"gov\":16,\"police1\":1,\"police2\":5,\"police3\":10,\"police4\":1,\"police5\":18,\"police6\":1,\"police7\":1,\"police8\":1,\"police9\":1,\"police10\":1,\"police11\":2,\"police12\":1,\"police13\":1,\"police14\":1,\"police15\":1,\"police16\":1,\"police17\":1,\"police18\":1,\"police19\":1,\"police20\":1,\"police21\":1,\"police22\":1,\"lspd\":2,\"lspd1\":2,\"pd1\":1,\"pd2\":1,\"LSPD\":1,\"LSPD1\":1,\"LSPD2\":1,\"LSPD3\":1,\"LSPD4\":1,\"LSPD5\":1,\"LSPD6\":1,\"LSPD7\":1,\"LSPDD\":1,\"LSPDD1\":1,\"LSPDD2\":1,\"FIB\":1,\"FIB1\":1,\"FIB2\":1,\"FIB3\":1,\"FIB4\":1,\"FIB5\":1,\"Pol5\":0,\"Pol4\":0,\"Pol3\":0,\"Pol2\":0,\"Police1\":0,\"Pol1\":0,\"prisonjail1\":1,\"prisonjail2\":1,\"prisonjail3\":1,\"prisonjail4\":1,\"prisonjail5\":1,\"prisonjail6\":1,\"prisonjail7\":1,\"prisonjail8\":1,\"prisonjail9\":1,\"prisonjail10\":1}', '{\"Nightstick\":1,\"Pistol\":2,\"PistolAmmo\":2,\"armor\":2,\"Medkits\":2,\"StunGun\":2,\"PumpShotgun\":4,\"ShotgunsAmmo\":4,\"SMG\":5,\"SMGAmmo\":5,\"HeavyShotgun\":13,\"RiflesAmmo\":5,\"CarabineRifle\":5}'),
(8, 8, '{\"takemoney\":11,\"invite\":8,\"uninvite\":10,\"setrank\":1,\"ems\":2,\"gov\":9,\"dep\":7,\"ems1\":2,\"ems2\":2,\"ems3\":2,\"ems4\":2,\"ems5\":2,\"ems6\":2,\"ems7\":2,\"ems8\":2,\"ems9\":2,\"ems10\":2,\"ems11\":8,\"ems12\":8,\"ems13\":8,\"ems14\":2,\"ems15\":2,\"ems16\":2,\"ems17\":4,\"ems18\":4,\"EMS19\":4,\"EMS20\":4,\"EMS21\":9,\"EMS22\":4,\"EMS23\":4,\"EMS24\":4,\"EMS25\":2,\"plasticsurgery\":11,\"hostpital1\":1,\"hostpital2\":1,\"ems25\":1,\"ems26\":5,\"ems27\":1,\"ems28\":1,\"ems29\":1,\"ems30\":1,\"ems31\":1,\"ems32\":1,\"givemedlic\":9,\"heal\":1,\"medkit\":1}', '{\"Medkits\":2,\"StunGun\":8}'),
(9, 9, '{\"takemoney\":19,\"invite\":15,\"uninvite\":16,\"setrank\":1,\"cuff\":3,\"uncuff\":3,\"follow\":1,\"tocar\":3,\"incar\":3,\"pull\":3,\"takeguns\":3,\"ticket\":3,\"arrest\":3,\"requestsupply\":18,\"rfp\":18,\"dep\":10,\"setwanted\":3,\"removewanted\":3,\"gov\":18,\"takegunlic\":5,\"accesslift\":15,\"fib1\":7,\"fib2\":6,\"fib:parking:gate\":2,\"Police1\":3,\"FIB\":15,\"POLICE1\":5,\"Police\":3,\"Pol2\":3,\"Pol3\":3,\"Pol4\":3,\"Pol5\":3,\"Pol1\":3,\"prisonjail1\":1,\"prisonjail2\":1,\"prisonjail3\":1,\"prisonjail4\":1,\"prisonjail5\":1,\"prisonjail6\":1,\"prisonjail7\":1,\"prisonjail8\":1,\"prisonjail9\":1,\"prisonjail10\":1}', '{\"StunGun\":1,\"Pistol\":2,\"PistolAmmo\":2,\"armor\":2,\"CombatPDW\":3,\"SMGAmmo\":3,\"AdvancedRifle\":4,\"RiflesAmmo\":4,\"HeavySniper\":13,\"SniperAmmo\":13,\"Medkits\":2}'),
(10, 10, '{\"takemoney\":8,\"invite\":8,\"uninvite\":8,\"setrank\":8,\"cuff\":8,\"uncuff\":8,\"follow\":8}', '{\"Medkits\":8}'),
(11, 11, '{\"takemoney\":10,\"invite\":10,\"uninvite\":10,\"setrank\":10,\"cuff\":10,\"uncuff\":10,\"follow\":10,\"mex1\":1,\"11\":1,\"mex03\":1}', '{\"Medkits\":8}'),
(12, 12, '{\"takemoney\":10,\"invite\":7,\"uninvite\":7,\"setrank\":8,\"cuff\":10,\"uncuff\":10,\"follow\":10}', '{\"Medkits\":8}'),
(13, 13, '{\"takemoney\":9,\"invite\":9,\"uninvite\":9,\"setrank\":9,\"cuff\":1,\"uncuff\":1,\"follow\":1}', '{\"Medkits\":8}'),
(14, 14, '{\"takemoney\":19,\"invite\":18,\"uninvite\":18,\"setrank\":1,\"cuff\":10,\"uncuff\":6,\"follow\":6,\"incar\":3,\"takeguns\":6,\"dep\":12,\"pull\":3,\"requestsupply\":18,\"gov\":16,\"takesupplybox\":1,\"ng1\":16,\"NG1\":0,\"ng\":0}', '{\"pistol\":2,\"PistolAmmo\":2,\"carabine\":3,\"RiflesAmmo\":3,\"Medkits\":3,\"armor\":3,\"SMGAmmo\":13,\"CombatMG\":14}'),
(15, 15, '{\"takemoney\":17,\"invite\":16,\"uninvite\":17,\"setrank\":1,\"cuff\":17,\"uncuff\":17,\"follow\":17,\"editpriveadvert\":2,\"editnotpriveadvert\":2}', '{}'),
(16, 16, '{\"takemoney\":17,\"invite\":15,\"uninvite\":16,\"setrank\":17,\"cuff\":9,\"uncuff\":9,\"follow\":9}', '{\"Medkits\":8}'),
(17, 17, '{\"takemoney\":9,\"invite\":8,\"uninvite\":5,\"setrank\":5,\"cuff\":5,\"uncuff\":5,\"follow\":5,\"door1\":2,\"door2\":1,\"door3\":1,\"door4\":1,\"door5\":1,\"door6\":1,\"opensittingmenu\":1,\"prisonjail1\":1,\"prisonjail2\":1,\"prisonjail3\":1,\"prisonjail4\":1,\"prisonjail5\":1,\"prisonjail6\":1,\"prisonjail7\":1,\"prisonjail8\":1,\"prisonjail9\":1,\"prisonjail10\":1}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `fractionmoney`
--

CREATE TABLE `fractionmoney` (
  `id` int(11) NOT NULL,
  `fractionId` int(11) NOT NULL,
  `operation` varchar(3) NOT NULL,
  `sum` int(11) NOT NULL,
  `date` datetime(2) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fractionranks`
--

CREATE TABLE `fractionranks` (
  `idkey` int(11) NOT NULL,
  `fraction` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `payday` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fractionranks`
--

INSERT INTO `fractionranks` (`idkey`, `fraction`, `rank`, `payday`, `name`) VALUES
(8, 1, 1, 100, 'Outsider'),
(9, 1, 2, 200, 'Playa'),
(10, 1, 3, 300, 'Killa'),
(11, 1, 4, 400, 'B.A.D'),
(12, 1, 5, 500, 'Gangster'),
(13, 1, 6, 600, 'De King'),
(14, 1, 7, 700, 'O.G'),
(15, 1, 8, 800, 'Hommie'),
(16, 1, 9, 900, 'Sweet'),
(17, 1, 10, 1000, 'Legend'),
(18, 1, 11, 1100, 'Mad Dog'),
(19, 1, 12, 1200, 'Big Daddy'),
(26, 2, 1, 100, 'Freak'),
(27, 2, 2, 200, 'Little Nigga'),
(28, 2, 3, 300, 'Homeboy'),
(29, 2, 4, 400, 'Mature'),
(30, 2, 5, 500, 'Gun Bro'),
(31, 2, 6, 600, 'Gunsta'),
(32, 2, 7, 700, 'Hustle'),
(33, 2, 8, 800, 'Young Gangsta'),
(34, 2, 9, 900, 'Wiseman'),
(35, 2, 10, 1000, 'Beast'),
(36, 2, 11, 1100, 'O.G'),
(37, 2, 12, 1200, 'Daddy'),
(44, 3, 1, 100, 'Novito'),
(45, 3, 2, 200, 'Ordinario'),
(46, 3, 3, 300, 'Locale'),
(47, 3, 4, 400, 'Verification'),
(48, 3, 5, 500, 'Sangre Joven'),
(49, 3, 6, 600, 'Murda'),
(50, 3, 7, 700, 'Assessino'),
(51, 3, 8, 800, 'Latino King'),
(52, 3, 9, 900, 'Bandito'),
(53, 3, 10, 1000, 'Definido'),
(54, 3, 11, 1100, 'De Confianza'),
(55, 3, 12, 1200, 'Padrino'),
(62, 4, 1, 100, 'Nadie'),
(63, 4, 2, 200, 'Seguro'),
(64, 4, 3, 300, 'Artesano'),
(65, 4, 4, 400, 'Allegado'),
(66, 4, 5, 500, 'Caza'),
(67, 4, 6, 600, 'Soldado'),
(68, 4, 7, 700, 'J.'),
(69, 4, 8, 800, 'Ayudante'),
(70, 4, 9, 900, 'Mentor'),
(71, 4, 10, 1000, 'Explosion'),
(72, 4, 11, 1100, 'Maestro'),
(73, 4, 12, 1200, 'El Padre'),
(80, 5, 1, 100, 'Fresh Meat'),
(81, 5, 2, 200, 'Young Blood'),
(82, 5, 3, 300, 'Mature Blood'),
(83, 5, 4, 400, 'Gangster Blood'),
(84, 5, 5, 500, 'Kill Blood'),
(85, 5, 6, 600, 'Beef'),
(86, 5, 7, 700, 'Looker Blood'),
(87, 5, 8, 800, 'Confirmed '),
(88, 5, 9, 900, 'Little Bos'),
(89, 5, 10, 1000, 'Big Blood Boss'),
(90, 5, 11, 1100, 'Rex'),
(91, 5, 12, 1200, 'King of Blood'),
(94, 6, 1, 800, 'Стажер USSS'),
(95, 6, 2, 800, 'Стажер Юрист'),
(96, 6, 3, 800, 'Стажер Секретарь'),
(97, 6, 4, 800, 'Стажер налоговой службы'),
(98, 6, 5, 1500, 'USSS Офицер'),
(99, 6, 6, 2400, 'USSS Агент'),
(100, 6, 7, 2600, 'USSS Специальный агент'),
(101, 6, 8, 3000, 'USSS Заместитель Начальника отдела'),
(102, 6, 9, 3200, 'USSS Начальник отдела'),
(103, 6, 10, 3800, 'Зам директора USSS'),
(104, 6, 11, 4500, 'Директор USSS'),
(105, 6, 12, 3000, 'Офицер налоговой службы'),
(106, 6, 13, 3500, 'Заместитель Директора налоговой'),
(107, 6, 14, 4000, 'Директор налоговой'),
(108, 6, 15, 1500, 'Секретарь'),
(109, 6, 16, 2000, 'Старший секретарь'),
(110, 6, 17, 2600, 'Начальник отдела секретариат'),
(111, 6, 18, 3500, 'Пресс секретарь'),
(112, 6, 19, 4000, 'Заместитель главы аппарата'),
(113, 6, 20, 4500, 'Глава аппарата'),
(114, 6, 21, 1500, 'Юрист'),
(116, 7, 1, 400, 'Junior Treinee'),
(117, 7, 2, 700, 'Trainee'),
(118, 7, 3, 1000, 'Junior Officer'),
(119, 7, 4, 1400, 'Ofricer I'),
(120, 7, 5, 1700, 'Officer II'),
(121, 7, 6, 2000, 'Officer III'),
(122, 7, 7, 2300, 'Officer IV'),
(123, 7, 8, 2700, 'Senior Officer'),
(124, 7, 9, 3000, 'Manager Officer'),
(125, 7, 10, 3300, 'Senior Manager Officer'),
(126, 7, 11, 3700, 'Sergeant'),
(127, 7, 12, 4000, 'Lieutenant'),
(128, 7, 13, 4500, 'Senior Lieutenant'),
(129, 7, 14, 5000, 'Captain'),
(134, 8, 1, 800, 'Intern'),
(135, 8, 2, 1500, 'Medical Worker'),
(136, 8, 3, 2000, 'Assistant of Doctor'),
(137, 8, 4, 2500, 'Doctor'),
(138, 8, 5, 3000, 'Narcology'),
(139, 8, 6, 4000, 'Superintendent'),
(140, 8, 7, 4500, 'Specialist'),
(141, 8, 8, 5500, 'Deputy Chief of Department'),
(142, 8, 9, 6500, 'Chief Department'),
(143, 8, 10, 7500, 'Deputy Head Physician'),
(144, 8, 11, 8000, 'Head Physician'),
(152, 9, 1, 700, 'Junior Trainee'),
(153, 9, 2, 1000, 'Trainee'),
(154, 9, 3, 1300, 'Junior Agent'),
(155, 9, 4, 1700, 'Agent'),
(156, 9, 5, 2000, 'Senior Agent'),
(157, 9, 6, 2300, 'Special Agent'),
(158, 9, 7, 2700, 'Senior Special Agent'),
(159, 9, 8, 3000, 'Secret Agent'),
(160, 9, 9, 3300, 'Senior Secret Agent'),
(161, 9, 10, 3700, 'Agetn NAT. Securities'),
(162, 9, 11, 4000, 'Senior Agetn NAT. Securities'),
(163, 9, 12, 4500, 'Manager Agent'),
(164, 9, 13, 5000, 'Senior Manager Agent'),
(165, 9, 14, 5500, 'Instructor FIB'),
(170, 10, 1, 100, 'Novicio'),
(171, 10, 2, 200, 'Assosiato'),
(172, 10, 3, 300, 'Combattente'),
(173, 10, 4, 400, 'Soldato'),
(174, 10, 5, 500, 'Man-O-War'),
(175, 10, 6, 600, 'Sotto-Kapo'),
(176, 10, 7, 700, 'Kapo'),
(177, 10, 8, 800, 'Little Boss'),
(178, 10, 9, 900, 'Consigliere'),
(179, 10, 10, 1000, 'Don'),
(188, 11, 1, 100, 'Шнырь'),
(189, 11, 2, 200, 'Фраер'),
(190, 11, 3, 300, 'Барыга'),
(191, 11, 4, 400, 'Бык'),
(192, 11, 5, 500, 'Блатной'),
(193, 11, 6, 600, 'Свояк'),
(194, 11, 7, 700, 'Браток'),
(195, 11, 8, 800, 'Вор'),
(196, 11, 9, 900, 'Вор в законе'),
(197, 11, 10, 1000, 'Авторитет'),
(206, 12, 1, 100, 'Cyatay'),
(207, 12, 2, 200, 'Kodai'),
(208, 12, 3, 300, 'Syatai'),
(209, 12, 4, 400, 'Fuku-Hombute'),
(210, 12, 5, 500, 'Wakagasira'),
(211, 12, 6, 600, 'So-Hombute'),
(212, 12, 7, 700, 'Kambu'),
(213, 12, 8, 800, 'Saiko-Komon'),
(214, 12, 9, 900, 'Kumite'),
(215, 12, 10, 1000, 'Oyadzi'),
(224, 13, 1, 100, 'Ержан'),
(225, 13, 2, 200, 'Лав Тха'),
(226, 13, 3, 300, 'Хардах'),
(227, 13, 4, 400, 'Анцагорц'),
(228, 13, 5, 500, 'Джепкир'),
(229, 13, 6, 600, 'Ехпайр'),
(230, 13, 7, 700, 'Найох'),
(231, 13, 8, 800, 'Гох'),
(232, 13, 9, 900, 'Кероп'),
(233, 13, 10, 1000, 'Баир'),
(242, 14, 1, 1500, 'Recruit'),
(243, 14, 2, 1800, 'Private '),
(244, 14, 3, 2100, 'Private First Class'),
(245, 14, 4, 2400, 'Specialist'),
(246, 14, 5, 2700, 'Corporal'),
(247, 14, 6, 3000, 'Sergeant'),
(248, 14, 7, 3250, 'Staff Sergeant'),
(249, 14, 8, 3500, 'Sergeant First Class'),
(250, 14, 9, 3800, 'Warrant Officer'),
(251, 14, 10, 4100, 'Chief Warrant Officer'),
(252, 14, 11, 4400, 'Second Lieutenant'),
(253, 14, 12, 4700, 'First Lieutenant'),
(254, 14, 13, 5000, 'Captain'),
(255, 14, 14, 5300, 'Major'),
(256, 14, 15, 5600, 'Lieutenant Colonel'),
(259, 15, 1, 1000, 'Trainee'),
(260, 15, 2, 1500, 'Journalist'),
(261, 15, 3, 2000, 'Specialist'),
(262, 15, 4, 2500, 'Mentor'),
(263, 15, 5, 3000, 'Photographer'),
(264, 15, 6, 3500, 'Rewriter'),
(265, 15, 7, 4000, 'Assistant Editor'),
(266, 15, 8, 4500, 'Operator'),
(267, 15, 9, 5000, 'Personnel Manager'),
(268, 15, 10, 6000, 'Chief Editor'),
(269, 15, 11, 6500, 'Producer'),
(270, 15, 12, 7000, 'Chief Manager'),
(271, 15, 13, 7500, 'Head Editor'),
(272, 15, 14, 8000, 'Head Presenter'),
(273, 15, 15, 8500, 'Head Manager'),
(274, 15, 16, 9000, 'Deputy General Director'),
(275, 15, 17, 9500, 'General Director'),
(278, 16, 1, 100, 'rank_1'),
(279, 16, 2, 200, 'rank_2'),
(280, 16, 3, 300, 'rank_3'),
(281, 16, 4, 400, 'rank_4'),
(282, 16, 5, 500, 'rank_5'),
(283, 16, 6, 600, 'rank_6'),
(284, 16, 7, 700, 'rank_7'),
(285, 16, 8, 800, 'rank_8'),
(286, 16, 9, 900, 'rank_9'),
(287, 16, 10, 1000, 'rank_10'),
(288, 16, 11, 1100, 'rank_11'),
(289, 16, 12, 1200, 'rank_12'),
(290, 16, 13, 1300, 'rank_13'),
(291, 16, 14, 1400, 'rank_14'),
(292, 16, 15, 1500, 'rank_15'),
(293, 16, 16, 1600, 'rank_16'),
(294, 16, 17, 1700, 'rank_17'),
(296, 17, 1, 3000, 'Security 1'),
(297, 17, 2, 4000, 'Security 2'),
(298, 17, 3, 5000, 'Security 3'),
(299, 17, 4, 6000, 'Congressman'),
(300, 17, 5, 7000, 'Deputy Head of security'),
(301, 17, 6, 8000, 'Deputy Faction representative'),
(302, 17, 7, 8500, 'Head of security'),
(303, 17, 8, 9000, 'Faction representative'),
(304, 17, 9, 9500, 'Vice Speaker'),
(305, 17, 10, 10000, 'Speaker'),
(339, 16, 18, 1800, 'rank_18'),
(341, 9, 15, 6000, 'Senior Instructor FIB'),
(342, 9, 16, 6500, 'Deputy Chief of Department'),
(343, 9, 17, 7000, 'Chief of Department'),
(344, 9, 18, 7500, 'Assistant of Director'),
(345, 9, 19, 8000, 'Deputy of Director'),
(346, 9, 20, 8500, 'Director'),
(347, 14, 16, 5900, 'Colonel'),
(348, 14, 17, 6200, 'Brigadier General'),
(349, 14, 18, 6500, 'General Major'),
(350, 14, 19, 6800, 'General Lieutenant'),
(351, 14, 20, 7800, 'General Army'),
(352, 7, 15, 5500, 'Instructor LSPD'),
(353, 7, 16, 6000, 'Senior Instructor LSPD'),
(354, 7, 17, 6500, 'Deputy Chief Of Department'),
(355, 7, 18, 7000, 'Chief of Department'),
(356, 7, 19, 7500, 'Deputy of Chief'),
(357, 7, 20, 8000, 'Chief'),
(358, 6, 22, 2500, 'Адвокат'),
(359, 6, 23, 3500, 'Старший адвокат'),
(360, 6, 24, 4500, 'Президент Ассоциации Адвокатов'),
(361, 6, 25, 3500, 'Помощник Нотариуса'),
(362, 6, 26, 4500, 'Нотариус'),
(363, 6, 27, 2500, 'Младший прокурор'),
(364, 6, 28, 3500, 'Окружной прокурор'),
(365, 6, 29, 4000, 'Старший Прокурор'),
(366, 6, 30, 4200, 'Военный прокурор'),
(367, 6, 31, 7000, 'Мэр'),
(368, 6, 32, 6000, 'Советник Губернатора'),
(369, 6, 33, 5000, 'Советник Министра Культуры'),
(370, 6, 34, 7500, 'Министр Культуры'),
(371, 6, 35, 5000, 'Советник Министра Здравоохранения'),
(372, 6, 36, 7500, 'Министр Здравоохранения'),
(373, 6, 37, 5000, 'Советник Министра Безопасности'),
(374, 6, 38, 7500, 'Министр Безопасности'),
(375, 6, 39, 5000, 'Советник Министра Финансов'),
(376, 6, 40, 7500, 'Министр Финансов'),
(377, 6, 41, 5000, 'Советник Министра Обороны'),
(378, 6, 42, 7500, 'Министр Обороны'),
(379, 6, 43, 5000, 'Советник Министра Юстиции'),
(380, 6, 44, 7500, 'Министр Юстиций'),
(381, 6, 45, 9000, 'Вице-Губернатор'),
(382, 6, 46, 10000, 'Губернатор');

-- --------------------------------------------------------

--
-- Table structure for table `fractions`
--

CREATE TABLE `fractions` (
  `id` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `fuellimit` int(11) NOT NULL,
  `fuelleft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fractions`
--

INSERT INTO `fractions` (`id`, `money`, `fuellimit`, `fuelleft`) VALUES
(1, 5000000, 150000, 150000),
(2, 5000000, 150000, 150000),
(3, 5000000, 150000, 150000),
(4, 5000000, 150000, 150000),
(5, 5000000, 150000, 150000),
(6, 5000000, 150000, 150000),
(7, 5000000, 150000, 150000),
(8, 5000000, 150000, 150000),
(9, 5000000, 150000, 150000),
(10, 5000000, 150000, 150000),
(11, 5000000, 150000, 150000),
(12, 5000000, 150000, 150000),
(13, 5000000, 150000, 150000),
(14, 5000000, 150000, 150000),
(15, 5000000, 150000, 150000),
(16, 5000000, 150000, 150000),
(17, 5000000, 150000, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `fractionstock`
--

CREATE TABLE `fractionstock` (
  `id` int(11) NOT NULL,
  `inventoryid` int(11) NOT NULL,
  `fractionid` int(11) NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` text NOT NULL,
  `password` text DEFAULT NULL,
  `typeowner` int(11) NOT NULL DEFAULT 2,
  `size` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fractionstock`
--

INSERT INTO `fractionstock` (`id`, `inventoryid`, `fractionid`, `dimension`, `position`, `password`, `typeowner`, `size`) VALUES
(688, 807, 6, 0, '{\"x\":-574.9192,\"y\":-199.20224,\"z\":46.3899}', '1234', 2, 1),
(689, 808, 1, 0, '{\"x\":107.71128,\"y\":-1972.4651,\"z\":16.54373}', '1234', 2, 1),
(690, 809, 2, 0, '{\"x\":-64.80122,\"y\":-1391.586,\"z\":28.320696}', '1234', 2, 1),
(692, 811, 3, 0, '{\"x\":972.2721,\"y\":-1796.5745,\"z\":30.325058}', '1234', 2, 1),
(693, 812, 4, 0, '{\"x\":1561.7695,\"y\":-2110.0437,\"z\":77.31915}', '1234', 2, 1),
(695, 814, 5, 0, '{\"x\":868.39703,\"y\":-2215.2893,\"z\":29.640503}', '1234', 2, 1),
(696, 815, 7, 0, '{\"x\":596.5045,\"y\":-13.69083,\"z\":81.74042}', '1234', 2, 1),
(699, 818, 8, 0, '{\"x\":312.96317,\"y\":-576.9177,\"z\":42.129707}', '1234', 2, 1),
(700, 819, 9, 0, '{\"x\":119.11375,\"y\":-729.6045,\"z\":241.15187}', '1234', 2, 1),
(701, 820, 14, 0, '{\"x\":-1819.3589,\"y\":2771.6824,\"z\":-4.2701287}', '1234', 2, 1),
(704, 920, 16, 0, '{\"x\":1995.2949,\"y\":3048.368,\"z\":46.215275}', '1234', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fractionvehicles`
--

CREATE TABLE `fractionvehicles` (
  `fraction` int(11) NOT NULL,
  `number` text NOT NULL,
  `components` text DEFAULT NULL,
  `model` text NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL,
  `rank` int(11) NOT NULL,
  `colorprim` int(11) NOT NULL,
  `colorsec` int(11) NOT NULL,
  `idkey` int(11) NOT NULL,
  `power` double NOT NULL DEFAULT 1,
  `torque` double NOT NULL DEFAULT 1,
  `items` text NOT NULL,
  `componentsnew` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fraction_access`
--

CREATE TABLE `fraction_access` (
  `Id` int(11) NOT NULL,
  `FractionId` int(11) NOT NULL,
  `FractionRank` int(11) NOT NULL,
  `AccessList` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `uuid` varchar(155) NOT NULL,
  `furniture` text NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gangspoints`
--

CREATE TABLE `gangspoints` (
  `id` int(11) NOT NULL,
  `gangid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gangspoints`
--

INSERT INTO `gangspoints` (`id`, `gangid`) VALUES
(0, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 2),
(11, 2),
(12, 1),
(13, 1),
(14, 2),
(15, 2),
(16, 2),
(17, 1),
(18, 1),
(19, 2),
(20, 2),
(21, 2),
(22, 1),
(23, 1),
(24, 4),
(25, 2),
(26, 2),
(27, 2),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 1),
(36, 5),
(37, 5),
(38, 5),
(39, 1),
(40, 5),
(41, 5),
(42, 4),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 1),
(48, 3),
(49, 3),
(50, 3),
(51, 2),
(52, 2),
(53, 4),
(54, 4),
(55, 2),
(56, 4),
(57, 4),
(58, 4),
(59, 1),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(68, 4),
(69, 2),
(70, 4),
(71, 4),
(72, 3),
(73, 3),
(74, 4);

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL,
  `typeowner` double NOT NULL DEFAULT 0,
  `nativeType` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `garages`
--

INSERT INTO `garages` (`id`, `type`, `position`, `rotation`, `typeowner`, `nativeType`) VALUES
(1, 4, '{\"x\":-887.7115,\"y\":-14.94506,\"z\":43.112785}', '{\"x\":0.0,\"y\":0.0,\"z\":-58.20064}', 0, 4),
(2, 0, '{\"x\":-2596.1846,\"y\":1929.7085,\"z\":167.30772}', '{\"x\":0.0,\"y\":0.0,\"z\":-88.87106}', 0, 5),
(3, 1, '{\"x\":1401.7916,\"y\":-571.5673,\"z\":74.33887}', '{\"x\":0.0,\"y\":0.0,\"z\":110.277596}', 0, 1),
(4, 1, '{\"x\":1291.7009,\"y\":-580.0104,\"z\":71.74417}', '{\"x\":0.0,\"y\":0.0,\"z\":-18.208178}', 0, 1),
(5, 2, '{\"x\":-3019.259,\"y\":739.1829,\"z\":27.552034}', '{\"x\":0.0,\"y\":0.0,\"z\":106.20959}', 0, 2),
(6, 0, '{\"x\":331.017,\"y\":-2045.3423,\"z\":20.759335}', '{\"x\":0.0,\"y\":0.0,\"z\":-44.65019}', 0, 0),
(7, 1, '{\"x\":223.09947,\"y\":514.073,\"z\":140.76712}', '{\"x\":0.0,\"y\":0.0,\"z\":-166.3063}', 0, 3),
(8, 4, '{\"x\":391.81995,\"y\":431.00735,\"z\":143.41942}', '{\"x\":0.0,\"y\":0.0,\"z\":-4.4400053}', 0, 4),
(9, 1, '{\"x\":223.3158,\"y\":514.50323,\"z\":140.76625}', '{\"x\":0.0,\"y\":0.0,\"z\":-133.76231}', 0, 3),
(10, 4, '{\"x\":236.68369,\"y\":528.7871,\"z\":140.639}', '{\"x\":0.0,\"y\":0.0,\"z\":29.605139}', 0, 4),
(11, 1, '{\"x\":329.635864,\"y\":-2042.15515,\"z\":20.1467438}', '{\"x\":-1.620252,\"y\":1.97530138,\"z\":322.061584}', 0, 0),
(12, 0, '{\"x\":466.62262,\"y\":-1578.9335,\"z\":29.12208}', '{\"x\":0.0,\"y\":0.0,\"z\":-133.90555}', 0, 0),
(13, 0, '{\"x\":423.74463,\"y\":-1557.3276,\"z\":29.265306}', '{\"x\":0.0,\"y\":0.0,\"z\":45.72817}', 0, 0),
(14, 0, '{\"x\":1228.1497,\"y\":-1604.6122,\"z\":51.814068}', '{\"x\":0.0,\"y\":0.0,\"z\":-152.64127}', 0, 0),
(16, 0, '{\"x\":1322.5656,\"y\":-1540.1263,\"z\":50.535706}', '{\"x\":0.0,\"y\":0.0,\"z\":102.55412}', 0, 0),
(17, 0, '{\"x\":1336.7667,\"y\":-1548.7455,\"z\":52.832127}', '{\"x\":0.0,\"y\":0.0,\"z\":37.76406}', 0, 0),
(18, 1, '{\"x\":947.38416,\"y\":-668.62225,\"z\":58.011448}', '{\"x\":0.0,\"y\":0.0,\"z\":-63.95886}', 0, 1),
(19, 1, '{\"x\":975.70966,\"y\":-618.5009,\"z\":58.83879}', '{\"x\":0.0,\"y\":0.0,\"z\":123.28946}', 0, 1),
(20, 4, '{\"x\":-536.25037,\"y\":484.71823,\"z\":102.990654}', '{\"x\":0.0,\"y\":0.0,\"z\":50.70146}', 0, 4),
(21, 1, '{\"x\":948.3331,\"y\":-513.0987,\"z\":60.22543}', '{\"x\":0.0,\"y\":0.0,\"z\":28.510792}', 0, 1),
(22, 2, '{\"x\":249.71788,\"y\":-2045.72485,\"z\":17.8736439}', '{\"x\":0.0,\"y\":0.0,\"z\":224.5114}', 0, 2),
(23, 1, '{\"x\":1020.75903,\"y\":-462.0664,\"z\":63.903835}', '{\"x\":0.0,\"y\":0.0,\"z\":35.512337}', 0, 1),
(24, 0, '{\"x\":210.76468,\"y\":-1731.1505,\"z\":29.00512}', '{\"x\":0.0,\"y\":0.0,\"z\":-158.10728}', 0, 0),
(25, 1, '{\"x\":1109.079,\"y\":-400.4186,\"z\":68.075264}', '{\"x\":0.0,\"y\":0.0,\"z\":70.754974}', 0, 1),
(26, 1, '{\"x\":1055.8948,\"y\":-386.46542,\"z\":67.85347}', '{\"x\":0.0,\"y\":0.0,\"z\":-145.39908}', 0, 1),
(27, 0, '{\"x\":-1130.2118,\"y\":-1070.9739,\"z\":2.0804982}', '{\"x\":0.0,\"y\":0.0,\"z\":26.48825}', 0, 0),
(28, 4, '{\"x\":-767.77264,\"y\":664.7003,\"z\":145.04599}', '{\"x\":0.0,\"y\":0.0,\"z\":-64.64641}', 0, 4),
(29, 0, '{\"x\":-984.8973,\"y\":-984.8808,\"z\":1.998668}', '{\"x\":0.0,\"y\":0.0,\"z\":121.0091}', 0, 0),
(30, 2, '{\"x\":-2988.0015,\"y\":731.7787,\"z\":28.496891}', '{\"x\":0.0,\"y\":0.0,\"z\":-157.64891}', 0, 2),
(31, 0, '{\"x\":312.766754,\"y\":-1968.02075,\"z\":22.8737774}', '{\"x\":-3.91278315,\"y\":2.41042948,\"z\":227.295959}', 0, 0),
(32, 4, '{\"x\":-918.2221,\"y\":112.28289,\"z\":55.31674}', '{\"x\":0.0,\"y\":0.0,\"z\":174.04207}', 0, 4),
(33, 0, '{\"x\":-1865.5386,\"y\":-590.478,\"z\":11.795642}', '{\"x\":0.0,\"y\":0.0,\"z\":-43.89388}', 0, 0),
(34, 4, '{\"x\":-672.05304,\"y\":910.90985,\"z\":230.41924}', '{\"x\":0.0,\"y\":0.0,\"z\":-42.908394}', 0, 4),
(35, 0, '{\"x\":363.735046,\"y\":-1902.79248,\"z\":24.106842}', '{\"x\":-1.12205279,\"y\":0.323424518,\"z\":226.161957}', 0, 0),
(36, 0, '{\"x\":-1919.2552,\"y\":-538.3438,\"z\":11.805354}', '{\"x\":0.0,\"y\":0.0,\"z\":-44.953842}', 0, 0),
(37, 4, '{\"x\":-542.4282,\"y\":543.9194,\"z\":110.42259}', '{\"x\":0.0,\"y\":0.0,\"z\":-106.77026}', 0, 4),
(38, 0, '{\"x\":-1967.2933,\"y\":-502.18323,\"z\":11.897644}', '{\"x\":0.0,\"y\":0.0,\"z\":-38.9206}', 0, 0),
(39, 2, '{\"x\":-1715.3259,\"y\":-500.56573,\"z\":38.128765}', '{\"x\":0.0,\"y\":0.0,\"z\":160.67496}', 0, 2),
(40, 24, '{\"x\":435.3803,\"y\":-1835.29211,\"z\":27.3125172}', '{\"x\":0.0447110273,\"y\":0.0262333378,\"z\":223.739777}', 0, 0),
(41, 2, '{\"x\":-1672.0023,\"y\":-450.60327,\"z\":39.37345}', '{\"x\":0.0,\"y\":0.0,\"z\":-131.80278}', 0, 2),
(42, 2, '{\"x\":-1612.5586,\"y\":-377.59134,\"z\":43.365055}', '{\"x\":0.0,\"y\":0.0,\"z\":-147.2039}', 0, 2),
(43, 2, '{\"x\":-1603.0277,\"y\":-364.41006,\"z\":45.641636}', '{\"x\":0.0,\"y\":0.0,\"z\":-128.36504}', 0, 2),
(44, 2, '{\"x\":-2982.4165,\"y\":654.75476,\"z\":25.097048}', '{\"x\":0.0,\"y\":0.0,\"z\":99.88415}', 0, 2),
(45, 0, '{\"x\":-3223.9922,\"y\":925.23804,\"z\":13.95631}', '{\"x\":0.0,\"y\":0.0,\"z\":-55.937458}', 0, 0),
(46, 0, '{\"x\":-3176.4517,\"y\":1296.5548,\"z\":14.498082}', '{\"x\":0.0,\"y\":0.0,\"z\":-119.180534}', 0, 0),
(47, 0, '{\"x\":-396.94034,\"y\":6312.627,\"z\":28.87138}', '{\"x\":0.0,\"y\":0.0,\"z\":-139.28561}', 0, 0),
(48, 0, '{\"x\":-15.687123,\"y\":6646.0796,\"z\":31.115501}', '{\"x\":0.0,\"y\":0.0,\"z\":-158.22186}', 0, 0),
(49, 0, '{\"x\":-378.2923,\"y\":6184.1543,\"z\":31.4906}', '{\"x\":0.0,\"y\":0.0,\"z\":-139.2627}', 0, 0),
(50, 25, '{\"x\":-1577.6127,\"y\":-80.76385,\"z\":54.134487}', '{\"x\":0.0,\"y\":0.0,\"z\":-86.14378}', 0, 4),
(51, 0, '{\"x\":486.0619,\"y\":-1825.51392,\"z\":27.5278625}', '{\"x\":5.12384129,\"y\":7.42071438,\"z\":51.6329651}', 0, 0),
(52, 0, '{\"x\":-355.7967,\"y\":6223.6895,\"z\":31.489206}', '{\"x\":0.0,\"y\":0.0,\"z\":-137.44069}', 0, 0),
(53, 0, '{\"x\":-294.26172,\"y\":6339.249,\"z\":32.257847}', '{\"x\":0.0,\"y\":0.0,\"z\":47.109}', 0, 0),
(54, 0, '{\"x\":-12.690056,\"y\":6564.0083,\"z\":31.949675}', '{\"x\":0.0,\"y\":0.0,\"z\":-136.32343}', 0, 0),
(55, 0, '{\"x\":34.15002,\"y\":6605.957,\"z\":32.45177}', '{\"x\":0.0,\"y\":0.0,\"z\":-134.31235}', 0, 0),
(56, 0, '{\"x\":1402.5306,\"y\":3659.3848,\"z\":34.15305}', '{\"x\":0.0,\"y\":0.0,\"z\":18.071505}', 0, 0),
(57, 0, '{\"x\":1433.5103,\"y\":3662.2332,\"z\":34.18604}', '{\"x\":0.0,\"y\":0.0,\"z\":-70.84008}', 0, 0),
(58, 3, '{\"x\":-1973.8896,\"y\":623.54895,\"z\":122.46102}', '{\"x\":0.0,\"y\":0.0,\"z\":-114.505196}', 0, 3),
(59, 4, '{\"x\":-401.7092,\"y\":510.23672,\"z\":120.204445}', '{\"x\":0.0,\"y\":0.0,\"z\":-24.911789}', 0, 4),
(60, 3, '{\"x\":-1938.7853,\"y\":526.0856,\"z\":110.03924}', '{\"x\":0.0,\"y\":0.0,\"z\":156.05693}', 0, 3),
(61, 0, '{\"x\":1255.62427,\"y\":-1748.72913,\"z\":47.4014244}', '{\"x\":-7.51972675,\"y\":8.056554,\"z\":116.880066}', 0, 0),
(62, 0, '{\"x\":1257.42224,\"y\":-1742.14526,\"z\":48.2755127}', '{\"x\":-3.153002,\"y\":9.777723,\"z\":115.285553}', 0, 0),
(63, 0, '{\"x\":1805.43,\"y\":3922.2947,\"z\":33.66316}', '{\"x\":0.0,\"y\":0.0,\"z\":-2.3257885}', 0, 0),
(64, 0, '{\"x\":1838.6333,\"y\":3920.7852,\"z\":33.19594}', '{\"x\":0.0,\"y\":0.0,\"z\":-81.15905}', 0, 0),
(65, 0, '{\"x\":1871.3014,\"y\":3915.1304,\"z\":32.9573}', '{\"x\":0.0,\"y\":0.0,\"z\":-163.09201}', 0, 0),
(66, 1, '{\"x\":1330.642,\"y\":-1707.98022,\"z\":55.4928246}', '{\"x\":0.9193066,\"y\":7.688298,\"z\":108.542572}', 0, 0),
(67, 0, '{\"x\":-1794.8557,\"y\":349.0729,\"z\":88.555504}', '{\"x\":0.0,\"y\":0.0,\"z\":54.322556}', 0, 1),
(68, 4, '{\"x\":1366.08057,\"y\":-1706.30029,\"z\":61.4777832}', '{\"x\":2.612745,\"y\":8.462314,\"z\":284.3271}', 0, 0),
(69, 0, '{\"x\":1734.5841,\"y\":3813.3015,\"z\":34.549904}', '{\"x\":0.0,\"y\":0.0,\"z\":119.30169}', 0, 0),
(70, 0, '{\"x\":1780.1716,\"y\":3729.9197,\"z\":34.12093}', '{\"x\":0.0,\"y\":0.0,\"z\":119.96059}', 0, 0),
(71, 0, '{\"x\":1904.3551,\"y\":3779.702,\"z\":32.803486}', '{\"x\":0.0,\"y\":0.0,\"z\":-154.84142}', 0, 0),
(72, 0, '{\"x\":1891.401,\"y\":3813.474,\"z\":32.4581}', '{\"x\":0.0,\"y\":0.0,\"z\":-150.53278}', 0, 0),
(73, 0, '{\"x\":1924.6122,\"y\":3819.4822,\"z\":32.24564}', '{\"x\":0.0,\"y\":0.0,\"z\":145.65201}', 0, 0),
(74, 0, '{\"x\":1922.7103,\"y\":3795.3723,\"z\":32.342854}', '{\"x\":0.0,\"y\":0.0,\"z\":-153.60957}', 0, 0),
(75, 7, '{\"x\":314.911,\"y\":567.7351,\"z\":154.44438}', '{\"x\":0.0,\"y\":0.0,\"z\":-57.99437}', 0, 4),
(76, 4, '{\"x\":217.24312,\"y\":756.8036,\"z\":204.66833}', '{\"x\":0.0,\"y\":0.0,\"z\":50.970734}', 0, 4),
(77, 4, '{\"x\":227.93268,\"y\":681.48,\"z\":189.57266}', '{\"x\":0.0,\"y\":0.0,\"z\":104.192795}', 0, 4),
(78, 4, '{\"x\":114.0304,\"y\":495.62137,\"z\":147.14824}', '{\"x\":0.0,\"y\":0.0,\"z\":-169.18254}', 0, 4),
(79, 0, '{\"x\":-1107.7345,\"y\":-1228.9896,\"z\":2.5918543}', '{\"x\":0.0,\"y\":0.0,\"z\":118.138565}', 0, 0),
(80, 0, '{\"x\":-1108.5604,\"y\":-1179.8408,\"z\":2.12519}', '{\"x\":0.0,\"y\":0.0,\"z\":117.485405}', 0, 0),
(81, 0, '{\"x\":-1147.0492,\"y\":-1144.5609,\"z\":2.8385997}', '{\"x\":0.0,\"y\":0.0,\"z\":113.69815}', 0, 0),
(82, 0, '{\"x\":-1191.0116,\"y\":-1080.0532,\"z\":2.1504333}', '{\"x\":0.0,\"y\":0.0,\"z\":-152.9965}', 0, 0),
(83, 0, '{\"x\":-1211.5339,\"y\":-1029.2924,\"z\":2.150433}', '{\"x\":0.0,\"y\":0.0,\"z\":-154.31429}', 0, 0),
(84, 0, '{\"x\":-1076.0735,\"y\":-1046.5319,\"z\":2.1502974}', '{\"x\":0.0,\"y\":0.0,\"z\":26.843489}', 0, 0),
(85, 0, '{\"x\":-1019.1193,\"y\":-1003.102,\"z\":2.1284359}', '{\"x\":0.0,\"y\":0.0,\"z\":118.03545}', 0, 0),
(86, 0, '{\"x\":-954.0903,\"y\":-1092.2816,\"z\":2.1503098}', '{\"x\":0.0,\"y\":0.0,\"z\":114.68938}', 0, 0),
(87, 0, '{\"x\":-974.80237,\"y\":-1101.4937,\"z\":2.095829}', '{\"x\":0.0,\"y\":0.0,\"z\":-150.06868}', 0, 0),
(88, 1, '{\"x\":1252.22314,\"y\":-1618.88806,\"z\":53.45124}', '{\"x\":0.0,\"y\":0.0,\"z\":31.503437}', 0, 1),
(89, 0, '{\"x\":-1047.9707,\"y\":-1151.6301,\"z\":2.1585999}', '{\"x\":0.0,\"y\":0.0,\"z\":28.086802}', 0, 0),
(90, 0, '{\"x\":-1766.8502,\"y\":-677.68945,\"z\":10.204235}', '{\"x\":0.0,\"y\":0.0,\"z\":-43.03444}', 0, 0),
(91, 0, '{\"x\":-1826.1448,\"y\":-624.4661,\"z\":11.097103}', '{\"x\":0.0,\"y\":0.0,\"z\":-40.335815}', 0, 0),
(92, 0, '{\"x\":-3083.0422,\"y\":221.3709,\"z\":13.998853}', '{\"x\":0.0,\"y\":0.0,\"z\":-33.935875}', 0, 0),
(93, 0, '{\"x\":-3072.803,\"y\":394.60895,\"z\":6.9685225}', '{\"x\":0.0,\"y\":0.0,\"z\":-105.69883}', 0, 0),
(94, 0, '{\"x\":-3040.6128,\"y\":478.23624,\"z\":6.779647}', '{\"x\":0.0,\"y\":0.0,\"z\":-108.6954}', 0, 0),
(95, 0, '{\"x\":-3032.9458,\"y\":556.0644,\"z\":7.5076833}', '{\"x\":0.0,\"y\":0.0,\"z\":-88.96847}', 0, 0),
(96, 0, '{\"x\":-3072.7385,\"y\":657.33984,\"z\":11.13612}', '{\"x\":0.0,\"y\":0.0,\"z\":-53.347683}', 0, 0),
(97, 0, '{\"x\":-3101.695,\"y\":716.397,\"z\":20.4622}', '{\"x\":0.0,\"y\":0.0,\"z\":-75.33207}', 0, 0),
(98, 0, '{\"x\":-3238.2644,\"y\":1030.9834,\"z\":11.722571}', '{\"x\":0.0,\"y\":0.0,\"z\":-99.562454}', 0, 0),
(99, 0, '{\"x\":-3226.8716,\"y\":1086.9629,\"z\":10.704701}', '{\"x\":0.0,\"y\":0.0,\"z\":-110.70648}', 0, 0),
(100, 0, '{\"x\":-3197.954,\"y\":1160.2548,\"z\":9.654344}', '{\"x\":0.0,\"y\":0.0,\"z\":-112.643074}', 0, 0),
(101, 0, '{\"x\":-439.88562,\"y\":6204.257,\"z\":29.558626}', '{\"x\":0.0,\"y\":0.0,\"z\":-89.7305}', 0, 0),
(102, 0, '{\"x\":1252.2395,\"y\":-1618.6073,\"z\":53.452366}', '{\"x\":0.0,\"y\":0.0,\"z\":27.7373}', 0, 0),
(104, 4, '{\"x\":-1921.4988,\"y\":284.3015,\"z\":89.07312}', '{\"x\":0.0,\"y\":0.0,\"z\":103.608376}', 0, 4),
(105, 4, '{\"x\":-1937.5922,\"y\":181.45125,\"z\":84.64906}', '{\"x\":0.0,\"y\":0.0,\"z\":-52.69451}', 0, 4),
(106, 4, '{\"x\":-1870.1254,\"y\":191.01529,\"z\":84.294525}', '{\"x\":0.0,\"y\":0.0,\"z\":129.17375}', 0, 4),
(107, 4, '{\"x\":-1665.03,\"y\":389.19034,\"z\":89.285934}', '{\"x\":0.0,\"y\":0.0,\"z\":-3.5920236}', 0, 4),
(108, 4, '{\"x\":-1615.0345,\"y\":18.019594,\"z\":62.177956}', '{\"x\":0.0,\"y\":0.0,\"z\":-27.27237}', 0, 4),
(110, 25, '{\"x\":-1548.1356,\"y\":106.73965,\"z\":56.77987}', '{\"x\":0.0,\"y\":0.0,\"z\":45.338562}', 0, 15),
(111, 4, '{\"x\":-1206.5024,\"y\":266.55063,\"z\":69.534706}', '{\"x\":0.0,\"y\":0.0,\"z\":-76.68425}', 0, 4),
(112, 4, '{\"x\":-1129.522,\"y\":310.88675,\"z\":66.177704}', '{\"x\":0.0,\"y\":0.0,\"z\":171.1085}', 0, 4),
(113, 4, '{\"x\":-1062.1407,\"y\":301.4688,\"z\":65.92996}', '{\"x\":0.0,\"y\":0.0,\"z\":-9.419008}', 0, 4),
(114, 1, '{\"x\":1100.66321,\"y\":-429.2656,\"z\":66.69355}', '{\"x\":-0.012686356,\"y\":-0.09285552,\"z\":265.705933}', 0, 1),
(115, 4, '{\"x\":-1050.1338,\"y\":222.45139,\"z\":63.767017}', '{\"x\":0.0,\"y\":0.0,\"z\":178.06424}', 0, 4),
(116, 4, '{\"x\":-993.9193,\"y\":143.69696,\"z\":60.668793}', '{\"x\":0.0,\"y\":0.0,\"z\":-70.24421}', 0, 4),
(117, 4, '{\"x\":-1589.1173,\"y\":-59.180904,\"z\":56.482468}', '{\"x\":0.0,\"y\":0.0,\"z\":-87.98871}', 0, 4),
(118, 4, '{\"x\":-826.8859,\"y\":271.1572,\"z\":86.19601}', '{\"x\":0.0,\"y\":0.0,\"z\":-9.96332}', 0, 4),
(119, 4, '{\"x\":-1488.8083,\"y\":528.2241,\"z\":118.27217}', '{\"x\":0.0,\"y\":0.0,\"z\":-149.89107}', 0, 4),
(120, 4, '{\"x\":-1411.7932,\"y\":559.31384,\"z\":124.5121}', '{\"x\":0.0,\"y\":0.0,\"z\":-179.97707}', 0, 4),
(121, 4, '{\"x\":-1251.2704,\"y\":665.8625,\"z\":142.82047}', '{\"x\":0.0,\"y\":0.0,\"z\":-177.64514}', 0, 4),
(122, 4, '{\"x\":-1200.1182,\"y\":690.0166,\"z\":147.18082}', '{\"x\":0.0,\"y\":0.0,\"z\":56.144547}', 0, 4),
(123, 4, '{\"x\":-1123.7969,\"y\":790.07074,\"z\":163.45302}', '{\"x\":0.0,\"y\":0.0,\"z\":-129.97505}', 0, 4),
(124, 1, '{\"x\":1225.14526,\"y\":-725.610168,\"z\":59.9280968}', '{\"x\":-0.557817161,\"y\":1.17124367,\"z\":183.269135}', 0, 1),
(125, 4, '{\"x\":-1056.9526,\"y\":734.8877,\"z\":165.44987}', '{\"x\":0.0,\"y\":0.0,\"z\":5.563831}', 0, 4),
(126, 4, '{\"x\":-964.8327,\"y\":763.0423,\"z\":175.43636}', '{\"x\":0.0,\"y\":0.0,\"z\":45.321377}', 0, 4),
(127, 4, '{\"x\":-747.8966,\"y\":817.92096,\"z\":213.37007}', '{\"x\":0.0,\"y\":0.0,\"z\":-72.04903}', 0, 4),
(128, 4, '{\"x\":-551.95807,\"y\":830.37134,\"z\":197.74821}', '{\"x\":0.0,\"y\":0.0,\"z\":-20.494282}', 0, 4),
(129, 4, '{\"x\":-494.02353,\"y\":744.14124,\"z\":162.83548}', '{\"x\":0.0,\"y\":0.0,\"z\":-117.18091}', 0, 4),
(130, 24, '{\"x\":-169.08652,\"y\":969.35114,\"z\":236.96759}', '{\"x\":0.0,\"y\":0.0,\"z\":-41.68799}', 0, 4),
(131, 4, '{\"x\":-137.23947,\"y\":902.78235,\"z\":235.68018}', '{\"x\":0.0,\"y\":0.0,\"z\":-43.825127}', 0, 4),
(132, 4, '{\"x\":-1418.5157,\"y\":466.16168,\"z\":109.52295}', '{\"x\":0.0,\"y\":0.0,\"z\":-18.087856}', 0, 4),
(133, 4, '{\"x\":-1322.758,\"y\":448.21667,\"z\":99.741264}', '{\"x\":0.0,\"y\":0.0,\"z\":-2.8357306}', 0, 4),
(134, 4, '{\"x\":-1236.3507,\"y\":489.67142,\"z\":93.25455}', '{\"x\":0.0,\"y\":0.0,\"z\":92.974266}', 0, 4),
(135, 1, '{\"x\":1190.0177,\"y\":-597.2199,\"z\":63.3016319}', '{\"x\":-0.8304979,\"y\":1.43844318,\"z\":97.59369}', 0, 1),
(136, 4, '{\"x\":-1036.8755,\"y\":590.5822,\"z\":103.2058}', '{\"x\":0.0,\"y\":0.0,\"z\":-2.0851474}', 0, 4),
(137, 25, '{\"x\":-880.0953,\"y\":704.692,\"z\":149.7515}', '{\"x\":0.0,\"y\":0.0,\"z\":81.36043}', 0, 4),
(138, 4, '{\"x\":-671.83936,\"y\":644.6317,\"z\":149.21086}', '{\"x\":0.0,\"y\":0.0,\"z\":86.06441}', 0, 4),
(139, 4, '{\"x\":-695.12134,\"y\":704.9121,\"z\":157.14943}', '{\"x\":0.0,\"y\":0.0,\"z\":-46.254463}', 0, 4),
(140, 4, '{\"x\":-1076.4045,\"y\":464.09427,\"z\":77.64954}', '{\"x\":0.0,\"y\":0.0,\"z\":147.7605}', 0, 4),
(141, 4, '{\"x\":-967.0077,\"y\":449.95523,\"z\":79.80902}', '{\"x\":0.0,\"y\":0.0,\"z\":-162.31853}', 0, 4),
(142, 4, '{\"x\":-874.16125,\"y\":540.80206,\"z\":92.01687}', '{\"x\":0.0,\"y\":0.0,\"z\":130.9843}', 0, 4),
(143, 4, '{\"x\":-862.57416,\"y\":463.7386,\"z\":87.94432}', '{\"x\":0.0,\"y\":0.0,\"z\":-84.149895}', 0, 4),
(144, 4, '{\"x\":-735.0662,\"y\":444.3591,\"z\":106.88561}', '{\"x\":0.0,\"y\":0.0,\"z\":24.637598}', 0, 4),
(145, 4, '{\"x\":-688.66034,\"y\":503.72205,\"z\":110.20057}', '{\"x\":0.0,\"y\":0.0,\"z\":-164.82806}', 0, 4),
(146, 4, '{\"x\":-513.48413,\"y\":624.98047,\"z\":132.77798}', '{\"x\":0.0,\"y\":0.0,\"z\":-62.944725}', 0, 4),
(147, 4, '{\"x\":-575.2513,\"y\":398.69708,\"z\":100.66478}', '{\"x\":0.0,\"y\":0.0,\"z\":12.811754}', 0, 4),
(148, 4, '{\"x\":-628.6421,\"y\":400.10135,\"z\":101.19121}', '{\"x\":0.0,\"y\":0.0,\"z\":0.47596854}', 0, 4),
(149, 4, '{\"x\":-450.2716,\"y\":373.3314,\"z\":104.77478}', '{\"x\":0.0,\"y\":0.0,\"z\":89.14693}', 0, 4),
(150, 4, '{\"x\":-404.03702,\"y\":337.37418,\"z\":108.71776}', '{\"x\":0.0,\"y\":0.0,\"z\":-1.7012634}', 0, 4),
(151, 4, '{\"x\":-304.79028,\"y\":378.93134,\"z\":110.349594}', '{\"x\":0.0,\"y\":0.0,\"z\":16.673489}', 0, 4),
(152, 4, '{\"x\":-182.69838,\"y\":421.76514,\"z\":110.66048}', '{\"x\":0.0,\"y\":0.0,\"z\":10.903795}', 0, 4),
(153, 1, '{\"x\":1257.7999,\"y\":-420.35086,\"z\":69.42955}', '{\"x\":0.0,\"y\":0.0,\"z\":-62.39469}', 0, 1),
(154, 4, '{\"x\":-315.76566,\"y\":481.1149,\"z\":113.02}', '{\"x\":0.0,\"y\":0.0,\"z\":121.64507}', 0, 4),
(155, 1, '{\"x\":977.8475,\"y\":-712.8274,\"z\":57.08815}', '{\"x\":1.30915117,\"y\":-1.05340958,\"z\":132.510864}', 0, 1),
(156, 4, '{\"x\":-409.01062,\"y\":560.6547,\"z\":124.389565}', '{\"x\":0.0,\"y\":0.0,\"z\":153.84532}', 0, 4),
(157, 4, '{\"x\":-394.61752,\"y\":670.6742,\"z\":163.08502}', '{\"x\":0.0,\"y\":0.0,\"z\":1.5015624}', 0, 4),
(158, 4, '{\"x\":-224.87462,\"y\":591.7139,\"z\":190.17888}', '{\"x\":0.0,\"y\":0.0,\"z\":-3.81548}', 0, 4),
(159, 4, '{\"x\":-143.42996,\"y\":595.39453,\"z\":203.82898}', '{\"x\":0.0,\"y\":0.0,\"z\":-4.170718}', 0, 4),
(160, 4, '{\"x\":-188.75562,\"y\":502.46158,\"z\":134.45285}', '{\"x\":0.0,\"y\":0.0,\"z\":8.176528}', 0, 4),
(161, 4, '{\"x\":0.35732764,\"y\":469.25095,\"z\":145.80704}', '{\"x\":0.0,\"y\":0.0,\"z\":-17.58939}', 0, 4),
(162, 1, '{\"x\":914.0002,\"y\":-629.9238,\"z\":57.3492241}', '{\"x\":-0.0123535749,\"y\":0.008640971,\"z\":137.965942}', 0, 1),
(163, 4, '{\"x\":52.177334,\"y\":562.1196,\"z\":180.30655}', '{\"x\":0.0,\"y\":0.0,\"z\":23.113537}', 0, 4),
(164, 4, '{\"x\":-1590.8771,\"y\":-59.009068,\"z\":56.48247}', '{\"x\":0.0,\"y\":0.0,\"z\":-92.16557}', 0, 4),
(165, 1, '{\"x\":844.424866,\"y\":-566.831238,\"z\":57.0096}', '{\"x\":-0.0342931971,\"y\":0.108552672,\"z\":99.51471}', 0, 1),
(166, 4, '{\"x\":-1941.6093,\"y\":462.3015,\"z\":102.2358}', '{\"x\":0.0,\"y\":0.0,\"z\":96.274506}', 0, 4),
(167, 0, '{\"x\":-2981.0034,\"y\":612.39404,\"z\":20.195427}', '{\"x\":0.0,\"y\":0.0,\"z\":97.60377}', 0, 0),
(168, 1, '{\"x\":853.7288,\"y\":-517.41156,\"z\":56.62882}', '{\"x\":-0.0331812054,\"y\":-0.048909016,\"z\":48.41922}', 0, 1),
(169, 4, '{\"x\":-1939.0964,\"y\":525.6027,\"z\":109.84376}', '{\"x\":0.0,\"y\":0.0,\"z\":161.50575}', 0, 4),
(174, 1, '{\"x\":940.9149,\"y\":-465.6165,\"z\":60.5531349}', '{\"x\":0.08872915,\"y\":0.02500134,\"z\":30.0944824}', 0, 1),
(303, 1, '{\"x\":8.858721,\"y\":-1846.56384,\"z\":24.2986}', '{\"x\":0.0,\"y\":0.0,\"z\":136.95282}', 0, 1),
(327, 0, '{\"x\":-121.127785,\"y\":6559.729,\"z\":29.5227623}', '{\"x\":0.0,\"y\":0.0,\"z\":51.388134}', 0, 1),
(341, 0, '{\"x\":-354.59436,\"y\":6265.84766,\"z\":31.4453487}', '{\"x\":0.0,\"y\":0.0,\"z\":212.598862}', 0, 1),
(577, 0, '{\"x\":46.5663452,\"y\":-1915.205,\"z\":20.989954}', '{\"x\":0.596267641,\"y\":0.6228704,\"z\":320.308838}', 0, 0),
(582, 0, '{\"x\":-49.7368774,\"y\":-1798.76526,\"z\":26.4953842}', '{\"x\":-3.244296,\"y\":-0.101986468,\"z\":157.7846}', 0, 0),
(588, 0, '{\"x\":-41.0519638,\"y\":-1459.87756,\"z\":30.898}', '{\"x\":2.27995229,\"y\":-3.43595648,\"z\":270.722565}', 0, 0),
(676, 0, '{\"x\":489.1724,\"y\":-1721.872,\"z\":28.69449}', '{\"x\":-0.5196083,\"y\":-1.30525553,\"z\":248.1739}', 0, 0),
(680, 0, '{\"x\":422.763275,\"y\":-1728.72986,\"z\":28.5792046}', '{\"x\":-0.012040128,\"y\":-0.011193553,\"z\":50.18521}', 0, 0),
(682, 0, '{\"x\":347.852051,\"y\":-1809.35535,\"z\":27.8424034}', '{\"x\":1.28628361,\"y\":3.70382047,\"z\":48.2507935}', 0, 0),
(686, 0, '{\"x\":300.7123,\"y\":-1794.34546,\"z\":27.1289616}', '{\"x\":-2.17694736,\"y\":-0.104290307,\"z\":228.98732}', 0, 0),
(690, 0, '{\"x\":329.4516,\"y\":-1750.76782,\"z\":28.62355}', '{\"x\":-1.69706631,\"y\":1.35687852,\"z\":48.7147522}', 0, 0),
(691, 0, '{\"x\":268.342224,\"y\":-1689.14893,\"z\":28.4654846}', '{\"x\":-2.06180763,\"y\":-1.64241648,\"z\":140.700012}', 0, 0),
(701, 0, '{\"x\":268.240356,\"y\":-1894.75427,\"z\":25.8379745}', '{\"x\":-1.95378566,\"y\":0.435078681,\"z\":140.746216}', 0, 0),
(707, 0, '{\"x\":149.2664,\"y\":-1983.91687,\"z\":17.5254974}', '{\"x\":1.35197294,\"y\":2.06690526,\"z\":321.6503}', 0, 0),
(710, 0, '{\"x\":191.467316,\"y\":-1922.152,\"z\":21.6502457}', '{\"x\":-2.8387053,\"y\":1.45079327,\"z\":228.12674}', 0, 0),
(711, 2, '{\"x\":1160.70654,\"y\":-1646.58252,\"z\":36.9195824}', '{\"x\":0.0,\"y\":0.0,\"z\":201.193008}', 0, 2),
(719, 0, '{\"x\":106.970474,\"y\":-1870.46313,\"z\":23.4432869}', '{\"x\":-2.28170085,\"y\":1.02833724,\"z\":74.61856}', 0, 0),
(726, 0, '{\"x\":136.393829,\"y\":-1826.8197,\"z\":26.3005219}', '{\"x\":-0.7280152,\"y\":3.59260917,\"z\":49.05652}', 0, 0),
(728, 0, '{\"x\":-222.760178,\"y\":6434.1167,\"z\":31.19742}', '{\"x\":0.0,\"y\":0.0,\"z\":230.043976}', 0, 1),
(736, 0, '{\"x\":363.979218,\"y\":-1975.96753,\"z\":23.581625}', '{\"x\":-2.70288348,\"y\":-0.4292972,\"z\":159.054321}', 0, 0),
(755, 0, '{\"x\":-360.120056,\"y\":6327.836,\"z\":29.8326244}', '{\"x\":0.0,\"y\":0.0,\"z\":216.993851}', 0, 1),
(800, 1, '{\"x\":7.52068567,\"y\":-1451.74268,\"z\":30.5431938}', '{\"x\":0.0,\"y\":0.0,\"z\":171.513916}', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `owner` text DEFAULT NULL,
  `type` varchar(11) NOT NULL,
  `position` text NOT NULL,
  `price` text NOT NULL,
  `locked` tinyint(4) NOT NULL,
  `garage` text NOT NULL,
  `bank` text DEFAULT NULL,
  `roommates` text DEFAULT NULL,
  `isAdmin` int(11) NOT NULL DEFAULT 0,
  `typeowner` double NOT NULL DEFAULT 0,
  `owneruuid` int(11) NOT NULL DEFAULT -1,
  `roommatesuuid` text DEFAULT NULL,
  `inventoryId` int(11) NOT NULL DEFAULT -1,
  `rentCost` int(11) NOT NULL DEFAULT 0,
  `furnitures` text DEFAULT NULL,
  `banknew` int(11) NOT NULL DEFAULT -1,
  `pledged` tinyint(1) NOT NULL DEFAULT 0,
  `camposition` text DEFAULT NULL,
  `occupiers` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `owner`, `type`, `position`, `price`, `locked`, `garage`, `bank`, `roommates`, `isAdmin`, `typeowner`, `owneruuid`, `roommatesuuid`, `inventoryId`, `rentCost`, `furnitures`, `banknew`, `pledged`, `camposition`, `occupiers`) VALUES
(1, '', '2', '{\"x\":236.384842,\"y\":-2045.92932,\"z\":17.2599964}', '250000', 0, '22', '612287', '[]', 0, 0, -1, '[]', -1, 0, '[]', 812, 0, '{\"x\":241.79276,\"y\":-2067.6306,\"z\":30.430677}', NULL),
(2, '', '2', '{\"x\":348.524231,\"y\":-1820.86792,\"z\":27.7740917}', '200000', 0, '682', '909720', '[]', 0, 0, -1, '[]', -1, 0, '[]', 813, 0, '{\"x\":329.02966,\"y\":-1818.0905,\"z\":35.59113}', NULL),
(3, '', '3', '{\"x\":1203.61743,\"y\":-598.47,\"z\":66.9435349}', '1000000', 0, '135', '591172', '[]', 0, 0, -1, '[]', -1, 0, '[]', 814, 0, '{\"x\":1178.6395,\"y\":-613.982,\"z\":80.69297}', NULL),
(4, '', '2', '{\"x\":333.023743,\"y\":-1740.8269,\"z\":28.6105251}', '150000', 0, '690', '327306', '[]', 0, 0, -1, '[]', -1, 0, '[]', 815, 0, '{\"x\":338.9228,\"y\":-1761.9486,\"z\":35.335068}', NULL),
(5, '', '3', '{\"x\":979.2583,\"y\":-716.1747,\"z\":57.07779}', '1100000', 0, '155', '93554', '[]', 0, 0, -1, '[]', -1, 0, '[]', 816, 0, '{\"x\":994.55994,\"y\":-697.19275,\"z\":63.754883}', NULL),
(6, '', '2', '{\"x\":1365.58044,\"y\":-1721.72888,\"z\":64.4994}', '320000', 0, '68', '139679', '[]', 0, 1, -1, '[]', -1, 0, '[]', 817, 0, '{\"x\":1349.7804,\"y\":-1710.1931,\"z\":72.67731}', NULL),
(7, '', '3', '{\"x\":844.100647,\"y\":-562.6532,\"z\":56.84359}', '2000000', 0, '165', '183791', '[]', 0, 0, -1, '[]', -1, 0, '[]', 818, 0, '{\"x\":868.09845,\"y\":-551.9805,\"z\":73.04773}', NULL),
(8, '', '3', '{\"x\":944.480164,\"y\":-463.072,\"z\":60.43346}', '1400000', 0, '174', '126055', '[]', 0, 0, -1, '[]', -1, 0, '[]', 819, 0, '{\"x\":943.21783,\"y\":-494.2342,\"z\":69.683624}', NULL),
(9, '', '2', '{\"x\":288.67334,\"y\":-1792.61438,\"z\":26.9687672}', '200000', 0, '686', '968611', '[]', 0, 0, -1, '[]', -1, 0, '[]', 820, 0, '{\"x\":295.88464,\"y\":-1814.281,\"z\":33.817463}', NULL),
(10, '', '2', '{\"x\":38.9947433,\"y\":-1911.52307,\"z\":20.8335}', '250000', 0, '577', '845925', '[]', 0, 0, -1, '[]', -1, 0, '[]', 821, 0, '{\"x\":58.46622,\"y\":-1906.0491,\"z\":29.760227}', NULL),
(11, '', '2', '{\"x\":1250.7135,\"y\":-1734.28845,\"z\":50.91199}', '330000', 0, '62', '692691', '[]', 0, 0, -1, '[]', -1, 0, '[]', 822, 0, '{\"x\":1235.6855,\"y\":-1750.5979,\"z\":59.88511}', NULL),
(12, '', '2', '{\"x\":1261.57935,\"y\":-1616.82153,\"z\":53.6229}', '390000', 0, '102', '140778', '[]', 0, 0, -1, '[]', -1, 0, '[]', 823, 0, '{\"x\":1239.305,\"y\":-1608.2219,\"z\":66.25186}', NULL),
(13, '', '2', '{\"x\":1193.01111,\"y\":-1622.65515,\"z\":44.1014557}', '350000', 0, '711', '772823', '[]', 0, 0, -1, '[]', -1, 0, '[]', 824, 0, '{\"x\":1196.1481,\"y\":-1636.6709,\"z\":47.771797}', NULL),
(14, '', '2', '{\"x\":16.6813679,\"y\":-1443.83618,\"z\":29.8304863}', '250000', 0, '800', '538724', '[]', 0, 0, -1, '[]', -1, 0, '[]', 825, 0, '{\"x\":22.949331,\"y\":-1463.7565,\"z\":36.98736}', NULL),
(15, '', '3', '{\"x\":1229.47632,\"y\":-725.342346,\"z\":59.836483}', '1200000', 0, '124', '377135', '[]', 0, 0, -1, '[]', -1, 0, '[]', 826, 0, '{\"x\":1214.414,\"y\":-751.9452,\"z\":70.92756}', NULL),
(16, '', '2', '{\"x\":1259.14941,\"y\":-1761.97229,\"z\":48.53826}', '370000', 0, '61', '739465', '[]', 0, 0, -1, '[]', -1, 0, '[]', 827, 0, '{\"x\":1247.3088,\"y\":-1752.9147,\"z\":52.250225}', NULL),
(17, '', '2', '{\"x\":282.011169,\"y\":-1694.93335,\"z\":28.5269318}', '150000', 0, '691', '978461', '[]', 0, 0, -1, '[]', -1, 0, '[]', 828, 0, '{\"x\":274.92432,\"y\":-1678.5785,\"z\":35.296097}', NULL),
(18, '', '2', '{\"x\":179.2849,\"y\":-1923.925,\"z\":20.2510185}', '250000', 0, '710', '527316', '[]', 0, 0, -1, '[]', -1, 0, '[]', 829, 0, '{\"x\":188.13799,\"y\":-1943.5469,\"z\":33.12777}', NULL),
(19, '', '2', '{\"x\":152.804947,\"y\":-1823.76184,\"z\":26.7486534}', '250000', 0, '726', '907962', '[]', 0, 0, -1, '[]', -1, 0, '[]', 830, 0, '{\"x\":147.1372,\"y\":-1803.6716,\"z\":36.57376}', NULL),
(20, '', '2', '{\"x\":440.273651,\"y\":-1829.79138,\"z\":27.2378826}', '200000', 0, '40', '127352', '[]', 0, 0, -1, '[]', -1, 0, '[]', 831, 0, '{\"x\":460.6054,\"y\":-1833.5753,\"z\":34.451183}', NULL),
(21, '', '2', '{\"x\":21.2698765,\"y\":-1844.69946,\"z\":23.4817333}', '250000', 0, '303', '572437', '[]', 0, 0, -1, '[]', -1, 0, '[]', 832, 0, '{\"x\":21.249111,\"y\":-1865.6252,\"z\":31.41822}', NULL),
(22, '', '3', '{\"x\":903.1155,\"y\":-615.6634,\"z\":57.3328323}', '1500000', 0, '162', '866506', '[]', 0, 0, -1, '[]', -1, 0, '[]', 833, 0, '{\"x\":930.726,\"y\":-609.64844,\"z\":63.896267}', NULL),
(23, '', '2', '{\"x\":1312.08325,\"y\":-1697.61707,\"z\":57.1053734}', '310000', 0, '66', '609523', '[]', 0, 0, -1, '[]', -1, 0, '[]', 834, 0, '{\"x\":1304.8373,\"y\":-1711.9462,\"z\":65.68904}', NULL),
(24, '', '2', '{\"x\":-45.5006981,\"y\":-1445.44165,\"z\":31.3095951}', '150000', 0, '588', '639580', '[]', 0, 0, -1, '[]', -1, 0, '[]', 835, 0, '{\"x\":-37.118946,\"y\":-1460.3115,\"z\":37.55987}', NULL),
(25, '', '2', '{\"x\":144.291489,\"y\":-1968.89648,\"z\":17.7376232}', '150000', 0, '707', '488184', '[]', 0, 0, -1, '[]', -1, 0, '[]', 836, 0, '{\"x\":144.291489,\"y\":-1968.89648,\"z\":17.7376232}', NULL),
(26, '', '3', '{\"x\":1099.4657,\"y\":-438.734955,\"z\":66.6705551}', '1100000', 0, '114', '645947', '[]', 0, 0, -1, '[]', -1, 0, '[]', 837, 0, '{\"x\":1080.8523,\"y\":-453.94653,\"z\":77.768105}', NULL),
(27, '', '2', '{\"x\":104.041885,\"y\":-1885.39526,\"z\":23.1987762}', '150000', 0, '719', '868929', '[]', 0, 0, -1, '[]', -1, 0, '[]', 838, 0, '{\"x\":97.29912,\"y\":-1865.1642,\"z\":35.304153}', NULL),
(28, '', '2', '{\"x\":282.788757,\"y\":-1899.192,\"z\":26.1475525}', '150000', 0, '701', '750530', '[]', 0, 0, -1, '[]', -1, 0, '[]', 839, 0, '{\"x\":275.11584,\"y\":-1881.5415,\"z\":38.515068}', NULL),
(29, '', '2', '{\"x\":312.3926,\"y\":-1956.40442,\"z\":23.4952164}', '200000', 0, '31', '968466', '[]', 0, 0, -1, '[]', -1, 0, '[]', 840, 0, '{\"x\":316.7438,\"y\":-1976.6705,\"z\":29.553305}', NULL),
(30, '', '2', '{\"x\":368.253143,\"y\":-1895.98,\"z\":24.0585175}', '250000', 0, '35', '268942', '[]', 0, 0, -1, '[]', -1, 0, '[]', 841, 0, '{\"x\":382.28677,\"y\":-1901.1989,\"z\":32.314507}', NULL),
(31, '', '2', '{\"x\":-41.98147,\"y\":-1792.11743,\"z\":26.7082348}', '150000', 0, '582', '897943', '[]', 0, 0, -1, '[]', -1, 0, '[]', 842, 0, '{\"x\":-37.920563,\"y\":-1809.3864,\"z\":33.928272}', NULL),
(32, '', '3', '{\"x\":861.4952,\"y\":-509.03656,\"z\":56.5983276}', '1100000', 0, '168', '616835', '[]', 0, 0, -1, '[]', -1, 0, '[]', 843, 0, '{\"x\":889.5151,\"y\":-518.9871,\"z\":63.711845}', NULL),
(33, '', '2', '{\"x\":489.523529,\"y\":-1714.11279,\"z\":28.5868835}', '60000', 0, '676', '577452', '[]', 0, 0, -1, '[]', -1, 0, '[]', 844, 0, '{\"x\":505.4392,\"y\":-1730.7689,\"z\":35.446545}', NULL),
(34, '', '2', '{\"x\":495.569427,\"y\":-1823.01782,\"z\":27.7497025}', '200000', 0, '51', '334660', '[]', 0, 0, -1, '[]', -1, 0, '[]', 845, 0, '{\"x\":477.96613,\"y\":-1819.9313,\"z\":38.80891}', NULL),
(35, '', '2', '{\"x\":419.1788,\"y\":-1735.586,\"z\":28.4876938}', '250000', 0, '680', '991893', '[]', 0, 0, -1, '[]', -1, 0, '[]', 846, 0, '{\"x\":413.44418,\"y\":-1717.9562,\"z\":36.518486}', NULL),
(36, '', '2', '{\"x\":365.2743,\"y\":-2064.46558,\"z\":20.6244011}', '100000', 0, '6', '56094', '[]', 0, 0, -1, '[]', -1, 0, '[]', 847, 0, '{\"x\":357.3855,\"y\":-2050.173,\"z\":28.48294}', NULL),
(37, '', '2', '{\"x\":374.5884,\"y\":-1991.44568,\"z\":23.1149216}', '100000', 0, '736', '236171', '[]', 0, 0, -1, '[]', -1, 0, '[]', 848, 0, '{\"x\":391.83798,\"y\":-1982.4949,\"z\":30.745394}', NULL),
(38, '', '2', '{\"x\":-215.128265,\"y\":6444.26025,\"z\":30.3619671}', '530000', 0, '728', '1913505033', NULL, 0, 0, -1, NULL, -1, 0, '[]', 849, 0, '{\"x\":-192.12683,\"y\":6439.547,\"z\":35.759594}', NULL),
(39, '', '2', '{\"x\":-359.716217,\"y\":6334.66943,\"z\":28.73004}', '550000', 0, '755', '1667194065', NULL, 0, 0, -1, NULL, -1, 0, '[]', 850, 0, '{\"x\":-359.012,\"y\":6311.9395,\"z\":40.039265}', NULL),
(40, '', '2', '{\"x\":-360.2191,\"y\":6260.59375,\"z\":30.7800159}', '510000', 0, '341', '1073887627', NULL, 0, 0, -1, NULL, -1, 0, '[]', 851, 0, '{\"x\":-339.8925,\"y\":6263.57,\"z\":41.03534}', NULL),
(41, '', '2', '{\"x\":-130.762619,\"y\":6551.881,\"z\":28.7509022}', '510000', 0, '327', '1255854928', NULL, 0, 0, -1, NULL, -1, 0, '[]', 852, 0, '{\"x\":-128.48288,\"y\":6533.229,\"z\":40.52927}', NULL),
(43, '', '3', '{\"x\":197.681,\"y\":-1725.8085,\"z\":28.543652}', '300000', 0, '24', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 853, 0, '{\"x\":222.11623,\"y\":-1734.7965,\"z\":43.091805}', NULL),
(46, '', '2', '{\"x\":455.08292,\"y\":-1579.777,\"z\":31.672014}', '100000', 0, '12', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 854, 0, '{\"x\":451.92722,\"y\":-1559.4974,\"z\":40.36849}', NULL),
(47, '', '2', '{\"x\":430.34464,\"y\":-1559.2578,\"z\":31.672316}', '100000', 0, '13', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 855, 0, '{\"x\":446.77478,\"y\":-1557.1129,\"z\":40.320164}', NULL),
(48, '', '2', '{\"x\":1231.0872,\"y\":-1591.8749,\"z\":52.419983}', '380000', 0, '14', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 856, 0, '{\"x\":1314.3677,\"y\":-1548.1921,\"z\":58.63813}', NULL),
(49, '', '2', '{\"x\":1315.76,\"y\":-1526.7816,\"z\":50.68083}', '370000', 0, '16', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 857, 0, '{\"x\":1311.856,\"y\":-1550.3265,\"z\":58.996147}', NULL),
(50, '', '2', '{\"x\":1360.3804,\"y\":-1555.4128,\"z\":55.220768}', '340000', 0, '17', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 858, 0, '{\"x\":1364.154,\"y\":-1531.2881,\"z\":65.903404}', NULL),
(51, '', '2', '{\"x\":1379.139,\"y\":-1515.2863,\"z\":57.29253}', '360000', 0, '2', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 859, 0, '{\"x\":1374.9387,\"y\":-1536.2683,\"z\":63.608727}', NULL),
(52, '', '3', '{\"x\":1367.2638,\"y\":-606.07385,\"z\":73.59084}', '1300000', 0, '7', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 860, 0, '{\"x\":1352.7709,\"y\":-587.9285,\"z\":82.751945}', NULL),
(53, '', '3', '{\"x\":1264.9614,\"y\":-702.8916,\"z\":63.59785}', '1000000', 0, '9', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 861, 0, '{\"x\":1283.5518,\"y\":-707.25824,\"z\":70.792625}', NULL),
(54, '', '3', '{\"x\":1251.4336,\"y\":-515.84265,\"z\":68.22742}', '1000000', 0, '11', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 862, 0, '{\"x\":1266.6447,\"y\":-531.7058,\"z\":75.6615}', NULL),
(55, '', '3', '{\"x\":960.5078,\"y\":-669.776,\"z\":57.329765}', '1350000', 0, '18', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 863, 0, '{\"x\":970.4337,\"y\":-647.70856,\"z\":65.60527}', NULL),
(56, '', '3', '{\"x\":980.2438,\"y\":-627.682,\"z\":58.11588}', '1500000', 0, '19', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 864, 0, '{\"x\":968.94434,\"y\":-654.2013,\"z\":66.743416}', NULL),
(57, '', '3', '{\"x\":945.7758,\"y\":-518.90295,\"z\":59.533882}', '1000000', 0, '21', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 865, 0, '{\"x\":946.428,\"y\":-490.48645,\"z\":71.314445}', NULL),
(58, '', '3', '{\"x\":1014.7054,\"y\":-469.27454,\"z\":63.41113}', '1000000', 0, '23', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 866, 0, '{\"x\":992.6343,\"y\":-459.098,\"z\":70.63011}', NULL),
(59, '', '3', '{\"x\":1113.8292,\"y\":-391.16776,\"z\":67.82359}', '1000000', 0, '25', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 867, 0, '{\"x\":1084.3469,\"y\":-390.78976,\"z\":79.30872}', NULL),
(60, '', '3', '{\"x\":1060.6575,\"y\":-378.04175,\"z\":67.11097}', '1150000', 0, '26', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 868, 0, '{\"x\":1089.1053,\"y\":-387.00888,\"z\":75.75806}', NULL),
(61, '', '3', '{\"x\":-1710.6194,\"y\":-493.87195,\"z\":40.49938}', '1000000', 0, '39', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 869, 0, '{\"x\":-1710.9738,\"y\":-520.75507,\"z\":51.433773}', NULL),
(62, '', '3', '{\"x\":-1667.5652,\"y\":-441.08392,\"z\":39.236626}', '3500000', 0, '41', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 870, 0, '{\"x\":-1653.8696,\"y\":-464.22012,\"z\":49.303036}', NULL),
(63, '', '3', '{\"x\":-1622.8401,\"y\":-379.86008,\"z\":42.595783}', '3500000', 0, '42', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 871, 0, '{\"x\":-1625.9854,\"y\":-409.09665,\"z\":53.932377}', NULL),
(64, '', '3', '{\"x\":-1597.2006,\"y\":-352.0294,\"z\":44.856415}', '3500000', 0, '43', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 872, 0, '{\"x\":-1574.5695,\"y\":-360.2859,\"z\":54.927254}', NULL),
(65, '', '2', '{\"x\":1845.9727,\"y\":3914.5398,\"z\":32.343235}', '70000', 0, '64', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 873, 0, '{\"x\":1858.5459,\"y\":3925.6753,\"z\":42.62709}', NULL),
(66, '', '2', '{\"x\":1803.5638,\"y\":3913.8179,\"z\":35.936943}', '50000', 0, '63', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 874, 0, '{\"x\":1786.5275,\"y\":3926.886,\"z\":43.100338}', NULL),
(67, '', '2', '{\"x\":1880.5594,\"y\":3920.5217,\"z\":32.096066}', '100000', 0, '65', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 875, 0, '{\"x\":1861.8278,\"y\":3926.839,\"z\":40.741226}', NULL),
(68, '', '2', '{\"x\":1919.0024,\"y\":3913.729,\"z\":32.32164}', '50000', 0, '67', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 876, 0, '{\"x\":1934.8873,\"y\":3920.9456,\"z\":39.59336}', NULL),
(69, '', '2', '{\"x\":1733.699,\"y\":3808.7524,\"z\":33.999844}', '50000', 0, '69', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 877, 0, '{\"x\":1710.555,\"y\":3813.5742,\"z\":42.456245}', NULL),
(70, '', '2', '{\"x\":1777.2892,\"y\":3738.2417,\"z\":33.53508}', '50000', 0, '70', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 878, 0, '{\"x\":1772.0212,\"y\":3720.402,\"z\":43.487904}', NULL),
(71, '', '2', '{\"x\":1899.002,\"y\":3781.6624,\"z\":31.756903}', '50000', 0, '71', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 879, 0, '{\"x\":1917.6093,\"y\":3792.8284,\"z\":41.217583}', NULL),
(72, '', '2', '{\"x\":1880.5762,\"y\":3810.68,\"z\":31.658823}', '100000', 0, '72', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 880, 0, '{\"x\":1899.247,\"y\":3814.7053,\"z\":41.98789}', NULL),
(73, '', '2', '{\"x\":1924.9767,\"y\":3824.664,\"z\":31.319738}', '100000', 0, '73', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 881, 0, '{\"x\":1922.8601,\"y\":3805.5903,\"z\":38.52393}', NULL),
(74, '', '2', '{\"x\":1932.9523,\"y\":3804.8457,\"z\":31.810251}', '50000', 0, '74', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 882, 0, '{\"x\":1915.1102,\"y\":3799.917,\"z\":41.774765}', NULL),
(75, '', '3', '{\"x\":1301.1064,\"y\":-574.25507,\"z\":70.61224}', '1300000', 0, '4', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 883, 0, '{\"x\":1294.7297,\"y\":-550.6986,\"z\":80.91103}', NULL),
(76, '', '2', '{\"x\":-1100.0504,\"y\":-1231.944,\"z\":2.065402}', '500000', 0, '79', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 884, 0, '{\"x\":-1121.1245,\"y\":-1241.1503,\"z\":8.102798}', NULL),
(77, '', '2', '{\"x\":-1113.7714,\"y\":-1193.8064,\"z\":1.2588443}', '500000', 0, '80', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 885, 0, '{\"x\":-1125.0098,\"y\":-1182.9757,\"z\":8.356923}', NULL),
(78, '', '2', '{\"x\":-1142.5088,\"y\":-1144.132,\"z\":1.7280859}', '500000', 0, '81', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 886, 0, '{\"x\":-1159.1211,\"y\":-1156.8184,\"z\":9.747689}', NULL),
(79, '', '2', '{\"x\":-1177.6787,\"y\":-1073.3219,\"z\":4.7864094}', '500000', 0, '82', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 887, 0, '{\"x\":-1166.61,\"y\":-1061.189,\"z\":9.343902}', NULL),
(80, '', '2', '{\"x\":-1204.5349,\"y\":-1021.99634,\"z\":4.825107}', '500000', 0, '83', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 888, 0, '{\"x\":-1185.4059,\"y\":-1013.0089,\"z\":10.302939}', NULL),
(81, '', '2', '{\"x\":-1127.8737,\"y\":-1080.9084,\"z\":3.1026893}', '600000', 0, '27', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 889, 0, '{\"x\":-1146.1438,\"y\":-1075.9884,\"z\":9.626302}', NULL),
(82, '', '2', '{\"x\":-1068.5092,\"y\":-1049.1329,\"z\":5.291661}', '550000', 0, '84', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 890, 0, '{\"x\":-1052.7426,\"y\":-1053.5522,\"z\":10.206658}', NULL),
(83, '', '2', '{\"x\":-1023.04065,\"y\":-997.8128,\"z\":1.0301944}', '550000', 0, '85', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 891, 0, '{\"x\":-1023.1617,\"y\":-1010.6573,\"z\":7.3169875}', NULL),
(84, '', '2', '{\"x\":-978.4728,\"y\":-991.03314,\"z\":3.4253187}', '550000', 0, '29', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 892, 0, '{\"x\":-971.4741,\"y\":-975.12274,\"z\":9.761298}', NULL),
(85, '', '2', '{\"x\":-948.4865,\"y\":-1107.5165,\"z\":1.0518478}', '500000', 0, '86', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 893, 0, '{\"x\":-958.944,\"y\":-1095.9525,\"z\":6.151141}', NULL),
(86, '', '2', '{\"x\":-977.9387,\"y\":-1092.1005,\"z\":3.10256}', '550000', 0, '87', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 894, 0, '{\"x\":-960.4013,\"y\":-1101.7136,\"z\":11.247289}', NULL),
(87, '', '2', '{\"x\":-1034.1056,\"y\":-1127.9664,\"z\":1.038598}', '500000', 0, '88', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 895, 0, '{\"x\":-1037.2692,\"y\":-1140.7612,\"z\":8.645667}', NULL),
(88, '', '2', '{\"x\":-1045.889,\"y\":-1159.7682,\"z\":1.0386001}', '500000', 0, '89', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 896, 0, '{\"x\":-1060.6862,\"y\":-1146.9486,\"z\":10.452959}', NULL),
(89, '', '2', '{\"x\":-1770.9391,\"y\":-677.6295,\"z\":9.267501}', '900000', 0, '90', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 897, 0, '{\"x\":-1753.9904,\"y\":-667.04865,\"z\":16.424099}', NULL),
(90, '', '2', '{\"x\":-1836.3633,\"y\":-631.62463,\"z\":9.636289}', '1000000', 0, '91', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 898, 0, '{\"x\":-1826.0952,\"y\":-612.59814,\"z\":20.034603}', NULL),
(91, '', '2', '{\"x\":-1869.7059,\"y\":-590.4893,\"z\":10.740667}', '1000000', 0, '33', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 899, 0, '{\"x\":-1851.8345,\"y\":-586.07263,\"z\":17.258652}', NULL),
(92, '', '2', '{\"x\":-1918.6393,\"y\":-542.5695,\"z\":10.705345}', '900000', 0, '36', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 900, 0, '{\"x\":-1906.1487,\"y\":-528.0176,\"z\":18.126873}', NULL),
(93, '', '2', '{\"x\":-1977.7413,\"y\":-509.1026,\"z\":10.729589}', '900000', 0, '38', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 901, 0, '{\"x\":-1982.5862,\"y\":-490.57184,\"z\":21.905859}', NULL),
(94, '', '2', '{\"x\":-3089.2747,\"y\":221.09045,\"z\":12.998488}', '550000', 0, '92', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 902, 0, '{\"x\":-3088.348,\"y\":240.70108,\"z\":19.380419}', NULL),
(95, '', '2', '{\"x\":-3088.873,\"y\":392.28873,\"z\":10.336184}', '510000', 0, '93', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 903, 0, '{\"x\":-3067.2332,\"y\":377.83023,\"z\":16.491804}', NULL),
(96, '', '2', '{\"x\":-3047.5217,\"y\":482.98532,\"z\":5.659647}', '520000', 0, '94', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 904, 0, '{\"x\":-3023.235,\"y\":486.51172,\"z\":12.448067}', NULL),
(97, '', '2', '{\"x\":-3037.2412,\"y\":558.8327,\"z\":6.3876834}', '560000', 0, '95', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 905, 0, '{\"x\":-3017.2998,\"y\":558.39813,\"z\":14.669718}', NULL),
(98, '', '2', '{\"x\":-3078.0508,\"y\":658.9709,\"z\":10.540769}', '580000', 0, '96', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 906, 0, '{\"x\":-3064.3958,\"y\":672.3345,\"z\":19.501112}', NULL),
(99, '', '2', '{\"x\":-3107.9097,\"y\":718.94226,\"z\":19.541576}', '540000', 0, '97', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 907, 0, '{\"x\":-3086.3176,\"y\":723.4732,\"z\":28.10778}', NULL),
(100, '', '6', '{\"x\":-3017.0923,\"y\":746.85187,\"z\":26.664227}', '3500000', 0, '5', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 908, 0, '{\"x\":-3048.5427,\"y\":731.6375,\"z\":43.161205}', NULL),
(101, '', '6', '{\"x\":-2993.002,\"y\":707.55853,\"z\":27.57665}', '3200000', 0, '30', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 909, 0, '{\"x\":-3039.7954,\"y\":697.4692,\"z\":46.470383}', NULL),
(102, '', '6', '{\"x\":-2972.6262,\"y\":642.6513,\"z\":24.87212}', '3400000', 0, '44', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 910, 0, '{\"x\":-3010.2725,\"y\":630.6615,\"z\":43.22603}', NULL),
(103, '', '2', '{\"x\":-3228.9856,\"y\":927.17706,\"z\":12.849757}', '500000', 0, '45', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 911, 0, '{\"x\":-3209.1885,\"y\":937.5095,\"z\":21.790653}', NULL),
(104, '', '2', '{\"x\":-3251.2578,\"y\":1027.4082,\"z\":10.6377}', '510000', 0, '98', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 912, 0, '{\"x\":-3224.5405,\"y\":1015.02637,\"z\":24.877977}', NULL),
(105, '', '2', '{\"x\":-3232.1418,\"y\":1081.7524,\"z\":9.6872425}', '520000', 0, '99', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 913, 0, '{\"x\":-3216.342,\"y\":1076.2284,\"z\":17.390722}', NULL),
(106, '', '2', '{\"x\":-3200.4531,\"y\":1165.4017,\"z\":8.534344}', '510000', 0, '100', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 914, 0, '{\"x\":-3184.764,\"y\":1153.2765,\"z\":15.683979}', NULL),
(107, '', '2', '{\"x\":-3190.979,\"y\":1297.7611,\"z\":17.947392}', '580000', 0, '46', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 915, 0, '{\"x\":-3166.47,\"y\":1280.1809,\"z\":24.247898}', NULL),
(108, '', '2', '{\"x\":-467.83478,\"y\":6206.011,\"z\":28.432837}', '580000', 0, '101', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 916, 0, '{\"x\":-438.1796,\"y\":6225.6685,\"z\":39.69944}', NULL),
(109, '', '2', '{\"x\":-407.31393,\"y\":6314.2305,\"z\":27.821077}', '600000', 0, '47', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 917, 0, '{\"x\":-383.90616,\"y\":6307.0522,\"z\":36.57689}', NULL),
(110, '', '2', '{\"x\":-9.612588,\"y\":6654.219,\"z\":30.58864}', '600000', 0, '48', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 918, 0, '{\"x\":-6.6494627,\"y\":6633.8867,\"z\":42.716152}', NULL),
(111, '', '2', '{\"x\":-374.7929,\"y\":6190.8755,\"z\":30.609545}', '600000', 0, '49', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 919, 0, '{\"x\":-369.7847,\"y\":6167.5776,\"z\":39.83661}', NULL),
(112, '', '2', '{\"x\":-347.62103,\"y\":6225.254,\"z\":30.764109}', '550000', 0, '52', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 920, 0, '{\"x\":-342.43298,\"y\":6207.8413,\"z\":36.666435}', NULL),
(113, '', '2', '{\"x\":-302.1703,\"y\":6327.0117,\"z\":31.767397}', '550000', 0, '53', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 921, 0, '{\"x\":-311.82416,\"y\":6343.6294,\"z\":37.47982}', NULL),
(114, '', '2', '{\"x\":-15.302894,\"y\":6557.335,\"z\":32.120415}', '520000', 0, '54', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 922, 0, '{\"x\":10.9872265,\"y\":6559.865,\"z\":42.720413}', NULL),
(115, '', '2', '{\"x\":31.24038,\"y\":6596.873,\"z\":31.702242}', '570000', 0, '55', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 923, 0, '{\"x\":50.902637,\"y\":6595.8994,\"z\":38.832382}', NULL),
(116, '', '2', '{\"x\":1407.1415,\"y\":3655.913,\"z\":33.310543}', '50000', 0, '56', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 924, 0, '{\"x\":1397.5197,\"y\":3671.2175,\"z\":39.110466}', NULL),
(117, '', '2', '{\"x\":1435.4739,\"y\":3656.9685,\"z\":33.280853}', '50000', 0, '57', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 925, 0, '{\"x\":1456.0244,\"y\":3664.7336,\"z\":40.59581}', NULL),
(118, '', '7', '{\"x\":-1974.9066,\"y\":630.6946,\"z\":121.56836}', '5500000', 0, '58', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 926, 0, '{\"x\":-1964.2605,\"y\":605.7688,\"z\":131.80869}', NULL),
(119, '', '7', '{\"x\":-1937.5133,\"y\":551.04456,\"z\":113.9033}', '4000000', 0, '169', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 927, 0, '{\"x\":-1969.1222,\"y\":565.2445,\"z\":128.482}', NULL),
(120, '', '7', '{\"x\":-2009.1512,\"y\":367.5485,\"z\":93.694305}', '5000000', 0, '117', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 928, 0, '{\"x\":-1968.9995,\"y\":388.85468,\"z\":110.046776}', NULL),
(121, '', '7', '{\"x\":-1922.3112,\"y\":298.41492,\"z\":88.16729}', '5500000', 0, '104', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 929, 0, '{\"x\":-1930.506,\"y\":256.5416,\"z\":99.30103}', NULL),
(122, '', '7', '{\"x\":-1931.9567,\"y\":162.49887,\"z\":83.53267}', '5000000', 0, '105', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 930, 0, '{\"x\":-1911.4066,\"y\":198.41728,\"z\":97.09888}', NULL),
(123, '', '7', '{\"x\":-1873.3514,\"y\":202.27335,\"z\":83.24781}', '13000000', 0, '106', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 931, 0, '{\"x\":-1899.8588,\"y\":183.29895,\"z\":97.82509}', NULL),
(124, '', '7', '{\"x\":-1673.3347,\"y\":385.62744,\"z\":88.22827}', '13000000', 0, '107', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 932, 0, '{\"x\":-1668.9653,\"y\":409.68683,\"z\":99.72427}', NULL),
(125, '', '7', '{\"x\":-1629.8091,\"y\":36.237545,\"z\":61.81561}', '13000000', 0, '108', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 933, 0, '{\"x\":-1636.0016,\"y\":68.17547,\"z\":73.310455}', NULL),
(126, '', '7', '{\"x\":-1549.3391,\"y\":-91.024414,\"z\":53.809174}', '10000000', 0, '50', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 934, 0, '{\"x\":-1585.7014,\"y\":-63.497135,\"z\":74.620125}', NULL),
(127, '', '7', '{\"x\":-1536.9752,\"y\":130.59691,\"z\":56.25136}', '100000000', 0, '110', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 935, 0, '{\"x\":-1596.0583,\"y\":85.67181,\"z\":86.9689}', NULL),
(128, '', '7', '{\"x\":-1189.894,\"y\":292.1015,\"z\":68.7725}', '13000000', 0, '111', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 936, 0, '{\"x\":-1157.3748,\"y\":273.4073,\"z\":84.42921}', NULL),
(129, '', '7', '{\"x\":-1116.9489,\"y\":304.5829,\"z\":65.40127}', '8000000', 0, '112', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 937, 0, '{\"x\":-1099.5973,\"y\":287.94232,\"z\":75.71515}', NULL),
(130, '', '7', '{\"x\":-1038.5833,\"y\":312.07675,\"z\":66.15433}', '12000000', 0, '113', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 938, 0, '{\"x\":-1050.9044,\"y\":338.99875,\"z\":85.49835}', NULL),
(131, '', '7', '{\"x\":-1038.069,\"y\":222.66016,\"z\":63.25572}', '13000000', 0, '115', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 939, 0, '{\"x\":-1075.0908,\"y\":223.25894,\"z\":80.46395}', NULL),
(132, '', '7', '{\"x\":-998.2069,\"y\":158.19768,\"z\":61.20922}', '11000000', 0, '116', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 940, 0, '{\"x\":-975.3577,\"y\":137.69969,\"z\":74.57548}', NULL),
(133, '', '7', '{\"x\":-913.0412,\"y\":108.19032,\"z\":54.58946}', '13000000', 0, '32', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 941, 0, '{\"x\":-950.2512,\"y\":105.38229,\"z\":70.99167}', NULL),
(134, '', '7', '{\"x\":-896.77264,\"y\":-5.1979246,\"z\":42.678925}', '8000000', 0, '1', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 942, 0, '{\"x\":-863.8034,\"y\":4.2088037,\"z\":57.149803}', NULL),
(135, '', '7', '{\"x\":-819.2515,\"y\":268.16354,\"z\":85.275955}', '7000000', 0, '118', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 943, 0, '{\"x\":-829.61884,\"y\":289.04413,\"z\":92.838524}', NULL),
(136, '', '7', '{\"x\":-1500.477,\"y\":523.2254,\"z\":117.15217}', '6000000', 0, '119', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 944, 0, '{\"x\":-1491.9214,\"y\":501.9589,\"z\":126.74525}', NULL),
(137, '', '7', '{\"x\":-1405.0978,\"y\":561.9829,\"z\":124.28618}', '6000000', 0, '120', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 945, 0, '{\"x\":-1426.914,\"y\":545.91516,\"z\":135.04948}', NULL),
(138, '', '7', '{\"x\":-1255.3541,\"y\":666.967,\"z\":141.70224}', '5000000', 0, '121', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 946, 0, '{\"x\":-1230.1002,\"y\":657.87494,\"z\":154.85599}', NULL),
(139, '', '7', '{\"x\":-1196.6532,\"y\":693.2432,\"z\":146.30722}', '5000000', 0, '122', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 947, 0, '{\"x\":-1203.3123,\"y\":710.82477,\"z\":153.04982}', NULL),
(140, '', '7', '{\"x\":-1131.0447,\"y\":784.37616,\"z\":162.76778}', '5500000', 0, '123', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 948, 0, '{\"x\":-1123.2412,\"y\":760.68097,\"z\":172.38077}', NULL),
(141, '', '7', '{\"x\":-1064.8478,\"y\":727.1217,\"z\":164.35458}', '7000000', 0, '125', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 949, 0, '{\"x\":-1047.5908,\"y\":753.3594,\"z\":177.39445}', NULL),
(142, '', '7', '{\"x\":-972.1504,\"y\":752.2547,\"z\":175.26064}', '7000000', 0, '126', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 950, 0, '{\"x\":-981.3824,\"y\":783.21967,\"z\":190.71936}', NULL),
(143, '', '7', '{\"x\":-747.4693,\"y\":808.7421,\"z\":214.02396}', '7500000', 0, '127', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 951, 0, '{\"x\":-721.0683,\"y\":793.7378,\"z\":228.56493}', NULL),
(144, '', '7', '{\"x\":-658.36163,\"y\":886.19293,\"z\":228.18462}', '12500000', 0, '34', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 952, 0, '{\"x\":-676.079,\"y\":940.8075,\"z\":245.78297}', NULL),
(145, '', '7', '{\"x\":-536.85406,\"y\":818.1484,\"z\":196.57095}', '8000000', 0, '128', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 953, 0, '{\"x\":-557.9451,\"y\":848.2556,\"z\":209.4787}', NULL),
(146, '', '7', '{\"x\":-495.79364,\"y\":738.64105,\"z\":161.91077}', '6000000', 0, '129', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 954, 0, '{\"x\":-468.77753,\"y\":744.22833,\"z\":172.71144}', NULL),
(147, '', '7', '{\"x\":-180.96231,\"y\":961.68585,\"z\":236.61226}', '9000000', 0, '130', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 955, 0, '{\"x\":-205.44342,\"y\":937.7869,\"z\":255.34073}', NULL),
(148, '', '7', '{\"x\":-151.77379,\"y\":910.50946,\"z\":234.53564}', '13500000', 0, '131', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 956, 0, '{\"x\":-153.37714,\"y\":956.4031,\"z\":247.11743}', NULL),
(149, '', '7', '{\"x\":-1413.674,\"y\":462.23227,\"z\":108.08854}', '6000000', 0, '132', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 957, 0, '{\"x\":-1408.3994,\"y\":485.09274,\"z\":119.336525}', NULL),
(150, '', '7', '{\"x\":-1308.2855,\"y\":448.97238,\"z\":99.84976}', '6000000', 0, '133', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 958, 0, '{\"x\":-1305.7892,\"y\":468.96918,\"z\":106.510414}', NULL),
(151, '', '7', '{\"x\":-1217.4181,\"y\":506.76477,\"z\":94.73818}', '8000000', 0, '134', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 959, 0, '{\"x\":-1251.6938,\"y\":495.09335,\"z\":113.80711}', NULL),
(152, '', '7', '{\"x\":-1107.9581,\"y\":594.4287,\"z\":103.33465}', '5000000', 0, '60', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 960, 0, '{\"x\":-1099.9772,\"y\":568.2607,\"z\":117.62751}', NULL),
(153, '', '7', '{\"x\":-1022.5579,\"y\":586.8502,\"z\":102.309135}', '5000000', 0, '136', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 961, 0, '{\"x\":-1016.6607,\"y\":604.5222,\"z\":112.305}', NULL),
(154, '', '7', '{\"x\":-884.52765,\"y\":699.2798,\"z\":150.15071}', '5000000', 0, '137', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 962, 0, '{\"x\":-901.9312,\"y\":717.59894,\"z\":158.29358}', NULL),
(155, '', '7', '{\"x\":-765.633,\"y\":650.41614,\"z\":144.57793}', '6000000', 0, '28', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 963, 0, '{\"x\":-739.9569,\"y\":653.32825,\"z\":156.87646}', NULL),
(156, '', '7', '{\"x\":-668.2712,\"y\":638.6607,\"z\":148.4089}', '6000000', 0, '138', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 964, 0, '{\"x\":-686.97424,\"y\":646.7446,\"z\":157.24579}', NULL),
(157, '', '7', '{\"x\":-699.46234,\"y\":705.6508,\"z\":157.1032}', '6000000', 0, '139', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 965, 0, '{\"x\":-685.0862,\"y\":728.29926,\"z\":169.02357}', NULL),
(158, '', '7', '{\"x\":-1062.6764,\"y\":475.94916,\"z\":80.20054}', '6500000', 0, '140', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 966, 0, '{\"x\":-1060.0393,\"y\":441.77582,\"z\":91.91796}', NULL),
(159, '', '7', '{\"x\":-968.9931,\"y\":436.573,\"z\":79.64634}', '6500000', 0, '141', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 967, 0, '{\"x\":-953.45123,\"y\":418.22464,\"z\":91.10017}', NULL),
(160, '', '7', '{\"x\":-873.27515,\"y\":562.73474,\"z\":95.499466}', '5500000', 0, '142', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 968, 0, '{\"x\":-895.2375,\"y\":553.9252,\"z\":106.1724}', NULL),
(161, '', '7', '{\"x\":-866.9362,\"y\":457.70435,\"z\":87.16109}', '6000000', 0, '143', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 969, 0, '{\"x\":-843.1306,\"y\":461.51907,\"z\":98.23242}', NULL),
(162, '', '7', '{\"x\":-717.9192,\"y\":448.5169,\"z\":105.78913}', '7000000', 0, '144', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 970, 0, '{\"x\":-759.55066,\"y\":458.62964,\"z\":122.62332}', NULL),
(163, '', '7', '{\"x\":-679.0872,\"y\":511.94592,\"z\":112.40606}', '6000000', 0, '145', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 971, 0, '{\"x\":-697.60394,\"y\":477.92474,\"z\":125.993576}', NULL),
(164, '', '7', '{\"x\":-515.1823,\"y\":629.1889,\"z\":132.49565}', '6000000', 0, '146', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 972, 0, '{\"x\":-503.0363,\"y\":616.01483,\"z\":142.94467}', NULL),
(165, '', '7', '{\"x\":-554.6618,\"y\":541.35516,\"z\":109.59168}', '6000000', 0, '37', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 973, 0, '{\"x\":-542.00946,\"y\":524.0338,\"z\":122.98022}', NULL),
(166, '', '7', '{\"x\":-536.83124,\"y\":477.00446,\"z\":102.073616}', '7000000', 0, '20', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 974, 0, '{\"x\":-551.70844,\"y\":509.30432,\"z\":115.197464}', NULL),
(167, '', '7', '{\"x\":-561.01306,\"y\":402.49945,\"z\":100.68531}', '6000000', 0, '147', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 975, 0, '{\"x\":-534.82544,\"y\":413.08667,\"z\":112.0277}', NULL),
(168, '', '7', '{\"x\":-615.36365,\"y\":398.1624,\"z\":100.506805}', '5000000', 0, '148', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 976, 0, '{\"x\":-617.81354,\"y\":418.56723,\"z\":112.364235}', NULL),
(169, '', '7', '{\"x\":-450.8148,\"y\":395.53247,\"z\":103.65836}', '7000000', 0, '149', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 977, 0, '{\"x\":-450.02817,\"y\":411.67767,\"z\":115.77556}', NULL),
(170, '', '7', '{\"x\":-409.6572,\"y\":341.64838,\"z\":107.78745}', '6000000', 0, '150', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 978, 0, '{\"x\":-400.56128,\"y\":357.6563,\"z\":119.02561}', NULL),
(171, '', '7', '{\"x\":-298.08435,\"y\":379.72534,\"z\":110.975464}', '6000000', 0, '151', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 979, 0, '{\"x\":-314.8479,\"y\":390.0177,\"z\":120.895676}', NULL),
(172, '', '7', '{\"x\":-166.50792,\"y\":423.9702,\"z\":110.685844}', '6500000', 0, '152', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 980, 0, '{\"x\":-183.72609,\"y\":436.7784,\"z\":120.44388}', NULL),
(173, '', '7', '{\"x\":-311.68866,\"y\":474.8007,\"z\":110.70419}', '7000000', 0, '154', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 981, 0, '{\"x\":-340.09836,\"y\":477.63556,\"z\":124.69265}', NULL),
(174, '', '7', '{\"x\":-387.028,\"y\":504.20312,\"z\":119.29268}', '7000000', 0, '59', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 982, 0, '{\"x\":-359.56992,\"y\":504.80453,\"z\":132.83319}', NULL),
(175, '', '7', '{\"x\":-417.9165,\"y\":569.00684,\"z\":123.9399}', '6000000', 0, '156', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 983, 0, '{\"x\":-429.45667,\"y\":553.8212,\"z\":135.28978}', NULL),
(176, '', '7', '{\"x\":-399.70642,\"y\":664.7264,\"z\":162.7097}', '8500000', 0, '157', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 984, 0, '{\"x\":-399.4012,\"y\":688.61176,\"z\":171.20947}', NULL),
(177, '', '7', '{\"x\":-232.5399,\"y\":588.1019,\"z\":189.41585}', '5000000', 0, '158', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 985, 0, '{\"x\":-224.96033,\"y\":605.5975,\"z\":197.16422}', NULL),
(178, '', '7', '{\"x\":-126.44286,\"y\":588.1821,\"z\":203.59062}', '5500000', 0, '159', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 986, 0, '{\"x\":-107.94795,\"y\":600.41534,\"z\":214.20595}', NULL),
(179, '', '7', '{\"x\":-174.60426,\"y\":502.52948,\"z\":136.30031}', '6000000', 0, '160', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 987, 0, '{\"x\":-194.4057,\"y\":516.27734,\"z\":147.11009}', NULL),
(180, '', '7', '{\"x\":-7.9295306,\"y\":467.87167,\"z\":144.72597}', '6000000', 0, '161', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 988, 0, '{\"x\":4.4761033,\"y\":485.3192,\"z\":155.1729}', NULL),
(181, '', '7', '{\"x\":119.77605,\"y\":494.74292,\"z\":146.22368}', '6000000', 0, '78', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 989, 0, '{\"x\":100.03353,\"y\":472.15317,\"z\":157.55948}', NULL),
(182, '', '7', '{\"x\":224.2187,\"y\":513.4846,\"z\":139.80426}', '6000000', 0, '10', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 990, 0, '{\"x\":209.69138,\"y\":525.7455,\"z\":147.88959}', NULL),
(183, '', '7', '{\"x\":45.917767,\"y\":555.80176,\"z\":179.14331}', '6000000', 0, '163', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 991, 0, '{\"x\":38.15621,\"y\":580.0624,\"z\":193.19527}', NULL),
(184, '', '7', '{\"x\":232.15207,\"y\":671.97516,\"z\":188.86314}', '6000000', 0, '77', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 992, 0, '{\"x\":214.73988,\"y\":685.23267,\"z\":200.28485}', NULL),
(185, '', '7', '{\"x\":228.62451,\"y\":765.5924,\"z\":203.85658}', '8000000', 0, '76', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 993, 0, '{\"x\":206.07901,\"y\":779.50604,\"z\":216.11485}', NULL),
(186, '', '7', '{\"x\":318.37585,\"y\":552.482,\"z\":154.9126}', '6000000', 0, '75', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 994, 0, '{\"x\":337.5939,\"y\":562.3843,\"z\":168.1642}', NULL),
(187, '', '7', '{\"x\":374.19766,\"y\":427.88406,\"z\":144.56444}', '6000000', 0, '8', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 995, 0, '{\"x\":356.7335,\"y\":446.94318,\"z\":153.45502}', NULL),
(188, '', '3', '{\"x\":1389.0669,\"y\":-569.4199,\"z\":73.376526}', '1300000', 0, '3', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 996, 0, '{\"x\":1378.2268,\"y\":-584.0994,\"z\":81.44214}', NULL),
(189, '', '3', '{\"x\":1262.3684,\"y\":-429.91013,\"z\":68.8948}', '1000000', 0, '153', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 997, 0, '{\"x\":1275.8716,\"y\":-412.27664,\"z\":77.346886}', NULL),
(190, '', '7', '{\"x\":-1580.6394,\"y\":-34.115475,\"z\":56.44515}', '9000000', 0, '164', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 998, 0, '{\"x\":-1544.5531,\"y\":-39.877525,\"z\":70.00835}', NULL),
(191, '', '7', '{\"x\":-1942.7114,\"y\":449.6532,\"z\":101.80672}', '5000000', 0, '166', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 999, 0, '{\"x\":-1987.4937,\"y\":477.93036,\"z\":120.44904}', NULL),
(192, '', '2', '{\"x\":-2977.069,\"y\":609.54193,\"z\":19.126196}', '650000', 0, '167', NULL, NULL, 0, 0, -1, NULL, -1, 0, '[]', 1000, 0, '{\"x\":-3004.6519,\"y\":593.6857,\"z\":31.892113}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `idlog`
--

CREATE TABLE `idlog` (
  `in` datetime NOT NULL,
  `out` datetime DEFAULT NULL,
  `id` text NOT NULL,
  `name` text NOT NULL,
  `uuid` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `idlog`
--

INSERT INTO `idlog` (`in`, `out`, `id`, `name`, `uuid`, `idkey`) VALUES
('2024-04-23 21:38:38', NULL, '0', 'Siko_Siko', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `maxWeight` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `items` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `maxWeight`, `size`, `items`, `type`) VALUES
(1, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(2, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(3, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(4, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(5, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(6, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(7, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(8, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(9, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(10, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(11, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(12, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(13, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(14, 120000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(15, 120000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(16, 120000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(17, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(18, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(19, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(20, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(21, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(22, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(23, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(24, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(25, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(26, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(27, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(28, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(29, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(30, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(31, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(32, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(33, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(34, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(35, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(36, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(37, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(38, 15000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(39, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(40, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(41, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(42, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(43, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(44, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(45, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(46, 100000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(47, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(48, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(49, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(50, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(51, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(52, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(53, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(54, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(55, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(56, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(57, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(58, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(59, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(60, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(61, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(62, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(63, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(64, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(65, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(66, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(67, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(68, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(69, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(70, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(71, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(72, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(73, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(74, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(75, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(76, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(77, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(78, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(79, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(80, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(81, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(82, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(83, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(84, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(85, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(86, 120000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(87, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(88, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(89, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(90, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(91, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(92, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(93, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(94, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(95, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(96, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(97, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(98, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(99, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(100, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(101, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(102, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(103, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(104, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(105, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(106, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(107, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(108, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(109, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(110, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(111, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(112, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(113, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(114, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(115, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(116, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(117, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(118, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(119, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(120, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(121, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(122, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(123, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(124, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(125, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(126, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(127, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(128, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(129, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(130, 30000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(131, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(132, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(133, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(134, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(135, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(136, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(137, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(138, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(139, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(140, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(141, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(142, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(143, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(144, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(145, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(146, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(147, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(148, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(149, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(150, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(151, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(152, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(153, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(154, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(155, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(156, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(157, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(158, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(159, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(160, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(161, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(162, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(163, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(164, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(165, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(166, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(167, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(168, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(169, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(170, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(171, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(172, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(173, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(174, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(175, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(176, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(177, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(178, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(179, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(180, 150000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(181, 150000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(182, 150000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(183, 150000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(184, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(185, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(186, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(187, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(188, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(189, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(190, 0, 0, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(191, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(192, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(193, 50000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(194, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(195, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(196, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(197, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(198, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(199, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(200, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(201, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(202, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(203, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(204, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(205, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(206, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(207, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(208, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(209, 160000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(210, 70000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(211, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(212, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(213, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(214, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(215, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(216, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(217, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(218, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(219, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(220, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(221, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(222, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(223, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(224, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(225, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(226, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(227, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(228, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(229, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(230, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(231, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(232, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(233, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(234, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(235, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(236, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(237, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(238, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(239, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(240, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(241, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(242, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(243, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(244, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(245, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(246, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(247, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(248, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(249, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(250, 20000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(251, 20000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(252, 20000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(253, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(254, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(255, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(256, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(257, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(258, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(259, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(260, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(261, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(262, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(263, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(264, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(265, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(266, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(267, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(268, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(269, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(270, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(271, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(272, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(273, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(274, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(275, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(276, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(277, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(278, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(279, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(280, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(281, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(282, 400000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(283, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(284, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(285, 120000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(286, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(287, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(288, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(289, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(290, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(291, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(292, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(293, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(294, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(295, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(296, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(297, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(298, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(299, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(300, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(301, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(302, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(303, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(304, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(305, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(306, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(307, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(308, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(309, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(310, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(311, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(312, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(313, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(314, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(315, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4);
INSERT INTO `inventories` (`id`, `maxWeight`, `size`, `items`, `type`) VALUES
(316, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(317, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(318, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(319, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(320, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(321, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(322, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(323, 110000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(324, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(325, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(326, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(327, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(328, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(329, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(330, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(331, 100000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(332, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(333, 50000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(334, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(335, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(336, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(337, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(338, 75000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(339, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(340, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(341, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(342, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(343, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(344, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(345, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(346, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(347, 45000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(348, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(349, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(350, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(351, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(352, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(353, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(354, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(355, 75000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(356, 75000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(357, 75000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(358, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(359, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(360, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(361, 70000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(362, 70000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(363, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(364, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(365, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(366, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(367, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(368, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(369, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(370, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(371, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(372, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(373, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(374, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(375, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(376, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(377, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(378, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(379, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(380, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(381, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(382, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(383, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(384, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(385, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(386, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(387, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(388, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(389, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(390, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(391, 15000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(392, 30000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(393, 30000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(394, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(395, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(396, 50000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(397, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(398, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(399, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(400, 100000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(401, 100000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(402, 100000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(403, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(404, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(405, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(406, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(407, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(408, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(409, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(410, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(411, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(412, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(413, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(414, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(415, 100000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(416, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(417, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(418, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(419, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(420, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(421, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(422, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(423, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(424, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(425, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(426, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(427, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(428, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(429, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(430, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(431, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(432, 60, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(433, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(434, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(435, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(436, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(437, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(438, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(439, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(440, 250000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(441, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(442, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(443, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(444, 80000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(445, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(446, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(447, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(448, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(449, 140000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(450, 140000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(451, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(452, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(453, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(454, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(455, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(456, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(457, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(458, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(459, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(460, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(461, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(462, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(463, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(464, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(465, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(466, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(467, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(468, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(469, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(470, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(471, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(472, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(473, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(474, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(475, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(476, 200000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(477, 200000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(478, 200000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(479, 200000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(480, 200000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(481, 80000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(482, 80000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(483, 80000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(484, 80000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(485, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(486, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(487, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(488, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(489, 200000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(490, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(491, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(492, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(493, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(494, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(495, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(496, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(497, 400000, 30, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(498, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(499, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(500, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(501, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(502, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(503, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(504, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(505, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(506, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(507, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(508, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(509, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(510, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(511, 200000, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(512, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(513, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(514, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(515, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(516, 80000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(517, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(518, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(519, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(520, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(521, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(522, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(523, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(524, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(525, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(526, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(527, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(528, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(529, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(530, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(531, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(532, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(533, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(534, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(535, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(536, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(537, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(538, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(539, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(540, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(541, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(542, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(543, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(544, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(545, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(546, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(547, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(548, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(549, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(550, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(551, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(552, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(553, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(554, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(555, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(556, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(557, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(558, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(559, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(560, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(561, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(562, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(563, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(564, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(565, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(566, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(567, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(568, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(569, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(570, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(571, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(572, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(573, 150000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(574, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(575, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(576, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(577, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(578, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(579, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(580, 180000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(581, 180000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(582, 180000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(583, 125000, 35, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(584, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(585, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(586, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(587, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(588, 30000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(589, 30000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(590, 30000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(591, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(592, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(593, 15000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(594, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(595, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(596, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(597, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(598, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(602, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(603, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(604, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(605, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(606, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(609, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(614, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(615, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(618, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(619, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(620, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(621, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(622, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(623, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(624, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(625, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(626, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(627, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(628, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(629, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(630, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(631, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(632, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(633, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(634, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(635, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(636, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(637, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(638, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(639, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(640, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4);
INSERT INTO `inventories` (`id`, `maxWeight`, `size`, `items`, `type`) VALUES
(641, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(642, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(643, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(644, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(645, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(646, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(647, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(648, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(649, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(651, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(652, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(653, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(654, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(655, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(656, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(657, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(658, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(664, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(665, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(666, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(668, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(669, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(670, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(671, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(680, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(681, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(682, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(683, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(684, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(685, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(686, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(687, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(688, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(689, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(690, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(691, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(692, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(693, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(694, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(695, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(696, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(697, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(698, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(699, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(700, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(701, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(702, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(703, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(704, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(705, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(706, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(707, 160000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(708, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(709, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(710, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(712, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(713, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(714, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(715, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(716, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(717, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(718, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(719, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(720, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(721, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(722, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(723, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(724, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(725, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(727, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(728, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(732, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(733, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(734, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(736, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(737, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(738, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(739, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(740, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(741, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(742, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(743, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(744, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(745, 300, 40, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(746, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(748, 180000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(749, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(751, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(752, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(753, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(754, 160000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(755, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(756, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(757, 75000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(758, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(759, 180000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(760, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(761, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(762, 75000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(763, 60000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(764, 45000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(765, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(766, 160000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(767, 40000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(768, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(769, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(770, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(771, 40000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(772, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(773, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(774, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(775, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(776, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(777, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(778, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(779, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(780, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(781, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(782, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(783, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(784, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(785, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(786, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(787, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(788, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(789, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(790, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(792, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(793, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(794, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(795, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(796, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(797, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(798, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(799, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(800, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(805, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(807, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 12),
(808, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 11),
(809, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 11),
(811, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 11),
(812, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 11),
(814, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 11),
(815, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 12),
(818, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 9),
(819, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 12),
(820, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 12),
(837, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(850, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(851, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(852, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(853, 2000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 8),
(866, 200000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(867, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(873, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(879, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(888, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(889, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(894, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(898, 90000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(899, 70000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(900, 40000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(902, 70000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(903, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(904, 50000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(905, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(906, 150000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(907, 70000, 25, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(908, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(909, 100000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(910, 75000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(911, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(912, 65000, 10, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(913, 80000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(914, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(915, 22000, 5, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(916, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(917, 65000, 20, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(918, 60000, 15, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 4),
(920, 10000000, 100, '{\"$type\":\"System.Collections.Generic.List`1[[Whistler.Inventory.Models.BaseItem, Whistler]], System.Private.CoreLib\",\"$values\":[]}', 11);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `items` text NOT NULL,
  `uuid` int(11) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `itemslog`
--

CREATE TABLE `itemslog` (
  `idkey` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `data` text NOT NULL,
  `id` int(11) NOT NULL,
  `action` int(11) NOT NULL DEFAULT 0,
  `player` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `killog`
--

CREATE TABLE `killog` (
  `id` int(11) NOT NULL,
  `killer` varchar(45) NOT NULL,
  `target` varchar(45) NOT NULL,
  `clientweapon` text NOT NULL,
  `serverweapon` text NOT NULL,
  `date` datetime(2) NOT NULL,
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `Fraction` int(11) NOT NULL DEFAULT 0,
  `Rank` double NOT NULL DEFAULT 0,
  `FPosX` double NOT NULL DEFAULT 0,
  `FPosY` double NOT NULL DEFAULT 0,
  `FPosZ` double NOT NULL DEFAULT 0,
  `FPosDim` double NOT NULL DEFAULT 0,
  `TPosX` double NOT NULL DEFAULT 0,
  `TPosY` double NOT NULL DEFAULT 0,
  `TPosZ` double NOT NULL DEFAULT 0,
  `TPosDim` double NOT NULL DEFAULT 0,
  `Revers` int(11) NOT NULL DEFAULT 0,
  `ForVeh` int(11) NOT NULL DEFAULT 0,
  `Interact` int(11) NOT NULL DEFAULT 0,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `id` varchar(155) NOT NULL,
  `holder` varchar(155) DEFAULT '',
  `balance` int(11) NOT NULL,
  `type` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `moneylog`
--

CREATE TABLE `moneylog` (
  `time` datetime NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `namelog`
--

CREATE TABLE `namelog` (
  `time` datetime NOT NULL,
  `uuid` text NOT NULL,
  `old` text NOT NULL,
  `new` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `newcustomization`
--

CREATE TABLE `newcustomization` (
  `id` int(11) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `eyecolor` int(11) NOT NULL,
  `headoverlays` text NOT NULL,
  `headblend` text NOT NULL,
  `facefeatures` text NOT NULL,
  `hairs` text NOT NULL,
  `tattoos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `newmoneylog`
--

CREATE TABLE `newmoneylog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `fromtype` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `totype` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `nicknames`
--

CREATE TABLE `nicknames` (
  `srv` varchar(155) NOT NULL,
  `name` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oldhouses`
--

CREATE TABLE `oldhouses` (
  `id` int(11) NOT NULL,
  `owner` text NOT NULL,
  `type` varchar(11) NOT NULL,
  `position` text NOT NULL,
  `price` text NOT NULL,
  `locked` tinyint(4) NOT NULL,
  `garage` text NOT NULL,
  `bank` text NOT NULL,
  `roommates` text NOT NULL,
  `isAdmin` int(11) NOT NULL DEFAULT 0,
  `typeowner` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `othervehicles`
--

CREATE TABLE `othervehicles` (
  `type` varchar(155) NOT NULL,
  `number` text DEFAULT NULL,
  `model` text NOT NULL,
  `position` text DEFAULT NULL,
  `rotation` text DEFAULT NULL,
  `color1` int(11) NOT NULL,
  `color2` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `idkey` int(11) NOT NULL,
  `businessID` int(11) DEFAULT NULL,
  `uuid` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `parliament_sitting`
--

CREATE TABLE `parliament_sitting` (
  `id` int(11) NOT NULL,
  `choices` text NOT NULL,
  `speakeruuid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `topic` text NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `philanthropists`
--

CREATE TABLE `philanthropists` (
  `id` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `CharacterUuid` int(11) NOT NULL,
  `InstalledAppsIds` longtext DEFAULT NULL,
  `SimCardId` int(11) DEFAULT NULL,
  `AccountId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_bank_transact`
--

CREATE TABLE `phones_bank_transact` (
  `Id` int(11) NOT NULL,
  `From` int(11) NOT NULL,
  `FromType` int(11) NOT NULL,
  `To` int(11) NOT NULL,
  `ToType` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_blocks`
--

CREATE TABLE `phones_blocks` (
  `SimCardId` int(11) NOT NULL,
  `TargetNumber` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_callhistory`
--

CREATE TABLE `phones_callhistory` (
  `Id` int(11) NOT NULL,
  `FromSimCardId` int(11) NOT NULL,
  `TargetNumber` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `CallStatus` int(11) NOT NULL,
  `Duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_contacts`
--

CREATE TABLE `phones_contacts` (
  `Id` int(11) NOT NULL,
  `HolderSimCardId` int(11) NOT NULL,
  `TargetNumber` int(11) NOT NULL,
  `Name` longtext DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_msg_accounts`
--

CREATE TABLE `phones_msg_accounts` (
  `Id` int(11) NOT NULL,
  `Username` longtext DEFAULT NULL,
  `SimCardId` int(11) NOT NULL,
  `DisplayedName` longtext DEFAULT NULL,
  `IsNumberHided` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `LastVisit` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_msg_accountstochat`
--

CREATE TABLE `phones_msg_accountstochat` (
  `AccountId` int(11) NOT NULL,
  `ChatId` int(11) NOT NULL,
  `IsLeaved` tinyint(1) NOT NULL,
  `IsMuted` tinyint(1) NOT NULL,
  `LastReadMessageId` int(11) DEFAULT NULL,
  `AdminLvl` int(11) NOT NULL,
  `IsBlocked` tinyint(1) NOT NULL,
  `Permissions` longtext DEFAULT NULL,
  `BlockedById` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_msg_chats`
--

CREATE TABLE `phones_msg_chats` (
  `Id` int(11) NOT NULL,
  `Name` longtext DEFAULT NULL,
  `Type` int(11) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Avatar` longtext DEFAULT NULL,
  `InviteCode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_msg_contacts`
--

CREATE TABLE `phones_msg_contacts` (
  `ContactId` int(11) NOT NULL,
  `HolderAccountId` int(11) NOT NULL,
  `TargetAccountId` int(11) NOT NULL,
  `Name` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_msg_messages`
--

CREATE TABLE `phones_msg_messages` (
  `Id` int(11) NOT NULL,
  `Text` longtext DEFAULT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `SenderId` int(11) NOT NULL,
  `ChatId` int(11) NOT NULL,
  `IsRead` tinyint(1) NOT NULL,
  `Attachments` longtext DEFAULT NULL,
  `Discriminator` longtext NOT NULL,
  `Title` longtext DEFAULT NULL,
  `Photo` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_news_advert`
--

CREATE TABLE `phones_news_advert` (
  `Id` int(11) NOT NULL,
  `SenderUUID` int(11) NOT NULL,
  `EditorUUID` int(11) NOT NULL,
  `DateCreate` datetime(6) NOT NULL,
  `DateCompleate` datetime(6) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `MessengerLogin` longtext DEFAULT NULL,
  `Text` longtext DEFAULT NULL,
  `PrimeAdvert` tinyint(1) NOT NULL,
  `ImageUrl` longtext DEFAULT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_simcards`
--

CREATE TABLE `phones_simcards` (
  `Id` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `BankNumber` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `phones_taxi_orders`
--

CREATE TABLE `phones_taxi_orders` (
  `Id` int(11) NOT NULL,
  `DriverUuid` int(11) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `TotalPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prime`
--

CREATE TABLE `prime` (
  `id` int(11) NOT NULL,
  `prime_id` int(11) NOT NULL DEFAULT 0,
  `login` varchar(45) NOT NULL,
  `type` varchar(15) NOT NULL,
  `value` int(11) NOT NULL,
  `sum` int(11) DEFAULT 0,
  `promo` varchar(45) DEFAULT 'noref',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prime_errors`
--

CREATE TABLE `prime_errors` (
  `id` int(11) NOT NULL,
  `orderid` varchar(11) NOT NULL,
  `error` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prime_history`
--

CREATE TABLE `prime_history` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `operation` text NOT NULL,
  `sum` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `login` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `name` text NOT NULL,
  `money` int(11) NOT NULL,
  `mcoins` int(11) NOT NULL,
  `usages` int(11) DEFAULT 0,
  `owneruuid` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `propsprices`
--

CREATE TABLE `propsprices` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `propsprices`
--

INSERT INTO `propsprices` (`id`, `name`, `price`) VALUES
(1, 'Car::tornado3', 75),
(2, 'Car::tornado4', 85),
(3, 'Car::voodoo2', 95),
(4, 'Car::regina', 100),
(5, 'Car::ingot', 105),
(6, 'Car::panto', 112),
(7, 'Car::picador', 115),
(8, 'Car::issi2', 127),
(9, 'Car::minivan', 135),
(10, 'Car::blista2', 140),
(11, 'Car::dilettante', 145),
(12, 'Car::glendale', 147),
(13, 'Car::voodoo', 165),
(14, 'Car::tampa', 157),
(15, 'Car::radi', 162),
(16, 'Car::stalion', 165),
(17, 'Car::washington', 175),
(18, 'Car::ruiner', 182),
(19, 'Car::brioso', 185),
(20, 'Car::weevil', 195),
(21, 'Car::rancherxl', 202),
(22, 'Car::buffalo', 205),
(23, 'Car::warrener', 212),
(24, 'Car::seminole', 215),
(25, 'Car::bjxl', 222),
(26, 'Car::phoenix', 230),
(27, 'Car::gauntlet', 235),
(28, 'Car::baller', 237),
(29, 'Car::patriot', 245),
(30, 'Car::bison3', 257),
(31, 'Car::cheburek', 452),
(32, 'Car::pigalle', 467),
(33, 'Car::sentinel', 525),
(34, 'Car::romero', 530),
(35, 'Car::vigero', 540),
(36, 'Car::yosemite', 547),
(37, 'Car::speedo', 575),
(38, 'Car::pony', 587),
(39, 'Car::sabregt2', 750),
(40, 'Car::faggio2', 10),
(41, 'Car::sanchez2', 100),
(42, 'Car::enduro', 75),
(43, 'Car::pcj', 200),
(44, 'Car::hexer', 250),
(45, 'Car::lectro', 250),
(46, 'Car::nemesis', 150),
(47, 'Car::hakuchou', 300),
(48, 'Car::ruffian', 350),
(49, 'Car::bmx', 250),
(50, 'Car::scorcher', 225),
(51, 'Car::bf400', 200),
(52, 'Car::carbonrs', 1000),
(53, 'Car::bati', 750),
(54, 'Car::double', 750),
(55, 'Car::diablous', 400),
(56, 'Car::cliffhanger', 750),
(57, 'Car::akuma', 625),
(58, 'Car::thrust', 500),
(59, 'Car::nightblade', 625),
(60, 'Car::vindicator', 750),
(61, 'Car::ratbike', 150),
(62, 'Car::blazer', 150),
(63, 'Car::gargoyle', 350),
(64, 'Car::sanctus', 5000),
(65, 'Car::avarus', 1500),
(66, 'Car::bagger', 625),
(67, 'Car::bati2', 1000),
(68, 'Car::chimera', 5000),
(69, 'Car::daemon', 1000),
(70, 'Car::daemon2', 1000),
(71, 'Car::defiler', 2500),
(72, 'Car::diablous2', 1500),
(73, 'Car::esskey', 750),
(74, 'Car::faggio', 10),
(75, 'Car::fcr', 350),
(76, 'Car::fcr2', 350),
(77, 'Car::hakuchou2', 1500),
(78, 'Car::innovation', 2500),
(79, 'Car::manchez', 250),
(80, 'Car::shotaro', 20000),
(81, 'Car::sovereign', 1500),
(82, 'Car::vader', 200),
(83, 'Car::vortex', 2500),
(84, 'Car::wolfsbane', 500),
(85, 'Car::zombiea', 350),
(86, 'Car::zombieb', 500),
(87, 'Car::stryder', 1000),
(88, 'Car::blazer2', 500),
(89, 'Car::blazer3', 750),
(90, 'Car::blazer4', 750),
(91, 'Car::cruiser', 200),
(92, 'Car::fixter', 200),
(93, 'Car::tribike', 250),
(94, 'Car::tribike2', 250),
(95, 'Car::tribike3', 250),
(96, 'Car::veto', 500),
(97, 'Car::verus', 500),
(98, 'Car::h2r', 20000),
(99, 'Car::amge63s', 22500),
(100, 'Car::e63sf', 23500),
(101, 'Car::bmw21m5', 25000),
(102, 'Car::g65go', 26000),
(103, 'Car::gls63go', 26500),
(104, 'Car::goe63s', 27500),
(105, 'Car::amgs63w222', 28000),
(106, 'Car::gobmwm8', 30000),
(107, 'Car::gobmw745le', 30500),
(108, 'Car::audir8', 31500),
(109, 'Car::cayennego', 32500),
(110, 'Car::goamggt', 33000),
(111, 'Car::gomartin', 33500),
(112, 'Car::f8tributo', 34500),
(113, 'Car::go812', 37500),
(114, 'Car::go918', 37500),
(115, 'Car::portaycan', 38500),
(116, 'Car::gotopgunurus', 40000),
(117, 'Car::18performante', 40500),
(118, 'Car::rollswrait', 41000),
(119, 'Car::rrphantomgo', 43000),
(120, 'Car::rrcullinan', 44000),
(121, 'Car::lambago', 45000),
(122, 'Car::gosian', 47500),
(123, 'Car::goveneno', 48500),
(124, 'Car::gospeed', 50000),
(125, 'Car::gobolide', 85000),
(126, 'Car::chirongo', 95000),
(127, 'Car::bugattilanoire', 100000),
(128, 'Car::amgvision', 110000),
(129, 'Car::e34go', 1500),
(130, 'Car::e46go', 2750),
(131, 'Car::gom3e36', 3250),
(132, 'Car::bmwe92', 3500),
(133, 'Car::fordgt500', 3750),
(134, 'Car::cls500w219', 4250),
(135, 'Car::bmwm5e60', 4250),
(136, 'Car::gogolf7s', 4500),
(137, 'Car::amgc63coupe', 6000),
(138, 'Car::bmwx5me70', 6000),
(139, 'Car::camry70', 6000),
(140, 'Car::goskyline34', 6500),
(141, 'Car::goamarok', 7500),
(142, 'Car::gobmwz4', 7500),
(143, 'Car::gosl63', 9000),
(144, 'Car::panamera17turbo', 9000),
(145, 'Car::tahoego', 9000),
(146, 'Car::gobentley1', 12500),
(147, 'Car::gobentleygt', 12500),
(148, 'Car::ffgo', 12500),
(149, 'Car::gox6', 13000),
(150, 'Car::gtrr35', 14000),
(151, 'Car::golc200', 15000),
(152, 'Car::p992', 17500),
(153, 'Car::rangerover', 19000),
(154, 'Car::gobacalar', 21000);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Author` varchar(40) NOT NULL,
  `Question` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Respondent` varchar(40) DEFAULT NULL,
  `Response` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `Opened` datetime NOT NULL,
  `Closed` datetime DEFAULT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rentcarpoint`
--

CREATE TABLE `rentcarpoint` (
  `id` int(11) NOT NULL,
  `positionped` text NOT NULL,
  `rotationped` double NOT NULL,
  `positioncar` text NOT NULL,
  `rotationcar` double NOT NULL,
  `categories` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rentcarpoint`
--

INSERT INTO `rentcarpoint` (`id`, `positionped`, `rotationped`, `positioncar`, `rotationcar`, `categories`) VALUES
(1, '{\"x\":213.221115,\"y\":-809.0395,\"z\":31.0148945}', 66.23930358886719, '{\"x\":206.133575,\"y\":-801.0014,\"z\":30.5640144}', 249.33135986328125, '[0,1,3]'),
(5, '{\"x\":-1003.5921,\"y\":-1417.216,\"z\":5.199232}', 204.8942108154297, '{\"x\":-998.0716,\"y\":-1383.674,\"z\":-0.08289079}', 318.946044921875, '[5]'),
(6, '{\"x\":-534.909546,\"y\":62.6406136,\"z\":52.5798874}', 170.70938110351562, '{\"x\":-534.604248,\"y\":54.5872536,\"z\":52.14032}', 265.9967346191406, '[0,1,3]'),
(7, '{\"x\":1852.73535,\"y\":2538.0415,\"z\":45.67206}', 304.6419982910156, '{\"x\":1854.865,\"y\":2545.43945,\"z\":45.2323036}', 269.2736511230469, '[0,1,3]'),
(8, '{\"x\":1758.50952,\"y\":3297.56641,\"z\":41.1474762}', 146.94784545898438, '{\"x\":1770.967,\"y\":3240.0564,\"z\":42.72463}', 101.42684936523438, '[4]'),
(9, '{\"x\":2762.50757,\"y\":3498.27832,\"z\":55.3417168}', 248.4987030029297, '{\"x\":2776.48975,\"y\":3492.875,\"z\":54.76619}', 68.82858276367188, '[0,1,3]'),
(10, '{\"x\":149.209335,\"y\":6563.406,\"z\":31.8223286}', 43.798667907714844, '{\"x\":143.3379,\"y\":6574.72559,\"z\":31.48525}', 316.4110107421875, '[0,1,3]'),
(12, '{\"x\":241.4757,\"y\":-2942.90454,\"z\":6.26298}', 84.69320678710938, '{\"x\":242.713562,\"y\":-2953.73364,\"z\":5.457393}', 181.54156494140625, '[0,1,3]'),
(13, '{\"x\":-903.764,\"y\":-2245.70483,\"z\":6.70903444}', 194.32952880859375, '{\"x\":-908.6605,\"y\":-2260.21387,\"z\":6.26908255}', 240.10745239257812, '[0,1,3]'),
(14, '{\"x\":-188.249588,\"y\":-1923.00525,\"z\":27.6203918}', 164.50108337402344, '{\"x\":-195.2269,\"y\":-1931.37207,\"z\":27.1807919}', 207.9137420654297, '[0,1,3]'),
(15, '{\"x\":1961.74231,\"y\":5172.977,\"z\":47.8724632}', 179.22955322265625, '{\"x\":1968.92114,\"y\":5163.27441,\"z\":47.1194038}', 107.108154296875, '[0,1,3]'),
(16, '{\"x\":823.2857,\"y\":-3203.74854,\"z\":5.99499}', 178.81100463867188, '{\"x\":835.124634,\"y\":-3208.99561,\"z\":5.460819}', 180.8119659423828, '[0,1,3]'),
(17, '{\"x\":-938.2777,\"y\":-2074.3088,\"z\":9.298812}', 170.66162, '{\"x\":-945.3912,\"y\":-2084.3618,\"z\":9.299511}', -136.95941, '[0, 1]'),
(18, '{\"x\":-1605.0693,\"y\":-1158.4858,\"z\":1.4639115}', -70.78278350830078, '{\"x\":-1636.0289,\"y\":-1191.0939,\"z\":0.04499796}', 123.75463104248047, '[5]'),
(19, '{\"x\":-700.5263,\"y\":-1401.5065,\"z\":5.4952455}', 141.39492797851562, '{\"x\":-724.69965,\"y\":-1443.9403,\"z\":4.9044733}', 139.12298583984375, '[6]'),
(21, '{\"x\":-1019.15137,\"y\":-2867.4717,\"z\":13.952067}', -119.43836212158203, '{\"x\":-1054.8323,\"y\":-2951.8997,\"z\":14.728651}', 150.65126037597656, '[4]');

-- --------------------------------------------------------

--
-- Table structure for table `reportmessages`
--

CREATE TABLE `reportmessages` (
  `id` int(11) NOT NULL,
  `reportid` int(11) NOT NULL,
  `senderuuid` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `authoruuid` int(11) NOT NULL,
  `opendate` varchar(45) NOT NULL,
  `closedate` varchar(45) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT -1,
  `adminuuid` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `resetcharacters`
--

CREATE TABLE `resetcharacters` (
  `id` int(11) NOT NULL,
  `compleete` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roulette_statics`
--

CREATE TABLE `roulette_statics` (
  `idkey` int(11) NOT NULL,
  `spend_overall` bigint(20) NOT NULL DEFAULT 0,
  `droped_overall` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roulette_statics`
--

INSERT INTO `roulette_statics` (`idkey`, `spend_overall`, `droped_overall`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `safes`
--

CREATE TABLE `safes` (
  `minamount` int(11) NOT NULL,
  `maxamount` int(11) NOT NULL,
  `pos` text NOT NULL,
  `address` text NOT NULL,
  `rotation` int(11) NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `safes`
--

INSERT INTO `safes` (`minamount`, `maxamount`, `pos`, `address`, `rotation`, `idkey`) VALUES
(12859, 35870, '{\"x\":262.900482,\"y\":216.127136,\"z\":101.683334}', '0', 0, 1),
(32428, 55800, '{\"x\":266.267944,\"y\":215.220749,\"z\":101.683441}', '0', 0, 2),
(45200, 75800, '{\"x\":264.3013,\"y\":216.193329,\"z\":101.683372}', '0', 0, 3),
(1000, 5000, '{\"x\":1734.54419,\"y\":6420.048,\"z\":34.78725}', '300', 237, 4),
(5000, 10000, '{\"x\":1707.16577,\"y\":4919.4126,\"z\":41.8136673}', '400', 50, 5),
(5000, 10000, '{\"x\":2674.075,\"y\":3287.12,\"z\":54.9911652}', '500', 144, 6),
(5000, 10000, '{\"x\":1960.29517,\"y\":3748.541,\"z\":32.0937462}', '700', 108, 7),
(5000, 10000, '{\"x\":-3249.19287,\"y\":1005.01636,\"z\":12.5807142}', '900', 174, 8),
(5000, 10000, '{\"x\":-43.18342,\"y\":-1749.32141,\"z\":29.171011}', '1000', 232, 9);

-- --------------------------------------------------------

--
-- Table structure for table `stocklog`
--

CREATE TABLE `stocklog` (
  `time` datetime NOT NULL,
  `frac` text NOT NULL,
  `uuid` text NOT NULL,
  `type` text NOT NULL,
  `amount` text NOT NULL,
  `in` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `teleports`
--

CREATE TABLE `teleports` (
  `id` int(11) NOT NULL,
  `enterPoint` text DEFAULT NULL,
  `enterDimension` int(10) UNSIGNED DEFAULT NULL,
  `exitPoint` text DEFAULT NULL,
  `exitDimension` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `teleports`
--

INSERT INTO `teleports` (`id`, `enterPoint`, `enterDimension`, `exitPoint`, `exitDimension`) VALUES
(1, '{\"x\":-138.1583,\"y\":-256.860138,\"z\":42.5949745}', 0, '{\"x\":81.8444443,\"y\":276.198273,\"z\":98.44612}', 11210),
(2, '{\"x\":44.0114136,\"y\":-998.4688,\"z\":28.3362713}', 0, '{\"x\":81.7981,\"y\":275.986237,\"z\":98.44611}', 10370),
(4, '{\"x\":-1546.6333,\"y\":-466.9439,\"z\":35.19077}', 0, '{\"x\":81.70636,\"y\":275.88266,\"z\":98.4462051}', 13640),
(5, '{\"x\":132.6722,\"y\":-1462.498,\"z\":28.14162}', 0, '{\"x\":81.78128,\"y\":276.07373,\"z\":98.44613}', 13743),
(6, '{\"x\":169.241272,\"y\":-1633.46216,\"z\":28.2916889}', 0, '{\"x\":81.80693,\"y\":276.106079,\"z\":98.4461441}', 13652),
(7, '{\"x\":2562.19824,\"y\":2590.90039,\"z\":37.0830956}', 0, '{\"x\":81.84142,\"y\":275.9366,\"z\":98.44613}', 0),
(9, '{\"x\":1591.51465,\"y\":6450.74268,\"z\":24.31714}', 0, '{\"x\":81.82056,\"y\":276.085876,\"z\":98.44613}', 10545),
(10, '{\"x\":449.86908,\"y\":-718.9119,\"z\":26.3580685}', 0, '{\"x\":-3210.67285,\"y\":-1853.0127,\"z\":55.6025848}', 11536),
(11, '{\"x\":591.1937,\"y\":2744.569,\"z\":41.0429344}', 0, '{\"x\":-3210.69678,\"y\":-1853.03357,\"z\":55.6025925}', 10659),
(12, '{\"x\":161.73674,\"y\":6636.229,\"z\":30.5702438}', 0, '{\"x\":-3210.71069,\"y\":-1853.12073,\"z\":55.6025963}', 12865),
(13, '{\"x\":959.766,\"y\":1330.39,\"z\":317.335236}', 1337, '{\"x\":956.209167,\"y\":1327.61987,\"z\":318.213959}', 1337),
(17, '{\"x\":-117.11441,\"y\":-604.5599,\"z\":35.2807121}', 0, '{\"x\":-118.452667,\"y\":-604.082031,\"z\":35.45513}', 0),
(18, '{\"x\":-2962.42529,\"y\":454.427673,\"z\":14.3150139}', 0, '{\"x\":-2399.62769,\"y\":1396.52515,\"z\":-99.00004}', 14772),
(19, '{\"x\":-143.736,\"y\":229.3969,\"z\":93.9335861}', 14894, '{\"x\":-2399.55029,\"y\":1396.52563,\"z\":-99.00005}', 14894),
(20, '{\"x\":-143.724167,\"y\":229.3868,\"z\":93.93352}', 0, '{\"x\":-2399.57666,\"y\":1396.52271,\"z\":-99.00005}', 10296),
(21, '{\"x\":-247.333038,\"y\":6213.4,\"z\":30.939024}', 12531, '{\"x\":-2399.55859,\"y\":1396.52576,\"z\":-99.00006}', 12531),
(22, '{\"x\":-247.343826,\"y\":6213.384,\"z\":30.93902}', 0, '{\"x\":-2399.54468,\"y\":1396.52576,\"z\":-99.00005}', 125331),
(23, '{\"x\":935.8974,\"y\":47.1966553,\"z\":80.0958}', 0, '{\"x\":1089.64819,\"y\":205.94545,\"z\":-49.999733}', 0),
(26, '{\"x\":620.0627,\"y\":18.0575161,\"z\":86.90409}', 0, '{\"x\":566.3135,\"y\":4.929712,\"z\":102.233131}', 0),
(27, '{\"x\":-544.5019,\"y\":-185.751633,\"z\":46.3898964}', 0, '{\"x\":-554.779968,\"y\":-187.3748,\"z\":51.2097855}', 0),
(28, '{\"x\":127.407875,\"y\":-729.350342,\"z\":241.152161}', 0, '{\"x\":115.1248,\"y\":-741.6399,\"z\":257.152557}', 0),
(31, '{\"x\":535.0957,\"y\":-0.710843563,\"z\":81.73821}', 0, '{\"x\":477.965759,\"y\":-75.37651,\"z\":76.50822}', 0),
(32, '{\"x\":-2345.25513,\"y\":3232.90112,\"z\":33.74289}', 0, '{\"x\":-1804.6781,\"y\":2772.21387,\"z\":-4.27013063}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticketlog`
--

CREATE TABLE `ticketlog` (
  `time` datetime NOT NULL,
  `player` text NOT NULL,
  `target` text NOT NULL,
  `sum` text NOT NULL,
  `reason` text NOT NULL,
  `pnick` text NOT NULL,
  `tnick` text NOT NULL,
  `idkey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `idkey` int(11) NOT NULL,
  `holderuuid` int(11) NOT NULL DEFAULT -1,
  `number` varchar(155) NOT NULL DEFAULT '',
  `model` varchar(155) NOT NULL,
  `componentsnew` text DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rotation` varchar(255) DEFAULT NULL,
  `typeowner` int(11) NOT NULL DEFAULT 0,
  `power` double NOT NULL DEFAULT 0,
  `torque` double NOT NULL DEFAULT 1,
  `price` int(11) DEFAULT NULL,
  `keynum` int(11) DEFAULT 0,
  `streamer` tinyint(1) DEFAULT 0,
  `donatecar` tinyint(1) DEFAULT 0,
  `isdeath` tinyint(1) DEFAULT 0,
  `items` text DEFAULT NULL,
  `fuel` int(11) DEFAULT 0,
  `dirt` float DEFAULT 0,
  `doorbreak` int(11) DEFAULT 0,
  `mileage` int(11) DEFAULT 0,
  `mileageoilchange` int(11) DEFAULT 0,
  `mileagebrakepadschange` int(11) DEFAULT 0,
  `mileagetransmissionservice` int(11) DEFAULT 0,
  `enginehealth` float DEFAULT 0,
  `rank` int(11) DEFAULT NULL,
  `holder` varchar(155) DEFAULT NULL,
  `dimension` int(10) UNSIGNED DEFAULT 0,
  `inventoryId` int(11) NOT NULL DEFAULT -1,
  `wantedlevel` text DEFAULT NULL,
  `saveposition` varchar(255) DEFAULT NULL,
  `saverotation` varchar(255) DEFAULT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `tradepoint` int(11) NOT NULL DEFAULT -1,
  `dirtclear` datetime DEFAULT NULL,
  `pledged` tinyint(1) NOT NULL DEFAULT 0,
  `buytype` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(10005, 6, 'CHEREM', 'luxor2', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":73,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-978.2288,\"y\":-3002.7822,\"z\":13.947966}', '{\"x\":0.064496174,\"y\":0.058136817,\"z\":61.27643}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 14, NULL, 0, 1, NULL, NULL, NULL, 0, -1, '2022-05-02 02:02:09', 0, 0),
(10006, 6, 'ABU', 'luxor2', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":73,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-966.53467,\"y\":-2983.3042,\"z\":15.04949}', '{\"x\":-0.14022787,\"y\":-0.14319338,\"z\":61.485596}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 14, NULL, 0, 2, NULL, NULL, NULL, 0, -1, '2022-02-01 02:02:21', 0, 0),
(10009, 7, 'KU', 'polmav', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":511.28354,\"y\":-54.371086,\"z\":89.74819}', '{\"x\":0.108843975,\"y\":-0.006555738,\"z\":63.807964}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 11, NULL, 0, 3, NULL, NULL, NULL, 0, -1, '2023-01-15 17:40:36', 0, 0),
(10011, 1, 'BUSIDO', 'youga', '{\"HandlingTuning\":{},\"Components\":{\"FrontBumper\":1,\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":8,\"WheelsColor\":0,\"Exhaust\":0,\"Roof\":0,\"Suspension\":2,\"FrontWheels\":21,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":82.930756,\"y\":-1926.4982,\"z\":20.703684}', '{\"x\":-3.0776227,\"y\":0.88165474,\"z\":322.58362}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 4, NULL, NULL, NULL, 0, -1, '2022-06-19 02:02:11', 0, 0),
(10012, 1, 'FAM02', 'youga', '{\"Components\":{\"Spoilers\":10,\"FrontBumper\":1,\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":8,\"WheelsColor\":0,\"Exhaust\":0,\"Roof\":0,\"Suspension\":2,\"FrontWheels\":21,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134,\"Xenon\":0},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":87.674934,\"y\":-1920.8805,\"z\":20.689823}', '{\"x\":1.4346528,\"y\":-3.0724041,\"z\":139.37299}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 5, NULL, NULL, NULL, 0, -1, '2021-09-16 02:02:13', 0, 0),
(10019, 8, 'EMS', 'go_unmarked_scout', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":334.9824,\"y\":-542.861,\"z\":29.0104465}', '{\"x\":0.0121144066,\"y\":0.000120273631,\"z\":179.833313}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 6, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10020, 8, 'EMS', 'go_unmarked_scout', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":286.122162,\"y\":-592.4223,\"z\":43.3898659}', '{\"x\":0.353217,\"y\":0.826642334,\"z\":339.424622}', 2, 70, 1, NULL, 0, 0, 0, 0, '[]', 0, 0.0403147, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 7, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10021, 8, 'EMS', 'go_unmarked_scout', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":294.9365,\"y\":-608.65155,\"z\":43.6277657}', '{\"x\":0.546361148,\"y\":0.276018173,\"z\":68.31717}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 4.61008, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 8, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10022, 8, '59VF3', 'go_unmarked_scout', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":382.5542,\"y\":-577.24066,\"z\":28.920084}', '{\"x\":-0.391377,\"y\":-0.6651317,\"z\":90.60138}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 9, NULL, NULL, NULL, 0, -1, '2022-05-04 02:02:10', 0, 0),
(10023, 8, 'EMS', 'go_unmarked_scout', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":331.811249,\"y\":-556.8628,\"z\":29.0118275}', '{\"x\":0.0351769738,\"y\":-0.0585243553,\"z\":341.095917}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 10, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10024, 8, 'EMS', 'go_unmarked_scout', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":326.447052,\"y\":-554.8852,\"z\":29.0115356}', '{\"x\":-0.0208618622,\"y\":0.006536423,\"z\":341.692627}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0.332734, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 11, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10025, 7, 'LSPD1', 'riot', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Xenon\":0,\"Engine\":3,\"Turbo\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":3}', '{\"x\":491.58334,\"y\":-24.207283,\"z\":77.87345}', '{\"x\":0.016907271,\"y\":0.00081934186,\"z\":-119.03038}', 2, 35, 2, NULL, 0, 0, 0, 0, '[]', 0, 3.53783, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 12, NULL, NULL, NULL, 0, -1, '2021-09-22 20:17:54', 0, 0),
(10026, 7, 'LSPD3', 'riot', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":3}', '{\"x\":489.57785,\"y\":-27.53785,\"z\":77.873436}', '{\"x\":0.018333567,\"y\":0.001280266,\"z\":-120.279816}', 2, 35, 2, NULL, 0, 0, 0, 0, '[]', 0, 2.51251, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 13, NULL, NULL, NULL, 0, -1, '2021-09-22 20:17:54', 0, 0),
(10029, 7, 'LSPD39', 'towtruck', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"LiveryTwo\":2,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":544.9878,\"y\":-55.345135,\"z\":71.50862}', '{\"x\":0.1477127,\"y\":-0.088491805,\"z\":219.56868}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0.00000631254, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 14, NULL, NULL, NULL, 0, -1, '2021-12-31 13:43:24', 0, 0),
(10040, 14, 'ARMY', 'towtruck', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"FrontWheels\":70,\"WheelsType\":0,\"WheelsColor\":0,\"PearlColor\":134,\"Engine\":3,\"Turbo\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2371.779,\"y\":3390.04077,\"z\":33.29982}', '{\"x\":-0.588309944,\"y\":0.355074555,\"z\":150.6398}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 15, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10041, 14, 'ARMY', 'towtruck', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"PearlColor\":134,\"Engine\":3,\"Turbo\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2376.539,\"y\":3392.67725,\"z\":33.29876}', '{\"x\":-0.5676454,\"y\":0.367121667,\"z\":148.97934}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 16, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10048, 9, 'FBI35', 'insurgent2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Horns\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":121,\"Armor\":4},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":3809.30713,\"y\":473.420959,\"z\":203.995209}', '{\"x\":0.0415372364,\"y\":-0.0123098325,\"z\":180.959656}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.50002, 0, 0, 0, 0, 0, 0, 9, NULL, 555779, 17, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(10049, 9, 'FBI36', 'insurgent2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Horns\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Armor\":4,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":3803.30469,\"y\":473.233734,\"z\":203.998489}', '{\"x\":0.0282420721,\"y\":0.009830679,\"z\":179.560852}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555779, 18, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(10083, 14, 'ARMY', 'frogger', '{\"Components\":{\"WindowToning\":2,\"NumberType\":2,\"WheelsType\":0,\"WheelsColor\":0,\"Xenon\":0,\"Engine\":3,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":-2199.868,\"y\":3174.8572,\"z\":33.039032}', '{\"x\":0.0025145654,\"y\":-0.004342504,\"z\":58.88628}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 19, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10084, 14, 'ARMY', 'frogger', '{\"Components\":{\"WindowToning\":2,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Xenon\":0,\"Engine\":3,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":-2190.2034,\"y\":3192.536,\"z\":33.029556}', '{\"x\":0.00234255,\"y\":-0.003034638,\"z\":61.9365}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 20, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10101, 14, 'ARMY555', 'besra', '{\"Components\":{\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":84,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":84,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":-2249.3882,\"y\":3215.0994,\"z\":34.08271}', '{\"x\":0.88064975,\"y\":0.0040253554,\"z\":-119.937}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50177, 0, 0, 0, 0, 0, 0, 19, NULL, 0, 21, NULL, NULL, NULL, 0, -1, '2021-09-16 02:02:13', 0, 0),
(10102, 14, 'ARMY556', 'besra', '{\"Components\":{\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":84,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":84,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":-2235.4177,\"y\":3239.552,\"z\":34.082954}', '{\"x\":0.8712201,\"y\":0.007140427,\"z\":-120.49057}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50127, 0, 0, 0, 0, 0, 0, 19, NULL, 0, 22, NULL, NULL, NULL, 0, -1, '2021-09-16 02:02:13', 0, 0),
(10103, 14, 'ARMY557', 'besra', '{\"Components\":{\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":84,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":84,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":-2221.372,\"y\":3263.7327,\"z\":34.08244}', '{\"x\":0.8814055,\"y\":0.006896089,\"z\":-120.79214}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50123, 0, 0, 0, 0, 0, 0, 19, NULL, 0, 23, NULL, NULL, NULL, 0, -1, '2021-09-16 02:02:13', 0, 0),
(10164, 14, 'ARMY', 'barracks3', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":-2358.9795,\"y\":3381.8,\"z\":32.952713}', '{\"x\":-0.65476453,\"y\":0.3570392,\"z\":150.87946}', 2, 50, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 24, NULL, NULL, NULL, 0, -1, '2021-09-17 02:02:15', 0, 0),
(10165, 14, 'ARMY', 'barracks3', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":-2353.684,\"y\":3378.85718,\"z\":32.953476}', '{\"x\":-0.6279202,\"y\":0.386900783,\"z\":150.143616}', 2, 50, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 25, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10168, 16, 'BIKER63', 'SANCTUS', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Livery\":11,\"Spoilers\":6,\"Frame\":1},\"PrimColor\":{\"Red\":81,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":29,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":5}', '{\"x\":1995.80371,\"y\":3054.46021,\"z\":47.022995}', '{\"x\":-0.395606637,\"y\":9.773799,\"z\":14.5559692}', 2, 100, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 16, NULL, 0, 26, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10169, 7, 'LSPD882', 'predator', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-791.489441,\"y\":-1496.00464,\"z\":1.08518147}', '{\"x\":-0.09802951,\"y\":0.2501579,\"z\":111.342896}', 2, 100, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 27, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10170, 7, 'LSPD881', 'predator', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-788.33234,\"y\":-1503.5264,\"z\":1.0863211}', '{\"x\":-0.12795399,\"y\":0.34565702,\"z\":110.45349}', 2, 100, 100, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 28, NULL, NULL, NULL, 0, -1, '2022-05-21 02:02:09', 0, 0),
(10174, 8, 'EMS', 'go_unmarked_scout', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":317.7311,\"y\":-545.0945,\"z\":29.011549}', '{\"x\":-0.00730383955,\"y\":0.00507693551,\"z\":269.2052}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 29, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10176, 6, 'GOV23', 'rebla', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3821.015,\"y\":467.0071,\"z\":203.470413}', '{\"x\":-0.06925344,\"y\":-0.06940345,\"z\":90.28647}', 2, 20, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 7, NULL, 555777, 30, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10177, 6, 'GOV24', 'rebla', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3821.00854,\"y\":462.190979,\"z\":203.4703}', '{\"x\":-0.003234418,\"y\":-0.08154542,\"z\":89.96167}', 2, 20, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 7, NULL, 555777, 31, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10179, 6, 'GOV27', 'revolter', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3769.52417,\"y\":456.83493,\"z\":203.572113}', '{\"x\":0.00710943248,\"y\":0.00279855542,\"z\":0.9973755}', 2, 20, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 32, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10180, 6, 'GOV28', 'revolter', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3765.284,\"y\":456.969482,\"z\":203.572113}', '{\"x\":0.03554398,\"y\":-0.112372741,\"z\":0.8218689}', 2, 20, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 33, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10181, 6, 'GOV29', 'revolter', '{\"Components\":{\"FrontBumper\":3,\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3759.17188,\"y\":456.809967,\"z\":203.572083}', '{\"x\":-0.0121337874,\"y\":0.0314981,\"z\":0.573150635}', 2, 20, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 34, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10182, 6, 'GOV30', 'revolter', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3754.9563,\"y\":456.947632,\"z\":203.572647}', '{\"x\":0.0195259042,\"y\":-0.0004829999,\"z\":359.645325}', 2, 20, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 35, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10183, 16, 'BIKER60', 'gburrito', '{\"Components\":{\"Engine\":3,\"WindowToning\":1,\"Brakes\":2,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1990.34363,\"y\":3076.183,\"z\":47.32685}', '{\"x\":0.272016525,\"y\":0.707604,\"z\":238.1398}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 15, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 36, NULL, NULL, NULL, 0, -1, '2021-07-11 02:46:37', 0, 0),
(10184, 16, 'BIKER61', 'gburrito', '{\"Components\":{\"Engine\":3,\"WindowToning\":1,\"Brakes\":2,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1992.85,\"y\":3079.58862,\"z\":47.3400345}', '{\"x\":-0.07520438,\"y\":0.8107667,\"z\":243.878326}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 37, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10185, 16, 'MAZE', 'sovereign', '{\"Components\":{\"Engine\":3,\"WindowToning\":255,\"Brakes\":2,\"NumberType\":1,\"WheelsType\":6,\"WheelsColor\":0,\"Xenon\":8,\"PearlColor\":28,\"FrontWheels\":12,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":255,\"Green\":0,\"Blue\":4,\"Alpha\":1},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1966.53162,\"y\":3041.148,\"z\":47.0363159}', '{\"x\":6.48294735,\"y\":-4.28163338,\"z\":235.639832}', 2, 100, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 38, NULL, NULL, NULL, 0, -1, '2021-09-05 02:02:19', 0, 0),
(10193, 7, 'PRISON01', 'pbus', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":2,\"WheelsType\":0,\"WheelsColor\":0,\"Turbo\":3,\"Engine\":3},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":247,\"Alpha\":255},\"SecColor\":{\"Red\":64,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1796.4635,\"y\":2623.8665,\"z\":46.32525}', '{\"x\":0.0838511,\"y\":0.15508655,\"z\":180.238}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0.000112412, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 39, NULL, NULL, NULL, 0, -1, '2022-12-25 02:01:05', 0, 0),
(10194, 7, 'PRISON02', 'pbus', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Turbo\":3,\"Engine\":3},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":247,\"Alpha\":255},\"SecColor\":{\"Red\":64,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1796.7385,\"y\":2633.9382,\"z\":46.323006}', '{\"x\":-0.027005555,\"y\":0.009379615,\"z\":178.20361}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0.15373, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 40, NULL, NULL, NULL, 0, -1, '2022-05-27 09:31:14', 0, 0),
(10195, 7, 'PRISON03', 'go_fib_gresley', '{\"Components\":{\"FrontBumper\":1,\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Struts\":3},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":247,\"Alpha\":255},\"SecColor\":{\"Red\":64,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.8638,\"y\":2620.58,\"z\":46.115276}', '{\"x\":-0.040815942,\"y\":-0.08500654,\"z\":270.0561}', 2, 50, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.51388, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 41, NULL, NULL, NULL, 0, -1, '2021-09-25 02:02:10', 0, 0),
(10196, 7, 'PRISON04', 'go_fib_gresley', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":247,\"Alpha\":255},\"SecColor\":{\"Red\":64,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.8396,\"y\":2624.19751,\"z\":46.11474}', '{\"x\":0.00249564881,\"y\":-0.04520817,\"z\":270.81427}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 42, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10197, 7, 'PRISON05', 'go_fib_gresley', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":247,\"Alpha\":255},\"SecColor\":{\"Red\":64,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.81433,\"y\":2627.84351,\"z\":46.1149559}', '{\"x\":-0.0009926286,\"y\":-0.0381432,\"z\":270.676239}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0.00000669447, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 43, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10198, 7, 'PRISON06', 'go_fib_gresley', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"LiveryTwo\":5},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":247,\"Alpha\":255},\"SecColor\":{\"Red\":64,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.8625,\"y\":2631.5474,\"z\":46.115498}', '{\"x\":-0.0113728335,\"y\":0.001372046,\"z\":271.6112}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 44, NULL, NULL, NULL, 0, -1, '2021-09-25 02:02:10', 0, 0),
(10199, 16, 'BIKER77', 'sanctus', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Frame\":1,\"Spoilers\":6},\"PrimColor\":{\"Red\":60,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":5}', '{\"x\":1994.146,\"y\":3055.35254,\"z\":47.0265579}', '{\"x\":-0.7921369,\"y\":8.765595,\"z\":18.5779419}', 2, 100, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 16, NULL, 0, 45, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10203, 7, 'SWAT100', 'buzzard2', '{\"Components\":{\"WindowToning\":2,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Xenon\":0,\"Engine\":3,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":580.9142,\"y\":12.440414,\"z\":103.63145}', '{\"x\":0.2444317,\"y\":0.06735506,\"z\":-98.2137}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.55783, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 46, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(10241, 1, 'FAM11', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"SteeringWheel\":12,\"FrontBumper\":0,\"RearBumper\":1,\"Exhaust\":0,\"Grille\":0,\"Hood\":1,\"Fender\":0,\"Plateholders\":6,\"TrimDesign\":8,\"Ornaments\":1,\"DialDesign\":0,\"ShiftLever\":2,\"Plaques\":18,\"AirFilter\":3,\"Livery\":7,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":95.2183456,\"y\":-1924.753,\"z\":20.3225479}', '{\"x\":1.97130656,\"y\":-0.700866938,\"z\":61.98166}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 4.54195, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 47, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10242, 1, 'FAM10', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"FrontBumper\":0,\"RearBumper\":1,\"Exhaust\":0,\"Grille\":0,\"Hood\":1,\"Fender\":0,\"Plateholders\":6,\"TrimDesign\":8,\"Ornaments\":5,\"DialDesign\":0,\"SteeringWheel\":12,\"ShiftLever\":2,\"Plaques\":18,\"AirFilter\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Livery\":7,\"PearlColor\":134,\"Xenon\":0},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":96.24226,\"y\":-1952.929,\"z\":20.4445953}', '{\"x\":-0.3296434,\"y\":-0.5142807,\"z\":331.9397}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 4.95177, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 48, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10247, 1, 'FAM06', 'eleonora65', '{\"Components\":{\"WindowToning\":1,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":13,\"Green\":78,\"Blue\":10,\"Alpha\":255},\"SecColor\":{\"Red\":11,\"Green\":84,\"Blue\":10,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":86.83967,\"y\":-1970.0033,\"z\":20.5310612}', '{\"x\":0.08641788,\"y\":-0.120563686,\"z\":319.469849}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 11, NULL, 0, 49, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10253, 1, 'FAM29', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"PearlColor\":134,\"Xenon\":0,\"Engine\":3,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":88.76585,\"y\":-1963.40417,\"z\":20.7154388}', '{\"x\":13.6744709,\"y\":6.36632347,\"z\":290.1014}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 5.54627, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 50, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10254, 1, 'FAM30', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":0,\"Green\":90,\"Blue\":25,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":90,\"Blue\":25,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":89.9599,\"y\":-1961.72668,\"z\":20.7152176}', '{\"x\":14.116828,\"y\":2.960992,\"z\":276.314484}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 51, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10265, 2, 'BAL30', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"FrontBumper\":0,\"RearBumper\":0,\"Exhaust\":0,\"Grille\":0,\"Hood\":1,\"Fender\":0,\"TrimDesign\":8,\"Ornaments\":3,\"DialDesign\":0,\"SteeringWheel\":12,\"Plateholders\":6,\"Plaques\":18,\"Speakers\":3,\"Trunk\":6,\"Hydraulics\":3,\"EngineBlock\":4,\"AirFilter\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134,\"Livery\":7,\"Xenon\":0},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-105.713348,\"y\":-1411.86462,\"z\":29.4354687}', '{\"x\":1.19374728,\"y\":-1.95750177,\"z\":185.914322}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 52, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10266, 2, 'BAL31', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"FrontBumper\":0,\"RearBumper\":0,\"Exhaust\":0,\"Grille\":0,\"Hood\":1,\"Fender\":0,\"TrimDesign\":8,\"Ornaments\":3,\"DialDesign\":0,\"SteeringWheel\":12,\"ShiftLever\":5,\"Plaques\":18,\"Speakers\":3,\"Hydraulics\":3,\"AirFilter\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134,\"Livery\":7,\"Plateholders\":7,\"Xenon\":0},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-101.845848,\"y\":-1411.47363,\"z\":29.294529}', '{\"x\":0.566207349,\"y\":-1.77700412,\"z\":185.063766}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 53, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10267, 2, 'BAL32', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":148,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":148,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-70.81098,\"y\":-1423.19531,\"z\":29.4411716}', '{\"x\":8.56248,\"y\":0.934120357,\"z\":38.0858765}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 54, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10268, 2, 'BAL33', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":148,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":148,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-73.44471,\"y\":-1423.1543,\"z\":29.42623}', '{\"x\":12.4755821,\"y\":-2.85597539,\"z\":32.0221558}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 55, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10269, 2, 'BAL34', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":148,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":148,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-72.34007,\"y\":-1423.1167,\"z\":29.4324055}', '{\"x\":10.8383579,\"y\":-1.3400259,\"z\":37.3746643}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 56, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10270, 2, 'BAL35', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-79.8649445,\"y\":-1394.7345,\"z\":29.2868061}', '{\"x\":1.33183384,\"y\":-15.0036278,\"z\":179.656189}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.91333, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 57, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10271, 2, 'BAL36', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"PearlColor\":134,\"Engine\":3,\"Turbo\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-77.9480057,\"y\":-1394.797,\"z\":29.7851772}', '{\"x\":0.0,\"y\":0.0,\"z\":177.4599}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 58, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10272, 5, 'BLOODS31', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":27,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":27,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":882.5883,\"y\":-2191.59351,\"z\":30.4044952}', '{\"x\":5.84642267,\"y\":0.08628984,\"z\":92.09259}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 59, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10273, 5, 'BLOODS32', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":27,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":27,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":882.466248,\"y\":-2192.671,\"z\":30.404213}', '{\"x\":6.24881124,\"y\":-0.845467746,\"z\":84.591095}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 60, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10274, 5, 'BLOODS33', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":27,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":27,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":882.2913,\"y\":-2194.57617,\"z\":30.4087429}', '{\"x\":4.801224,\"y\":-0.02122994,\"z\":92.06726}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 61, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10275, 5, 'BLOODS34', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":880.8079,\"y\":-2198.55127,\"z\":30.48719}', '{\"x\":-0.06519454,\"y\":13.8443909,\"z\":354.252625}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50082, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 62, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10276, 5, 'BLOODS35', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":878.178,\"y\":-2198.4502,\"z\":30.4850426}', '{\"x\":-1.48365092,\"y\":14.9948587,\"z\":0.0153808594}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 63, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10277, 5, 'BLOODS36', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"FrontBumper\":0,\"RearBumper\":1,\"Livery\":3,\"Exhaust\":0,\"Grille\":0,\"Hood\":3,\"Fender\":0,\"TrimDesign\":2,\"Trunk\":6,\"EngineBlock\":4,\"Hydraulics\":3,\"AirFilter\":3,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":835.136658,\"y\":-2187.45679,\"z\":29.99584}', '{\"x\":-0.008874066,\"y\":-0.0146243237,\"z\":268.995026}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50002, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 64, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10278, 5, 'BLOODS37', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Livery\":3,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"FrontBumper\":0,\"RearBumper\":1,\"Exhaust\":0,\"Grille\":0,\"Hood\":3,\"Fender\":0,\"Hydraulics\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":838.810242,\"y\":-2179.9375,\"z\":29.98709}', '{\"x\":0.175796092,\"y\":0.0353404544,\"z\":180.0739}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50002, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 65, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10282, 5, 'BLOODS42', 'youga', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":3,\"WheelsColor\":0,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Exhaust\":0,\"FrontBumper\":1,\"Frame\":0,\"Roof\":0,\"Suspension\":3,\"FrontWheels\":7,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":862.8134,\"y\":-2179.46533,\"z\":30.49576}', '{\"x\":-0.4437695,\"y\":-1.62428772,\"z\":174.202759}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5001, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 66, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(10283, 5, 'BLOODS43', 'youga', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":3,\"WheelsColor\":0,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"FrontBumper\":1,\"Exhaust\":0,\"Frame\":0,\"Roof\":0,\"FrontWheels\":7,\"Suspension\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":863.321838,\"y\":-2173.54028,\"z\":30.54507}', '{\"x\":-0.6418655,\"y\":-1.51869774,\"z\":175.564148}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50013, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 67, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10288, 3, 'VAGOS02', 'youga', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":3,\"WheelsColor\":0,\"FrontBumper\":1,\"Roof\":0,\"Suspension\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134,\"FrontWheels\":7},\"PrimColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":977.4319,\"y\":-1815.62158,\"z\":31.1635647}', '{\"x\":0.0953279957,\"y\":0.471357018,\"z\":83.27774}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50231, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 68, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10289, 3, 'VAGOS03', 'youga', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":3,\"WheelsColor\":0,\"FrontBumper\":1,\"Roof\":0,\"Suspension\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"FrontWheels\":7,\"PearlColor\":134},\"PrimColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":971.431641,\"y\":-1814.98132,\"z\":31.1112442}', '{\"x\":0.07814603,\"y\":0.43131566,\"z\":84.056}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50738, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 69, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10292, 3, 'VAGOS', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":991.5394,\"y\":-1780.52112,\"z\":31.0369873}', '{\"x\":-2.767602,\"y\":1.53895652,\"z\":355.39566}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50462, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 70, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10293, 3, 'VAGOS07', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Turbo\":3,\"Engine\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":990.928955,\"y\":-1786.20081,\"z\":30.9435}', '{\"x\":-0.0350437239,\"y\":0.336636454,\"z\":352.891449}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50365, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 71, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10296, 3, 'VAGOS10', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":960.5424,\"y\":-1819.34363,\"z\":31.1221657}', '{\"x\":2.786872,\"y\":-4.965571,\"z\":32.039856}', 2, 0, 0, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 72, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10297, 3, 'VAGOS11', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":960.49884,\"y\":-1822.84363,\"z\":31.122261}', '{\"x\":2.4573288,\"y\":-4.43937349,\"z\":32.4094238}', 2, 150, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 73, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10298, 3, 'VAGOS12', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":960.527161,\"y\":-1820.99573,\"z\":31.1179581}', '{\"x\":3.60536528,\"y\":-5.30909824,\"z\":35.70569}', 2, 0, 0, NULL, 0, 0, 0, 0, '[]', 0, 14.64, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 74, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10299, 3, 'VAGOS13', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":974.927368,\"y\":-1802.29639,\"z\":31.2954521}', '{\"x\":-4.316881,\"y\":-14.4269085,\"z\":159.118835}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 75, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10300, 3, 'VAGOS14', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Turbo\":3,\"Engine\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":250,\"Green\":175,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":250,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":972.7831,\"y\":-1802.3175,\"z\":31.2923183}', '{\"x\":-4.08567762,\"y\":-14.5093336,\"z\":159.291138}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 76, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10304, 4, 'MAR01', 'youga', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":3,\"WheelsColor\":0,\"FrontBumper\":1,\"Roof\":0,\"Suspension\":3,\"FrontWheels\":7,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1555.41772,\"y\":-2182.16455,\"z\":77.30005}', '{\"x\":0.09358249,\"y\":0.3404194,\"z\":258.633118}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 77, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10305, 4, 'MAR02', 'youga', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":3,\"WheelsColor\":0,\"FrontBumper\":1,\"Roof\":0,\"Suspension\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134,\"FrontWheels\":7},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1562.92468,\"y\":-2183.82861,\"z\":77.34757}', '{\"x\":-0.377009332,\"y\":0.45030722,\"z\":73.93765}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 78, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10307, 4, 'MAR04', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1566.92737,\"y\":-2157.699,\"z\":77.23546}', '{\"x\":-0.38493073,\"y\":0.5263502,\"z\":350.953949}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 79, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10308, 4, 'MAR05', 'buccaneer2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":0,\"WheelsColor\":0,\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1563.476,\"y\":-2156.785,\"z\":77.2096558}', '{\"x\":-0.303801954,\"y\":0.5178674,\"z\":351.639282}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 80, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10316, 4, 'MAR13', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":80,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":80,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1555.81079,\"y\":-2118.42725,\"z\":77.14622}', '{\"x\":5.18866968,\"y\":-1.84208751,\"z\":68.65796}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 81, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10317, 4, 'MAR14', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":80,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":80,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1557.0238,\"y\":-2123.12134,\"z\":77.20694}', '{\"x\":3.878681,\"y\":-0.976497531,\"z\":61.7203979}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 82, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10318, 4, 'MAR15', 'bmx', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0},\"PrimColor\":{\"Red\":80,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":80,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1556.59839,\"y\":-2120.85083,\"z\":77.155426}', '{\"x\":3.712747,\"y\":-1.04608631,\"z\":62.4938049}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 83, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10319, 4, 'MAR16', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1554.87292,\"y\":-2154.245,\"z\":77.47349}', '{\"x\":-10.0010214,\"y\":11.3112383,\"z\":34.7662659}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 84, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10320, 4, 'MAR17', 'bf400', '{\"Components\":{\"WindowToning\":0,\"NumberType\":0,\"WheelsType\":0,\"WheelsColor\":0,\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1555.5155,\"y\":-2152.2334,\"z\":77.47079}', '{\"x\":-10.3887186,\"y\":11.0187311,\"z\":36.2580872}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 85, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:19', 0, 0),
(10361, 9, 'FIBTRUCK', 'towtruck', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"NumberType\":1,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3820.57666,\"y\":451.437653,\"z\":204.0327}', '{\"x\":0.02347512,\"y\":0.625814855,\"z\":88.38483}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 86, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(10389, 6, 'GOV17', 'lx570go', '{\"Components\":{\"Horns\":1,\"Armor\":4,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":59.2334175,\"y\":57.20491,\"z\":3.44945526}', '{\"x\":-0.297399521,\"y\":-0.012532318,\"z\":1.28942871}', 2, 1, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 18, NULL, 555777, 87, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10457, 11671, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":40,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":40,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-509.508636,\"y\":58.74311,\"z\":51.77682}', '{\"x\":0.0116317905,\"y\":0.05334636,\"z\":86.32947}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 88, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10459, 11671, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":113,\"Green\":255,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":113,\"Green\":255,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-509.2202,\"y\":62.1285362,\"z\":51.7773933}', '{\"x\":-0.00328967324,\"y\":-0.06083417,\"z\":86.86551}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 89, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10461, 11671, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":4,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":4,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-508.8489,\"y\":65.4326248,\"z\":51.7769737}', '{\"x\":0.0124435211,\"y\":-0.0891014,\"z\":85.54837}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 90, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10463, 11671, '', 'oracle', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-494.100433,\"y\":64.36238,\"z\":52.3722649}', '{\"x\":0.00599774672,\"y\":0.2439572,\"z\":86.85141}', 4, 0, 1, 1000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 91, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10464, 11671, '', 'felon', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":40,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-522.39,\"y\":48.97086,\"z\":52.271225}', '{\"x\":0.0261105467,\"y\":0.0406200141,\"z\":84.71924}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 92, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10465, 11671, '', 'oracle', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-494.369629,\"y\":60.885746,\"z\":52.3721581}', '{\"x\":0.0179140382,\"y\":0.251260966,\"z\":86.00986}', 4, 0, 1, 1000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 93, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10466, 11671, '', 'felon', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":4,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-522.6139,\"y\":45.79777,\"z\":52.2711868}', '{\"x\":0.01959399,\"y\":-0.02776914,\"z\":85.561615}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 94, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10467, 11671, '', 'oracle', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-494.609619,\"y\":57.40818,\"z\":52.37262}', '{\"x\":0.0391998924,\"y\":0.219442114,\"z\":84.53693}', 4, 0, 1, 1000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 95, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10468, 11671, '', 'felon', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":255,\"Blue\":39,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-521.8267,\"y\":52.6547775,\"z\":52.271225}', '{\"x\":-0.0120806107,\"y\":-0.137932971,\"z\":85.03735}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 96, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10476, 11671, '', 'baller', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-537.03186,\"y\":37.4757729,\"z\":52.5589561}', '{\"x\":-0.0455740653,\"y\":0.0314623043,\"z\":264.698578}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 97, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10477, 11671, '', 'baller', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-536.959961,\"y\":40.766922,\"z\":52.5576744}', '{\"x\":0.0239440389,\"y\":0.1017125,\"z\":265.2901}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 98, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10479, 14507, '', 'double', '{\"Components\":{\"Exhaust\":0,\"Frame\":0,\"Armor\":4,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-727.8091,\"y\":-69.03615,\"z\":41.25838}', '{\"x\":-6.48647642,\"y\":9.734219,\"z\":29.1003723}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 99, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10480, 14507, '', 'double', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-730.7624,\"y\":-70.79278,\"z\":41.2508965}', '{\"x\":-7.28401756,\"y\":12.4899282,\"z\":26.9747925}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 100, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10481, 14507, '', 'carbonrs', '{\"Components\":{},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-733.4515,\"y\":-72.1777,\"z\":41.26064}', '{\"x\":-6.758632,\"y\":11.1665955,\"z\":27.954895}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 101, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10482, 14507, '', 'bati', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-736.638367,\"y\":-73.78503,\"z\":41.09286}', '{\"x\":-4.18487644,\"y\":9.081111,\"z\":23.0593567}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 102, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10483, 14507, '', 'hakuchou', '{\"Components\":{},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-739.8617,\"y\":-75.53741,\"z\":41.2685852}', '{\"x\":-4.02956724,\"y\":6.795353,\"z\":28.0151367}', 4, 0, 1, 3500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 103, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10484, 14507, '', 'diablous', '{\"Components\":{},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-743.462769,\"y\":-77.24286,\"z\":41.08939}', '{\"x\":-3.85190272,\"y\":9.861365,\"z\":23.8320923}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 104, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10485, 14507, '', 'fcr2', '{\"Components\":{},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-746.4854,\"y\":-78.97245,\"z\":41.1625671}', '{\"x\":-4.73544073,\"y\":9.370779,\"z\":25.2697754}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 105, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10486, 14507, '', 'akuma', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-749.1506,\"y\":-80.54404,\"z\":41.2613144}', '{\"x\":-6.96511269,\"y\":11.5874147,\"z\":27.651825}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 106, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10487, 10893, '', 'faggio3', '{\"Components\":{},\"PrimColor\":{\"Red\":88,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1020.55548,\"y\":-2691.95947,\"z\":13.4528475}', '{\"x\":13.5636721,\"y\":-6.534591,\"z\":238.598572}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 107, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10488, 10893, '', 'faggio3', '{\"Components\":{},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1018.50165,\"y\":-2688.744,\"z\":13.4671049}', '{\"x\":13.19359,\"y\":-7.2322917,\"z\":237.197113}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 108, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10489, 10893, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":88,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1010.83972,\"y\":-2697.61938,\"z\":13.4584427}', '{\"x\":-13.62567,\"y\":6.46944237,\"z\":58.6876831}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 109, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10490, 10893, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1008.9845,\"y\":-2694.46143,\"z\":13.4638252}', '{\"x\":-12.5579433,\"y\":4.88098,\"z\":61.8357544}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 110, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10491, 10893, '', 'faggio3', '{\"Components\":{},\"PrimColor\":{\"Red\":12,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1016.79462,\"y\":-2685.852,\"z\":13.477891}', '{\"x\":6.897058,\"y\":-2.92247224,\"z\":238.1328}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 111, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10492, 10893, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":12,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1007.27789,\"y\":-2691.56934,\"z\":13.4650984}', '{\"x\":-11.35775,\"y\":5.188928,\"z\":57.7473145}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 112, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10493, 10893, '', 'faggio2', '{\"Components\":{},\"PrimColor\":{\"Red\":11,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1005.40881,\"y\":-2688.28735,\"z\":13.4567509}', '{\"x\":-12.4274063,\"y\":4.97898149,\"z\":62.5239258}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 113, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10494, 10893, '', 'faggio2', '{\"Components\":{},\"PrimColor\":{\"Red\":11,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1015.09491,\"y\":-2682.93677,\"z\":13.46814}', '{\"x\":12.0983667,\"y\":-5.885793,\"z\":239.859787}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 114, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10495, 10893, '', 'faggio2', '{\"Components\":{},\"PrimColor\":{\"Red\":11,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1013.776,\"y\":-2680.58569,\"z\":13.4587975}', '{\"x\":13.84087,\"y\":-6.01523256,\"z\":241.848114}', 4, 0, 1, 100, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 115, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10496, 10893, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-979.2694,\"y\":-2688.66772,\"z\":13.0281143}', '{\"x\":-0.09073096,\"y\":0.09792091,\"z\":151.0188}', 4, 0, 1, 1000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 116, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10497, 10893, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-975.9963,\"y\":-2690.51343,\"z\":13.027482}', '{\"x\":-0.0425892249,\"y\":0.04400664,\"z\":151.021}', 4, 0, 1, 1000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 117, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10498, 10893, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":88,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-972.9738,\"y\":-2692.139,\"z\":13.027298}', '{\"x\":0.166697577,\"y\":-0.0605397038,\"z\":151.263855}', 4, 0, 1, 1000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 118, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10499, 10893, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":5,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-970.245667,\"y\":-2693.742,\"z\":13.0277}', '{\"x\":-0.02870752,\"y\":0.0132629471,\"z\":152.8562}', 4, 0, 1, 1000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 119, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10500, 10893, '', 'dilettante', '{\"Components\":{},\"PrimColor\":{\"Red\":88,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-986.1806,\"y\":-2708.42725,\"z\":13.3230047}', '{\"x\":0.07457073,\"y\":0.0135422433,\"z\":334.0454}', 4, 0, 1, 500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 120, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10501, 10893, '', 'dilettante', '{\"Components\":{},\"PrimColor\":{\"Red\":5,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-982.8036,\"y\":-2709.60059,\"z\":13.3278236}', '{\"x\":-0.243186787,\"y\":0.295489967,\"z\":342.844635}', 4, 0, 1, 500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 121, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10502, 10893, '', 'dilettante', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-979.8086,\"y\":-2710.41772,\"z\":13.3369408}', '{\"x\":-0.2697868,\"y\":0.264386415,\"z\":350.0151}', 4, 0, 1, 500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 122, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10503, 10893, '', 'blista', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-966.997742,\"y\":-2695.49341,\"z\":13.6534491}', '{\"x\":0.0451704338,\"y\":0.0461176634,\"z\":150.048767}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 123, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10504, 10893, '', 'blista', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-964.2525,\"y\":-2697.17749,\"z\":13.652997}', '{\"x\":0.0588167,\"y\":-0.03268142,\"z\":151.6961}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 124, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10505, 10893, '', 'blista', '{\"Components\":{},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-961.35144,\"y\":-2698.868,\"z\":13.6531754}', '{\"x\":0.043906346,\"y\":-0.0150973732,\"z\":148.251434}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 125, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10506, 10893, '', 'dilettante', '{\"Components\":{},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-976.6474,\"y\":-2710.862,\"z\":13.3439226}', '{\"x\":-0.489525735,\"y\":0.111667864,\"z\":355.2557}', 4, 0, 1, 500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 126, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10507, 12446, '', 'speeder', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1001.15717,\"y\":-1400.015,\"z\":0.08733213}', '{\"x\":-0.7720897,\"y\":-0.03779835,\"z\":16.4555969}', 4, 0, 1, 10000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 127, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10508, 12446, '', 'toro2', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-992.8418,\"y\":-1397.09143,\"z\":0.408600956}', '{\"x\":1.75430751,\"y\":0.717267334,\"z\":20.6027222}', 4, 0, 1, 25000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 128, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10509, 12446, '', 'tropic', '{\"Components\":{},\"PrimColor\":{\"Red\":155,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1007.2561,\"y\":-1401.94287,\"z\":0.3029502}', '{\"x\":-1.62601316,\"y\":-0.5807095,\"z\":19.6672058}', 4, 0, 1, 5000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 129, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10510, 12446, '', 'jetmax', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-984.2524,\"y\":-1393.79919,\"z\":0.312558621}', '{\"x\":0.925906241,\"y\":0.9033309,\"z\":18.85437}', 4, 0, 1, 10000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 130, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10511, 12446, '', 'toro2', '{\"Components\":{},\"PrimColor\":{\"Red\":53,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-976.047241,\"y\":-1390.51611,\"z\":0.408363461}', '{\"x\":1.73103011,\"y\":0.727909565,\"z\":21.147644}', 4, 0, 1, 25000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 131, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10512, 12446, '', 'toro', '{\"Components\":{},\"PrimColor\":{\"Red\":53,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-966.96936,\"y\":-1387.55139,\"z\":0.397304446}', '{\"x\":1.87261844,\"y\":0.567987442,\"z\":15.2722168}', 4, 0, 1, 15000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 132, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10513, 12446, '', 'dinghy', '{\"Components\":{},\"PrimColor\":{\"Red\":53,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-957.052368,\"y\":-1384.91089,\"z\":0.119542688}', '{\"x\":-2.470796,\"y\":-0.9812585,\"z\":21.67154}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 133, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10514, 12446, '', 'dinghy3', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-948.490845,\"y\":-1382.58069,\"z\":0.119538754}', '{\"x\":-2.50873232,\"y\":-0.880721331,\"z\":19.3540039}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 134, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10515, 12446, '', 'dinghy4', '{\"Components\":{},\"PrimColor\":{\"Red\":5,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-940.0757,\"y\":-1379.00732,\"z\":0.116941154}', '{\"x\":-2.56020927,\"y\":-0.799356639,\"z\":17.3450623}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 135, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10516, 12446, '', 'marquis', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-930.8291,\"y\":-1373.69873,\"z\":0.39665845}', '{\"x\":-0.9358873,\"y\":-0.6027347,\"z\":19.2672119}', 4, 0, 1, 40000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 136, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10517, 12446, '', 'seashark', '{\"Components\":{},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1631.06055,\"y\":-1161.81555,\"z\":0.101459496}', '{\"x\":4.140644,\"y\":-6.40475464,\"z\":124.585175}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 137, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10518, 12446, '', 'seashark', '{\"Components\":{},\"PrimColor\":{\"Red\":55,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1629.81738,\"y\":-1163.52771,\"z\":0.382776439}', '{\"x\":4.17421961,\"y\":-3.806698,\"z\":135.653809}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 138, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10519, 12446, '', 'seashark', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1628.39551,\"y\":-1165.071,\"z\":0.9333199}', '{\"x\":3.5450933,\"y\":-6.41268444,\"z\":124.26181}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 139, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10520, 12446, '', 'seashark', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1625.03418,\"y\":-1169.83044,\"z\":1.01020515}', '{\"x\":4.77672672,\"y\":-4.5195837,\"z\":156.980835}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 140, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10526, 11526, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":77,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":206.462921,\"y\":-798.2742,\"z\":30.4808083}', '{\"x\":11.77078,\"y\":-4.805991,\"z\":246.378754}', 4, 0, 1, 150, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 141, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10527, 11526, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":77,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":207.335953,\"y\":-795.604431,\"z\":30.463995}', '{\"x\":8.70947,\"y\":-2.87398267,\"z\":249.423645}', 4, 0, 1, 150, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 142, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10528, 11526, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":77,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":208.301773,\"y\":-793.314636,\"z\":30.4390965}', '{\"x\":12.6912336,\"y\":-3.94200325,\"z\":251.488388}', 4, 0, 1, 150, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 143, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10529, 11526, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":77,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":205.40155,\"y\":-800.7569,\"z\":30.4983826}', '{\"x\":11.54533,\"y\":-4.2966795,\"z\":248.111908}', 4, 0, 1, 150, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 144, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10530, 11526, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":77,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":209.408676,\"y\":-791.0044,\"z\":30.4084969}', '{\"x\":11.9506836,\"y\":-4.014445,\"z\":250.676941}', 4, 0, 1, 150, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 145, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10531, 11526, '', 'rocoto', '{\"Components\":{},\"PrimColor\":{\"Red\":9,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":221.606735,\"y\":-804.057861,\"z\":30.54456}', '{\"x\":-0.2236866,\"y\":-1.20946491,\"z\":247.782837}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 146, NULL, NULL, NULL, 0, -1, NULL, 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(10532, 11526, '', 'rocoto', '{\"Components\":{},\"PrimColor\":{\"Red\":9,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":222.6147,\"y\":-801.5593,\"z\":30.5315781}', '{\"x\":-0.25102222,\"y\":-1.22250152,\"z\":248.471649}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 147, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10533, 11526, '', 'fugitive', '{\"Components\":{},\"PrimColor\":{\"Red\":231,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":223.791962,\"y\":-799.087769,\"z\":30.36092}', '{\"x\":-0.2130377,\"y\":-0.436559528,\"z\":249.673035}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 148, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10534, 11526, '', 'fugitive', '{\"Components\":{\"Engine\":3,\"Turbo\":3},\"PrimColor\":{\"Red\":231,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":224.666046,\"y\":-796.5706,\"z\":30.3644314}', '{\"x\":-0.288898557,\"y\":-0.278459072,\"z\":248.559052}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 149, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10535, 11526, '', 'asterope', '{\"Components\":{},\"PrimColor\":{\"Red\":188,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":212.477676,\"y\":-783.5588,\"z\":30.4070072}', '{\"x\":-0.264883667,\"y\":-1.466652,\"z\":248.97702}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 150, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10536, 11526, '', 'asterope', '{\"Components\":{},\"PrimColor\":{\"Red\":188,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":213.3566,\"y\":-780.9168,\"z\":30.3959427}', '{\"x\":-0.240666017,\"y\":-1.46969616,\"z\":247.820343}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 151, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10537, 11526, '', 'asterope', '{\"Components\":{},\"PrimColor\":{\"Red\":188,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":214.348816,\"y\":-778.4924,\"z\":30.3826942}', '{\"x\":-0.252172172,\"y\":-1.37468386,\"z\":249.575714}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 152, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10538, 11526, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":188,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":227.441589,\"y\":-789.0767,\"z\":30.3906918}', '{\"x\":-0.473097384,\"y\":-0.62735796,\"z\":248.164917}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 153, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10539, 11526, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":188,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":228.188568,\"y\":-786.3592,\"z\":30.4042}', '{\"x\":-0.490764081,\"y\":-0.6920011,\"z\":250.219543}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 154, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10540, 11526, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":188,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":229.107025,\"y\":-783.9706,\"z\":30.4086018}', '{\"x\":-0.225870892,\"y\":-0.470639735,\"z\":251.543823}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 155, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10541, 11526, '', 'mesa', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":215.312744,\"y\":-775.9485,\"z\":30.3676414}', '{\"x\":-0.289447039,\"y\":-1.149447,\"z\":249.408234}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 156, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10542, 11526, '', 'mesa', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":230.382034,\"y\":-781.47,\"z\":30.2062759}', '{\"x\":-0.377482742,\"y\":-0.285227358,\"z\":249.817673}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 157, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10543, 10934, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":6,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":6,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.68323,\"y\":2541.76367,\"z\":44.8719177}', '{\"x\":-0.05892128,\"y\":0.00718922541,\"z\":270.856079}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 158, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10544, 10934, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":57,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":57,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.60059,\"y\":2545.33325,\"z\":44.873394}', '{\"x\":-0.212453365,\"y\":0.08449242,\"z\":270.921783}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 159, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10545, 10934, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":127,\"Green\":255,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":127,\"Green\":255,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.49451,\"y\":2549.49268,\"z\":44.87345}', '{\"x\":-0.242309108,\"y\":0.0863954,\"z\":271.094421}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 160, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10546, 10934, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":214,\"Green\":96,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":214,\"Green\":96,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.67554,\"y\":2552.91919,\"z\":44.8695068}', '{\"x\":0.0534607433,\"y\":-0.06289675,\"z\":269.778381}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 161, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10547, 10934, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":241,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":241,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.58118,\"y\":2556.724,\"z\":44.87315}', '{\"x\":-0.120192669,\"y\":0.06803383,\"z\":269.47}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 162, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10548, 10934, '', 'brioso', '{\"Components\":{},\"PrimColor\":{\"Red\":155,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":155,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1854.55029,\"y\":2560.48071,\"z\":44.8732834}', '{\"x\":-0.2254725,\"y\":0.08614786,\"z\":271.4583}', 4, 0, 1, 700, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 163, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10549, 10934, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1870.28113,\"y\":2535.53369,\"z\":45.1466446}', '{\"x\":-12.2558184,\"y\":-1.078249,\"z\":87.61603}', 4, 0, 1, 200, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 164, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10550, 10934, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1870.55762,\"y\":2539.42285,\"z\":45.1503067}', '{\"x\":-12.9343319,\"y\":-0.8317467,\"z\":87.40631}', 4, 0, 1, 200, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 165, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10551, 10934, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1870.42371,\"y\":2542.74878,\"z\":45.1509552}', '{\"x\":-12.4156952,\"y\":-2.11485624,\"z\":93.0362244}', 4, 0, 1, 200, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 166, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10552, 10934, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1870.51233,\"y\":2546.50464,\"z\":45.1537666}', '{\"x\":-10.3765221,\"y\":-1.99823058,\"z\":92.97742}', 4, 0, 1, 200, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 167, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10553, 10934, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1870.63367,\"y\":2549.51636,\"z\":45.15254}', '{\"x\":-11.26825,\"y\":-0.8580692,\"z\":86.71182}', 4, 0, 1, 200, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 168, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10554, 10934, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1870.74524,\"y\":2553.275,\"z\":45.14994}', '{\"x\":-13.1142559,\"y\":-1.243375,\"z\":89.2509155}', 4, 0, 1, 200, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 169, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10555, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2780.20215,\"y\":3500.23657,\"z\":54.82304}', '{\"x\":0.5478839,\"y\":-0.894528,\"z\":67.14685}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 170, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10556, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2778.69531,\"y\":3496.19238,\"z\":54.8829727}', '{\"x\":0.588780642,\"y\":-0.832563639,\"z\":67.2632751}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 171, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10557, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2777.16382,\"y\":3492.56567,\"z\":54.93937}', '{\"x\":0.591093361,\"y\":-0.830291569,\"z\":67.2520447}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 172, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10558, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2775.595,\"y\":3488.833,\"z\":55.0031433}', '{\"x\":0.6246394,\"y\":-0.9674448,\"z\":67.61542}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 173, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10559, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2773.98877,\"y\":3484.94727,\"z\":55.0628777}', '{\"x\":0.473798126,\"y\":-0.9115629,\"z\":67.24716}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 174, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10560, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2772.423,\"y\":3481.19116,\"z\":55.1187859}', '{\"x\":0.638931036,\"y\":-0.8460959,\"z\":67.5274353}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 175, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10561, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2785.90356,\"y\":3497.886,\"z\":54.7668533}', '{\"x\":0.5747688,\"y\":-0.793094337,\"z\":246.655}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 176, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10562, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2784.206,\"y\":3493.88574,\"z\":54.8278122}', '{\"x\":0.57737124,\"y\":-0.828232646,\"z\":247.388672}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 177, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10563, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2780.993,\"y\":3486.489,\"z\":54.9434128}', '{\"x\":0.5942964,\"y\":-0.826341,\"z\":247.317078}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 178, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10564, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2779.41431,\"y\":3482.664,\"z\":55.0020981}', '{\"x\":0.5723109,\"y\":-0.8744942,\"z\":246.64679}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 179, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10565, 11943, '', 'sadler', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2776.54321,\"y\":3475.14624,\"z\":55.1308365}', '{\"x\":0.4438199,\"y\":-0.872348368,\"z\":247.715515}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 180, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10566, 11943, '', 'sadler', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2774.91162,\"y\":3471.34326,\"z\":55.19119}', '{\"x\":0.568384469,\"y\":-0.912874758,\"z\":247.6378}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 181, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10567, 11943, '', 'sadler', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2768.81445,\"y\":3473.969,\"z\":55.2576752}', '{\"x\":0.6188472,\"y\":-0.86336714,\"z\":67.09906}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 182, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10568, 11943, '', 'sadler', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2770.57642,\"y\":3477.70313,\"z\":55.1936569}', '{\"x\":0.65039283,\"y\":-0.8192691,\"z\":67.20505}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 183, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10569, 11943, '', 'speedo4', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2782.65283,\"y\":3490.347,\"z\":54.88276}', '{\"x\":0.566592932,\"y\":-0.825057566,\"z\":246.910339}', 4, 0, 1, 1500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 184, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10570, 11526, '', 'tribike3', '{\"Components\":{},\"PrimColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":217.045044,\"y\":-800.949036,\"z\":30.3911972}', '{\"x\":-7.743116,\"y\":2.72911954,\"z\":64.71631}', 4, 0, 1, 2000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 185, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10571, 13295, '', 'microlight', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1738.35449,\"y\":3226.85767,\"z\":41.72251}', '{\"x\":5.00843763,\"y\":0.798606455,\"z\":26.0935669}', 4, 0, 1, 35000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 186, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10572, 13295, '', 'microlight', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1750.48584,\"y\":3231.83838,\"z\":41.53798}', '{\"x\":1.90643728,\"y\":0.5159569,\"z\":4.84060669}', 4, 0, 1, 35000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 187, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10573, 13295, '', 'microlight', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1760.84656,\"y\":3236.19263,\"z\":41.5189133}', '{\"x\":1.42320418,\"y\":-0.501788259,\"z\":13.1373291}', 4, 0, 1, 35000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 188, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10574, 13295, '', 'stunt', '{\"Components\":{},\"PrimColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1735.80774,\"y\":3316.61035,\"z\":41.4162979}', '{\"x\":8.77207851,\"y\":-0.9480909,\"z\":173.8039}', 4, 0, 1, 80000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 189, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10575, 13295, '', 'duster', '{\"Components\":{},\"PrimColor\":{\"Red\":43,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1723.15808,\"y\":3313.00537,\"z\":41.5687752}', '{\"x\":7.512602,\"y\":7.603973,\"z\":225.614914}', 4, 0, 1, 65000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 190, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10578, 13295, '', 'velum2', '{\"Components\":{},\"PrimColor\":{\"Red\":33,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1398.74609,\"y\":3009.083,\"z\":41.4694672}', '{\"x\":-0.124828376,\"y\":0.108127929,\"z\":314.853851}', 4, 0, 1, 90000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 191, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10579, 13295, '', 'vestra', '{\"Components\":{},\"PrimColor\":{\"Red\":42,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1411.578,\"y\":2998.24561,\"z\":40.724472}', '{\"x\":-0.819808066,\"y\":0.76466316,\"z\":315.743164}', 4, 0, 1, 95000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 192, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10580, 13295, '', 'havok', '{\"Components\":{},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1770.36389,\"y\":3238.83765,\"z\":42.746254}', '{\"x\":1.53031576,\"y\":1.26001084,\"z\":11.5312805}', 4, 0, 1, 50000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 193, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10587, 11526, '', 'bati2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":216.572586,\"y\":-801.660461,\"z\":30.13347}', '{\"x\":-10.4802933,\"y\":2.542186,\"z\":69.0817261}', 4, 0, 1, 10000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 194, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10588, 11526, '', 'bati2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":217.519913,\"y\":-799.314331,\"z\":30.1229687}', '{\"x\":-10.4913807,\"y\":2.261033,\"z\":70.85428}', 4, 0, 1, 10000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 195, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10589, 11526, '', 'bati2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":218.365143,\"y\":-796.97,\"z\":30.1098728}', '{\"x\":-9.257875,\"y\":1.97114885,\"z\":69.56604}', 4, 0, 1, 10000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 196, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10590, 11526, '', 'hakuchou', '{\"Components\":{},\"PrimColor\":{\"Red\":111,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":219.663162,\"y\":-794.3722,\"z\":30.2681866}', '{\"x\":-8.756343,\"y\":1.26636982,\"z\":72.82004}', 4, 0, 1, 2500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 197, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10591, 11526, '', 'hakuchou', '{\"Components\":{},\"PrimColor\":{\"Red\":188,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":220.262909,\"y\":-792.0309,\"z\":30.2624187}', '{\"x\":-10.6544218,\"y\":2.502892,\"z\":70.5374146}', 4, 0, 1, 2500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 198, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10592, 11526, '', 'hakuchou', '{\"Components\":{},\"PrimColor\":{\"Red\":222,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":221.38324,\"y\":-789.5652,\"z\":30.2674675}', '{\"x\":-10.7176113,\"y\":2.57768536,\"z\":70.2431}', 4, 0, 1, 2500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 199, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10593, 11526, '', 'hakuchou', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":222.785309,\"y\":-784.3882,\"z\":30.28147}', '{\"x\":-7.95480061,\"y\":2.43206429,\"z\":66.35181}', 4, 0, 1, 2500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 200, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10594, 11526, '', 'hakuchou', '{\"Components\":{},\"PrimColor\":{\"Red\":77,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":222.4829,\"y\":-786.7791,\"z\":30.2765713}', '{\"x\":-10.4368591,\"y\":3.06888938,\"z\":68.9713745}', 4, 0, 1, 2500, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 201, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10595, 11526, '', 'blista3', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":226.285675,\"y\":-774.1716,\"z\":30.2784557}', '{\"x\":-0.310769379,\"y\":-0.40871793,\"z\":67.72385}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 202, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10596, 11526, '', 'blista3', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":227.243408,\"y\":-771.3559,\"z\":30.2843914}', '{\"x\":-0.1304401,\"y\":-0.28589806,\"z\":67.27637}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 203, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10597, 11526, '', 'blista3', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":228.643448,\"y\":-769.017761,\"z\":30.2868366}', '{\"x\":-0.287660033,\"y\":-0.10731449,\"z\":67.27945}', 4, 0, 1, 3000, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 204, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(10617, 7, 'POLICE', 'policeb', '{\"Components\":{\"Xenon\":0,\"NumberType\":1,\"Engine\":3,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":498.49582,\"y\":-70.37378,\"z\":77.69226}', '{\"x\":0.24527064,\"y\":-9.216217,\"z\":27.588894}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.53604, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 205, NULL, NULL, NULL, 0, -1, '2021-09-22 20:17:54', 0, 0),
(10618, 7, 'POLICE', 'policeb', '{\"Components\":{\"Xenon\":0,\"NumberType\":1,\"Engine\":3,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":499.3762,\"y\":-68.862724,\"z\":77.69452}', '{\"x\":0.15257059,\"y\":-8.235356,\"z\":27.467382}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 206, NULL, NULL, NULL, 0, -1, '2021-09-22 20:17:54', 0, 0),
(10841, 1, 'UNIQ', 'lambago', '{\"HandlingTuning\":{},\"Components\":{\"PearlColor\":67,\"Xenon\":2,\"WindowToning\":5,\"NumberType\":1,\"Armor\":4,\"WheelsColor\":140},\"PrimColor\":{\"Red\":0,\"Green\":151,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":151,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":-183.74706,\"y\":-642.59875,\"z\":40.15582}', '{\"x\":-0.21579815,\"y\":0.0016603064,\"z\":-75.12802}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.005519, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 207, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(10848, 1, 'UNIQ', 'amgvision', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"Armor\":4,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":121,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-160.03847,\"y\":-612.69525,\"z\":40.003574}', '{\"x\":0.77952254,\"y\":0.020346625,\"z\":28.124853}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 208, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(10849, 1, 'UNIQ', 'g65go', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"FrontBumper\":2,\"WheelsType\":0,\"FrontWheels\":71,\"Armor\":4,\"Livery\":1,\"Spoilers\":1,\"RearBumper\":1,\"SideSkirt\":2,\"Roof\":2},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-177.97566,\"y\":-619.4728,\"z\":40.16436}', '{\"x\":-0.11027346,\"y\":0.024299782,\"z\":-19.682411}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 209, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(10852, 1, 'UNIQ', 'ffgo', '{\"Components\":{\"PearlColor\":139,\"WindowToning\":1,\"NumberType\":1,\"Armor\":4},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-141.73518,\"y\":-650.0699,\"z\":40.03061}', '{\"x\":-0.33964133,\"y\":-0.7057739,\"z\":64.06824}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 210, NULL, NULL, NULL, 0, -1, '2021-09-16 02:02:13', 0, 0),
(10865, 1, 'UNIQ', 'rrphantomgo', '{\"HandlingTuning\":{},\"Components\":{\"PearlColor\":134,\"WindowToning\":1,\"Armor\":4},\"PrimColor\":{\"Red\":44,\"Green\":44,\"Blue\":44,\"Alpha\":255},\"SecColor\":{\"Red\":44,\"Green\":44,\"Blue\":44,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":-190.54784,\"y\":-570.67126,\"z\":40.334366}', '{\"x\":-0.06986422,\"y\":0.054599386,\"z\":-111.09409}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 211, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(10947, 7, 'POLICE', 'go_police_cruiser2', '{\"Components\":{\"Spoilers\":0,\"FrontBumper\":0,\"RearBumper\":0,\"SideSkirt\":0,\"Exhaust\":0,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":462.96622,\"y\":-70.626274,\"z\":77.71625}', '{\"x\":0.13448256,\"y\":0.0071179895,\"z\":-21.893345}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 212, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(10948, 7, 'POLICE', 'go_police_cruiser2', '{\"Components\":{\"Spoilers\":0,\"FrontBumper\":0,\"RearBumper\":0,\"SideSkirt\":0,\"Exhaust\":0,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134,\"LiveryTwo\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":476.1073,\"y\":-63.770588,\"z\":77.71558}', '{\"x\":0.14308341,\"y\":0.0021730936,\"z\":150.0717}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.62309, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 213, NULL, NULL, NULL, 0, -1, '2021-09-30 02:02:12', 0, 0),
(10950, 7, 'POLICE7', 'go_police_scout', '{\"Components\":{\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":482.2688,\"y\":-40.50676,\"z\":78.0732}', '{\"x\":-0.8501065,\"y\":0.04019281,\"z\":-120.5501}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 214, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(10951, 7, 'POLICE', 'go_police_scout', '{\"Components\":{\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":486.032,\"y\":-34.11057,\"z\":78.07267}', '{\"x\":-0.90231776,\"y\":0.0016571213,\"z\":-119.672325}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 215, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(10965, 8, 'EMS18', 'go_police_scout', '{\"Components\":{\"NumberType\":1,\"Engine\":3,\"Transmission\":2,\"Brakes\":2,\"WheelsType\":3,\"FrontWheels\":1,\"LiveryTwo\":1,\"Turbo\":0,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3769.6912,\"y\":456.7035,\"z\":203.91637}', '{\"x\":-0.84716105,\"y\":0.0090266075,\"z\":-1.2255303}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50003, 0, 0, 0, 0, 0, 0, 3, NULL, 555781, 216, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(10966, 8, 'EMS20', 'go_police_scout', '{\"Components\":{\"WheelsType\":3,\"FrontWheels\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"LiveryTwo\":1,\"Turbo\":0,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3773.8801,\"y\":457.20862,\"z\":203.91786}', '{\"x\":-0.85320896,\"y\":0.030072948,\"z\":2.025394}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50004, 0, 0, 0, 0, 0, 0, 3, NULL, 555781, 217, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(10967, 8, 'EMS19', 'go_police_scout', '{\"Components\":{\"WheelsType\":3,\"FrontWheels\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"LiveryTwo\":1,\"Turbo\":0,\"Suspension\":3,\"WindowToning\":1,\"PearlColor\":134,\"Xenon\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3765.3599,\"y\":456.6295,\"z\":203.916}', '{\"x\":-0.8389424,\"y\":0.017323477,\"z\":0.8459273}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50003, 0, 0, 0, 0, 0, 0, 3, NULL, 555781, 218, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(10985, 14, 'ARMY1', 'go_sheriff_insurgent', '{\"Components\":{\"WheelsType\":4,\"FrontWheels\":15,\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2384.78174,\"y\":3355.4248,\"z\":33.2257271}', '{\"x\":0.01217426,\"y\":0.008052307,\"z\":329.733063}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50016, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 219, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10986, 14, 'ARMY2', 'go_sheriff_insurgent', '{\"Components\":{\"WheelsType\":4,\"FrontWheels\":15,\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2380.33057,\"y\":3363.388,\"z\":33.22366}', '{\"x\":-0.06736887,\"y\":0.0564297773,\"z\":331.125336}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 220, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10987, 14, 'ARMY3', 'go_sheriff_insurgent', '{\"Components\":{\"WheelsType\":4,\"FrontWheels\":15,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2367.934,\"y\":3387.72388,\"z\":33.2240524}', '{\"x\":0.0206361655,\"y\":-0.0282005072,\"z\":150.139771}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 221, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10990, 14, 'ARMY4', 'go_sheriff_insurgent', '{\"Components\":{\"WheelsType\":4,\"FrontWheels\":15,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0,\"LiveryTwo\":5},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2379.3357,\"y\":3352.4998,\"z\":33.225784}', '{\"x\":0.0074806646,\"y\":0.009717889,\"z\":330.16553}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 222, NULL, NULL, NULL, 0, -1, '2021-09-29 02:02:14', 0, 0),
(10991, 14, 'ARMY5', 'go_police_cruiser2', '{\"Components\":{\"LiveryTwo\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"PearlColor\":134,\"Spoilers\":0,\"FrontBumper\":1,\"RearBumper\":1,\"SideSkirt\":1,\"Suspension\":3,\"WheelsType\":3,\"FrontWheels\":22,\"Xenon\":0,\"Horns\":1,\"Armor\":4},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2360.33374,\"y\":3341.62134,\"z\":33.0895157}', '{\"x\":-0.177770436,\"y\":0.0186570417,\"z\":330.736328}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50035, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 223, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10993, 14, 'ARMY7', 'go_police_cruiser2', '{\"Components\":{\"NumberType\":1,\"LiveryTwo\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Spoilers\":0,\"FrontBumper\":1,\"RearBumper\":1,\"SideSkirt\":1,\"Suspension\":3,\"WheelsType\":3,\"FrontWheels\":22,\"Xenon\":0,\"Armor\":4,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2360.8894,\"y\":3353.00977,\"z\":33.089325}', '{\"x\":-0.1638515,\"y\":0.029429527,\"z\":331.907379}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50036, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 224, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(10994, 14, 'ARMY8', 'go_police_cruiser2', '{\"Components\":{\"LiveryTwo\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Spoilers\":0,\"FrontBumper\":1,\"RearBumper\":1,\"SideSkirt\":1,\"Suspension\":3,\"WheelsType\":3,\"FrontWheels\":22,\"Xenon\":0,\"Armor\":4,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2355.6958,\"y\":3350.1936,\"z\":33.09196}', '{\"x\":-0.111991279,\"y\":0.0588798746,\"z\":331.25827}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50046, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 225, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(10995, 14, 'ARMY9', 'go_police_cruiser2', '{\"Components\":{\"LiveryTwo\":1,\"NumberType\":1,\"RearBumper\":1,\"FrontBumper\":1,\"SideSkirt\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Spoilers\":0,\"WheelsType\":3,\"FrontWheels\":22,\"Xenon\":0,\"Horns\":1},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2365.5688,\"y\":3344.9158,\"z\":33.092747}', '{\"x\":-0.11709367,\"y\":0.04972472,\"z\":334.57373}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50018, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 226, NULL, NULL, NULL, 0, -1, '2021-09-29 02:02:14', 0, 0),
(11030, 9, 'FIB22', 'go_fib_jugular', '{\"Components\":{\"WheelsType\":0,\"FrontWheels\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3821.05469,\"y\":467.0428,\"z\":203.502884}', '{\"x\":0.000655122858,\"y\":0.0204642434,\"z\":88.1557}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 555779, 227, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11031, 9, 'FIB23', 'go_fib_jugular', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"WheelsType\":0,\"FrontWheels\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3754.62,\"y\":456.921722,\"z\":203.510056}', '{\"x\":0.009639607,\"y\":-2.69829616E-05,\"z\":359.999817}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 555779, 228, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11034, 7, 'POLICE21', 'go_police_insurgent', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"WheelsType\":4,\"FrontWheels\":9,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0,\"PearlColor\":67},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":501.24976,\"y\":-29.04565,\"z\":78.10846}', '{\"x\":-0.0022660906,\"y\":-0.010351698,\"z\":149.27217}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 229, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(11095, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":144.697647,\"y\":6567.909,\"z\":31.397686}', '{\"x\":8.721998,\"y\":11.4270153,\"z\":319.027649}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 230, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11096, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":143.5362,\"y\":6569.12549,\"z\":31.4170513}', '{\"x\":10.1219063,\"y\":10.3597078,\"z\":314.6787}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 231, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11097, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":142.530121,\"y\":6570.16846,\"z\":31.4350548}', '{\"x\":9.49846,\"y\":10.7742119,\"z\":318.9287}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 232, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11098, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":141.441452,\"y\":6571.233,\"z\":31.4539223}', '{\"x\":8.532022,\"y\":11.5681162,\"z\":322.462555}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 233, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11099, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":139.237762,\"y\":6573.489,\"z\":31.492382}', '{\"x\":9.274591,\"y\":11.0184679,\"z\":319.676483}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 234, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11100, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":140.346283,\"y\":6572.333,\"z\":31.4722767}', '{\"x\":9.709297,\"y\":10.8756132,\"z\":317.114075}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 235, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11101, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":136.8852,\"y\":6575.84668,\"z\":31.5329838}', '{\"x\":9.933721,\"y\":10.5308533,\"z\":317.524139}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 236, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11102, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":134.721344,\"y\":6577.652,\"z\":31.5464516}', '{\"x\":10.0026264,\"y\":10.4021063,\"z\":317.2886}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 237, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11103, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":135.61467,\"y\":6576.99268,\"z\":31.5386581}', '{\"x\":9.138794,\"y\":10.6372671,\"z\":315.5054}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 238, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11104, 14330, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":138.023621,\"y\":6574.57,\"z\":31.5124683}', '{\"x\":9.687031,\"y\":10.7555695,\"z\":316.460175}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 239, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11106, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-845.458069,\"y\":-1260.75244,\"z\":4.47645044}', '{\"x\":-7.573872,\"y\":-11.6949987,\"z\":141.522888}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 240, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11107, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-844.1812,\"y\":-1261.807,\"z\":4.47803354}', '{\"x\":-6.39167166,\"y\":-11.4845581,\"z\":145.184265}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 241, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11108, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-842.9208,\"y\":-1262.88684,\"z\":4.47777128}', '{\"x\":-6.765984,\"y\":-11.4692278,\"z\":143.970642}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 242, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11109, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-846.630554,\"y\":-1259.8833,\"z\":4.477717}', '{\"x\":-6.930394,\"y\":-11.3379936,\"z\":142.830231}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 243, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11110, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-847.5819,\"y\":-1258.91467,\"z\":4.477369}', '{\"x\":-7.270722,\"y\":-11.2414551,\"z\":141.223755}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 244, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11111, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-848.6726,\"y\":-1258.04309,\"z\":4.481501}', '{\"x\":-5.493454,\"y\":-9.127014,\"z\":141.005615}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 245, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11112, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-849.6332,\"y\":-1257.23,\"z\":4.48092365}', '{\"x\":-5.169057,\"y\":-10.1551313,\"z\":146.598969}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 246, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11113, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-850.526367,\"y\":-1256.47754,\"z\":4.47631931}', '{\"x\":-6.92024946,\"y\":-12.2269306,\"z\":145.106476}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 247, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11114, 10044, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-851.5399,\"y\":-1255.6571,\"z\":4.478171}', '{\"x\":-6.861292,\"y\":-11.26116,\"z\":143.0375}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 248, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11330, 14, 'ARMY24', 'go_sheriff_insurgent', '{\"Components\":{\"WindowToning\":1,\"NumberType\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WheelsType\":4,\"FrontWheels\":15,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2374.882,\"y\":3360.39819,\"z\":33.22602}', '{\"x\":0.006478829,\"y\":0.009296564,\"z\":331.816772}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50003, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 249, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(11345, 14, 'ARMY33', 'verus', '{\"Components\":{\"Livery\":8,\"PearlColor\":134},\"PrimColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1613.20068,\"y\":2806.89478,\"z\":17.829361}', '{\"x\":-2.093627,\"y\":-3.00790644,\"z\":309.336243}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 250, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11346, 14, 'ARMY34', 'verus', '{\"Components\":{\"Livery\":8},\"PrimColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2433.98462,\"y\":2965.21851,\"z\":33.0792122}', '{\"x\":0.223755419,\"y\":0.47001484,\"z\":339.789673}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 0.00000178011, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 251, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11347, 14, 'ARMY35', 'verus', '{\"HandlingTuning\":{},\"Components\":{\"Livery\":8,\"PearlColor\":134},\"PrimColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"SecColor\":{\"Red\":147,\"Green\":123,\"Blue\":102,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2268.1824,\"y\":3375.9348,\"z\":32.47948}', '{\"x\":0.80418974,\"y\":5.761243,\"z\":155.33044}', 2, 30, 2, NULL, 0, 0, 0, 0, '[]', 0, 2.51742, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 252, NULL, NULL, NULL, 0, -1, '2021-11-20 02:02:16', 0, 0),
(11351, 1, 'UNIQ', 'italirsx', '{\"Components\":{\"PearlColor\":134,\"Livery\":0,\"Spoilers\":9,\"FrontBumper\":3,\"RearBumper\":12,\"SideSkirt\":7,\"Exhaust\":4,\"Frame\":1,\"Grille\":5,\"Hood\":12,\"RightFender\":0,\"Roof\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Armor\":4},\"PrimColor\":{\"Red\":230,\"Green\":255,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":225,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-153.25755,\"y\":-654.78876,\"z\":40.014725}', '{\"x\":-0.002558528,\"y\":0.0037776825,\"z\":292.84595}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 253, NULL, NULL, NULL, 0, -1, '2021-09-16 02:02:13', 0, 0),
(11630, 7, 'POLICE61', 'go_police_cruiser2', '{\"Components\":{\"Spoilers\":0,\"FrontBumper\":0,\"RearBumper\":0,\"SideSkirt\":0,\"Exhaust\":0,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":469.6978,\"y\":-59.78745,\"z\":77.71559}', '{\"x\":0.14191948,\"y\":-0.0040223477,\"z\":151.65416}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 254, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(11633, 9, 'FIB97', 'go_fib_jugular', '{\"Components\":{\"NumberType\":1,\"WheelsType\":0,\"FrontWheels\":3,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3820.899,\"y\":457.918579,\"z\":203.502167}', '{\"x\":0.0008217021,\"y\":0.01885216,\"z\":87.92401}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.50009, 0, 0, 0, 0, 0, 0, 1, NULL, 555779, 255, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11634, 9, 'FIB96', 'go_fib_jugular', '{\"Components\":{\"WheelsType\":0,\"FrontWheels\":2,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3821.463,\"y\":462.196442,\"z\":203.502609}', '{\"x\":0.0009632935,\"y\":0.0206954349,\"z\":87.37421}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.50004, 0, 0, 0, 0, 0, 0, 1, NULL, 555779, 256, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11635, 9, 'FIB95', 'go_fib_jugular', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"WheelsType\":0,\"FrontWheels\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":125.364037,\"y\":-719.4829,\"z\":33.0711746}', '{\"x\":-0.0175771266,\"y\":0.00735847,\"z\":157.250244}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 257, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11639, 9, 'FIB92', 'go_fib_novak', '{\"Components\":{\"WheelsType\":0,\"FrontWheels\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3768.473,\"y\":433.5527,\"z\":203.548645}', '{\"x\":-0.051890716,\"y\":-0.0004925938,\"z\":359.998932}', 2, 35, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.50001, 0, 0, 0, 0, 0, 0, 1, NULL, 555779, 258, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11645, 9, 'FIB50', 'go_fib_neon', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WheelsType\":0,\"FrontWheels\":3,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3798.75732,\"y\":448.8672,\"z\":203.70256}', '{\"x\":-0.1563287,\"y\":-0.000637744146,\"z\":180.369888}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 555779, 259, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11646, 9, 'FIB49', 'go_fib_neon', '{\"Components\":{\"NumberType\":1,\"WheelsType\":0,\"FrontWheels\":3,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3794.60742,\"y\":448.459351,\"z\":203.7018}', '{\"x\":-0.160535276,\"y\":0.00511043146,\"z\":178.361816}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.50016, 0, 0, 0, 0, 0, 0, 6, NULL, 555779, 260, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11647, 9, 'FIB48', 'go_fib_neon', '{\"Components\":{\"WheelsType\":0,\"FrontWheels\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3804.97,\"y\":449.031158,\"z\":203.701935}', '{\"x\":-0.161782488,\"y\":-0.00149109133,\"z\":181.0809}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.50003, 0, 0, 0, 0, 0, 0, 6, NULL, 555779, 261, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11648, 9, 'FIB47', 'go_fib_neon', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"WheelsType\":0,\"FrontWheels\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3790.1062,\"y\":448.607239,\"z\":203.702225}', '{\"x\":-0.161896661,\"y\":-0.00266167521,\"z\":180.580246}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.50007, 0, 0, 0, 0, 0, 0, 6, NULL, 555779, 262, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11649, 9, 'FIB46', 'go_fib_neon', '{\"Components\":{\"WheelsType\":0,\"FrontWheels\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3808.5835,\"y\":448.600342,\"z\":203.701965}', '{\"x\":-0.161976069,\"y\":-0.009090926,\"z\":183.075531}', 2, 2, 1.3, NULL, 0, 0, 0, 0, '[]', 0, 3.50014, 0, 0, 0, 0, 0, 0, 6, NULL, 555779, 263, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11680, 14, 'ARMYMS', 'ambulance', '{\"Components\":{\"LiveryTwo\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"WheelsType\":4,\"FrontWheels\":15,\"NumberType\":1,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1813.04553,\"y\":3142.19,\"z\":33.0788}', '{\"x\":0.0296336524,\"y\":0.0487755276,\"z\":241.142639}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 264, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(11681, 14, 'ARMYMS1', 'blazer2', '{\"Components\":{\"LiveryTwo\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134,\"Suspension\":3},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":5,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":5,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1819.27917,\"y\":3149.82056,\"z\":32.81432}', '{\"x\":-0.6506103,\"y\":0.2916279,\"z\":150.036438}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5028, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 265, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(11710, 9, 'FIB01', 'frogger2', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"WindowToning\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":134.64511,\"y\":-758.5728,\"z\":263.06796}', '{\"x\":-0.05224888,\"y\":0.054742586,\"z\":73.928734}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 266, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(11711, 9, 'FIB02', 'frogger2', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":122.69361,\"y\":-743.82306,\"z\":263.0596}', '{\"x\":0.0033581036,\"y\":-0.06147927,\"z\":159.27898}', 2, 0, 1, NULL, 0, 0, 0, 0, '[]', 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 267, NULL, NULL, NULL, 0, -1, '2021-09-23 02:02:08', 0, 0),
(11960, 14, 'ARMY40', 'dinghy4', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1518.42285,\"y\":-2762.34839,\"z\":0.738616467}', '{\"x\":2.03072119,\"y\":1.0854789,\"z\":181.771469}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 268, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11961, 14, 'ARMY41', 'dinghy4', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1512.38757,\"y\":-2762.88086,\"z\":0.6626209}', '{\"x\":2.54718947,\"y\":-0.6130323,\"z\":180.485413}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 269, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11962, 14, 'ARMY42', 'dinghy4', '{\"Components\":{\"Turbo\":3,\"Engine\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1507.3992,\"y\":-2763.4487,\"z\":0.65616083}', '{\"x\":2.1616116,\"y\":-1.3001871,\"z\":179.54114}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 270, NULL, NULL, NULL, 0, -1, '2021-11-05 02:01:58', 0, 0),
(11963, 14, 'ARMY43', 'dinghy4', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1500.94934,\"y\":-2763.61816,\"z\":0.688131034}', '{\"x\":0.662776053,\"y\":-1.04034126,\"z\":187.173615}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 271, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(11964, 14, 'ARMY44', 'dinghy4', '{\"Components\":{\"Engine\":3,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3096.74268,\"y\":-4817.162,\"z\":0.769242167}', '{\"x\":2.19868946,\"y\":0.07746006,\"z\":188.725021}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 272, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(11965, 14, 'ARMY45', 'dinghy4', '{\"Components\":{\"Engine\":3,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3085.57056,\"y\":-4813.13,\"z\":0.74192965}', '{\"x\":-2.745487,\"y\":-1.10910285,\"z\":23.6413269}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 273, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(11984, 14, 'ARMY15', 'brickade', '{\"Components\":{\"PearlColor\":134},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2313.32959,\"y\":3352.91431,\"z\":33.68834}', '{\"x\":-0.428118467,\"y\":-0.0416459367,\"z\":150.146637}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 274, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:11', 0, 0),
(11986, 14, 'ARMY17', 'brickade', '{\"Components\":{\"PearlColor\":134},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2308.07471,\"y\":3350.24365,\"z\":33.6829948}', '{\"x\":-0.228708118,\"y\":0.116985254,\"z\":150.112732}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 5.493, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 275, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:11', 0, 0),
(12292, 7, 'POLICE11', 'go_fib_neon', '{\"Components\":{\"PearlColor\":134,\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":489.9272,\"y\":-23.940287,\"z\":88.99779}', '{\"x\":-0.1898196,\"y\":0.091265894,\"z\":-118.99963}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50008, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 276, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(12356, 14, 'NG', 'dinghy4', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2844.2688,\"y\":-642.679565,\"z\":0.5188348}', '{\"x\":0.0,\"y\":0.0,\"z\":255.531647}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 277, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(12357, 14, 'NG1', 'dinghy4', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":2846.8362,\"y\":-649.2886,\"z\":0.61953664}', '{\"x\":2.6582103,\"y\":-0.00025367746,\"z\":-127.232086}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 278, NULL, NULL, NULL, 0, -1, '2021-10-13 11:12:10', 0, 0),
(12358, 14, 'NG2', 'dinghy4', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":2844.3442,\"y\":-654.50006,\"z\":0.61955667}', '{\"x\":2.6589084,\"y\":0.00028889562,\"z\":-112.113335}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 279, NULL, NULL, NULL, 0, -1, '2021-10-13 11:12:10', 0, 0),
(12359, 14, 'NG3', 'dinghy4', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":2842.6545,\"y\":-659.5722,\"z\":0.62198}', '{\"x\":2.6100128,\"y\":-0.00039209554,\"z\":-104.02258}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 2.45, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 280, NULL, NULL, NULL, 0, -1, '2021-10-13 11:12:10', 0, 0),
(12360, 14, 'NG4', 'dinghy4', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":2841.5125,\"y\":-668.4065,\"z\":0.61955243}', '{\"x\":2.6587455,\"y\":-0.0001709682,\"z\":-98.099045}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 281, NULL, NULL, NULL, 0, -1, '2021-10-13 11:12:10', 0, 0),
(12361, 14, 'NG5', 'dinghy4', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2840.46582,\"y\":-677.342,\"z\":0.6195328}', '{\"x\":0.14164333,\"y\":2.65430641,\"z\":266.956421}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 282, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(12703, 14, 'ARMY58', 'go_fib_neon', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"NumberType\":1,\"Armor\":4,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2364.27637,\"y\":3354.81348,\"z\":32.97368}', '{\"x\":0.122119009,\"y\":-0.06876696,\"z\":329.903351}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50037, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 283, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(12704, 14, 'ARMY59', 'go_fib_neon', '{\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"NumberType\":1,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2368.863,\"y\":3346.65967,\"z\":32.97466}', '{\"x\":0.103415139,\"y\":-0.0589297377,\"z\":329.671448}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50051, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 284, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(12737, 7, 'POLICE12', 'towtruck', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":539.143433,\"y\":-48.767952,\"z\":71.40167}', '{\"x\":0.462413162,\"y\":-0.473466367,\"z\":215.56633}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 285, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(12739, 7, 'POLICE13', 'go_fib_armor1', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":502.8805,\"y\":-40.822163,\"z\":78.13016}', '{\"x\":-0.31631514,\"y\":0.010747609,\"z\":60.07425}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 286, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(12740, 7, 'POLICE14', 'go_fib_armor1', '{\"Components\":{\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":501.3595,\"y\":-43.66287,\"z\":78.13026}', '{\"x\":-0.3274609,\"y\":-0.0010545972,\"z\":60.669304}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 287, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(12741, 7, 'POLICE50', 'go_fib_armor1', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":499.7057,\"y\":-46.652897,\"z\":78.130005}', '{\"x\":-0.3129668,\"y\":-0.015510507,\"z\":61.30009}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.701329, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 288, NULL, NULL, NULL, 0, -1, '2022-04-13 02:02:19', 0, 0),
(12764, 9, 'FBI001', 'gogt63police', '{\"Components\":{\"LiveryTwo\":2,\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"PearlColor\":134,\"Spoilers\":1},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":3755.16455,\"y\":472.246246,\"z\":203.7349}', '{\"x\":0.134944513,\"y\":-0.0125053795,\"z\":181.83342}', 2, 15, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 19, NULL, 555779, 289, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(12765, 14, 'ARMY001', 'gogt63police', '{\"Components\":{\"LiveryTwo\":1,\"PearlColor\":134,\"Xenon\":0,\"Horns\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"WindowToning\":1},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2343.0564,\"y\":3251.52124,\"z\":32.998703}', '{\"x\":-0.19497934,\"y\":0.06484359,\"z\":327.8283}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 18, NULL, 0, 290, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(12773, 1, 'UNIQ', 'gosian', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":44,\"Armor\":4},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":-179.28754,\"y\":-648.20966,\"z\":40.214725}', '{\"x\":-0.35192242,\"y\":-0.0010262419,\"z\":-18.775223}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.00503766, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 291, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(12779, 1, 'UNIQ', 'bugattilanoire', '{\"HandlingTuning\":{},\"Components\":{\"LiveryTwo\":1,\"PearlColor\":134,\"Armor\":4,\"NumberType\":1},\"PrimColor\":{\"Red\":87,\"Green\":87,\"Blue\":87,\"Alpha\":255},\"SecColor\":{\"Red\":87,\"Green\":87,\"Blue\":87,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":4,\"PaintTypeSec\":0}', '{\"x\":-133.95369,\"y\":-570.944,\"z\":39.919224}', '{\"x\":0.07281928,\"y\":0.019356115,\"z\":27.452007}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.00000166767, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 292, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(12796, 7, 'PD50', 'go_police_insurgent', '{\"Components\":{\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WheelsType\":4,\"FrontWheels\":9,\"Suspension\":3,\"Horns\":1,\"Xenon\":0,\"PearlColor\":67},\"PrimColor\":{\"Red\":7,\"Green\":7,\"Blue\":7,\"Alpha\":255},\"SecColor\":{\"Red\":4,\"Green\":4,\"Blue\":4,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":505.23386,\"y\":-31.396135,\"z\":78.11125}', '{\"x\":-0.0013979747,\"y\":-0.01540366,\"z\":149.95851}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.53857, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 293, NULL, NULL, NULL, 0, -1, '2021-09-22 20:17:54', 0, 0),
(12805, 14, 'ARMY05', 'go_fib_armor1', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"WindowToning\":1,\"Armor\":4,\"PearlColor\":134,\"Suspension\":3,\"WheelsType\":3,\"FrontWheels\":22,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2308.71729,\"y\":3271.73364,\"z\":33.24356}', '{\"x\":0.156669661,\"y\":0.270296216,\"z\":59.90161}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50068, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 294, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(12806, 14, 'ARMY06', 'go_fib_armor1', '{\"Components\":{\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"WheelsType\":3,\"FrontWheels\":22,\"Horns\":1,\"Xenon\":0,\"LiveryTwo\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2310.3728,\"y\":3268.6296,\"z\":33.245964}', '{\"x\":0.15895066,\"y\":0.25816244,\"z\":60.01947}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 295, NULL, NULL, NULL, 0, -1, '2021-09-29 02:02:14', 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(12808, 14, 'ARMY07', 'manchez2', '{\"Components\":{\"Livery\":12,\"Spoilers\":3,\"FrontBumper\":1,\"Exhaust\":2,\"Frame\":4,\"Roof\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2301.48779,\"y\":3288.01343,\"z\":32.78634}', '{\"x\":-12.38192,\"y\":-8.607027,\"z\":120.868225}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 296, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(12810, 14, 'ARMY08', 'manchez2', '{\"Components\":{\"Spoilers\":3,\"FrontBumper\":1,\"Exhaust\":3,\"Frame\":4,\"Roof\":3,\"Engine\":3,\"Transmission\":2,\"Turbo\":0,\"Livery\":12,\"PearlColor\":134,\"Armor\":4,\"Brakes\":2,\"Xenon\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2299.863,\"y\":3285.53979,\"z\":32.78409}', '{\"x\":-11.2146263,\"y\":-10.1199579,\"z\":127.2341}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 297, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(12812, 14, 'ARMY09', 'pranger', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":97,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":4,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":-1829.51782,\"y\":3127.38135,\"z\":32.937}', '{\"x\":-0.00164281949,\"y\":-0.0006731751,\"z\":333.6705}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 298, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(12834, 1, 'UNIQ', 'gotopgunurus', '{\"Components\":{\"PearlColor\":127,\"WindowToning\":3,\"Exhaust\":0,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-191.14825,\"y\":-597.2037,\"z\":39.91589}', '{\"x\":-0.22653337,\"y\":-0.22040226,\"z\":224.42873}', 6, 100, 2, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 299, NULL, NULL, NULL, 0, -1, '2021-09-16 02:02:13', 0, 0),
(12865, 9, 'FBI1', 'double', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Exhaust\":0,\"Xenon\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3821.9082,\"y\":439.850128,\"z\":203.56694}', '{\"x\":-15.0038309,\"y\":0.459329158,\"z\":85.954834}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 4, NULL, 555779, 300, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(12866, 9, 'FBI2', 'double', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"Horns\":1,\"PearlColor\":121,\"Exhaust\":0},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3821.95752,\"y\":444.412262,\"z\":203.566788}', '{\"x\":-15.0040493,\"y\":0.495409369,\"z\":85.7290344}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 4, NULL, 555779, 301, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(12867, 9, 'FBI3', 'double', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"NumberType\":1,\"Exhaust\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":3821.93359,\"y\":435.199768,\"z\":203.5636}', '{\"x\":-15.0139275,\"y\":-0.3109545,\"z\":88.3982544}', 2, 50, 10, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 555779, 302, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(12885, 1, 'UNIQ', 'gobacalar', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"PearlColor\":134,\"Armor\":4},\"PrimColor\":{\"Red\":255,\"Green\":203,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":4,\"PaintTypeSec\":0}', '{\"x\":-203.2778,\"y\":-639.6138,\"z\":40.23429}', '{\"x\":-0.12308413,\"y\":-0.0012646455,\"z\":-38.319687}', 6, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 303, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(12888, 1, 'UNIQ', 'godarki8', '{\"HandlingTuning\":{},\"Components\":{\"Spoilers\":1,\"Grille\":4,\"NumberType\":1,\"PearlColor\":134,\"Armor\":4},\"PrimColor\":{\"Red\":254,\"Green\":254,\"Blue\":254,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":243,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":4,\"PaintTypeSec\":1}', '{\"x\":-139.36499,\"y\":-561.0296,\"z\":40.76305}', '{\"x\":-0.5704829,\"y\":-0.012465705,\"z\":178.36696}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 304, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(13033, 7, 'AN2453', 'revolter', '{\"Components\":{\"Armor\":4,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"WheelsType\":3,\"FrontWheels\":23,\"NumberType\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":599.181458,\"y\":98.01704,\"z\":92.91391}', '{\"x\":-0.0840843,\"y\":-0.004529928,\"z\":249.7229}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 305, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(13163, 7, 'LSPD99', 'gogt63police', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Turbo\":0,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"Transmission\":2,\"Horns\":1,\"Xenon\":0,\"Frame\":0,\"WheelsType\":3,\"FrontWheels\":8},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":491.9978,\"y\":-75.84496,\"z\":77.84747}', '{\"x\":-0.5568089,\"y\":0.045257807,\"z\":61.87842}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 2.07971, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 306, NULL, NULL, NULL, 0, -1, '2022-04-02 02:02:29', 0, 0),
(13351, 9, 'FIB000', 'go_fib_jugular', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3813.66187,\"y\":473.0059,\"z\":203.503387}', '{\"x\":-0.0171117131,\"y\":0.000205399279,\"z\":180.196976}', 2, 2, 1.3, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 555779, 307, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(13358, 9, 'FIB006', 'go_fib_jugular', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3797.003,\"y\":432.781128,\"z\":203.506}', '{\"x\":0.0242018811,\"y\":-6.81375459E-05,\"z\":359.998932}', 2, 2, 1.3, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 555779, 308, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(13416, 7, 'POLICE6', 'go_police_cruiser2', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"Spoilers\":0,\"FrontBumper\":0,\"RearBumper\":0,\"SideSkirt\":0,\"WindowToning\":1,\"Xenon\":0,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":466.4856,\"y\":-71.81478,\"z\":77.71526}', '{\"x\":0.12601201,\"y\":0.0012755677,\"z\":-20.578854}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 309, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(13417, 7, 'POLICE8', 'go_police_cruiser2', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"Spoilers\":0,\"FrontBumper\":0,\"RearBumper\":0,\"SideSkirt\":0,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":472.86005,\"y\":-61.75871,\"z\":77.71534}', '{\"x\":0.12603109,\"y\":0.003454248,\"z\":149.04997}', 2, 50, 2, NULL, 0, 0, 0, 0, NULL, 0, 1.53456, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 310, NULL, NULL, NULL, 0, -1, '2021-11-27 14:14:18', 0, 0),
(13418, 7, 'POLICE9', 'go_police_cruiser2', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"Spoilers\":0,\"FrontBumper\":0,\"RearBumper\":0,\"SideSkirt\":0,\"WindowToning\":1,\"Xenon\":0,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":470.0385,\"y\":-73.19409,\"z\":77.71539}', '{\"x\":0.14835441,\"y\":0.0023497648,\"z\":-20.481773}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 311, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(13885, 7, 'POLICE26', 'polmav', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":517.2614,\"y\":-42.870155,\"z\":89.74779}', '{\"x\":0.36316255,\"y\":-0.017318878,\"z\":61.343258}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 12, NULL, 0, 312, NULL, NULL, NULL, 0, -1, '2021-11-19 09:38:26', 0, 0),
(13888, 7, 'POLICE32', 'polmav', '{\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":505.13226,\"y\":-65.993416,\"z\":89.74889}', '{\"x\":0.44038686,\"y\":-0.005975828,\"z\":63.306767}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.57196, 0, 0, 0, 0, 0, 0, 12, NULL, 0, 313, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(13915, 8, 'EMS08', 'ambulance', '{\"Components\":{\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Suspension\":3,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3775.933,\"y\":433.7367,\"z\":203.82236}', '{\"x\":-0.00483814,\"y\":-0.5682601,\"z\":-0.7821089}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 2, NULL, 555781, 314, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(13918, 8, 'EMS10', 'ambulance', '{\"Components\":{\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Suspension\":3,\"WindowToning\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3780.054,\"y\":433.63983,\"z\":203.82446}', '{\"x\":-0.36225727,\"y\":-0.15129118,\"z\":-0.32648113}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50003, 0, 0, 0, 0, 0, 0, 2, NULL, 555781, 315, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(13975, 8, 'EMS01', 'ambulance', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3784.3108,\"y\":433.68945,\"z\":203.83456}', '{\"x\":0.10674712,\"y\":0.1345204,\"z\":2.6333466}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5003, 0, 0, 0, 0, 0, 0, 2, NULL, 555781, 316, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(13976, 8, 'EMS02', 'ambulance', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3789.07,\"y\":433.6625,\"z\":203.82336}', '{\"x\":-0.29619798,\"y\":0.03813755,\"z\":-1.3695674}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50025, 0, 0, 0, 0, 0, 0, 2, NULL, 555781, 317, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(13977, 8, 'EMS03', 'ambulance', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"NumberType\":1,\"WindowToning\":1,\"Suspension\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3796.7373,\"y\":433.66174,\"z\":203.8396}', '{\"x\":-0.025223741,\"y\":0.017265547,\"z\":0.91284245}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50022, 0, 0, 0, 0, 0, 0, 2, NULL, 555781, 318, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(13985, 14, 'ARMY088', 'supervolito2', '{\"Components\":{\"WindowToning\":1,\"Turbo\":3,\"Engine\":3,\"PearlColor\":134,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2182.8904,\"y\":3148.3423,\"z\":33.99058}', '{\"x\":0.1654487,\"y\":-0.025421547,\"z\":59.916992}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 15, NULL, 0, 319, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(13988, 8, 'EMS07', 'gogt63police', '{\"HandlingTuning\":{},\"Components\":{\"LiveryTwo\":2,\"Spoilers\":1,\"Suspension\":3,\"Xenon\":0,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3794.9749,\"y\":473.89127,\"z\":203.73572}', '{\"x\":0.19006318,\"y\":-0.01602543,\"z\":179.25867}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0645815, 0, 0, 0, 0, 0, 0, 10, NULL, 555781, 320, NULL, NULL, NULL, 0, -1, '2021-12-16 12:29:15', 0, 0),
(14030, 17, 'CONGRESS25', 'Insurgent2', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"WindowToning\":1},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":2556.50537,\"y\":-407.668945,\"z\":93.42097}', '{\"x\":-0.0048947027,\"y\":0.0126211969,\"z\":343.405731}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 2, NULL, 103, 321, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(14032, 17, 'CONGRESS26', 'Insurgent2', '{\"Components\":{\"Engine\":3,\"Transmission\":2,\"Brakes\":2,\"Turbo\":3,\"NumberType\":1,\"WindowToning\":1},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":2552.62939,\"y\":-408.111572,\"z\":93.4248}', '{\"x\":0.00807412248,\"y\":0.00966591947,\"z\":344.448181}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50152, 0, 0, 0, 0, 0, 0, 2, NULL, 103, 322, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(14108, 7, 'RTA23A', 'contender', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Horns\":1,\"Xenon\":0,\"Armor\":4,\"PearlColor\":134,\"WheelsType\":4,\"FrontWheels\":15},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":600.6966,\"y\":101.724396,\"z\":93.63239}', '{\"x\":0.110319711,\"y\":0.3213673,\"z\":249.70874}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 323, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(14109, 7, 'RFG13E', 'neon', '{\"Components\":{\"Spoilers\":0,\"FrontBumper\":5,\"RearBumper\":1,\"SideSkirt\":8,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Turbo\":3,\"Hood\":0,\"Armor\":4,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134,\"WheelsType\":4,\"FrontWheels\":15},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":597.232,\"y\":94.82617,\"z\":93.05525}', '{\"x\":-0.348903239,\"y\":0.8019671,\"z\":252.859756}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 324, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(14114, 7, 'SWAT06', 'go_fib_jugular', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":494.6413,\"y\":-45.199203,\"z\":88.787224}', '{\"x\":-0.2880511,\"y\":-0.25629613,\"z\":60.401367}', 2, 1, 2, NULL, 0, 0, 0, 0, NULL, 0, 0.899396, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 325, NULL, NULL, NULL, 0, -1, '2022-02-13 02:02:16', 0, 0),
(14115, 7, 'SWAT07', 'go_fib_jugular', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":502.3281,\"y\":-32.296906,\"z\":88.79431}', '{\"x\":-0.019633913,\"y\":-0.010370033,\"z\":60.19175}', 2, 20, 2, NULL, 0, 0, 0, 0, NULL, 0, 6.85272, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 326, NULL, NULL, NULL, 0, -1, '2021-11-10 02:02:00', 0, 0),
(14214, 14, 'ARMYNS4', 'blazer2', '{\"Components\":{\"Horns\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134,\"Suspension\":3,\"NumberType\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1817.06934,\"y\":3148.58984,\"z\":32.81443}', '{\"x\":-0.615894735,\"y\":0.307974428,\"z\":149.218689}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 327, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(14215, 14, 'ARMYNS5', 'blazer2', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1821.52271,\"y\":3151.08,\"z\":32.8131866}', '{\"x\":-0.5549556,\"y\":0.387751579,\"z\":148.919586}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 328, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(14432, 17, 'CONGRESS0', 'tahoego', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"WheelsType\":4,\"FrontWheels\":0},\"PrimColor\":{\"Red\":10,\"Green\":10,\"Blue\":10,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":2552.05127,\"y\":-362.005585,\"z\":92.90164}', '{\"x\":-0.59618026,\"y\":-0.196689025,\"z\":199.459213}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50081, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 329, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(14454, 17, 'CONGRESS23', 'bentaygav8', '{\"Components\":{\"PearlColor\":83,\"WindowToning\":1,\"NumberType\":1},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":2555.526,\"y\":-361.393921,\"z\":92.83001}', '{\"x\":0.41882953,\"y\":0.150765523,\"z\":200.198715}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50003, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 330, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(15355, 12446, '', 'buzzard2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-724.707642,\"y\":-1443.99353,\"z\":4.89942074}', '{\"x\":0.10291145,\"y\":0.009496969,\"z\":138.925781}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 331, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(15357, 12446, '', 'frogger', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-745.4795,\"y\":-1468.34387,\"z\":4.71614838}', '{\"x\":0.0050544627,\"y\":-0.00754615245,\"z\":143.926636}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 332, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(15359, 12446, '', 'havok', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-746.1897,\"y\":-1433.55286,\"z\":5.58610058}', '{\"x\":0.4570854,\"y\":0.7192835,\"z\":230.232559}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 333, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16285, 11671, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-520.9224,\"y\":56.12066,\"z\":52.2840652}', '{\"x\":-0.00149064627,\"y\":-0.0220655911,\"z\":86.11835}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 334, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16286, 11671, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":-520.6699,\"y\":59.73069,\"z\":52.284}', '{\"x\":-0.00368053163,\"y\":-0.0478643775,\"z\":85.59747}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 335, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16287, 11671, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":5,\"PaintTypeSec\":5}', '{\"x\":-520.2799,\"y\":62.94086,\"z\":52.28396}', '{\"x\":-0.00641433476,\"y\":-0.049185425,\"z\":82.80057}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 336, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16288, 11671, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":169,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-519.860535,\"y\":66.51953,\"z\":52.2903671}', '{\"x\":-0.1801101,\"y\":-0.006709807,\"z\":84.37207}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 337, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16289, 11671, '', 'surge', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-519.742432,\"y\":69.52395,\"z\":52.2995644}', '{\"x\":-0.128845781,\"y\":-0.0125397984,\"z\":82.13153}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 338, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16291, 11671, '', 'cheburek', '{\"Components\":{\"FrontBumper\":0,\"RearBumper\":0,\"SideSkirt\":0,\"Grille\":0,\"Hood\":0,\"Fender\":0,\"Roof\":0,\"Suspension\":3,\"Spoilers\":0,\"NumberType\":1,\"WindowToning\":1,\"Livery\":8,\"WheelsType\":0,\"FrontWheels\":84},\"PrimColor\":{\"Red\":71,\"Green\":57,\"Blue\":10,\"Alpha\":255},\"SecColor\":{\"Red\":71,\"Green\":57,\"Blue\":10,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-536.4309,\"y\":51.1190147,\"z\":52.0036163}', '{\"x\":-0.0152477035,\"y\":-0.0747085363,\"z\":266.634735}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 339, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16292, 11671, '', 'cheburek', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":5,\"PaintTypeSec\":5}', '{\"x\":-536.6186,\"y\":47.7192726,\"z\":52.01294}', '{\"x\":0.114290826,\"y\":0.0337398052,\"z\":266.141968}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 340, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16293, 11671, '', 'cheburek', '{\"Components\":{\"Livery\":1},\"PrimColor\":{\"Red\":0,\"Green\":6,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":33,\"Green\":14,\"Blue\":218,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-536.9986,\"y\":44.2832222,\"z\":52.01343}', '{\"x\":-0.1977012,\"y\":0.0786420554,\"z\":264.174377}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 341, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16299, 11671, '', 'sanchez', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-536.3585,\"y\":54.49686,\"z\":52.0516472}', '{\"x\":12.4997129,\"y\":-1.1416254,\"z\":264.241882}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 342, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16300, 11671, '', 'sanchez', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-535.9554,\"y\":58.1912956,\"z\":52.04875}', '{\"x\":14.9414063,\"y\":-1.34685636,\"z\":264.2636}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 343, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16301, 11671, '', 'sanchez', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-535.6934,\"y\":61.50341,\"z\":52.0564423}', '{\"x\":8.815805,\"y\":-0.467112422,\"z\":265.6459}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 344, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16304, 11671, '', 'zion', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-510.933716,\"y\":51.62404,\"z\":51.9691277}', '{\"x\":-0.00135680393,\"y\":-0.0147149293,\"z\":84.82474}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 345, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16305, 11671, '', 'zion', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-511.2193,\"y\":48.3887672,\"z\":51.9695778}', '{\"x\":0.0440781452,\"y\":0.03290735,\"z\":85.45972}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 346, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16306, 11671, '', 'zion', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-511.606171,\"y\":45.019104,\"z\":51.9689941}', '{\"x\":0.00148775394,\"y\":0.0170847215,\"z\":84.99716}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 347, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16311, 11671, '', 'massacro', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":21,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":37,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":-522.7588,\"y\":29.42101,\"z\":51.99525}', '{\"x\":0.0203558933,\"y\":-0.0355373733,\"z\":355.120544}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 348, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16312, 11671, '', 'massacro', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":3}', '{\"x\":-518.927,\"y\":29.1792088,\"z\":51.99613}', '{\"x\":-0.047887072,\"y\":-0.1080439,\"z\":356.553955}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 349, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16313, 11671, '', 'issi2', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":241,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":5,\"PaintTypeSec\":0}', '{\"x\":-526.5446,\"y\":29.752224,\"z\":52.25515}', '{\"x\":-0.454657137,\"y\":0.0367641523,\"z\":355.4071}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 350, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16314, 11671, '', 'issi2', '{\"Components\":{},\"PrimColor\":{\"Red\":169,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":197,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-530.354553,\"y\":29.7597542,\"z\":52.2546654}', '{\"x\":-0.414496452,\"y\":0.0138114737,\"z\":356.7455}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 351, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16315, 11671, '', 'primo2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-495.151245,\"y\":54.06272,\"z\":52.0729675}', '{\"x\":0.00536785927,\"y\":-0.008588217,\"z\":84.4617}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 352, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16316, 11671, '', 'primo2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-495.4993,\"y\":50.60584,\"z\":52.0729256}', '{\"x\":0.00569687458,\"y\":-0.04119238,\"z\":85.30853}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 353, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16317, 11671, '', 'primo2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-495.89212,\"y\":47.1460037,\"z\":52.0728531}', '{\"x\":0.00286228117,\"y\":-0.0296542179,\"z\":86.36624}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 354, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16318, 11671, '', 'picador', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-496.27655,\"y\":43.70608,\"z\":52.24046}', '{\"x\":0.08626395,\"y\":-0.026616903,\"z\":83.4039}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 355, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16319, 11671, '', 'picador', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-496.559357,\"y\":39.9373245,\"z\":52.24021}', '{\"x\":-0.00268523325,\"y\":-0.04158968,\"z\":85.41321}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 356, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16320, 11671, '', 'picador', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-496.955872,\"y\":36.2139,\"z\":52.24046}', '{\"x\":-0.00278405752,\"y\":-0.0326829478,\"z\":85.12186}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 357, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16322, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-508.333557,\"y\":70.09603,\"z\":52.0618858}', '{\"x\":-10.3931456,\"y\":-0.7060809,\"z\":86.28351}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 358, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16323, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-508.3646,\"y\":68.7414,\"z\":52.05607}', '{\"x\":-14.010107,\"y\":-0.6610371,\"z\":86.8635254}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 359, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16324, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-508.451,\"y\":67.38476,\"z\":52.05811}', '{\"x\":-12.95847,\"y\":0.438432723,\"z\":81.71912}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 360, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16325, 11671, '', 'buffalo2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":255,\"Blue\":204,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-495.627,\"y\":36.11841,\"z\":56.1156464}', '{\"x\":0.0415539965,\"y\":0.04391774,\"z\":86.75659}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 361, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16326, 11671, '', 'buffalo2', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-495.267761,\"y\":40.14395,\"z\":56.1155548}', '{\"x\":0.000316518242,\"y\":0.00556961261,\"z\":86.4772}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 362, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16327, 11671, '', 'blazer', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-495.325348,\"y\":43.8024559,\"z\":55.9998741}', '{\"x\":0.219587162,\"y\":1.50294638,\"z\":85.1359253}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 363, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16328, 11671, '', 'blazer', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-494.779175,\"y\":46.99871,\"z\":56.0000343}', '{\"x\":0.147973388,\"y\":1.25607193,\"z\":86.20807}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 364, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16329, 11671, '', 'blazer', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-494.241669,\"y\":50.86457,\"z\":55.9998474}', '{\"x\":0.04848176,\"y\":1.341819,\"z\":86.59729}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 365, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16331, 11671, '', 'voodoo2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-504.657043,\"y\":44.15345,\"z\":55.969574}', '{\"x\":-0.00108050648,\"y\":0.0225088578,\"z\":264.2754}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 366, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16332, 11671, '', 'voodoo2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-504.410034,\"y\":47.5802155,\"z\":55.9707642}', '{\"x\":0.0225673858,\"y\":-0.005779041,\"z\":264.871124}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 367, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16333, 11671, '', 'voodoo2', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-504.03064,\"y\":50.9565163,\"z\":55.96993}', '{\"x\":-0.065879,\"y\":-0.03097062,\"z\":265.180725}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 368, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16334, 11671, '', 'issi2', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":-493.563751,\"y\":54.12722,\"z\":56.1716}', '{\"x\":-0.0213529188,\"y\":-0.3859296,\"z\":86.83783}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 369, NULL, NULL, NULL, 0, -1, NULL, 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(16335, 11671, '', 'issi2', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-493.4242,\"y\":57.6323051,\"z\":56.17157}', '{\"x\":-0.0192531962,\"y\":-0.392259479,\"z\":87.32016}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 370, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16336, 11671, '', 'issi2', '{\"Components\":{},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-493.085815,\"y\":60.8000946,\"z\":56.1713753}', '{\"x\":-0.0519036837,\"y\":-0.5147497,\"z\":84.2809143}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 371, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16338, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-504.419739,\"y\":54.46391,\"z\":55.96682}', '{\"x\":15.045969,\"y\":0.925972939,\"z\":267.761}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 372, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16339, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-503.9922,\"y\":58.0527534,\"z\":55.97129}', '{\"x\":15.0505934,\"y\":-0.382344723,\"z\":263.500946}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 373, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16340, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-503.556519,\"y\":61.5368423,\"z\":55.9665833}', '{\"x\":15.0273542,\"y\":0.06669906,\"z\":266.699219}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 374, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16341, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-503.561035,\"y\":64.84356,\"z\":55.9716225}', '{\"x\":15.0502739,\"y\":0.09453594,\"z\":265.55722}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 375, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16342, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-503.192139,\"y\":68.38334,\"z\":55.9713364}', '{\"x\":15.0414515,\"y\":-0.653399169,\"z\":262.462921}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 376, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16343, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-492.4842,\"y\":67.85665,\"z\":55.97142}', '{\"x\":-15.0437527,\"y\":0.255929261,\"z\":84.44238}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 377, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16344, 11671, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-492.6618,\"y\":64.09064,\"z\":55.9714546}', '{\"x\":-15.0537577,\"y\":-0.0475043468,\"z\":85.23483}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 378, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16422, 16, 'BIKER3', 'wolfsbane', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Spoilers\":10,\"FrontBumper\":3,\"RearBumper\":2,\"Exhaust\":5,\"Frame\":2,\"Hood\":1,\"RightFender\":1,\"Armor\":4,\"Livery\":8},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1990.88318,\"y\":3038.702,\"z\":47.0055847}', '{\"x\":-7.33959866,\"y\":-7.09901476,\"z\":124.146851}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 5.27126, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 379, NULL, NULL, NULL, 0, -1, '2021-07-12 02:47:11', 0, 0),
(16423, 16, 'BIKER4', 'wolfsbane', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Spoilers\":10,\"FrontBumper\":3,\"SideSkirt\":8,\"Exhaust\":5,\"Frame\":2,\"Hood\":2,\"RightFender\":1,\"Armor\":4},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1995.631,\"y\":3027.46875,\"z\":47.0154572}', '{\"x\":-6.470999,\"y\":3.723888,\"z\":50.4364624}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 380, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16424, 16, 'BIKER5', 'wolfsbane', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Spoilers\":10,\"FrontBumper\":3,\"RearBumper\":2,\"Exhaust\":5,\"Frame\":2,\"Hood\":1,\"RightFender\":1,\"Livery\":12},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1989.22766,\"y\":3039.83936,\"z\":47.0120659}', '{\"x\":-7.76728249,\"y\":-6.89039,\"z\":123.105469}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 4.4485, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 381, NULL, NULL, NULL, 0, -1, '2021-07-12 02:47:11', 0, 0),
(16430, 16, 'BIKER10', 'deathbike', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1986.58459,\"y\":3060.13623,\"z\":47.03763}', '{\"x\":-0.117682815,\"y\":8.495458,\"z\":357.9977}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 382, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16431, 16, 'BIKER11', 'avarus', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Frame\":2,\"Spoilers\":7,\"FrontBumper\":1,\"RearBumper\":0,\"Exhaust\":1,\"Fender\":0,\"Armor\":4},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2007.97437,\"y\":3051.79639,\"z\":47.02424}', '{\"x\":2.74729419,\"y\":8.033968,\"z\":353.427338}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 383, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16432, 16, 'BIKER12', 'avarus', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Spoilers\":7,\"FrontBumper\":1,\"RearBumper\":0,\"Exhaust\":1,\"Frame\":2,\"Fender\":0,\"Armor\":4},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2006.21313,\"y\":3052.94873,\"z\":47.018055}', '{\"x\":3.19991,\"y\":6.26362038,\"z\":346.54425}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 384, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16433, 16, 'BIKER13', 'avarus', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Spoilers\":7,\"FrontBumper\":1,\"RearBumper\":0,\"Exhaust\":1,\"Frame\":2,\"Fender\":0,\"Armor\":4},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1970.20667,\"y\":3029.34888,\"z\":47.0209236}', '{\"x\":7.11603451,\"y\":6.999518,\"z\":324.6079}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 385, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16434, 16, 'BIKER14', 'avarus', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Spoilers\":7,\"FrontBumper\":1,\"RearBumper\":0,\"Exhaust\":1,\"Frame\":2,\"Grille\":0,\"Fender\":0,\"Armor\":4},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2004.40576,\"y\":3054.00757,\"z\":47.01524}', '{\"x\":3.59849119,\"y\":8.42194,\"z\":347.82428}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50021, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 386, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16443, 16, 'BIKER20', 'hexer', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1994.37585,\"y\":3025.629,\"z\":47.0350037}', '{\"x\":-5.04976,\"y\":3.45977521,\"z\":56.3368225}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50005, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 387, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16445, 16, 'BIKER21', 'hexer', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1971.82922,\"y\":3028.235,\"z\":47.031723}', '{\"x\":5.68743753,\"y\":7.489031,\"z\":323.722778}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50086, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 388, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16451, 16, 'BIKER22', 'hexer', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1973.21875,\"y\":3027.31421,\"z\":47.03137}', '{\"x\":6.02367973,\"y\":7.695348,\"z\":322.838348}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 389, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16456, 16, 'BIKER26', 'sanctus', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":88,\"Green\":13,\"Blue\":11,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":5}', '{\"x\":1997.74109,\"y\":3053.127,\"z\":47.0256042}', '{\"x\":0.0151662221,\"y\":8.439161,\"z\":14.5486755}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50184, 0, 0, 0, 0, 0, 0, 16, NULL, 0, 390, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16462, 16, 'BIKER99', 'rrocket', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Frame\":3,\"Armor\":4,\"Livery\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":2009.59253,\"y\":3049.71362,\"z\":47.02454}', '{\"x\":-0.149872482,\"y\":0.159295,\"z\":328.0017}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 15, NULL, 0, 391, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16469, 16, 'BIKER57', 'vagrant', '{\"Components\":{\"Exhaust\":7,\"Frame\":1,\"Grille\":1,\"Hood\":1,\"Fender\":2,\"RightFender\":2,\"Roof\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":67},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":20,\"Green\":20,\"Blue\":20,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":4583.979,\"y\":-17.850996,\"z\":201.11308}', '{\"x\":0.14928798,\"y\":-0.05257666,\"z\":177.1148}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50003, 0, 0, 0, 0, 0, 0, 11, NULL, 20049, 392, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(16470, 16, 'BIKER58', 'vagrant', '{\"HandlingTuning\":{},\"Components\":{\"Exhaust\":7,\"Frame\":1,\"Grille\":1,\"Hood\":1,\"Fender\":2,\"RightFender\":2,\"Roof\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":67},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":4579.9165,\"y\":-17.327328,\"z\":201.1135}', '{\"x\":0.19905561,\"y\":-0.053768408,\"z\":178.90509}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.252694, 0, 0, 0, 0, 0, 0, 11, NULL, 20049, 393, NULL, NULL, NULL, 0, -1, '2022-03-25 02:02:29', 0, 0),
(19006, 14, '6', 'gogt63police', '{\"Components\":{\"LiveryTwo\":1,\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Horns\":1,\"Suspension\":3,\"Armor\":4,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2305.31348,\"y\":3277.565,\"z\":33.00498}', '{\"x\":-0.103025854,\"y\":-0.180068225,\"z\":60.2259521}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50251, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 394, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(19007, 14, '58', 'gogt63police', '{\"Components\":{\"LiveryTwo\":1,\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Horns\":1,\"Suspension\":3,\"Armor\":4,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2303.3696,\"y\":3280.4832,\"z\":32.99811}', '{\"x\":0.24474618,\"y\":0.050365184,\"z\":59.695885}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.51267, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 395, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(19024, 14, '71', 'winky', '{\"Components\":{\"Livery\":28,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Spoilers\":2,\"PearlColor\":134,\"NumberType\":1,\"FrontBumper\":6,\"RearBumper\":1,\"SideSkirt\":2,\"Exhaust\":3,\"Frame\":5,\"Grille\":2,\"Hood\":3,\"Suspension\":3,\"Armor\":4,\"WindowToning\":1,\"WheelsType\":4,\"FrontWheels\":15,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2311.493,\"y\":3265.81641,\"z\":32.7464066}', '{\"x\":-0.04932329,\"y\":-0.08009912,\"z\":58.9135132}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50051, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 396, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(20823, 13553, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1179.664,\"y\":-3258.086,\"z\":5.49726629}', '{\"x\":-1.76629174,\"y\":14.2845373,\"z\":0.3704834}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 397, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(20824, 13553, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1181.167,\"y\":-3258.104,\"z\":5.500024}', '{\"x\":-1.85597014,\"y\":11.9344063,\"z\":0.8491516}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 398, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(20825, 13553, '', 'faggio', '{\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1182.39758,\"y\":-3258.07373,\"z\":5.508196}', '{\"x\":-1.28434432,\"y\":12.0915127,\"z\":359.2836}', 4, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 399, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(20831, 14, 'ARMY30', 'buzzard2', '{\"Components\":{\"PearlColor\":134,\"Engine\":3,\"Turbo\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2173.2488,\"y\":3171.9385,\"z\":33.20877}', '{\"x\":0.03844834,\"y\":0.07595529,\"z\":60.02113}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 400, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(20832, 14, 'ARMY31', 'buzzard2', '{\"Components\":{\"PearlColor\":134,\"Turbo\":3,\"Engine\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2217.4678,\"y\":3183.564,\"z\":33.209152}', '{\"x\":-0.0021707239,\"y\":0.05888006,\"z\":60.65008}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.68459, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 401, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(20833, 14, 'ARMY32', 'buzzard2', '{\"Components\":{\"PearlColor\":134,\"Engine\":3,\"Turbo\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2208.9185,\"y\":3199.7366,\"z\":33.223843}', '{\"x\":0.016207036,\"y\":0.040364187,\"z\":59.280132}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 402, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(20834, 14, 'ARMY60', 'nimbus', '{\"Components\":{\"PearlColor\":134,\"WindowToning\":1,\"Engine\":3,\"Turbo\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2119.487,\"y\":3139.2488,\"z\":33.951244}', '{\"x\":0.32533705,\"y\":0.003537037,\"z\":151.4731}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 18, NULL, 0, 403, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(20941, 7, 'SWAT03', 'go_fib_jugular', '{\"Components\":{\"WindowToning\":1,\"Suspension\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Armor\":4,\"NumberType\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":504.15698,\"y\":-28.956406,\"z\":88.79898}', '{\"x\":0.022209512,\"y\":0.05915278,\"z\":61.22079}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.51336, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 404, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(20942, 7, 'SWAT04', 'go_fib_jugular', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"Horns\":1,\"PearlColor\":134,\"Xenon\":0},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":478.5624,\"y\":-43.404594,\"z\":88.79386}', '{\"x\":-0.012403405,\"y\":0.016928885,\"z\":-123.19915}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 405, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21028, 14, 'ARMY65', 'go_fib_jugular', '{\"Components\":{\"WindowToning\":1,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Xenon\":0,\"Horns\":1},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2393.262,\"y\":3371.08887,\"z\":32.7726936}', '{\"x\":0.0184983648,\"y\":-0.01074048,\"z\":330.0508}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.51787, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 406, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21029, 14, 'ARMY66', 'go_fib_jugular', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Armor\":4,\"WindowToning\":1,\"NumberType\":1,\"Suspension\":3,\"PearlColor\":134,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2398.377,\"y\":3374.05444,\"z\":32.7748528}', '{\"x\":0.0210790578,\"y\":-0.0108224386,\"z\":331.485474}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.51922, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 407, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21271, 15, 'NEWS1', 'rumpo', '{\"HandlingTuning\":{},\"Components\":{\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"WindowToning\":1,\"Armor\":4},\"PrimColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1050.0132,\"y\":-220.4924,\"z\":38.46555}', '{\"x\":1.715356,\"y\":-1.4974654,\"z\":244.86226}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0573081, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 408, NULL, NULL, NULL, 0, -1, '2022-04-18 06:35:46', 0, 0),
(21273, 15, 'NEWS2', 'rumpo', '{\"HandlingTuning\":{},\"Components\":{\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Armor\":4,\"WindowToning\":1},\"PrimColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1053.4623,\"y\":-222.8006,\"z\":38.57749}', '{\"x\":1.102746,\"y\":0.043290984,\"z\":245.94012}', 2, 100, 2, NULL, 0, 0, 0, 0, NULL, 0, 0.0023717, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 409, NULL, NULL, NULL, 0, -1, '2022-07-01 02:02:09', 0, 0),
(21277, 15, 'NEWS6', 'bati', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1065.81116,\"y\":-231.727539,\"z\":38.0660133}', '{\"x\":-3.96414185,\"y\":-9.880363,\"z\":155.1579}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 410, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(21278, 15, 'NEWS7', 'bati', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"Brakes\":2,\"Transmission\":2},\"PrimColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1067.65637,\"y\":-231.288742,\"z\":38.0233}', '{\"x\":-3.662809,\"y\":-9.913774,\"z\":154.302368}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 411, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(21282, 15, 'NEWS11', 'rebla', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Armor\":0,\"NumberType\":1,\"WindowToning\":1},\"PrimColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1102.95349,\"y\":-264.2737,\"z\":37.7763023}', '{\"x\":3.319549,\"y\":-10.367425,\"z\":197.2853}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 412, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(21283, 15, 'NEWS12', 'rebla', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"WindowToning\":1,\"NumberType\":1,\"Spoilers\":7},\"PrimColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":77,\"Green\":1,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1102.84473,\"y\":-257.413574,\"z\":37.767868}', '{\"x\":-3.78903985,\"y\":-9.830715,\"z\":158.941956}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 13.3294, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 413, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(21285, 14, 'ARMY02', '17silverado', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":134,\"Armor\":4,\"Suspension\":3,\"Xenon\":0,\"Horns\":1},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2384.33032,\"y\":3365.611,\"z\":33.018734}', '{\"x\":-0.2929452,\"y\":0.117691115,\"z\":331.632141}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.508, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 414, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21289, 8, 'EMSAIR', 'buzzard2', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":352.48575,\"y\":-588.52185,\"z\":74.57003}', '{\"x\":0.00441369,\"y\":0.05695145,\"z\":72.44183}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000000445343, 0, 0, 0, 0, 0, 0, 7, NULL, 0, 415, NULL, NULL, NULL, 0, -1, '2021-11-19 09:38:26', 0, 0),
(21303, 8, 'EMS04', 'lguard', '{\"HandlingTuning\":{\"fDriveBiasFront\":1},\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Suspension\":3,\"NumberType\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3821.1113,\"y\":462.24777,\"z\":203.69019}', '{\"x\":0.10071713,\"y\":0.00013002378,\"z\":90.48493}', 2, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0269215, 0, 0, 0, 0, 0, 0, 2, NULL, 555781, 416, NULL, NULL, NULL, 0, -1, '2022-12-21 16:23:59', 0, 0),
(21306, 9, 'FBI002', 'gogt63police', '{\"Components\":{\"LiveryTwo\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"Spoilers\":1,\"WindowToning\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":3765.15845,\"y\":472.3356,\"z\":203.738586}', '{\"x\":0.207704514,\"y\":0.00288776564,\"z\":180.776779}', 2, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, 3.50004, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 417, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(21307, 9, 'FBI003', 'gogt63police', '{\"Components\":{\"LiveryTwo\":2,\"Turbo\":0,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Spoilers\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3761.49634,\"y\":472.279083,\"z\":203.7386}', '{\"x\":0.206700623,\"y\":-0.0106133325,\"z\":177.572266}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 418, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(21308, 8, 'EMS11', 'raiden', '{\"Components\":{\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Turbo\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3755.1418,\"y\":472.56882,\"z\":203.75728}', '{\"x\":-0.04289758,\"y\":0.011018454,\"z\":-177.81958}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 6, NULL, 555781, 419, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(21309, 8, 'EMS12', 'raiden', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Turbo\":3,\"NumberType\":1,\"Suspension\":3,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3749.8071,\"y\":472.8615,\"z\":203.75766}', '{\"x\":0.011312366,\"y\":-0.016817803,\"z\":179.84259}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 555781, 420, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(21310, 8, 'EMS13', 'raiden', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Turbo\":3,\"NumberType\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3761.304,\"y\":472.54004,\"z\":203.75688}', '{\"x\":-0.04442844,\"y\":0.03264514,\"z\":178.54521}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50006, 0, 0, 0, 0, 0, 0, 6, NULL, 555781, 421, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(21313, 7, 'POLICE2', 'go_fib_jugular', '{\"Components\":{\"Engine\":3,\"Transmission\":2,\"Turbo\":0,\"Brakes\":2,\"WindowToning\":1,\"NumberType\":1,\"Suspension\":3,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":496.84973,\"y\":-41.873337,\"z\":88.79289}', '{\"x\":-0.016531482,\"y\":-1.5744785E-05,\"z\":59.034237}', 2, 15, 15, NULL, 0, 0, 0, 0, NULL, 0, 3.50005, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 422, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21314, 7, 'POLICE1', 'go_fib_jugular', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"Suspension\":3,\"Xenon\":0,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":480.31876,\"y\":-40.48603,\"z\":88.7913}', '{\"x\":0.048328307,\"y\":-0.01587848,\"z\":-118.64747}', 2, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50003, 0, 0, 0, 0, 0, 0, 10, NULL, 0, 423, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21320, 7, 'POLICE16', 'go_police_scout', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"WindowToning\":1,\"Xenon\":0,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":484.31723,\"y\":-37.397198,\"z\":78.07237}', '{\"x\":-0.8694396,\"y\":0.011563298,\"z\":-120.3759}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 424, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21321, 7, 'POLICE17', '17silverado', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":461.9222,\"y\":-70.05554,\"z\":89.03736}', '{\"x\":0.30981696,\"y\":0.059059374,\"z\":-30.117567}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50068, 0, 0, 0, 0, 0, 0, 12, NULL, 0, 425, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21322, 7, 'POLICE18', '17silverado', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":465.69662,\"y\":-71.2157,\"z\":89.03714}', '{\"x\":0.30948275,\"y\":0.035380527,\"z\":-28.76811}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 12, NULL, 0, 426, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21323, 7, 'POLICE19', '17silverado', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":469.2351,\"y\":-72.59456,\"z\":89.0373}', '{\"x\":0.3105849,\"y\":0.03675322,\"z\":-28.244488}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 12, NULL, 0, 427, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21325, 7, 'POLICE22', 'go_fib_neon', '{\"Components\":{\"Turbo\":0,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"WindowToning\":1,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134,\"Horns\":1},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":491.68286,\"y\":-21.061758,\"z\":89.00139}', '{\"x\":-0.20167159,\"y\":0.0655762,\"z\":-119.99055}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.60894, 0, 0, 0, 0, 0, 0, 8, NULL, 0, 428, NULL, NULL, NULL, 0, -1, '2021-09-10 02:02:20', 0, 0),
(21655, 14, '3', 'go_fib_jugular', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2403.05859,\"y\":3365.69,\"z\":32.7729874}', '{\"x\":0.02796529,\"y\":0.00594260963,\"z\":330.475769}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50107, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 429, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21657, 14, '63', 'go_fib_jugular', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2397.75732,\"y\":3362.89771,\"z\":32.7725677}', '{\"x\":0.0185128469,\"y\":-0.0100940047,\"z\":331.0662}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50085, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 430, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21659, 14, '62', 'go_fib_neon', '{\"Components\":{\"Turbo\":0,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":134,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2375.078,\"y\":3350.00244,\"z\":32.97396}', '{\"x\":0.113974474,\"y\":-0.0695843846,\"z\":328.73996}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50074, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 431, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21660, 14, '64', 'go_fib_neon', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":134,\"Armor\":4,\"Horns\":1,\"Xenon\":0},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2370.4458,\"y\":3358.187,\"z\":32.9711647}', '{\"x\":0.191243023,\"y\":-0.105818182,\"z\":331.446167}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 432, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21661, 14, '60', '17silverado', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Xenon\":0,\"Horns\":1},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2388.39355,\"y\":3358.04419,\"z\":33.0136528}', '{\"x\":-0.2471437,\"y\":0.0984204859,\"z\":331.088379}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 433, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21662, 14, '61', '17silverado', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2394.265,\"y\":3360.96387,\"z\":33.0179176}', '{\"x\":-0.252708673,\"y\":0.104768768,\"z\":330.5448}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50005, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 434, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21665, 14, 'ARMY01', '17silverado', '{\"Components\":{\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"Xenon\":0,\"Horns\":1},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2389.889,\"y\":3368.8374,\"z\":33.0177727}', '{\"x\":-0.253106683,\"y\":0.102879323,\"z\":330.959717}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50938, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 435, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21666, 1, 'FAM26', 'bmx', '{\"Components\":{},\"PrimColor\":{\"Red\":57,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":107.772652,\"y\":-1954.2832,\"z\":20.7940884}', '{\"x\":0.0,\"y\":0.0,\"z\":11.1814137}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 436, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(21667, 1, 'FAM27', 'bmx', '{\"Components\":{},\"PrimColor\":{\"Red\":53,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":106.531616,\"y\":-1954.67346,\"z\":20.7512836}', '{\"x\":0.0,\"y\":0.0,\"z\":11.36106}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 437, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(21668, 1, 'FAM28', 'bmx', '{\"Components\":{},\"PrimColor\":{\"Red\":53,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":105.126373,\"y\":-1955.061,\"z\":20.71099}', '{\"x\":0.0,\"y\":0.0,\"z\":3.68049812}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 438, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(21873, 14, 'ARMY11', 'go_police_contender', '{\"Components\":{\"Xenon\":0,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"WheelsType\":4,\"FrontWheels\":15,\"Horns\":1},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1829.0094,\"y\":3143.90015,\"z\":33.387516}', '{\"x\":0.148293212,\"y\":0.275516182,\"z\":241.499771}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50816, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 439, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(21874, 14, 'ARMY13', 'go_police_contender', '{\"Components\":{\"Xenon\":0,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Suspension\":3,\"Armor\":4,\"WheelsType\":4,\"FrontWheels\":15,\"Horns\":1},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1830.71057,\"y\":3140.98682,\"z\":33.38844}', '{\"x\":0.141887456,\"y\":0.2632112,\"z\":241.321838}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.52152, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 440, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(21956, 1, 'UNIQ', 'amgvision', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Armor\":4,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":54,\"Green\":0,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":-120.56092,\"y\":-565.6119,\"z\":40.53522}', '{\"x\":0.7846207,\"y\":0.017895788,\"z\":110.26064}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0000046563, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 441, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(22117, 9, 'FIB34', 'insurgent2', '{\"Components\":{\"Horns\":1,\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"PearlColor\":121,\"Armor\":4},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":3799.245,\"y\":473.2381,\"z\":203.995331}', '{\"x\":0.0355443135,\"y\":-0.01664336,\"z\":178.484009}', 2, 2, 1.3, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 442, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(22118, 9, 'FIB35', 'insurgent2', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Horns\":1,\"Armor\":4,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":3794.99756,\"y\":473.351654,\"z\":203.995346}', '{\"x\":0.0356264673,\"y\":-0.01590611,\"z\":179.132446}', 2, 2, 1.3, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 443, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(22119, 9, 'FIB004', 'gobmw745le', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3750.12451,\"y\":472.290924,\"z\":203.654556}', '{\"x\":0.2123857,\"y\":-0.202412918,\"z\":180.683426}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50017, 0, 0, 0, 0, 0, 0, 19, NULL, 555779, 444, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(22160, 14, 'ARMY002', 'gogt63police', '{\"Components\":{\"LiveryTwo\":1,\"WheelsColor\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"NumberType\":1,\"WindowToning\":1,\"Horns\":1,\"Suspension\":3,\"Armor\":4,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2306.98755,\"y\":3274.547,\"z\":32.9989738}', '{\"x\":-0.07962432,\"y\":-0.213294834,\"z\":60.28183}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50238, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 445, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(22204, 6, 'GOV02', 'cog552', '{\"Components\":{\"WindowToning\":1,\"Armor\":4,\"Engine\":3,\"Brakes\":2,\"Turbo\":3,\"Transmission\":2},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3755.402,\"y\":472.910583,\"z\":203.5813}', '{\"x\":0.02329733,\"y\":-0.008729137,\"z\":178.410522}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5008, 0, 0, 0, 0, 0, 0, 6, NULL, 555777, 446, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22205, 6, 'GOV01', 'rrphantomgo', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Armor\":4,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Suspension\":3,\"Turbo\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3750.01343,\"y\":471.91,\"z\":203.618149}', '{\"x\":-0.07420146,\"y\":0.00037572757,\"z\":180.18074}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 447, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(22206, 6, 'GOV03', 'cog552', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3761.51953,\"y\":472.633453,\"z\":203.581787}', '{\"x\":0.08267015,\"y\":-0.017151773,\"z\":180.418564}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50064, 0, 0, 0, 0, 0, 0, 6, NULL, 555777, 448, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22207, 6, 'GOV04', 'baller6', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3765.30762,\"y\":472.746826,\"z\":203.978745}', '{\"x\":0.159568086,\"y\":-0.06480453,\"z\":180.5344}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50119, 0, 0, 0, 0, 0, 0, 6, NULL, 555777, 449, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22208, 6, 'GOV05', 'baller6', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3769.33179,\"y\":472.572266,\"z\":203.977692}', '{\"x\":-0.09035512,\"y\":0.0959638357,\"z\":181.194885}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5005, 0, 0, 0, 0, 0, 0, 6, NULL, 555777, 450, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22211, 6, 'GOV06', 'gogt63', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134,\"Horns\":1},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3775.9426,\"y\":432.93253,\"z\":203.71432}', '{\"x\":-0.48537928,\"y\":-0.005464846,\"z\":0.70648193}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 2.07356, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 451, NULL, NULL, NULL, 0, -1, '2022-03-21 02:02:29', 0, 0),
(22212, 6, 'GOV07', 'gogt63', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134,\"WheelsType\":0,\"FrontWheels\":61},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3780.061,\"y\":432.977,\"z\":203.71938}', '{\"x\":-0.4312247,\"y\":0.00027935486,\"z\":359.99887}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.198788, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 452, NULL, NULL, NULL, 0, -1, '2022-03-28 18:38:26', 0, 0),
(22213, 6, 'GOV08', 'gogt63', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3784.592,\"y\":433.1072,\"z\":203.7195}', '{\"x\":-0.4311425,\"y\":0.000360000151,\"z\":359.99884}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.52175, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 453, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(22215, 6, 'GOV09', 'gogt63', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3789.307,\"y\":433.230621,\"z\":203.7193}', '{\"x\":-0.4313126,\"y\":0.000224447009,\"z\":359.998871}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 454, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(22217, 6, 'GOV10', 'bmwm5e60', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3821.19336,\"y\":445.0287,\"z\":203.566849}', '{\"x\":0.008936852,\"y\":0.0809288546,\"z\":77.65747}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 8, NULL, 555777, 455, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(22218, 6, 'GOV11', 'bmwm5e60', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3821.15112,\"y\":440.3271,\"z\":203.566986}', '{\"x\":0.0110250926,\"y\":0.08041579,\"z\":75.93588}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 8, NULL, 555777, 456, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(22219, 6, 'GOV12', 'bmwm5e60', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3820.94385,\"y\":435.919159,\"z\":203.566818}', '{\"x\":0.0033091167,\"y\":0.08111318,\"z\":81.6416}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 8, NULL, 555777, 457, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(22220, 6, 'GOV13', 'baller3', '{\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3794.87036,\"y\":473.256,\"z\":203.563934}', '{\"x\":0.0,\"y\":0.0,\"z\":183.445541}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 555777, 458, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22221, 6, 'GOV14', 'baller3', '{\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3799.19,\"y\":473.653778,\"z\":203.564041}', '{\"x\":0.0,\"y\":0.0,\"z\":181.106339}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 555777, 459, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22222, 6, 'GOV15', 'baller3', '{\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3803.18384,\"y\":473.849945,\"z\":203.564041}', '{\"x\":0.0,\"y\":0.0,\"z\":181.6852}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 555777, 460, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22223, 6, 'GOV16', 'baller3', '{\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3809.43945,\"y\":473.5643,\"z\":203.563934}', '{\"x\":0.0,\"y\":0.0,\"z\":180.980133}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 555777, 461, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22224, 6, 'GOV26', 'revolter', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3773.9082,\"y\":456.8569,\"z\":203.56407}', '{\"x\":0.0,\"y\":0.0,\"z\":0.87111634}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.217655, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 462, NULL, NULL, NULL, 0, -1, '2022-03-21 02:02:29', 0, 0),
(22225, 6, 'GOV25', 'rebla', '{\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3820.597,\"y\":457.6735,\"z\":203.56398}', '{\"x\":0.0,\"y\":0.0,\"z\":94.02528}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 7, NULL, 555777, 463, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22226, 6, 'GOV18', 'jackal', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3790.01318,\"y\":456.744,\"z\":203.564178}', '{\"x\":0.0,\"y\":0.0,\"z\":1.377952}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 555777, 464, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22227, 6, 'GOV22', 'jackal', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3808.80566,\"y\":456.69223,\"z\":203.564178}', '{\"x\":0.0,\"y\":0.0,\"z\":0.589065731}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 555777, 465, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22228, 6, 'GOV21', 'jackal', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3804.753,\"y\":456.878784,\"z\":203.564}', '{\"x\":0.0,\"y\":0.0,\"z\":3.09069777}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 555777, 466, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22229, 6, 'GOV20', 'jackal', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3798.49927,\"y\":456.690369,\"z\":203.5639}', '{\"x\":0.0,\"y\":0.0,\"z\":1.22063577}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 555777, 467, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22230, 6, 'GOV19', 'jackal', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3794.15283,\"y\":457.009155,\"z\":203.56398}', '{\"x\":0.0,\"y\":0.0,\"z\":1.18464065}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 555777, 468, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(22306, 6, 'GOV00', 'supervolito', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":1}', '{\"x\":-521.3497,\"y\":-178.32793,\"z\":55.819878}', '{\"x\":0.28744075,\"y\":-0.00012619839,\"z\":-145.35788}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.00000225293, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 469, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(22327, 9, 'FIB14', 'go_fib_armor1', '{\"Components\":{\"Transmission\":2,\"Turbo\":0,\"Brakes\":2,\"Engine\":3,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3789.22046,\"y\":432.77536,\"z\":203.978973}', '{\"x\":0.280474633,\"y\":-0.000218639456,\"z\":359.998962}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 470, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(22329, 9, 'FIB17', 'go_fib_armor1', '{\"Components\":{\"Turbo\":0,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Suspension\":3,\"Armor\":2,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3780.49683,\"y\":432.6174,\"z\":203.979218}', '{\"x\":0.257305056,\"y\":-0.0196609218,\"z\":0.08590698}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 471, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(22330, 9, 'FIB18', 'go_fib_armor1', '{\"Components\":{\"Turbo\":0,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Suspension\":3,\"Armor\":4,\"NumberType\":1,\"WindowToning\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3775.90259,\"y\":432.809967,\"z\":203.978958}', '{\"x\":0.280464858,\"y\":-0.0002479556,\"z\":359.998962}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 472, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23466, 9, '699', 'DUKES3', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Livery\":4},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":93.3601,\"y\":-719.68634,\"z\":33.1332626}', '{\"x\":0.0,\"y\":0.0,\"z\":244.6308}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 473, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(23468, 9, 'B111F', 'sultan2', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"WindowToning\":1,\"Spoilers\":13,\"Livery\":2,\"NumberType\":1,\"WheelsType\":5,\"FrontWheels\":6,\"Armor\":4,\"Exhaust\":8,\"Hood\":14,\"SideSkirt\":3,\"Frame\":6,\"Grille\":3,\"RightFender\":2},\"PrimColor\":{\"Red\":44,\"Green\":0,\"Blue\":39,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":5,\"PaintTypeSec\":0}', '{\"x\":94.823326,\"y\":-716.41943,\"z\":33.133266}', '{\"x\":0.0,\"y\":0.0,\"z\":249.93661}', 2, 2, 2, NULL, 0, 0, 0, 0, NULL, 0, 0.0567948, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 474, NULL, NULL, NULL, 0, -1, '2022-05-23 02:02:10', 0, 0),
(23469, 9, 'B2111', 'jester', '{\"HandlingTuning\":{},\"Components\":{\"Spoilers\":3,\"FrontBumper\":1,\"RearBumper\":1,\"SideSkirt\":1,\"Exhaust\":2,\"Frame\":1,\"Roof\":0,\"Suspension\":3,\"WheelsType\":0,\"FrontWheels\":53,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Armor\":4,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":132,\"WheelsColor\":159},\"PrimColor\":{\"Red\":20,\"Green\":20,\"Blue\":20,\"Alpha\":255},\"SecColor\":{\"Red\":34,\"Green\":34,\"Blue\":34,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":1},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":95.71884,\"y\":-712.24835,\"z\":33.13327}', '{\"x\":0.0,\"y\":0.0,\"z\":247.36247}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.980192, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 475, NULL, NULL, NULL, 0, -1, '2021-12-17 02:02:11', 0, 0),
(23527, 9, '44', 'goamarok', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3808.68018,\"y\":456.106445,\"z\":203.612366}', '{\"x\":-0.633139253,\"y\":0.003705113,\"z\":359.9989}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 476, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23528, 9, '45', 'goamarok', '{\"Components\":{\"Engine\":3,\"Transmission\":2,\"Brakes\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3804.83325,\"y\":456.259,\"z\":203.612228}', '{\"x\":-0.63360703,\"y\":0.00368094631,\"z\":359.9989}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 477, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23529, 9, '46', 'goamarok', '{\"Components\":{\"Brakes\":2,\"Engine\":3,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3798.51465,\"y\":456.264679,\"z\":203.612335}', '{\"x\":-0.633456469,\"y\":0.00368206855,\"z\":359.9988}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 478, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23530, 9, '48', 'goamarok', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"NumberType\":1,\"PearlColor\":121,\"Armor\":4,\"Suspension\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":1},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3794.1558,\"y\":456.28937,\"z\":203.61623}', '{\"x\":-0.6369413,\"y\":0.0034023826,\"z\":359.99838}', 2, 30, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0880592, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 479, NULL, NULL, NULL, 0, -1, '2021-12-09 02:02:18', 0, 0),
(23531, 9, '49', 'goamarok', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Armor\":4,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3790.21582,\"y\":456.338867,\"z\":203.612335}', '{\"x\":-0.6333205,\"y\":0.0036203342,\"z\":0.00299072266}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5001, 0, 0, 0, 0, 0, 0, 5, NULL, 555779, 480, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23532, 9, '13', 'goe63s', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"Suspension\":3,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3774.0813,\"y\":456.85208,\"z\":203.7169}', '{\"x\":-0.29432184,\"y\":-0.00020845067,\"z\":359.99893}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 6.47343, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 481, NULL, NULL, NULL, 0, -1, '2022-03-29 02:02:33', 0, 0),
(23533, 9, '14', 'goe63s', '{\"Components\":{\"Brakes\":2,\"Engine\":3,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3769.47583,\"y\":456.7835,\"z\":203.716919}', '{\"x\":-0.2941978,\"y\":-0.00059344,\"z\":359.998932}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 482, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23534, 9, '15', 'goe63s', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3765.34814,\"y\":456.7487,\"z\":203.717026}', '{\"x\":-0.2944504,\"y\":-0.000269502052,\"z\":359.9989}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 483, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23535, 9, '17', 'goe63s', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"WindowToning\":1,\"Turbo\":0,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3758.90674,\"y\":456.994019,\"z\":203.716934}', '{\"x\":-0.29429847,\"y\":-0.0002844392,\"z\":359.9989}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 484, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23536, 9, '19', 'tahoego', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"WheelsType\":0,\"FrontWheels\":10,\"NumberType\":1,\"PearlColor\":121},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3808.31055,\"y\":433.03653,\"z\":203.473419}', '{\"x\":0.701374054,\"y\":-0.000955531839,\"z\":0.0009765625}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 485, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23537, 9, '20', 'tahoego', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":1,\"WheelsType\":0,\"FrontWheels\":10,\"WheelsColor\":141,\"PearlColor\":121,\"NumberType\":1},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3804.185,\"y\":432.795746,\"z\":203.4736}', '{\"x\":0.704129159,\"y\":-0.0009497484,\"z\":0.0009460449}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 10, NULL, 555779, 486, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(23654, 7, 'LS', 'goe63spolice', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Horns\":1,\"PearlColor\":134,\"Xenon\":0},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":490.38843,\"y\":-79.18796,\"z\":77.844215}', '{\"x\":-0.6234895,\"y\":-0.05874619,\"z\":59.639446}', 2, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.212766, 0, 0, 0, 0, 0, 0, 16, NULL, 0, 487, NULL, NULL, NULL, 0, -1, '2022-12-08 19:50:26', 0, 0),
(23665, 9, 'FIB', 'gosian', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":121,\"Horns\":1,\"WheelsColor\":141,\"Xenon\":0,\"Armor\":4,\"NumberType\":1},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":1},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3769.3774,\"y\":472.51935,\"z\":203.67776}', '{\"x\":-0.48290536,\"y\":-0.010619154,\"z\":181.40115}', 2, 30, 2, NULL, 0, 0, 0, 0, NULL, 0, 0.305538, 0, 0, 0, 0, 0, 0, 18, NULL, 555779, 488, NULL, NULL, NULL, 0, -1, '2021-12-01 02:02:17', 0, 0),
(23745, 15, 'NEWS', 'frogger', '{\"Components\":{\"Engine\":3,\"Turbo\":3},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":3,\"PaintTypeSec\":0}', '{\"x\":-1035.78442,\"y\":-226.683609,\"z\":39.2295876}', '{\"x\":0.00223078881,\"y\":0.0175616778,\"z\":41.0050964}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 16, NULL, 0, 489, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(24393, 14, 'ARMY18', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2318.34839,\"y\":3355.74536,\"z\":33.69016}', '{\"x\":-0.314114034,\"y\":0.316101164,\"z\":147.977112}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 490, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24394, 14, 'ARMY19', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2322.57886,\"y\":3357.82129,\"z\":33.68065}', '{\"x\":-0.199975476,\"y\":0.24521932,\"z\":150.171387}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 491, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24395, 14, 'ARMY20', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2327.26123,\"y\":3360.43042,\"z\":33.675087}', '{\"x\":-0.121547848,\"y\":0.141445175,\"z\":149.946289}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 4.01151, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 492, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24396, 14, 'ARMY21', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2331.6897,\"y\":3362.99683,\"z\":33.6735535}', '{\"x\":-0.125535473,\"y\":0.0531058535,\"z\":149.5799}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 5.51914, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 493, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24397, 14, 'ARMY22', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2336.10034,\"y\":3365.43286,\"z\":33.6749878}', '{\"x\":-0.15572843,\"y\":0.06603884,\"z\":151.077545}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 494, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24398, 14, 'ARMY23', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2340.604,\"y\":3367.92554,\"z\":33.6764641}', '{\"x\":-0.172160745,\"y\":0.05934041,\"z\":151.615662}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.51273, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 495, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24399, 14, 'ARMY25', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2344.893,\"y\":3370.22852,\"z\":33.678688}', '{\"x\":-0.197715774,\"y\":0.08214639,\"z\":149.504883}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 496, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24401, 14, 'ARMY26', 'brickade', '{\"Components\":{},\"PrimColor\":{\"Red\":103,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2350.36646,\"y\":3373.24951,\"z\":33.6810036}', '{\"x\":-0.231937036,\"y\":0.121108979,\"z\":148.220886}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 497, NULL, NULL, NULL, 0, -1, '2021-07-17 02:47:13', 0, 0),
(24627, 14, 'ARMY36', 'kamacho', '{\"Components\":{\"Spoilers\":3,\"FrontBumper\":4,\"RearBumper\":7,\"SideSkirt\":0,\"Frame\":3,\"Hood\":4,\"Livery\":5,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Exhaust\":3,\"Suspension\":3,\"WheelsType\":4,\"FrontWheels\":16,\"NumberType\":1,\"Xenon\":0,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2327.826,\"y\":3303.114,\"z\":33.0068474}', '{\"x\":-0.0328234173,\"y\":0.02778802,\"z\":234.9748}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 498, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(24628, 14, 'ARMY37', 'kamacho', '{\"Components\":{\"Spoilers\":3,\"FrontBumper\":4,\"RearBumper\":7,\"SideSkirt\":0,\"Grille\":2,\"Hood\":4,\"Livery\":5,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Exhaust\":3,\"Frame\":3,\"Suspension\":3,\"WheelsType\":4,\"FrontWheels\":16,\"NumberType\":1,\"WindowToning\":1,\"PearlColor\":134,\"Xenon\":0,\"Horns\":1},\"PrimColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2339.12744,\"y\":3302.51782,\"z\":33.01409}', '{\"x\":0.000844261667,\"y\":0.008759444,\"z\":234.800674}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50954, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 499, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(24629, 14, 'ARMY38', 'kamacho', '{\"Components\":{\"Spoilers\":3,\"FrontBumper\":4,\"RearBumper\":7,\"SideSkirt\":0,\"Frame\":3,\"Hood\":4,\"Livery\":5,\"Exhaust\":3,\"Suspension\":3,\"WheelsType\":4,\"FrontWheels\":16,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Horns\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"SecColor\":{\"Red\":104,\"Green\":83,\"Blue\":63,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-2333.07544,\"y\":3302.401,\"z\":33.0145149}', '{\"x\":0.00314177945,\"y\":0.00237637619,\"z\":237.19223}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5085, 0, 0, 0, 0, 0, 0, 3, NULL, 0, 500, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(24652, 8, 'EMS22', 'go_fib_novak', '{\"Components\":{\"Suspension\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"NumberType\":1,\"PearlColor\":134,\"WindowToning\":1},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3790.003,\"y\":456.74713,\"z\":203.54689}', '{\"x\":0.071689576,\"y\":-0.049966734,\"z\":1.8210406}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 3, NULL, 555781, 501, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(24654, 8, 'EMS23', 'go_fib_novak', '{\"Components\":{\"Suspension\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3794.327,\"y\":456.64267,\"z\":203.55267}', '{\"x\":0.13864647,\"y\":0.21126044,\"z\":-3.8160012}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 555781, 502, NULL, NULL, NULL, 0, -1, '2021-09-11 02:02:18', 0, 0),
(24655, 8, 'EMS24', 'go_fib_novak', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"NumberType\":1,\"WindowToning\":1,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3798.4634,\"y\":456.8282,\"z\":203.54971}', '{\"x\":0.09674259,\"y\":0.018563155,\"z\":-2.045269}', 2, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000408042, 0, 0, 0, 0, 0, 0, 3, NULL, 555781, 503, NULL, NULL, NULL, 0, -1, '2022-04-08 02:02:11', 0, 0),
(24674, 15, 'LSNEWS', 'go918', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Turbo\":0,\"Transmission\":2,\"WindowToning\":1,\"Armor\":4},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1091.4917,\"y\":-263.40997,\"z\":37.773373}', '{\"x\":0.0,\"y\":0.0,\"z\":176.48183}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.243125, 0, 0, 0, 0, 0, 0, 17, NULL, 0, 504, NULL, NULL, NULL, 0, -1, '2022-05-31 02:02:10', 0, 0),
(25223, 16, 'THELOST', 'gburrito', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":4593.591,\"y\":-32.651485,\"z\":201.31596}', '{\"x\":-0.10813836,\"y\":0.04252054,\"z\":-2.3621063}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 4, NULL, 20049, 505, NULL, NULL, NULL, 0, -1, '2021-07-11 17:12:03', 0, 0),
(25224, 16, 'THELOST1', 'gburrito', '{\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":4598.096,\"y\":-32.900352,\"z\":201.31464}', '{\"x\":0.00041155535,\"y\":0.051949862,\"z\":1.0004691}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.51989, 0, 0, 0, 0, 0, 0, 4, NULL, 20049, 506, NULL, NULL, NULL, 0, -1, '2021-07-11 17:13:42', 0, 0),
(25238, 16, 'THELOST2', 'wolfsbane', '{\"Components\":{\"Spoilers\":10,\"FrontBumper\":3,\"RearBumper\":2,\"SideSkirt\":8,\"Exhaust\":6,\"Frame\":2,\"RightFender\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Roof\":6,\"Livery\":1},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1984.21069,\"y\":3043.02417,\"z\":47.02291}', '{\"x\":-4.34630775,\"y\":-9.093057,\"z\":148.08371}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50554, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 507, NULL, NULL, NULL, 0, -1, '2021-07-12 17:04:38', 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(25239, 16, 'THELOST3', 'wolfsbane', '{\"Components\":{\"RightFender\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Livery\":3},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1981.5509,\"y\":3044.99268,\"z\":47.0242958}', '{\"x\":-3.928418,\"y\":-9.264808,\"z\":150.5268}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50083, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 508, NULL, NULL, NULL, 0, -1, '2021-07-12 17:08:10', 0, 0),
(25240, 16, 'THELOST4', 'wolfsbane', '{\"Components\":{\"RightFender\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Livery\":2},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1982.88123,\"y\":3044.17285,\"z\":47.0240479}', '{\"x\":-4.27850533,\"y\":-9.122998,\"z\":148.33075}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50087, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 509, NULL, NULL, NULL, 0, -1, '2021-07-12 17:08:15', 0, 0),
(25241, 16, 'THELOST5', 'wolfsbane', '{\"Components\":{\"RightFender\":1,\"Spoilers\":10,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Livery\":15},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1987.83142,\"y\":3040.97681,\"z\":47.0203362}', '{\"x\":-4.97853851,\"y\":-8.838244,\"z\":144.4654}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50235, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 510, NULL, NULL, NULL, 0, -1, '2021-07-12 17:08:21', 0, 0),
(25605, 1, 'UNIQ', 'pbus2', '{\"Components\":{\"Livery\":3},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[{\"Red\":255,\"Green\":255,\"Blue\":0,\"Alpha\":255}],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-1478.59546,\"y\":-1481.35852,\"z\":2.63330984}', '{\"x\":-1.43379545,\"y\":-2.89105821,\"z\":196.740692}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50684, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 511, NULL, NULL, NULL, 0, -1, '2021-07-23 16:17:04', 0, 0),
(25663, 7, 'LSPD', 'polaventa', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"WindowToning\":1,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134,\"LiveryTwo\":6,\"Suspension\":3,\"Armor\":4,\"WheelsType\":0,\"FrontWheels\":101,\"WheelsColor\":23},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[{\"Red\":255,\"Green\":0,\"Blue\":4,\"Alpha\":1},{\"Red\":0,\"Green\":18,\"Blue\":156,\"Alpha\":1}],\"TyreSmokeColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":1},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":494.33276,\"y\":-72.41907,\"z\":77.7553}', '{\"x\":-1.0678546,\"y\":0.03784829,\"z\":63.12862}', 2, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.54372, 0, 0, 0, 0, 0, 0, 19, NULL, 0, 512, NULL, NULL, NULL, 0, -1, '2022-12-20 22:00:31', 0, 0),
(25929, 6, 'GOV', 'goe63spolice', '{\"Components\":{\"Suspension\":3,\"Armor\":2,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"PearlColor\":134,\"Xenon\":0},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":4,\"PaintTypeSec\":0}', '{\"x\":3743.64429,\"y\":440.190338,\"z\":203.7351}', '{\"x\":-0.000269228854,\"y\":0.108687177,\"z\":270.1215}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50367, 0, 0, 0, 0, 0, 0, 7, NULL, 555777, 513, NULL, NULL, NULL, 0, -1, '2021-08-06 17:01:51', 0, 0),
(25930, 6, 'GOV2', 'goe63spolice', '{\"Components\":{\"Suspension\":3,\"Armor\":2,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"PearlColor\":134,\"Horns\":1,\"Xenon\":0,\"NumberType\":1},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3743.55054,\"y\":447.832275,\"z\":203.734756}', '{\"x\":-0.0101658767,\"y\":0.1089932,\"z\":275.73468}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 5.01499, 0, 0, 0, 0, 0, 0, 7, NULL, 555777, 514, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(26027, 6, 'GOV7', '2018s650p', '{\"Components\":{\"Armor\":1,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"Horns\":1},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":4,\"PaintTypeSec\":0}', '{\"x\":3760.59521,\"y\":433.406464,\"z\":203.7839}', '{\"x\":0.314068228,\"y\":-0.000421104429,\"z\":359.99884}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 515, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(26028, 6, 'GOV9', 'gobmw745le', '{\"HandlingTuning\":{},\"Components\":{\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134,\"NumberType\":1,\"Horns\":1},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3756.6301,\"y\":433.38187,\"z\":203.65942}', '{\"x\":-0.17274994,\"y\":0.25880605,\"z\":0.0027770996}', 2, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0204941, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 516, NULL, NULL, NULL, 0, -1, '2022-05-05 02:02:09', 0, 0),
(26029, 6, 'GOV5', 'w447', '{\"Components\":{\"Armor\":2,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134,\"NumberType\":1,\"Horns\":1},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3768.444,\"y\":433.280884,\"z\":203.6809}', '{\"x\":0.0304130279,\"y\":0.029242361,\"z\":0.02331543}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 555777, 517, NULL, NULL, NULL, 0, -1, '2021-09-12 02:02:21', 0, 0),
(26501, 2, 'BAL10', 'tahoego', '{\"Components\":{\"Suspension\":3,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WheelsType\":3,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4,\"FrontWheels\":9},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-89.49124,\"y\":-1391.123,\"z\":29.23062}', '{\"x\":0.462375641,\"y\":0.42542696,\"z\":36.4128723}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 518, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26502, 2, 'BAL11', 'tahoego', '{\"Components\":{\"Suspension\":3,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WheelsType\":3,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4,\"FrontWheels\":9},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-89.44405,\"y\":-1396.03955,\"z\":29.2294083}', '{\"x\":0.5166047,\"y\":0.345949352,\"z\":33.8840332}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 519, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26504, 2, 'BAL16', 'bmwe92', '{\"Components\":{\"Spoilers\":4,\"Suspension\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4,\"FrontBumper\":3,\"RearBumper\":3,\"SideSkirt\":0},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-105.840324,\"y\":-1421.00464,\"z\":29.7083}', '{\"x\":-0.0342441723,\"y\":-1.58848941,\"z\":273.454224}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 6.18675, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 520, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26505, 2, 'BAL12', 'e34go', '{\"Components\":{\"Frame\":0,\"Exhaust\":3,\"Suspension\":3,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Armor\":4,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-77.42231,\"y\":-1417.09924,\"z\":29.39332}', '{\"x\":0.1381032,\"y\":0.0471756272,\"z\":90.75964}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 521, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26506, 2, 'BAL13', 'e34go', '{\"Components\":{\"Suspension\":3,\"Frame\":0,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Exhaust\":3,\"Armor\":4,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-84.20279,\"y\":-1417.21533,\"z\":29.4021072}', '{\"x\":0.5912384,\"y\":-0.362625182,\"z\":88.8688049}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50757, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 522, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26507, 2, 'BAL14', 'e34go', '{\"Components\":{\"Frame\":0,\"Suspension\":3,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Exhaust\":3,\"Armor\":4,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-82.59367,\"y\":-1426.3938,\"z\":29.7646866}', '{\"x\":3.16090322,\"y\":-3.20691967,\"z\":0.08255005}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 523, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26508, 2, 'BAL19', 'tahoego', '{\"Components\":{\"Suspension\":3,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WheelsType\":3,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4,\"FrontWheels\":9},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-89.29878,\"y\":-1401.20435,\"z\":29.2293015}', '{\"x\":0.525020838,\"y\":0.3210494,\"z\":32.04364}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 524, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26509, 2, 'BAL18', 'e34go', '{\"Components\":{\"Frame\":0,\"Exhaust\":3,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Armor\":4,\"Suspension\":3,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-79.5865,\"y\":-1426.34521,\"z\":29.7291546}', '{\"x\":0.5125538,\"y\":0.5874486,\"z\":0.2760315}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 525, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26510, 2, 'BAL37', 'bf400', '{\"Components\":{\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-76.37855,\"y\":-1394.71484,\"z\":29.2857761}', '{\"x\":1.48868763,\"y\":-15.0003195,\"z\":179.803833}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 2, NULL, 0, 526, NULL, NULL, NULL, 0, -1, '2021-09-08 02:02:20', 0, 0),
(26511, 2, 'BALLAS', 'gomustang', '{\"Components\":{\"Spoilers\":5,\"FrontBumper\":1,\"RearBumper\":3,\"SideSkirt\":0,\"Exhaust\":1,\"Frame\":2,\"Hood\":4,\"Roof\":1,\"Suspension\":3,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"NumberType\":1,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-53.5273247,\"y\":-1405.5863,\"z\":29.3386364}', '{\"x\":0.1860394,\"y\":0.004699108,\"z\":181.375076}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 4.19133, 0, 0, 0, 0, 0, 0, 11, NULL, 0, 527, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26619, 1, 'FAM12', 'e34go', '{\"Components\":{\"WindowToning\":1,\"NumberType\":1,\"Suspension\":3,\"Grille\":1,\"Frame\":0,\"Spoilers\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":1,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":117.910141,\"y\":-1941.29919,\"z\":20.7187443}', '{\"x\":0.122666448,\"y\":1.97971523,\"z\":86.75769}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 528, NULL, NULL, NULL, 0, -1, '2021-09-08 19:03:41', 0, 0),
(26620, 1, 'FAM13', 'e34go', '{\"Components\":{\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Spoilers\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":117.752007,\"y\":-1937.71082,\"z\":20.72574}', '{\"x\":-0.4132806,\"y\":2.23029566,\"z\":92.58374}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 529, NULL, NULL, NULL, 0, -1, '2021-09-08 19:09:52', 0, 0),
(26621, 1, 'FAM23', 'e34go', '{\"Components\":{\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"Spoilers\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":115.828789,\"y\":-1946.41724,\"z\":20.7201061}', '{\"x\":0.5824102,\"y\":0.9621409,\"z\":57.76584}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 530, NULL, NULL, NULL, 0, -1, '2021-09-08 19:13:40', 0, 0),
(26622, 1, 'FAM22', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":113.383545,\"y\":-1949.50867,\"z\":20.732233}', '{\"x\":1.7961334,\"y\":0.697051,\"z\":50.7951355}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50003, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 531, NULL, NULL, NULL, 0, -1, '2021-09-08 19:16:55', 0, 0),
(26623, 1, 'FAM20', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":90.98223,\"y\":-1937.74829,\"z\":20.540657}', '{\"x\":-0.695822358,\"y\":2.572181,\"z\":27.5127258}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50033, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 532, NULL, NULL, NULL, 0, -1, '2021-09-08 19:22:36', 0, 0),
(26624, 1, 'FAM21', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":94.1293,\"y\":-1943.92834,\"z\":20.5442162}', '{\"x\":-0.7069502,\"y\":2.97204781,\"z\":26.2313538}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 533, NULL, NULL, NULL, 0, -1, '2021-09-08 19:25:30', 0, 0),
(26625, 1, 'FAM19', 'tahoego', '{\"Components\":{\"PearlColor\":134,\"Xenon\":0,\"Turbo\":0,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":104.54158,\"y\":-1928.414,\"z\":20.5406685}', '{\"x\":2.79456615,\"y\":0.0324351229,\"z\":76.55139}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 534, NULL, NULL, NULL, 0, -1, '2021-09-08 19:28:12', 0, 0),
(26626, 1, 'FAM18', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":111.560356,\"y\":-1931.0813,\"z\":20.5399818}', '{\"x\":2.69529057,\"y\":-0.9906341,\"z\":59.2118835}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 535, NULL, NULL, NULL, 0, -1, '2021-09-08 19:29:57', 0, 0),
(26628, 1, 'FAM17', 'bmwe92', '{\"Components\":{\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":2,\"NumberType\":1,\"Spoilers\":1},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":104.658913,\"y\":-1955.15613,\"z\":20.6145058}', '{\"x\":1.91646874,\"y\":0.157089084,\"z\":358.323151}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50004, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 536, NULL, NULL, NULL, 0, -1, '2021-09-08 19:35:46', 0, 0),
(26629, 1, 'FAM16', 'bmwe92', '{\"Components\":{\"Spoilers\":1,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":108.348419,\"y\":-1954.74792,\"z\":20.6851959}', '{\"x\":-0.828476369,\"y\":-0.0770530254,\"z\":12.2336121}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 537, NULL, NULL, NULL, 0, -1, '2021-09-08 19:39:45', 0, 0),
(26630, 1, 'FAM15', 'gomustang', '{\"HandlingTuning\":{},\"Components\":{\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":2,\"NumberType\":1,\"Suspension\":3,\"Hood\":4,\"SideSkirt\":0,\"FrontBumper\":1,\"RearBumper\":3,\"Frame\":2,\"Spoilers\":5},\"PrimColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":100,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":100.68847,\"y\":-1955.0199,\"z\":20.759378}', '{\"x\":1.5133294,\"y\":-0.41292533,\"z\":356.69235}', 2, 1, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0676227, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 538, NULL, NULL, NULL, 0, -1, '2022-12-21 02:01:13', 0, 0),
(26631, 4, 'MAR18', 'gomustang', '{\"Components\":{\"PearlColor\":134,\"Xenon\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Spoilers\":5,\"FrontBumper\":1,\"RearBumper\":3,\"SideSkirt\":0,\"Frame\":2,\"Hood\":4,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1517.33228,\"y\":-2099.03271,\"z\":76.88693}', '{\"x\":-1.43088853,\"y\":1.060635,\"z\":265.9851}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50006, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 539, NULL, NULL, NULL, 0, -1, '2021-09-08 19:55:56', 0, 0),
(26632, 4, 'MAR08', 'tahoego', '{\"Components\":{\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"WindowToning\":2,\"NumberType\":1,\"Suspension\":3},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1553.34863,\"y\":-2105.851,\"z\":77.27232}', '{\"x\":-1.1688596,\"y\":2.55477,\"z\":104.067261}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 540, NULL, NULL, NULL, 0, -1, '2021-09-08 20:02:24', 0, 0),
(26633, 4, 'MAR09', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1554.37146,\"y\":-2109.4646,\"z\":77.23256}', '{\"x\":-1.33457685,\"y\":2.42549515,\"z\":104.834991}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 541, NULL, NULL, NULL, 0, -1, '2021-09-08 20:02:42', 0, 0),
(26635, 4, 'MAR20', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1552.41284,\"y\":-2102.169,\"z\":77.2289}', '{\"x\":-0.339230448,\"y\":0.980157256,\"z\":104.073364}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50068, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 542, NULL, NULL, NULL, 0, -1, '2021-09-08 20:07:41', 0, 0),
(26636, 4, 'MAR21', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1551.56738,\"y\":-2098.21,\"z\":77.21067}', '{\"x\":0.3295697,\"y\":1.0836333,\"z\":103.828827}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50062, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 543, NULL, NULL, NULL, 0, -1, '2021-09-08 20:10:06', 0, 0),
(26637, 4, 'MAR06', 'bmwe92', '{\"Components\":{\"PearlColor\":134,\"Xenon\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Spoilers\":1,\"NumberType\":1,\"WindowToning\":2},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1549.27612,\"y\":-2138.77881,\"z\":77.31487}', '{\"x\":1.20418108,\"y\":0.647043169,\"z\":325.331848}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 544, NULL, NULL, NULL, 0, -1, '2021-09-08 20:12:51', 0, 0),
(26638, 4, 'MAR07', 'bmwe92', '{\"HandlingTuning\":{},\"Components\":{\"PearlColor\":134,\"Xenon\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Spoilers\":1,\"NumberType\":1,\"WindowToning\":2},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1548.968,\"y\":-2144.2605,\"z\":77.417564}', '{\"x\":0.77778375,\"y\":0.51709145,\"z\":326.98932}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 5.52947, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 545, NULL, NULL, NULL, 0, -1, '2022-03-17 02:02:24', 0, 0),
(26639, 4, 'MAR10', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1566.91809,\"y\":-2134.87329,\"z\":77.66515}', '{\"x\":-3.14914846,\"y\":-0.3796469,\"z\":104.37558}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 546, NULL, NULL, NULL, 0, -1, '2021-09-08 20:18:42', 0, 0),
(26640, 4, 'MAR11', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1567.67322,\"y\":-2138.55981,\"z\":77.7153244}', '{\"x\":0.481693,\"y\":0.5704908,\"z\":101.694}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 547, NULL, NULL, NULL, 0, -1, '2021-09-08 20:18:57', 0, 0),
(26641, 4, 'MAR12', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1568.559,\"y\":-2142.32446,\"z\":77.72516}', '{\"x\":-0.27036038,\"y\":0.333690226,\"z\":101.823}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 548, NULL, NULL, NULL, 0, -1, '2021-09-08 20:19:08', 0, 0),
(26642, 4, 'MAR22', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":140,\"Blue\":255,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1569.47583,\"y\":-2146.34375,\"z\":77.76287}', '{\"x\":0.460403532,\"y\":0.592792749,\"z\":100.366516}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 549, NULL, NULL, NULL, 0, -1, '2021-09-08 20:19:35', 0, 0),
(26644, 5, 'BLOODS00', 'gomustang', '{\"HandlingTuning\":{},\"Components\":{\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Spoilers\":0,\"FrontBumper\":1,\"RearBumper\":3,\"Frame\":2,\"SideSkirt\":0,\"Hood\":9,\"NumberType\":1,\"WindowToning\":2},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":873.3972,\"y\":-2206.6746,\"z\":30.686853}', '{\"x\":-0.21001132,\"y\":0.027819525,\"z\":356.19556}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 1.75423, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 550, NULL, NULL, NULL, 0, -1, '2022-03-26 02:02:27', 0, 0),
(26645, 5, 'BLOODS40', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":874.5554,\"y\":-2176.10034,\"z\":30.5869884}', '{\"x\":-0.0172504354,\"y\":0.0281760711,\"z\":174.622742}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 551, NULL, NULL, NULL, 0, -1, '2021-09-08 20:53:23', 0, 0),
(26646, 5, 'BLOODS11', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":878.6744,\"y\":-2176.62939,\"z\":30.588419}', '{\"x\":-0.037219882,\"y\":0.256652117,\"z\":173.913269}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 552, NULL, NULL, NULL, 0, -1, '2021-09-08 20:53:40', 0, 0),
(26647, 5, 'BLOODS38', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":882.479065,\"y\":-2177.00415,\"z\":30.5871181}', '{\"x\":-0.0217020083,\"y\":0.0333464779,\"z\":174.780579}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50002, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 553, NULL, NULL, NULL, 0, -1, '2021-09-08 20:53:53', 0, 0),
(26648, 5, 'BLOODS39', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":886.255859,\"y\":-2177.31152,\"z\":30.5881977}', '{\"x\":-0.011428847,\"y\":0.0254978966,\"z\":176.791382}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50041, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 554, NULL, NULL, NULL, 0, -1, '2021-09-08 20:54:02', 0, 0),
(26649, 5, 'BLOODS45', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Transmission\":2,\"Brakes\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":843.5574,\"y\":-2180.1228,\"z\":30.2080288}', '{\"x\":-0.5225645,\"y\":-0.008849364,\"z\":180.758362}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 555, NULL, NULL, NULL, 0, -1, '2021-09-08 21:06:23', 0, 0),
(26650, 5, 'BLOODS46', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":846.8523,\"y\":-2180.1543,\"z\":30.2089043}', '{\"x\":-0.576528847,\"y\":-0.110000961,\"z\":179.907715}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50277, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 556, NULL, NULL, NULL, 0, -1, '2021-09-08 21:06:42', 0, 0),
(26651, 5, 'BLOODS01', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":850.0797,\"y\":-2180.04468,\"z\":30.23241}', '{\"x\":-0.2232743,\"y\":2.319578,\"z\":180.38652}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50083, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 557, NULL, NULL, NULL, 0, -1, '2021-09-08 21:11:00', 0, 0),
(26652, 5, 'BLOODS05', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":853.6899,\"y\":-2180.1416,\"z\":30.5247478}', '{\"x\":0.174601331,\"y\":3.672883,\"z\":180.143738}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50114, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 558, NULL, NULL, NULL, 0, -1, '2021-09-08 21:11:09', 0, 0),
(26653, 5, 'BLOODS12', 'bmwe92', '{\"Components\":{\"Spoilers\":1,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":849.8385,\"y\":-2190.4895,\"z\":30.335943}', '{\"x\":-0.8650591,\"y\":4.990392,\"z\":293.47485}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 14.9754, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 559, NULL, NULL, NULL, 0, -1, '2021-09-19 02:02:17', 0, 0),
(26654, 5, 'BLOODS13', 'bmwe92', '{\"Components\":{\"Spoilers\":1,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":100,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":844.404236,\"y\":-2190.19238,\"z\":30.20995}', '{\"x\":-0.279836923,\"y\":0.137119129,\"z\":295.7844}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 560, NULL, NULL, NULL, 0, -1, '2021-09-08 21:19:02', 0, 0),
(26655, 3, 'VAGOS01', 'tahoego', '{\"Components\":{\"PearlColor\":134,\"Xenon\":0,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":963.9166,\"y\":-1824.24414,\"z\":30.9783154}', '{\"x\":0.658350766,\"y\":-0.2810371,\"z\":354.987335}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50299, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 561, NULL, NULL, NULL, 0, -1, '2021-09-08 21:57:24', 0, 0),
(26656, 3, 'VAGOS04', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":967.4884,\"y\":-1824.49109,\"z\":30.9916439}', '{\"x\":0.7076897,\"y\":0.509036541,\"z\":354.967743}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50004, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 562, NULL, NULL, NULL, 0, -1, '2021-09-08 21:57:45', 0, 0),
(26657, 3, 'VAGOS05', 'tahoego', '{\"Components\":{\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":971.2761,\"y\":-1824.8253,\"z\":31.027887}', '{\"x\":0.7375873,\"y\":0.435353,\"z\":354.85822}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 563, NULL, NULL, NULL, 0, -1, '2021-10-06 01:01:48', 0, 0),
(26658, 3, 'VAGOS06', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":975.0506,\"y\":-1825.15625,\"z\":31.0544682}', '{\"x\":0.7546916,\"y\":0.2781471,\"z\":354.121063}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 564, NULL, NULL, NULL, 0, -1, '2021-09-08 21:58:02', 0, 0),
(26659, 3, 'VAGOS08', 'BMWe92', '{\"Components\":{\"Spoilers\":1,\"WindowToning\":2,\"NumberType\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":980.1447,\"y\":-1827.58484,\"z\":31.1156063}', '{\"x\":0.06776798,\"y\":0.799255967,\"z\":263.51358}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5258, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 565, NULL, NULL, NULL, 0, -1, '2021-09-08 22:06:54', 0, 0),
(26660, 3, 'VAGOS09', 'bmwe92', '{\"HandlingTuning\":{},\"Components\":{\"Spoilers\":1,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":980.4404,\"y\":-1824.1383,\"z\":31.116953}', '{\"x\":0.039333463,\"y\":0.87578523,\"z\":264.46512}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 14.3345, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 566, NULL, NULL, NULL, 0, -1, '2022-03-18 02:02:15', 0, 0),
(26661, 3, 'VAGOS15', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":988.810852,\"y\":-1811.86072,\"z\":31.2352142}', '{\"x\":-0.379330039,\"y\":-0.0482368171,\"z\":355.52475}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50059, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 567, NULL, NULL, NULL, 0, -1, '2021-09-08 22:14:46', 0, 0),
(26662, 3, 'VAGOS16', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":988.328,\"y\":-1818.5448,\"z\":31.1969967}', '{\"x\":-0.195976377,\"y\":-0.569922447,\"z\":355.812378}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50607, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 568, NULL, NULL, NULL, 0, -1, '2021-09-08 22:15:04', 0, 0),
(26663, 3, 'VAGOS17', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Grille\":1,\"Frame\":0,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":987.8109,\"y\":-1825.17957,\"z\":31.180521}', '{\"x\":-0.4640672,\"y\":-1.25219536,\"z\":354.444244}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50381, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 569, NULL, NULL, NULL, 0, -1, '2021-09-08 22:15:12', 0, 0),
(26664, 3, 'VAGOS18', 'e34go', '{\"Components\":{\"Spoilers\":0,\"Frame\":0,\"Grille\":1,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":987.272644,\"y\":-1831.91882,\"z\":31.1429558}', '{\"x\":-0.374257654,\"y\":-1.68308258,\"z\":355.5881}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50103, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 570, NULL, NULL, NULL, 0, -1, '2021-09-08 22:15:17', 0, 0);
INSERT INTO `vehicles` (`idkey`, `holderuuid`, `number`, `model`, `componentsnew`, `position`, `rotation`, `typeowner`, `power`, `torque`, `price`, `keynum`, `streamer`, `donatecar`, `isdeath`, `items`, `fuel`, `dirt`, `doorbreak`, `mileage`, `mileageoilchange`, `mileagebrakepadschange`, `mileagetransmissionservice`, `enginehealth`, `rank`, `holder`, `dimension`, `inventoryId`, `wantedlevel`, `saveposition`, `saverotation`, `isdeleted`, `tradepoint`, `dirtclear`, `pledged`, `buytype`) VALUES
(26665, 3, 'VAGOS19', 'gomustang', '{\"Components\":{\"Xenon\":0,\"PearlColor\":134,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Spoilers\":5,\"FrontBumper\":1,\"RearBumper\":3,\"SideSkirt\":0,\"Frame\":2,\"Hood\":4,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":2},\"PrimColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":160,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":967.856567,\"y\":-1804.24683,\"z\":31.3715382}', '{\"x\":0.1604744,\"y\":-0.03336413,\"z\":173.459778}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 571, NULL, NULL, NULL, 0, -1, '2021-09-08 22:27:01', 0, 0),
(26666, 2, 'BAL44', 'bmwe92', '{\"Components\":{\"Spoilers\":4,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4,\"Suspension\":1,\"SideSkirt\":0,\"FrontBumper\":3,\"RearBumper\":3,\"Exhaust\":3},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-111.856552,\"y\":-1421.39465,\"z\":29.85417}', '{\"x\":0.4687256,\"y\":-0.9872204,\"z\":274.165649}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 9, NULL, 0, 572, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26668, 2, 'BAL45', 'tahoego', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4,\"WheelsType\":3,\"FrontWheels\":11},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-89.2808762,\"y\":-1406.705,\"z\":29.22947}', '{\"x\":0.591230452,\"y\":0.3377736,\"z\":29.42456}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 0, 573, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26669, 2, 'BAL46', 'youga', '{\"Components\":{\"FrontBumper\":1,\"Roof\":0,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134,\"WheelsType\":3,\"FrontWheels\":7,\"Armor\":4},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-113.927551,\"y\":-1412.90222,\"z\":30.0171}', '{\"x\":0.789696336,\"y\":-1.56732321,\"z\":187.274689}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50001, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 574, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26670, 2, 'BAL47', 'youga', '{\"Components\":{\"FrontBumper\":1,\"Roof\":0,\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"WheelsType\":3,\"FrontWheels\":7,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":134,\"Armor\":4},\"PrimColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"SecColor\":{\"Red\":60,\"Green\":20,\"Blue\":70,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-109.778641,\"y\":-1412.33167,\"z\":29.9020233}', '{\"x\":1.73533,\"y\":-1.802381,\"z\":187.697281}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 575, NULL, NULL, NULL, 0, -1, '2021-09-09 02:02:51', 0, 0),
(26695, 7, 'LSPD21', 'w447', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":488.981018,\"y\":-55.05748,\"z\":88.96945}', '{\"x\":-0.02529588,\"y\":0.05157372,\"z\":59.7643433}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50813, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 576, NULL, NULL, NULL, 0, -1, '2021-09-10 23:07:13', 0, 0),
(26696, 7, 'LSPD22', 'w447', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":490.84845,\"y\":-51.7802467,\"z\":88.97378}', '{\"x\":-0.0192667432,\"y\":0.0214740857,\"z\":59.72406}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50186, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 577, NULL, NULL, NULL, 0, -1, '2021-09-10 23:07:28', 0, 0),
(26697, 7, 'LSPD23', 'w447', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":54,\"Green\":54,\"Blue\":54,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":492.769379,\"y\":-48.3167,\"z\":88.97363}', '{\"x\":-0.0180969946,\"y\":0.0237562563,\"z\":60.0758667}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5011, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 578, NULL, NULL, NULL, 0, -1, '2021-09-10 23:07:34', 0, 0),
(26720, 8, 'EMS17', 'swift', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Turbo\":3,\"Xenon\":0,\"PearlColor\":112},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":348.60236,\"y\":-595.57196,\"z\":74.5661}', '{\"x\":-0.24361631,\"y\":0.000508809,\"z\":70.440704}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000000106478, 0, 0, 0, 0, 0, 0, 4, NULL, 0, 579, NULL, NULL, NULL, 0, -1, '2021-11-19 09:38:26', 0, 0),
(26735, 6, 'GOV31', 'golc200', '{\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3759.12524,\"y\":448.134277,\"z\":203.888016}', '{\"x\":0.777457058,\"y\":-0.0138346627,\"z\":180.413391}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.50126, 0, 0, 0, 0, 0, 0, 6, NULL, 555777, 580, NULL, NULL, NULL, 0, -1, '2021-09-12 12:19:40', 0, 0),
(26736, 6, 'GOV32', 'golc200', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3754.8809,\"y\":448.0807,\"z\":203.88138}', '{\"x\":0.75230503,\"y\":-0.03489144,\"z\":179.97931}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0286003, 0, 0, 0, 0, 0, 0, 6, NULL, 555777, 581, NULL, NULL, NULL, 0, -1, '2022-03-21 02:02:29', 0, 0),
(26737, 6, 'GOV33', 'golc200', '{\"HandlingTuning\":{},\"Components\":{\"Suspension\":3,\"NumberType\":1,\"WindowToning\":1,\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Horns\":1,\"Xenon\":0,\"PearlColor\":134},\"PrimColor\":{\"Red\":222,\"Green\":222,\"Blue\":222,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":3765.5771,\"y\":448.15573,\"z\":203.88167}', '{\"x\":0.75144154,\"y\":-0.026259778,\"z\":179.89856}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.94355, 0, 0, 0, 0, 0, 0, 6, NULL, 555777, 582, NULL, NULL, NULL, 0, -1, '2022-03-28 18:38:26', 0, 0),
(27960, 1, 'UNIQ', 'rrcullinan', '{\"HandlingTuning\":{},\"Components\":{\"Livery\":0,\"PearlColor\":134,\"Roof\":0,\"NumberType\":1},\"PrimColor\":{\"Red\":255,\"Green\":255,\"Blue\":255,\"Alpha\":255},\"SecColor\":{\"Red\":241,\"Green\":241,\"Blue\":241,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-180.96558,\"y\":-574.79675,\"z\":40.63974}', '{\"x\":-0.4336852,\"y\":-0.068444945,\"z\":-19.358547}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000642556, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 583, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(27961, 1, 'UNIQ', 'chirongo', '{\"HandlingTuning\":{},\"Components\":{\"PearlColor\":134,\"SideSkirt\":0,\"Exhaust\":0,\"Roof\":0,\"NumberType\":1},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":91,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":-148.1515,\"y\":-567.0875,\"z\":40.753178}', '{\"x\":-0.17856786,\"y\":-0.011953186,\"z\":-123.10124}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 584, NULL, NULL, NULL, 0, -1, '2022-01-21 10:56:17', 0, 0),
(27962, 1, 'UNIQ', 'go430', '{\"Components\":{\"PearlColor\":134,\"WheelsColor\":23,\"NumberType\":1},\"PrimColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":-140.33618,\"y\":-666.8008,\"z\":40.028133}', '{\"x\":0.80964303,\"y\":-0.029644433,\"z\":32.56374}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 3.5056, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 585, NULL, NULL, NULL, 0, -1, '2021-11-04 22:15:56', 0, 0),
(27965, 1, 'UNIQ', 'f12berlinetta', '{\"Components\":{\"PearlColor\":134,\"NumberType\":1},\"PrimColor\":{\"Red\":67,\"Green\":67,\"Blue\":67,\"Alpha\":255},\"SecColor\":{\"Red\":238,\"Green\":255,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":1,\"PaintTypeSec\":0}', '{\"x\":-154.12357,\"y\":-663.90796,\"z\":40.26293}', '{\"x\":-0.39825013,\"y\":0.0021953052,\"z\":-50.033}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 2.4593, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 586, NULL, NULL, NULL, 0, -1, '2021-11-04 22:24:07', 0, 0),
(30111, 1, 'UNIQ', 'urus', '{\"HandlingTuning\":{},\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3793.4138,\"y\":463.34845,\"z\":203.56432}', '{\"x\":0.0,\"y\":0.0,\"z\":-2.6867504}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 587, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(31298, 16, 'BIKER81', 'Vagrant', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1965.274,\"y\":3036.9392,\"z\":47.16848}', '{\"x\":-0.041297115,\"y\":-0.048098225,\"z\":-125.69613}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000839331, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 588, NULL, NULL, NULL, 0, -1, '2022-03-25 11:17:17', 0, 0),
(31299, 16, 'BIKER80', 'Vagrant', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1966.1589,\"y\":3039.014,\"z\":47.169376}', '{\"x\":-0.030687625,\"y\":0.03274719,\"z\":-126.479904}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000544377, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 589, NULL, NULL, NULL, 0, -1, '2022-03-25 11:18:11', 0, 0),
(31300, 16, 'BIKER2', 'Vagrant', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":3},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1969.1433,\"y\":3030.625,\"z\":47.168053}', '{\"x\":-0.0140322875,\"y\":0.025333112,\"z\":-33.24111}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.113709, 0, 0, 0, 0, 0, 0, 6, NULL, 0, 590, NULL, NULL, NULL, 0, -1, '2022-03-25 11:18:45', 0, 0),
(31576, 16, '214', 'innovation', '{\"HandlingTuning\":{},\"Components\":{\"Armor\":4,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":1},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1999.8746,\"y\":3032.6733,\"z\":46.98025}', '{\"x\":1.3984596,\"y\":-4.232046,\"z\":64.4295}', 2, 2, 2, NULL, 0, 0, 0, 0, NULL, 0, 0.00303296, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 591, NULL, NULL, NULL, 0, -1, '2022-03-30 16:07:58', 0, 0),
(31577, 16, '213', 'innovation', '{\"HandlingTuning\":{},\"Components\":{\"Armor\":4,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":1},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1996.1101,\"y\":3034.168,\"z\":47.029026}', '{\"x\":0.0,\"y\":0.0,\"z\":-144.7058}', 2, 2, 2, NULL, 0, 0, 0, 0, NULL, 0, 5.26739, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 592, NULL, NULL, NULL, 0, -1, '2022-04-01 02:02:40', 0, 0),
(31578, 16, '215', 'innovation', '{\"HandlingTuning\":{},\"Components\":{\"Armor\":4,\"Turbo\":3,\"Transmission\":2,\"Brakes\":2,\"Engine\":3,\"Xenon\":0},\"PrimColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":1,\"Green\":0,\"Blue\":0,\"Alpha\":1},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":1998.7307,\"y\":3031.2415,\"z\":46.951546}', '{\"x\":0.4271265,\"y\":-7.4786716,\"z\":60.133343}', 2, 2, 2, NULL, 0, 0, 0, 0, NULL, 0, 0.0026895, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 593, NULL, NULL, NULL, 0, -1, '2022-03-30 16:08:12', 0, 0),
(32163, 8, 'EMS09', 'goe63spolice', '{\"HandlingTuning\":{},\"Components\":{\"PearlColor\":35,\"WindowToning\":1},\"PrimColor\":{\"Red\":145,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"SecColor\":{\"Red\":255,\"Green\":0,\"Blue\":3,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3799.0686,\"y\":473.71564,\"z\":203.56406}', '{\"x\":0.0,\"y\":0.0,\"z\":-178.38426}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000749159, 0, 0, 0, 0, 0, 0, 9, NULL, 555781, 594, NULL, NULL, NULL, 0, -1, '2022-04-08 22:33:23', 0, 0),
(32165, 8, 'EMS25', 'goe63spolice', '{\"HandlingTuning\":{},\"Components\":{},\"PrimColor\":{\"Red\":150,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":3803.483,\"y\":474.15143,\"z\":203.54756}', '{\"x\":0.0,\"y\":0.0,\"z\":177.7262}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, NULL, 555781, 595, NULL, NULL, NULL, 0, -1, '2022-04-08 22:38:03', 0, 0),
(32173, 7, 'SWAT08', 'go_fib_jugular', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Armor\":4,\"WindowToning\":1,\"Xenon\":0,\"PearlColor\":119},\"PrimColor\":{\"Red\":38,\"Green\":38,\"Blue\":38,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":482.3389,\"y\":-37.301987,\"z\":88.79431}', '{\"x\":-0.018592937,\"y\":0.0034080704,\"z\":-122.45903}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0000220573, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 596, NULL, NULL, NULL, 0, -1, '2022-04-08 23:31:55', 0, 0),
(32174, 7, 'SWAT09', 'go_fib_jugular', '{\"HandlingTuning\":{},\"Components\":{\"PearlColor\":134},\"PrimColor\":{\"Red\":35,\"Green\":35,\"Blue\":35,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":498.66986,\"y\":-38.74997,\"z\":88.79348}', '{\"x\":-0.00035519231,\"y\":0.0112601835,\"z\":59.51747}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.000208841, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 597, NULL, NULL, NULL, 0, -1, '2022-04-08 23:32:16', 0, 0),
(32175, 7, 'SWAT10', 'go_fib_jugular', '{\"HandlingTuning\":{},\"Components\":{\"Engine\":3,\"Brakes\":2,\"Transmission\":2,\"Turbo\":0,\"Armor\":4,\"WindowToning\":1,\"PearlColor\":7},\"PrimColor\":{\"Red\":49,\"Green\":49,\"Blue\":49,\"Alpha\":255},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":255},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":500.4242,\"y\":-35.29428,\"z\":88.79296}', '{\"x\":-0.017291596,\"y\":-0.014060534,\"z\":61.593544}', 2, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0.0000220353, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 598, NULL, NULL, NULL, 0, -1, '2022-04-08 23:32:25', 0, 0),
(134744, 1, 'UNIQ', 'gobmwm8', '{\"HandlingTuning\":{},\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-128.68102,\"y\":-559.0928,\"z\":40.809135}', '{\"x\":0.11815833,\"y\":0.00031355507,\"z\":-139.82301}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 888, NULL, NULL, NULL, 0, -1, NULL, 0, 0),
(134745, 1, 'UNIQ', 'rs5', '{\"HandlingTuning\":{},\"Components\":{},\"PrimColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"SecColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"NeonColors\":[],\"TyreSmokeColor\":{\"Red\":0,\"Green\":0,\"Blue\":0,\"Alpha\":0},\"PaintTypePrim\":0,\"PaintTypeSec\":0}', '{\"x\":-132.968,\"y\":-596.68195,\"z\":37.926804}', '{\"x\":0.11320048,\"y\":-0.009696336,\"z\":-116.49049}', 6, 0, 1, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 889, NULL, NULL, NULL, 0, -1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicletrading`
--

CREATE TABLE `vehicletrading` (
  `id` int(11) NOT NULL,
  `position` text NOT NULL,
  `rotation` text NOT NULL,
  `currentveh` int(11) NOT NULL DEFAULT -1,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vehicletrading`
--

INSERT INTO `vehicletrading` (`id`, `position`, `rotation`, `currentveh`, `price`) VALUES
(2, '{\"x\":-1602.58118,\"y\":-886.287231,\"z\":8.910211}', '{\"x\":-0.6149283,\"y\":1.58622551,\"z\":320.0602}', -1, 0),
(5, '{\"x\":-1612.02808,\"y\":-878.447,\"z\":8.912217}', '{\"x\":-1.15837514,\"y\":0.9657734,\"z\":320.666626}', -1, 0),
(6, '{\"x\":-1616.55408,\"y\":-874.2658,\"z\":9.156483}', '{\"x\":-1.23326159,\"y\":1.09859252,\"z\":320.3408}', -1, 0),
(7, '{\"x\":-1621.419,\"y\":-870.4986,\"z\":8.908172}', '{\"x\":-1.13637793,\"y\":0.85341537,\"z\":320.786255}', -1, 0),
(8, '{\"x\":-1626.03088,\"y\":-866.2932,\"z\":9.157139}', '{\"x\":-1.3262372,\"y\":1.0487082,\"z\":318.5791}', -1, 0),
(9, '{\"x\":-1630.839,\"y\":-862.6223,\"z\":8.908988}', '{\"x\":-1.07818139,\"y\":0.9126405,\"z\":322.299133}', -1, 0),
(10, '{\"x\":-1615.15637,\"y\":-901.0251,\"z\":8.619454}', '{\"x\":-0.6754168,\"y\":0.569602668,\"z\":320.659668}', -1, 0),
(11, '{\"x\":-1620.3645,\"y\":-897.485962,\"z\":8.366139}', '{\"x\":-0.470304847,\"y\":0.432547361,\"z\":322.7063}', -1, 0),
(12, '{\"x\":-1628.13489,\"y\":-916.4029,\"z\":8.268604}', '{\"x\":-0.6100812,\"y\":0.506030738,\"z\":318.234222}', -1, 0),
(13, '{\"x\":-1632.82666,\"y\":-912.6343,\"z\":8.023347}', '{\"x\":-0.5334563,\"y\":0.3682697,\"z\":320.2796}', -1, 0),
(14, '{\"x\":-1624.83813,\"y\":-893.670959,\"z\":8.606892}', '{\"x\":-0.571395338,\"y\":0.615619659,\"z\":319.94928}', -1, 0),
(15, '{\"x\":-1637.18176,\"y\":-908.296,\"z\":8.27003}', '{\"x\":-0.6588888,\"y\":0.5703606,\"z\":319.8641}', -1, 0),
(16, '{\"x\":-1629.61841,\"y\":-889.777039,\"z\":8.363516}', '{\"x\":-0.51393497,\"y\":0.426676482,\"z\":317.899231}', -1, 0),
(17, '{\"x\":-1634.242,\"y\":-885.414734,\"z\":8.608764}', '{\"x\":-0.6743636,\"y\":0.529080033,\"z\":319.585022}', -1, 0),
(18, '{\"x\":-1642.39661,\"y\":-904.622437,\"z\":8.018303}', '{\"x\":-0.54409045,\"y\":0.358110875,\"z\":319.318268}', -1, 0),
(19, '{\"x\":-1646.78748,\"y\":-900.2322,\"z\":8.26532}', '{\"x\":-0.7029753,\"y\":0.547179461,\"z\":319.742828}', -1, 0),
(20, '{\"x\":-1638.94482,\"y\":-881.6095,\"z\":8.365423}', '{\"x\":-0.5164773,\"y\":0.438885927,\"z\":318.782532}', -1, 0),
(21, '{\"x\":-1643.5614,\"y\":-877.603333,\"z\":8.605306}', '{\"x\":-0.6646664,\"y\":0.5608647,\"z\":320.322754}', -1, 0),
(22, '{\"x\":-1651.62451,\"y\":-896.577454,\"z\":8.018826}', '{\"x\":-0.5289645,\"y\":0.4509709,\"z\":318.568}', -1, 0),
(23, '{\"x\":-1656.15,\"y\":-892.558533,\"z\":8.260019}', '{\"x\":-0.6791977,\"y\":0.563545763,\"z\":319.718445}', -1, 0),
(24, '{\"x\":-1607.17969,\"y\":-882.181641,\"z\":9.109123}', '{\"x\":-1.50378919,\"y\":0.485177577,\"z\":318.925964}', -1, 0),
(25, '{\"x\":-2352.97632,\"y\":294.137482,\"z\":169.027939}', '{\"x\":0.0690503642,\"y\":-0.150809154,\"z\":294.11145}', -1, 0),
(26, '{\"x\":-2350.32886,\"y\":288.478851,\"z\":169.027359}', '{\"x\":0.0349792354,\"y\":-0.129831851,\"z\":294.3219}', -1, 0),
(27, '{\"x\":-2347.6377,\"y\":282.800049,\"z\":169.027374}', '{\"x\":0.0510303043,\"y\":-0.154291973,\"z\":291.8885}', -1, 0),
(28, '{\"x\":-2345.18945,\"y\":277.193024,\"z\":169.027679}', '{\"x\":0.0707913041,\"y\":-0.187170982,\"z\":293.642822}', -1, 0),
(29, '{\"x\":-2336.46387,\"y\":270.895,\"z\":169.028}', '{\"x\":0.2976935,\"y\":-0.1677006,\"z\":24.2241516}', -1, 0),
(30, '{\"x\":-2340.98462,\"y\":296.118439,\"z\":169.028336}', '{\"x\":-0.08385012,\"y\":0.282567978,\"z\":114.656921}', -1, 0),
(31, '{\"x\":-2330.616,\"y\":273.7562,\"z\":169.027237}', '{\"x\":0.175479457,\"y\":0.0589541532,\"z\":23.92044}', -1, 0),
(32, '{\"x\":-2338.19873,\"y\":290.47464,\"z\":169.028351}', '{\"x\":-0.0302355476,\"y\":0.177379414,\"z\":111.637939}', -1, 0),
(33, '{\"x\":-2335.16577,\"y\":284.644379,\"z\":169.027481}', '{\"x\":-0.02498634,\"y\":0.07377673,\"z\":114.429871}', -1, 0),
(34, '{\"x\":-2324.86768,\"y\":276.327545,\"z\":169.026932}', '{\"x\":0.157514259,\"y\":0.0558024719,\"z\":23.4803772}', -1, 0),
(35, '{\"x\":-2319.49951,\"y\":279.6651,\"z\":169.027374}', '{\"x\":0.13427119,\"y\":0.05120086,\"z\":24.3758545}', -1, 0),
(36, '{\"x\":-2312.81372,\"y\":287.9478,\"z\":169.027252}', '{\"x\":-0.05828167,\"y\":0.175101653,\"z\":114.381714}', -1, 0),
(37, '{\"x\":-2328.27515,\"y\":291.2662,\"z\":169.0279}', '{\"x\":0.07507513,\"y\":-0.184352517,\"z\":294.701721}', -1, 0),
(38, '{\"x\":-2330.72,\"y\":297.259918,\"z\":169.028168}', '{\"x\":0.04857727,\"y\":-0.172131822,\"z\":294.333649}', -1, 0),
(39, '{\"x\":-2315.63428,\"y\":293.814484,\"z\":169.0268}', '{\"x\":-0.03248103,\"y\":0.1598013,\"z\":113.114014}', -1, 0),
(40, '{\"x\":-2318.36328,\"y\":299.4097,\"z\":169.027283}', '{\"x\":-0.0587252751,\"y\":0.174886391,\"z\":115.154053}', -1, 0),
(41, '{\"x\":-2320.97461,\"y\":304.949738,\"z\":169.027145}', '{\"x\":-0.04669508,\"y\":0.14020817,\"z\":114.0574}', -1, 0),
(42, '{\"x\":-2333.35,\"y\":303.1374,\"z\":169.0273}', '{\"x\":0.0343609974,\"y\":-0.123302966,\"z\":292.193}', -1, 0),
(44, '{\"x\":155.936081,\"y\":6593.601,\"z\":31.405344}', '{\"x\":-0.233695775,\"y\":0.0317431,\"z\":179.74408}', -1, 0),
(45, '{\"x\":146.076752,\"y\":6602.607,\"z\":31.4125175}', '{\"x\":-0.257372469,\"y\":0.133999452,\"z\":180.225433}', -1, 0),
(47, '{\"x\":155.84137,\"y\":6603.16,\"z\":31.4208927}', '{\"x\":-0.125985235,\"y\":0.00540083135,\"z\":0.4984436}', -1, 0),
(48, '{\"x\":131.500671,\"y\":6585.43262,\"z\":31.5210571}', '{\"x\":0.754098237,\"y\":-0.30953148,\"z\":268.910828}', -1, 0),
(49, '{\"x\":150.679428,\"y\":6607.519,\"z\":31.4324837}', '{\"x\":-0.160926014,\"y\":0.203759357,\"z\":359.2158}', -1, 0),
(50, '{\"x\":127.26226,\"y\":6590.22559,\"z\":31.50785}', '{\"x\":0.0115257045,\"y\":-0.411656946,\"z\":268.4144}', -1, 0),
(51, '{\"x\":123.099937,\"y\":6594.989,\"z\":31.5595226}', '{\"x\":0.331662,\"y\":-1.21443939,\"z\":269.6591}', -1, 0),
(52, '{\"x\":145.891769,\"y\":6612.32373,\"z\":31.3844357}', '{\"x\":0.5873088,\"y\":0.347075641,\"z\":358.455719}', -1, 0),
(53, '{\"x\":118.575249,\"y\":6599.828,\"z\":31.5728188}', '{\"x\":0.4560987,\"y\":0.0199546851,\"z\":269.2782}', -1, 0),
(54, '{\"x\":1446.607,\"y\":3732.49976,\"z\":33.002697}', '{\"x\":-0.257903278,\"y\":0.107605927,\"z\":204.248871}', -1, 0),
(55, '{\"x\":1453.03271,\"y\":3734.47,\"z\":33.03007}', '{\"x\":-0.173404858,\"y\":0.23481527,\"z\":206.312469}', -1, 0),
(56, '{\"x\":1458.72815,\"y\":3737.70068,\"z\":33.0742073}', '{\"x\":-0.342623323,\"y\":0.2991514,\"z\":207.6052}', -1, 0),
(57, '{\"x\":1464.257,\"y\":3741.04053,\"z\":33.1226768}', '{\"x\":-0.261946142,\"y\":0.413749248,\"z\":210.266129}', -1, 0),
(58, '{\"x\":1472.93347,\"y\":3745.13281,\"z\":33.23026}', '{\"x\":-0.4903683,\"y\":-1.36427867,\"z\":209.700653}', -1, 0),
(59, '{\"x\":1478.316,\"y\":3748.04688,\"z\":33.26989}', '{\"x\":-0.5212097,\"y\":0.462826371,\"z\":210.0798}', -1, 0),
(60, '{\"x\":1484.31677,\"y\":3751.55615,\"z\":33.3383064}', '{\"x\":-0.363212973,\"y\":0.406537384,\"z\":211.9657}', -1, 0),
(61, '{\"x\":1492.83191,\"y\":3756.381,\"z\":33.4371643}', '{\"x\":-0.495061517,\"y\":0.380286962,\"z\":213.745239}', -1, 0),
(62, '{\"x\":1497.85449,\"y\":3760.24,\"z\":33.48835}', '{\"x\":-0.4434023,\"y\":0.575031,\"z\":211.503769}', -1, 0),
(63, '{\"x\":1514.11633,\"y\":3762.251,\"z\":33.5786819}', '{\"x\":-0.313619852,\"y\":0.18704015,\"z\":196.7051}', -1, 0),
(64, '{\"x\":1521.299,\"y\":3764.2522,\"z\":33.6028748}', '{\"x\":-0.276406467,\"y\":0.0178748332,\"z\":207.747787}', -1, 0),
(65, '{\"x\":1542.91418,\"y\":3780.398,\"z\":33.611824}', '{\"x\":-0.27496922,\"y\":-0.09300157,\"z\":208.1764}', -1, 0),
(66, '{\"x\":1549.91492,\"y\":3783.79932,\"z\":33.6317558}', '{\"x\":-0.232386783,\"y\":0.0491822846,\"z\":209.007431}', -1, 0),
(67, '{\"x\":1557.558,\"y\":3788.05029,\"z\":33.6615829}', '{\"x\":-0.227698579,\"y\":0.3784414,\"z\":206.69783}', -1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_configurations`
--

CREATE TABLE `vehicle_configurations` (
  `model` int(10) UNSIGNED NOT NULL,
  `modelName` varchar(150) DEFAULT NULL,
  `displayName` varchar(150) DEFAULT NULL,
  `slots` int(11) DEFAULT NULL,
  `maxWeight` int(11) DEFAULT NULL,
  `maxFuel` int(11) DEFAULT NULL,
  `fuelConsumption` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `weapondamageconfigs`
--

CREATE TABLE `weapondamageconfigs` (
  `id` int(11) NOT NULL,
  `weaponHash` int(10) UNSIGNED NOT NULL,
  `baseDamage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `weapondamageconfigs`
--

INSERT INTO `weapondamageconfigs` (`id`, `weaponHash`, `baseDamage`) VALUES
(1, 453432689, 15),
(2, 1593441988, 15),
(3, 584646201, 25),
(4, 2578377531, 15),
(5, 3249783761, 80),
(6, 3218215474, 201),
(7, 3523564046, 10),
(8, 3415619887, 75),
(9, 2285322324, 20),
(10, 2548703416, 80),
(11, 3219281620, 15),
(12, 137902532, 25),
(13, 324215364, 12),
(14, 736523883, 15),
(15, 4024951519, 15),
(16, 3173288789, 12),
(17, 2024373456, 18),
(18, 3675956304, 12),
(19, 171789620, 15),
(20, 2634544996, 20),
(21, 2144741730, 20),
(22, 3686625920, 25),
(23, 1627465347, 18),
(24, 487013001, 3),
(25, 2017895192, 15),
(26, 3800352039, 4),
(27, 2828843422, 60),
(28, 2640438543, 15),
(29, 1432025498, 50),
(30, 4019527611, 10),
(31, 317205821, 25),
(32, 984333226, 50),
(33, 3220176749, 14),
(34, 2210333304, 14),
(35, 2937143193, 14),
(36, 3231910285, 16),
(37, 2132975508, 17),
(38, 2228681469, 22),
(39, 2526821735, 30),
(40, 961495388, 20),
(41, 4208062921, 21),
(42, 1649403952, 14),
(43, 100416529, 1000),
(44, 205991906, 80),
(45, 1785463520, 30),
(46, 177293209, 95),
(47, 3342088282, 20),
(48, 2578778090, 40),
(49, 1737195953, 15),
(50, 1317494643, 5),
(51, 2508868239, 120),
(52, 2227010557, 5),
(53, 1141786504, 100),
(54, 4192643659, 30),
(55, 2460120199, 15),
(56, 4191993645, 30),
(57, 3638508604, 33),
(58, 3713923289, 30),
(59, 2343591895, 5),
(60, 3756226112, 30),
(61, 2484171525, 5),
(62, 419712736, 5),
(63, 3441901897, 100),
(64, 2726580491, 100),
(65, 2982836145, 0),
(66, 1119849093, 0),
(67, 2138347493, 1),
(68, 1834241177, 0),
(69, 1672152130, 0),
(70, 1305664598, 15),
(71, 125959754, 15),
(72, 911657153, 1),
(73, 1198879012, 100),
(74, 126349499, 100);

-- --------------------------------------------------------

--
-- Table structure for table `weapondamagemodifiers`
--

CREATE TABLE `weapondamagemodifiers` (
  `id` int(11) NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `weapondamagemodifiers`
--

INSERT INTO `weapondamagemodifiers` (`id`, `value`) VALUES
(1, 1.3),
(2, 0.6),
(3, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id` varchar(155) NOT NULL,
  `lastserial` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id`, `lastserial`) VALUES
('10476', '0'),
('10926', '0'),
('11537', '0'),
('12070', '0'),
('12526', '0'),
('13518', '0'),
('14051', '0'),
('14445', '0'),
('14529', '0'),
('14530', '0'),
('14943', '0');

-- --------------------------------------------------------

--
-- Table structure for table `weedfarm`
--

CREATE TABLE `weedfarm` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL DEFAULT 0,
  `occupationDate` datetime(4) NOT NULL DEFAULT '2021-01-01 00:00:00.0000',
  `components` text NOT NULL,
  `onDrying` int(11) NOT NULL DEFAULT 0,
  `onPacking` int(11) NOT NULL DEFAULT 0,
  `onDelivery` int(11) NOT NULL DEFAULT 0,
  `irrigationSystem` int(11) NOT NULL DEFAULT 100,
  `lightSystem` int(11) NOT NULL DEFAULT 100,
  `dyringSystem` int(11) NOT NULL DEFAULT 100,
  `ventilationSystem` int(11) DEFAULT 100,
  `enterPosition` text DEFAULT NULL,
  `vehPosition` text DEFAULT NULL,
  `vehRotation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `weedfarm`
--

INSERT INTO `weedfarm` (`id`, `ownerId`, `occupationDate`, `components`, `onDrying`, `onPacking`, `onDelivery`, `irrigationSystem`, `lightSystem`, `dyringSystem`, `ventilationSystem`, `enterPosition`, `vehPosition`, `vehRotation`) VALUES
(1, 4, '2023-01-05 22:00:00.0000', '[0,1,3,2,4,5]', 68, 90, 1, 100, 100, 100, 100, '{\"x\":2224.576,\"y\":5604.627,\"z\":53.92282}', '{\"x\":2194.419,\"y\":5602.047,\"z\":53.63015}', '{\"x\":0.0,\"y\":0.0,\"z\":335.5751}'),
(2, 2, '2023-01-07 22:00:00.0000', '[0,1,2,3,4,5]', 0, 0, 1, 100, 100, 100, 100, '{\"x\":-264.0295,\"y\":2196.459,\"z\":129.3986}', '{\"x\":-271.9196,\"y\":2196.045,\"z\":129.855}', '{\"x\":0.0,\"y\":0.0,\"z\":229.3263}'),
(3, 3, '2023-01-04 22:00:00.0000', '[0,2,1,4,5,3]', 12, 88, 4, 100, 100, 100, 100, '{\"x\":281.657,\"y\":6789.407,\"z\":14.86391}', '{\"x\":280.4149,\"y\":6801.626,\"z\":15.69547}', '{\"x\":0.0,\"y\":0.0,\"z\":275.7165}');

-- --------------------------------------------------------

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL,
  `socialclub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `exp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`id`, `uuid`, `exp`) VALUES
(1, 4, '{\"farmer\":6}'),
(2, 2, '{\"farmer\":6}'),
(3, 3, '{\"farmer\":6}'),
(4, 1, '{}'),
(5, 10, '{\"farmer\":6}'),
(6, 11, '{\"farmer\":6}'),
(7, 12, '{\"farmer\":6}');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20210301132143_Initial', '3.1.9'),
('20210315214823_Phone_TaxiOrders', '3.1.9'),
('20210323125324_Phone-InviteCodes', '3.1.9'),
('20210404064213_Phone-RemoveUniqueOnTargetNumberIndex', '3.1.9'),
('20210415121853_Phone-AddBlockeByAtAccountsToChatsw', '3.1.9'),
('20210424154416_Phone-BankTransactions', '3.1.9'),
('20210504132448_Phone-News', '3.1.9'),
('20210504133212_Fractions-Access', '3.1.9'),
('20210726103159_InitialCreate', '3.1.9'),
('20210728120842_BankAddCreditPaymentHistory', '3.1.9'),
('20210804162552_BankAddNewFields', '3.1.9'),
('20210810153848_AddPhoneBankAccount', '3.1.9'),
('20210819165237_CreatePriceList', '3.1.9'),
('20210921111347_CreateExtPlayer', '3.1.9'),
('20210921111347_CreatePlayerGo', '3.1.9'),
('20211011085235_CreateAchievesAndContracts', '3.1.9'),
('20211020121033_ClearStartQuest', '3.1.9'),
('20211022174145_AddRespectAndBonusPoints', '3.1.9'),
('20211102152115_AddResourcesToPriceMenu', '3.1.9'),
('20211104120959_AddReferalSystem', '3.1.9'),
('20211112114950_AddBusiness-HandlingShop', '3.1.9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`uuid`,`achieveName`) USING BTREE;

--
-- Indexes for table `adminaccess`
--
ALTER TABLE `adminaccess`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `advertised`
--
ALTER TABLE `advertised`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `alcobars`
--
ALTER TABLE `alcobars`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `alcoclubs`
--
ALTER TABLE `alcoclubs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `armorpoints`
--
ALTER TABLE `armorpoints`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `arrestlog`
--
ALTER TABLE `arrestlog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `arrests`
--
ALTER TABLE `arrests`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bankpoints`
--
ALTER TABLE `bankpoints`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `banlog`
--
ALTER TABLE `banlog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`uuid`) USING BTREE;

--
-- Indexes for table `bizsettings`
--
ALTER TABLE `bizsettings`
  ADD PRIMARY KEY (`biztype`) USING BTREE,
  ADD UNIQUE KEY `biztype_UNIQUE` (`biztype`) USING BTREE;

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bonuscodes`
--
ALTER TABLE `bonuscodes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `bonusname_UNIQUE` (`bonusname`) USING BTREE;

--
-- Indexes for table `boxlog`
--
ALTER TABLE `boxlog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cartradecars`
--
ALTER TABLE `cartradecars`
  ADD PRIMARY KEY (`carid`) USING BTREE;

--
-- Indexes for table `casino`
--
ALTER TABLE `casino`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `casinobetlog`
--
ALTER TABLE `casinobetlog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `casinoendlog`
--
ALTER TABLE `casinoendlog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `casinowinloselog`
--
ALTER TABLE `casinowinloselog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `chatlogs`
--
ALTER TABLE `chatlogs`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `colshapes`
--
ALTER TABLE `colshapes`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `connlog`
--
ALTER TABLE `connlog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`ownerid`,`ownerType`,`contractName`) USING BTREE;

--
-- Indexes for table `customization`
--
ALTER TABLE `customization`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `deletelog`
--
ALTER TABLE `deletelog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `donateitems`
--
ALTER TABLE `donateitems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `donateroulettelog`
--
ALTER TABLE `donateroulettelog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `donate_errors`
--
ALTER TABLE `donate_errors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `donate_history`
--
ALTER TABLE `donate_history`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `donate_inventories`
--
ALTER TABLE `donate_inventories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `donate_items_log`
--
ALTER TABLE `donate_items_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `donate_roulettes`
--
ALTER TABLE `donate_roulettes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `dooraccess`
--
ALTER TABLE `dooraccess`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `efcore_bank_account`
--
ALTER TABLE `efcore_bank_account`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `efcore_bank_credit`
--
ALTER TABLE `efcore_bank_credit`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `efcore_bank_deposit`
--
ALTER TABLE `efcore_bank_deposit`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `efcore_bank_transact`
--
ALTER TABLE `efcore_bank_transact`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `equips`
--
ALTER TABLE `equips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `errorlogs`
--
ALTER TABLE `errorlogs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `eventslog`
--
ALTER TABLE `eventslog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `e_candidates`
--
ALTER TABLE `e_candidates`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `e_points`
--
ALTER TABLE `e_points`
  ADD PRIMARY KEY (`Election`) USING BTREE;

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`f_id`) USING BTREE;

--
-- Indexes for table `familybattles`
--
ALTER TABLE `familybattles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `familycompanies`
--
ALTER TABLE `familycompanies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `familymp`
--
ALTER TABLE `familymp`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `farms`
--
ALTER TABLE `farms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `farms_plants`
--
ALTER TABLE `farms_plants`
  ADD PRIMARY KEY (`id`,`farmId`) USING BTREE;

--
-- Indexes for table `fisher_data`
--
ALTER TABLE `fisher_data`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fishing_spots`
--
ALTER TABLE `fishing_spots`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fractionaccess`
--
ALTER TABLE `fractionaccess`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `fractionmoney`
--
ALTER TABLE `fractionmoney`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fractionranks`
--
ALTER TABLE `fractionranks`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `fractions`
--
ALTER TABLE `fractions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fractionstock`
--
ALTER TABLE `fractionstock`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fractionvehicles`
--
ALTER TABLE `fractionvehicles`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `fraction_access`
--
ALTER TABLE `fraction_access`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`uuid`) USING BTREE;

--
-- Indexes for table `gangspoints`
--
ALTER TABLE `gangspoints`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `idlog`
--
ALTER TABLE `idlog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `itemslog`
--
ALTER TABLE `itemslog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `killog`
--
ALTER TABLE `killog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`SID`) USING BTREE;

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `moneylog`
--
ALTER TABLE `moneylog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `namelog`
--
ALTER TABLE `namelog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `newcustomization`
--
ALTER TABLE `newcustomization`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `newmoneylog`
--
ALTER TABLE `newmoneylog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `oldhouses`
--
ALTER TABLE `oldhouses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `othervehicles`
--
ALTER TABLE `othervehicles`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `parliament_sitting`
--
ALTER TABLE `parliament_sitting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `philanthropists`
--
ALTER TABLE `philanthropists`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`CharacterUuid`) USING BTREE,
  ADD KEY `IX_Phones_AccountId` (`AccountId`) USING BTREE,
  ADD KEY `IX_Phones_SimCardId` (`SimCardId`) USING BTREE;

--
-- Indexes for table `phones_bank_transact`
--
ALTER TABLE `phones_bank_transact`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `phones_blocks`
--
ALTER TABLE `phones_blocks`
  ADD PRIMARY KEY (`SimCardId`,`TargetNumber`) USING BTREE;

--
-- Indexes for table `phones_callhistory`
--
ALTER TABLE `phones_callhistory`
  ADD PRIMARY KEY (`Id`) USING BTREE,
  ADD KEY `IX_phones_callhistory_FromSimCardId` (`FromSimCardId`) USING BTREE,
  ADD KEY `IX_phones_callhistory_TargetNumber` (`TargetNumber`) USING BTREE;

--
-- Indexes for table `phones_contacts`
--
ALTER TABLE `phones_contacts`
  ADD PRIMARY KEY (`Id`) USING BTREE,
  ADD KEY `IX_phones_contacts_HolderSimCardId` (`HolderSimCardId`) USING BTREE,
  ADD KEY `IX_phones_contacts_TargetNumber` (`TargetNumber`) USING BTREE;

--
-- Indexes for table `phones_msg_accounts`
--
ALTER TABLE `phones_msg_accounts`
  ADD PRIMARY KEY (`Id`) USING BTREE,
  ADD KEY `IX_phones_msg_accounts_SimCardId` (`SimCardId`) USING BTREE;

--
-- Indexes for table `phones_msg_accountstochat`
--
ALTER TABLE `phones_msg_accountstochat`
  ADD PRIMARY KEY (`AccountId`,`ChatId`) USING BTREE,
  ADD KEY `IX_phones_msg_accountsToChat_ChatId` (`ChatId`) USING BTREE,
  ADD KEY `IX_phones_msg_accountsToChat_LastReadMessageId` (`LastReadMessageId`) USING BTREE,
  ADD KEY `IX_phones_msg_accountsToChat_BlockedById` (`BlockedById`) USING BTREE;

--
-- Indexes for table `phones_msg_chats`
--
ALTER TABLE `phones_msg_chats`
  ADD PRIMARY KEY (`Id`) USING BTREE,
  ADD UNIQUE KEY `IX_phones_msg_chats_InviteCode` (`InviteCode`) USING BTREE;

--
-- Indexes for table `phones_msg_contacts`
--
ALTER TABLE `phones_msg_contacts`
  ADD PRIMARY KEY (`ContactId`) USING BTREE,
  ADD KEY `IX_phones_msg_contacts_HolderAccountId` (`HolderAccountId`) USING BTREE,
  ADD KEY `IX_phones_msg_contacts_TargetAccountId` (`TargetAccountId`) USING BTREE;

--
-- Indexes for table `phones_msg_messages`
--
ALTER TABLE `phones_msg_messages`
  ADD PRIMARY KEY (`Id`) USING BTREE,
  ADD KEY `IX_phones_msg_messages_ChatId` (`ChatId`) USING BTREE,
  ADD KEY `IX_phones_msg_messages_SenderId` (`SenderId`) USING BTREE;

--
-- Indexes for table `phones_news_advert`
--
ALTER TABLE `phones_news_advert`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `phones_simcards`
--
ALTER TABLE `phones_simcards`
  ADD PRIMARY KEY (`Id`) USING BTREE,
  ADD UNIQUE KEY `IX_phones_simcards_Number` (`Number`) USING BTREE;

--
-- Indexes for table `phones_taxi_orders`
--
ALTER TABLE `phones_taxi_orders`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `prime`
--
ALTER TABLE `prime`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `prime_errors`
--
ALTER TABLE `prime_errors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `prime_history`
--
ALTER TABLE `prime_history`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `propsprices`
--
ALTER TABLE `propsprices`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `rentcarpoint`
--
ALTER TABLE `rentcarpoint`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reportmessages`
--
ALTER TABLE `reportmessages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `resetcharacters`
--
ALTER TABLE `resetcharacters`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roulette_statics`
--
ALTER TABLE `roulette_statics`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `safes`
--
ALTER TABLE `safes`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `stocklog`
--
ALTER TABLE `stocklog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `teleports`
--
ALTER TABLE `teleports`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ticketlog`
--
ALTER TABLE `ticketlog`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`idkey`) USING BTREE;

--
-- Indexes for table `vehicletrading`
--
ALTER TABLE `vehicletrading`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `vehicle_configurations`
--
ALTER TABLE `vehicle_configurations`
  ADD PRIMARY KEY (`model`) USING BTREE;

--
-- Indexes for table `weapondamageconfigs`
--
ALTER TABLE `weapondamageconfigs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `weapondamagemodifiers`
--
ALTER TABLE `weapondamagemodifiers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `weedfarm`
--
ALTER TABLE `weedfarm`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminaccess`
--
ALTER TABLE `adminaccess`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertised`
--
ALTER TABLE `advertised`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alcobars`
--
ALTER TABLE `alcobars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `armorpoints`
--
ALTER TABLE `armorpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `arrestlog`
--
ALTER TABLE `arrestlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arrests`
--
ALTER TABLE `arrests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bankpoints`
--
ALTER TABLE `bankpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banlog`
--
ALTER TABLE `banlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bonuscodes`
--
ALTER TABLE `bonuscodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `boxlog`
--
ALTER TABLE `boxlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cartradecars`
--
ALTER TABLE `cartradecars`
  MODIFY `carid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casinobetlog`
--
ALTER TABLE `casinobetlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casinoendlog`
--
ALTER TABLE `casinoendlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casinowinloselog`
--
ALTER TABLE `casinowinloselog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chatlogs`
--
ALTER TABLE `chatlogs`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `connlog`
--
ALTER TABLE `connlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customization`
--
ALTER TABLE `customization`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14668;

--
-- AUTO_INCREMENT for table `deletelog`
--
ALTER TABLE `deletelog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13559;

--
-- AUTO_INCREMENT for table `donateitems`
--
ALTER TABLE `donateitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donateroulettelog`
--
ALTER TABLE `donateroulettelog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45548;

--
-- AUTO_INCREMENT for table `donate_errors`
--
ALTER TABLE `donate_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `donate_history`
--
ALTER TABLE `donate_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104007;

--
-- AUTO_INCREMENT for table `donate_inventories`
--
ALTER TABLE `donate_inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donate_items_log`
--
ALTER TABLE `donate_items_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donate_roulettes`
--
ALTER TABLE `donate_roulettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dooraccess`
--
ALTER TABLE `dooraccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `efcore_bank_account`
--
ALTER TABLE `efcore_bank_account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `efcore_bank_credit`
--
ALTER TABLE `efcore_bank_credit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `efcore_bank_deposit`
--
ALTER TABLE `efcore_bank_deposit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `efcore_bank_transact`
--
ALTER TABLE `efcore_bank_transact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equips`
--
ALTER TABLE `equips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `errorlogs`
--
ALTER TABLE `errorlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventslog`
--
ALTER TABLE `eventslog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_candidates`
--
ALTER TABLE `e_candidates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `e_points`
--
ALTER TABLE `e_points`
  MODIFY `Election` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `familybattles`
--
ALTER TABLE `familybattles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `familycompanies`
--
ALTER TABLE `familycompanies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `familymp`
--
ALTER TABLE `familymp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fisher_data`
--
ALTER TABLE `fisher_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fishing_spots`
--
ALTER TABLE `fishing_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `fractionaccess`
--
ALTER TABLE `fractionaccess`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fractionmoney`
--
ALTER TABLE `fractionmoney`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175030;

--
-- AUTO_INCREMENT for table `fractionranks`
--
ALTER TABLE `fractionranks`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `fractionstock`
--
ALTER TABLE `fractionstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT for table `fractionvehicles`
--
ALTER TABLE `fractionvehicles`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1156;

--
-- AUTO_INCREMENT for table `fraction_access`
--
ALTER TABLE `fraction_access`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `idlog`
--
ALTER TABLE `idlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itemslog`
--
ALTER TABLE `itemslog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `killog`
--
ALTER TABLE `killog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moneylog`
--
ALTER TABLE `moneylog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7376991;

--
-- AUTO_INCREMENT for table `namelog`
--
ALTER TABLE `namelog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newcustomization`
--
ALTER TABLE `newcustomization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newmoneylog`
--
ALTER TABLE `newmoneylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `othervehicles`
--
ALTER TABLE `othervehicles`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `parliament_sitting`
--
ALTER TABLE `parliament_sitting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `philanthropists`
--
ALTER TABLE `philanthropists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `CharacterUuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones_bank_transact`
--
ALTER TABLE `phones_bank_transact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340254;

--
-- AUTO_INCREMENT for table `phones_callhistory`
--
ALTER TABLE `phones_callhistory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones_contacts`
--
ALTER TABLE `phones_contacts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones_msg_accounts`
--
ALTER TABLE `phones_msg_accounts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10151;

--
-- AUTO_INCREMENT for table `phones_msg_chats`
--
ALTER TABLE `phones_msg_chats`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `phones_msg_contacts`
--
ALTER TABLE `phones_msg_contacts`
  MODIFY `ContactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `phones_msg_messages`
--
ALTER TABLE `phones_msg_messages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;

--
-- AUTO_INCREMENT for table `phones_news_advert`
--
ALTER TABLE `phones_news_advert`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones_simcards`
--
ALTER TABLE `phones_simcards`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18297;

--
-- AUTO_INCREMENT for table `phones_taxi_orders`
--
ALTER TABLE `phones_taxi_orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prime`
--
ALTER TABLE `prime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `prime_errors`
--
ALTER TABLE `prime_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prime_history`
--
ALTER TABLE `prime_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propsprices`
--
ALTER TABLE `propsprices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rentcarpoint`
--
ALTER TABLE `rentcarpoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reportmessages`
--
ALTER TABLE `reportmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resetcharacters`
--
ALTER TABLE `resetcharacters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roulette_statics`
--
ALTER TABLE `roulette_statics`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `safes`
--
ALTER TABLE `safes`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stocklog`
--
ALTER TABLE `stocklog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teleports`
--
ALTER TABLE `teleports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ticketlog`
--
ALTER TABLE `ticketlog`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `idkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134768;

--
-- AUTO_INCREMENT for table `vehicletrading`
--
ALTER TABLE `vehicletrading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `weapondamageconfigs`
--
ALTER TABLE `weapondamageconfigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `weedfarm`
--
ALTER TABLE `weedfarm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `FK_Phones_phones_msg_accounts_AccountId` FOREIGN KEY (`AccountId`) REFERENCES `phones_msg_accounts` (`Id`),
  ADD CONSTRAINT `FK_Phones_phones_simcards_SimCardId` FOREIGN KEY (`SimCardId`) REFERENCES `phones_simcards` (`Id`);

--
-- Constraints for table `phones_callhistory`
--
ALTER TABLE `phones_callhistory`
  ADD CONSTRAINT `FK_phones_callhistory_phones_simcards_FromSimCardId` FOREIGN KEY (`FromSimCardId`) REFERENCES `phones_simcards` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `phones_contacts`
--
ALTER TABLE `phones_contacts`
  ADD CONSTRAINT `FK_phones_contacts_phones_simcards_HolderSimCardId` FOREIGN KEY (`HolderSimCardId`) REFERENCES `phones_simcards` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `phones_msg_accounts`
--
ALTER TABLE `phones_msg_accounts`
  ADD CONSTRAINT `FK_phones_msg_accounts_phones_simcards_SimCardId` FOREIGN KEY (`SimCardId`) REFERENCES `phones_simcards` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `phones_msg_accountstochat`
--
ALTER TABLE `phones_msg_accountstochat`
  ADD CONSTRAINT `FK_phones_msg_accountsToChat_phones_msg_accounts_AccountId` FOREIGN KEY (`AccountId`) REFERENCES `phones_msg_accounts` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_phones_msg_accountsToChat_phones_msg_accounts_BlockedById` FOREIGN KEY (`BlockedById`) REFERENCES `phones_msg_accounts` (`Id`),
  ADD CONSTRAINT `FK_phones_msg_accountsToChat_phones_msg_chats_ChatId` FOREIGN KEY (`ChatId`) REFERENCES `phones_msg_chats` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_phones_msg_accountsToChat_phones_msg_messages_LastReadMessag~` FOREIGN KEY (`LastReadMessageId`) REFERENCES `phones_msg_messages` (`Id`);

--
-- Constraints for table `phones_msg_contacts`
--
ALTER TABLE `phones_msg_contacts`
  ADD CONSTRAINT `FK_phones_msg_contacts_phones_msg_accounts_HolderAccountId` FOREIGN KEY (`HolderAccountId`) REFERENCES `phones_msg_accounts` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_phones_msg_contacts_phones_msg_accounts_TargetAccountId` FOREIGN KEY (`TargetAccountId`) REFERENCES `phones_msg_accounts` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `phones_msg_messages`
--
ALTER TABLE `phones_msg_messages`
  ADD CONSTRAINT `FK_phones_msg_messages_phones_msg_accounts_SenderId` FOREIGN KEY (`SenderId`) REFERENCES `phones_msg_accounts` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_phones_msg_messages_phones_msg_chats_ChatId` FOREIGN KEY (`ChatId`) REFERENCES `phones_msg_chats` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
