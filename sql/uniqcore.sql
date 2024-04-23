-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 09:41 PM
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
-- Database: `uniqcore`
--

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
('20210810153848_AddPhoneBankAccount', '3.1.9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fraction_access`
--
ALTER TABLE `fraction_access`
  ADD PRIMARY KEY (`Id`) USING BTREE;

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
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fraction_access`
--
ALTER TABLE `fraction_access`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `CharacterUuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=981;

--
-- AUTO_INCREMENT for table `phones_bank_transact`
--
ALTER TABLE `phones_bank_transact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340254;

--
-- AUTO_INCREMENT for table `phones_callhistory`
--
ALTER TABLE `phones_callhistory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `phones_contacts`
--
ALTER TABLE `phones_contacts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `phones_msg_accounts`
--
ALTER TABLE `phones_msg_accounts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11131;

--
-- AUTO_INCREMENT for table `phones_msg_chats`
--
ALTER TABLE `phones_msg_chats`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `phones_msg_contacts`
--
ALTER TABLE `phones_msg_contacts`
  MODIFY `ContactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `phones_msg_messages`
--
ALTER TABLE `phones_msg_messages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1211;

--
-- AUTO_INCREMENT for table `phones_news_advert`
--
ALTER TABLE `phones_news_advert`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phones_simcards`
--
ALTER TABLE `phones_simcards`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19277;

--
-- AUTO_INCREMENT for table `phones_taxi_orders`
--
ALTER TABLE `phones_taxi_orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

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
