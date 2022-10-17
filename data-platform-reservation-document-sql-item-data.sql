1CREATE TABLE `data_platform_reservation_document_item_data`
(
    `BusinessPartner`                   int(10) NOT NULL,
    `Reservation`                       int(10) NOT NULL,
    `ReservationItem`                   int(4) NOT NULL,
    `RecordType`                        varchar(2) NOT NULL,
    `Product`                           varchar(40) DEFAULT NULL,
    `PDTCompRequirementDate`            varchar(80) DEFAULT NULL,  --名称変更
    `IssuingPlant`                      varchar(4) DEFAULT NULL,  --新規追加
    `IssuingPlantStorageLocation`       tinyint(1) DEFAULT NULL,  --新規追加
    `ReceivingPlant`                    varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlantStorageLocation`     varchar(4) DEFAULT NULL,  --新規追加
    `Batch`                             varchar(10) DEFAULT NULL,
    `BaseUnit`                          varchar(3) DEFAULT NULL,
    `GLAccount`                         varchar(10) DEFAULT NULL,
    `GoodsMovementType`                 varchar(3) DEFAULT NULL,
    `EntryUnit`                         varchar(3) DEFAULT NULL,
    `BusinessPartnerCurrency`           varchar(5) DEFAULT NULL,  --新規追加
    `ResvnItmRequiredQtyInBaseUnit`     varchar(13) DEFAULT NULL,
    `ReservationItmIsMarkedForDeltn`    tinyint(1) DEFAULT NULL,
    `ResvnItmRequiredQtyInEntryUnit`    varchar(13) DEFAULT NULL,
    `ResvnItmWithdrawnQtyInBaseUnit`    varchar(13) DEFAULT NULL,
    `ResvnItmWithdrawnAmtInBPCrcy`      varchar(11) DEFAULT NULL,  --名称変更
    `GoodsRecipientName`                varchar(100) DEFAULT NULL,
    `ReservationItemText`               varchar(100) DEFAULT NULL,
    `ReferenceDocument`                 int(10) DEFAULT NULL,  --新規追加
    `ReferenceDocumentItem`             int(6) DEFAULT NULL,   --新規追加
    PRIMARY KEY (`BusinessPartner`, `Reservation`, `ReservationItem`, `RecordType`),
    CONSTRAINT `DataPlatformReservationDocumentItem_fk` FOREIGN KEY (`BusinessPartner`, `Reservation`) REFERENCES `data_platform_reservation_document_header_data` (`BusinessPartner`, `Reservation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
