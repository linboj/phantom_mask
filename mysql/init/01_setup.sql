CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
    `ProductVersion` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY (`MigrationId`)
) CHARACTER SET=utf8mb4;

START TRANSACTION;
ALTER DATABASE CHARACTER SET utf8mb4;

CREATE TABLE `MaskTypes` (
    `Id` char(36) COLLATE ascii_general_ci NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Color` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Quantity` int NOT NULL,
    CONSTRAINT `PK_MaskTypes` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Pharmacies` (
    `Id` char(36) COLLATE ascii_general_ci NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CashBalance` decimal(18,2) NOT NULL,
    CONSTRAINT `PK_Pharmacies` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Users` (
    `Id` char(36) COLLATE ascii_general_ci NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CashBalance` decimal(18,2) NOT NULL,
    CONSTRAINT `PK_Users` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Masks` (
    `Id` char(36) COLLATE ascii_general_ci NOT NULL,
    `Price` decimal(18,2) NOT NULL,
    `MaskTypeId` char(36) COLLATE ascii_general_ci NOT NULL,
    `PharmacyId` char(36) COLLATE ascii_general_ci NOT NULL,
    CONSTRAINT `PK_Masks` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Masks_MaskTypes_MaskTypeId` FOREIGN KEY (`MaskTypeId`) REFERENCES `MaskTypes` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_Masks_Pharmacies_PharmacyId` FOREIGN KEY (`PharmacyId`) REFERENCES `Pharmacies` (`Id`) ON DELETE CASCADE
) CHARACTER SET=utf8mb4;

CREATE TABLE `OpeningHours` (
    `Id` char(36) COLLATE ascii_general_ci NOT NULL,
    `Week` smallint unsigned NOT NULL,
    `OpenTime` time NOT NULL,
    `CloseTime` time NOT NULL,
    `PharmacyId` char(36) COLLATE ascii_general_ci NOT NULL,
    CONSTRAINT `PK_OpeningHours` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_OpeningHours_Pharmacies_PharmacyId` FOREIGN KEY (`PharmacyId`) REFERENCES `Pharmacies` (`Id`) ON DELETE CASCADE
) CHARACTER SET=utf8mb4;

CREATE TABLE `Transactions` (
    `Id` char(36) COLLATE ascii_general_ci NOT NULL,
    `TransactionAmount` decimal(18,2) NOT NULL,
    `TransactionDate` datetime(6) NOT NULL,
    `UserId` char(36) COLLATE ascii_general_ci NOT NULL,
    `PharmacyId` char(36) COLLATE ascii_general_ci NOT NULL,
    `MaskId` char(36) COLLATE ascii_general_ci NOT NULL,
    CONSTRAINT `PK_Transactions` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Transactions_Masks_MaskId` FOREIGN KEY (`MaskId`) REFERENCES `Masks` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_Transactions_Pharmacies_PharmacyId` FOREIGN KEY (`PharmacyId`) REFERENCES `Pharmacies` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_Transactions_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `Users` (`Id`) ON DELETE CASCADE
) CHARACTER SET=utf8mb4;

CREATE INDEX `IX_Masks_MaskTypeId` ON `Masks` (`MaskTypeId`);

CREATE INDEX `IX_Masks_PharmacyId` ON `Masks` (`PharmacyId`);

CREATE INDEX `IX_OpeningHours_PharmacyId` ON `OpeningHours` (`PharmacyId`);

CREATE INDEX `IX_Transactions_MaskId` ON `Transactions` (`MaskId`);

CREATE INDEX `IX_Transactions_PharmacyId` ON `Transactions` (`PharmacyId`);

CREATE INDEX `IX_Transactions_UserId` ON `Transactions` (`UserId`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20250306115445_initialCreate', '9.0.2');

ALTER TABLE `Users` ADD `CreatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Users` ADD `UpdatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Transactions` ADD `CreatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Transactions` ADD `UpdatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Pharmacies` ADD `CreatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Pharmacies` ADD `UpdatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `OpeningHours` ADD `CreatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `OpeningHours` ADD `UpdatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `MaskTypes` ADD `CreatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `MaskTypes` ADD `UpdatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Masks` ADD `CreatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Masks` ADD `UpdatedAt` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20250308022038_AddBaseEntity', '9.0.2');

COMMIT;

