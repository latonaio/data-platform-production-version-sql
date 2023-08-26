CREATE TABLE `data_platform_production_version_header_data`
(
      `ProductionVersion`                    int(16) NOT NULL,
      `Product`                              varchar(40) NOT NULL,
      `OwnerBusinessPartner`                 int(12) NOT NULL,
      `OwnerPlant`                           varchar(4) NOT NULL,
      `BillOfMaterial`                       int(16) NOT NULL,
      `Operations`                           int(16) NOT NULL,
      `ProductionVersionText`                varchar(200) DEFAULT NULL,
      `ProductionVersionStatus`              varchar(2) DEFAULT NULL,
      `ValidityStartDate`                    date DEFAULT NULL,
      `ValidityEndDate`                      date DEFAULT NULL,
      `CreationDate`                         date DEFAULT NULL,
      `LastChangeDate`                       date DEFAULT NULL,
      `IsLocked`                             tinyint(1) DEFAULT NULL,
      `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`ProductionVersion`),

    CONSTRAINT `DataPlatformProductionVersionHeaderData_fk` FOREIGN KEY (`Product`, `OwnerBusinessPartner`, `OwnerPlant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductionVersionHeaderDataBillOfMaterial_fk` FOREIGN KEY (`BillOfMaterial`) REFERENCES `data_platform_bill_of_material_header_data` (`BillOfMaterial`),
    CONSTRAINT `DataPlatformProductionVersionHeaderDataOperations_fk` FOREIGN KEY (`Operations`) REFERENCES `data_platform_operations_header_data` (`Operations`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
