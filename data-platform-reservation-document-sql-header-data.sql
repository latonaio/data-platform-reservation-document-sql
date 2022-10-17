CREATE TABLE `data_platform_reservation_document_header_data`
(
    `BusinessPartner`               int(10) NOT NULL,      --新規追加
    `Reservation`                   int(10) NOT NULL,
    `OrderID`                       int(10) DEFAULT NULL,
    `OrderItem`                     int(10) DEFAULT NULL,  --新規追加
    `GoodsMovementType`             varchar(3) DEFAULT NULL,
    `GoodsRecipientName`            varchar(100) DEFAULT NULL,
    `ReservationDate`               varchar(80) DEFAULT NULL,
    `Customer`                      int(10) DEFAULT NULL,
    `Supplier`                      int(10) DEFAULT NULL,
    `Project`                       varchar(24) DEFAULT NULL,
    `OrderScheduleLine`             varchar(4) DEFAULT NULL,  --名称変更
    `IssuingPlant`                  varchar(4) DEFAULT NULL,  --新規追加
    `IssuingPlantStorageLocation`   tinyint(1) DEFAULT NULL,  --新規追加
    `ReceivingPlant`                varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlantStorageLocation` varchar(4) DEFAULT NULL,  --新規追加
    PRIMARY KEY (`BusinessPartner`, `Reservation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
