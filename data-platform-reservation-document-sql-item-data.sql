CREATE TABLE `data_platform_reservation_document_item_data`
(
    `ReservationItem`       varchar(4) NOT NULL,
    `RecordType`            varchar(1) NOT NULL,
    `Product`               varchar(40) DEFAULT NULL,
    `PDTCompRequirementDate` varchar(80) DEFAULT NULL,  --名称変更
    `IssuingPlant`          varchar(4) DEFAULT NULL,  --新規追加
    `IssuingPlantStorageLocation` varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlant`        varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlantStorageLocation` varchar(4) DEFAULT NULL,  --新規追加
    `Batch`                 varchar(10) DEFAULT NULL,
    `BaseUnit`              varchar(3) DEFAULT NULL,
    `GLAccount`             varchar(10) DEFAULT NULL,
    `GoodsMovementType`     varchar(3) DEFAULT NULL,
    `EntryUnit`             varchar(3) DEFAULT NULL,
    `BusinessPartnerCurrency` varchar( ) DEFAULT NULL,  --新規追加
    `ResvnItmRequiredQtyInBaseUnit` varchar(13) DEFAULT NULL,
    `ReservationItmIsMarkedForDeltn` tinyint(1) DEFAULT NULL,
    `ResvnItmRequiredQtyInEntryUnit` varchar(13) DEFAULT NULL,
    `ResvnItmWithdrawnQtyInBaseUnit` varchar(13) DEFAULT NULL,
    `ResvnItmWithdrawnAmtInBPCrcy` varchar(11) DEFAULT NULL,  --名称変更
    `GoodsRecipientName`    varchar(12) DEFAULT NULL,
    `ReservationItemText`   varchar(50) DEFAULT NULL,
    `ReferenceDocument`     varchar( ) DEFAULT NULL,  --新規追加
    `ReferenceDocumentItem`     varchar( ) DEFAULT NULL,  --新規追加
    PRIMARY KEY (`ReservationItem`, `RecordType`),
    CONSTRAINT `SAPReservationDocumentItem_fk` FOREIGN KEY (`Reservation`) REFERENCES `sap_reservation_document_header_data` (`Reservation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
