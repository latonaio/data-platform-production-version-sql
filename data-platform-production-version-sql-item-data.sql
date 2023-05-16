CREATE TABLE `data_platform_production_version_item_data`
(
      `ProductionVersion`                    int(16) NOT NULL,
      `ProductionVersionItem`                int(6) NOT NULL,
      `Product`                              varchar(40) NOT NULL,
      `BusinessPartner`                      int(12) NOT NULL,
      `Plant`                                varchar(4) NOT NULL,
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

    PRIMARY KEY (`ProductionVersion`, `ProductionVersionItem`),
	
    CONSTRAINT `DataPlatformProductionVersionItemData_fk` FOREIGN KEY (`ProductionVersion`) REFERENCES `data_platform_production_version_header_data` (`ProductionVersion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
