CREATE TABLE `data_platform_reservation_document_header_data`
(
    `BusinessPartner`               int(12) NOT NULL,
    `Reservation`                   int(16) NOT NULL,
    `OrderID`                       int(16) DEFAULT NULL,
    `OrderItem`                     int(6) DEFAULT NULL,
    `GoodsMovementType`             varchar(3) DEFAULT NULL,
    `GoodsRecipientName`            varchar(100) DEFAULT NULL,
    `ReservationDate`               varchar(80) DEFAULT NULL,
    `Customer`                      int(10) DEFAULT NULL,
    `Supplier`                      int(10) DEFAULT NULL,
    `Project`                       varchar(24) DEFAULT NULL,
    `OrderScheduleLine`             varchar(4) DEFAULT NULL,
    `IssuingPlant`                  varchar(4) DEFAULT NULL,
    `IssuingPlantStorageLocation`   tinyint(1) DEFAULT NULL,
    `ReceivingPlant`                varchar(4) DEFAULT NULL,
    `ReceivingPlantStorageLocation` varchar(4) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Reservation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
