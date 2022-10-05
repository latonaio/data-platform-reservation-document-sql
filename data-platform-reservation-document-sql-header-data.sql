CREATE TABLE `data_platform_reservation_document_header_data`
(
    `BusinessPartner`               varchar(10) NOT NULL,      --新規追加
    `Reservation`                   varchar(10) NOT NULL,
    `OrderID`                       varchar(12) DEFAULT NULL,
    `OrderItem`                     varchar(10) DEFAULT NULL,  --新規追加
    `GoodsMovementType`             varchar(3) DEFAULT NULL,
    `GoodsRecipientName`            varchar(12) DEFAULT NULL,
    `ReservationDate`               varchar(80) DEFAULT NULL,
    `Customer`                      varchar(10) DEFAULT NULL,
    `Supplier`                      varchar(10) DEFAULT NULL,
    `Project`                       varchar(24) DEFAULT NULL,
    `OrderScheduleLine`             varchar(4) DEFAULT NULL,  --名称変更
    `IssuingPlant`                  varchar(4) DEFAULT NULL,  --新規追加
    `IssuingPlantStorageLocation`   varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlant`                varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlantStorageLocation` varchar(4) DEFAULT NULL,  --新規追加
    PRIMARY KEY (`BusinessPartner`, `Reservation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
